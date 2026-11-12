from flask import Flask, jsonify
from flask_cors import CORS
import psycopg2
from psycopg2.extras import RealDictCursor
import json

app = Flask(__name__)
CORS(app)

DB_CONFIG = {
    "dbname": "gb_chitral_tourism",
    "user": "postgres",
    "password": "brg050",  # <-- Replace with your PostgreSQL password
    "host": "localhost",
    "port": "5432"
}

@app.route('/api/locations', methods=['GET'])
def get_tourist_locations():
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        cursor = conn.cursor(cursor_factory=RealDictCursor)

        cursor.execute("""
            SELECT id, name, district, province, category, description,
                   image_url, risk_level, altitude,
                   ST_AsGeoJSON(geom) as geometry
            FROM tourist_locations
            ORDER BY id ASC;
        """)
        rows = cursor.fetchall()
        cursor.close()
        conn.close()

        features = []
        for row in rows:
            feature = {
                "type": "Feature",
                "geometry": json.loads(row['geometry']),
                "properties": {
                    "id": row['id'],
                    "name": row['name'],
                    "district": row['district'],
                    "province": row['province'],
                    "category": row['category'],
                    "description": row['description'],
                    "image_url": row['image_url'] or "https://upload.wikimedia.org/wikipedia/commons/4/4b/Attabad_Lake_Hunza_Valley.jpg",
                    "risk_level": row['risk_level'] or "Safe / Normal",
                    "altitude": row['altitude']
                }
            }
            features.append(feature)

        return jsonify({"type": "FeatureCollection", "features": features}), 200

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

@app.route('/api/location/<int:loc_id>', methods=['GET'])
def get_single_location(loc_id):
    try:
        conn = psycopg2.connect(**DB_CONFIG)
        cursor = conn.cursor(cursor_factory=RealDictCursor)

        cursor.execute("""
            SELECT id, name, district, province, category, description,
                   image_url, risk_level, altitude,
                   ST_Y(geom) AS lat, ST_X(geom) AS lng
            FROM tourist_locations
            WHERE id = %s;
        """, (loc_id,))
        location = cursor.fetchone()

        if not location:
            cursor.close()
            conn.close()
            return jsonify({"status": "error", "message": "Location not found"}), 404

        if not location['image_url']:
            location['image_url'] = "https://upload.wikimedia.org/wikipedia/commons/4/4b/Attabad_Lake_Hunza_Valley.jpg"

        # Fetch 6 nearest locations using PostGIS spatial distance
        cursor.execute("""
            SELECT id, name, district, province, category, description,
                   image_url, altitude,
                   ST_Y(geom) AS lat, ST_X(geom) AS lng,
                   ROUND((ST_DistanceSphere(
                       geom,
                       (SELECT geom FROM tourist_locations WHERE id = %s)
                   ) / 1000.0)::numeric, 1) AS distance_km
            FROM tourist_locations
            WHERE id <> %s
            ORDER BY geom <-> (SELECT geom FROM tourist_locations WHERE id = %s)
            LIMIT 6;
        """, (loc_id, loc_id, loc_id))
        nearby = cursor.fetchall()

        for item in nearby:
            if not item['image_url']:
                item['image_url'] = "https://upload.wikimedia.org/wikipedia/commons/4/4b/Attabad_Lake_Hunza_Valley.jpg"
            item['distance_km'] = float(item['distance_km'])

        cursor.close()
        conn.close()

        return jsonify({
            "location": location,
            "nearby": nearby
        }), 200

    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True, port=5000)