document.addEventListener('DOMContentLoaded', () => {
    const map = L.map('map').setView([36.0, 74.2], 7);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 18,
        attribution: '&copy; OpenStreetMap contributors'
    }).addTo(map);

    let allLocations = [];
    let markersLayer = L.layerGroup().addTo(map);

    const searchInput = document.getElementById('search-input');
    const districtFilter = document.getElementById('district-filter');
    const categoryFilter = document.getElementById('category-filter');
    const locationsListContainer = document.getElementById('locations-list');

    fetch('http://127.0.0.1:5000/api/locations')
        .then(response => response.json())
        .then(data => {
            allLocations = data.features;
            populateFilters(allLocations);
            renderLocations(allLocations);
        })
        .catch(error => console.error('Error loading tourist locations:', error));

    function populateFilters(features) {
        const districts = new Set();
        const categories = new Set();

        features.forEach(feature => {
            if (feature.properties.district) districts.add(feature.properties.district);
            if (feature.properties.category) categories.add(feature.properties.category);
        });

        Array.from(districts).sort().forEach(district => {
            const option = document.createElement('option');
            option.value = district;
            option.textContent = district;
            districtFilter.appendChild(option);
        });

        Array.from(categories).sort().forEach(category => {
            const option = document.createElement('option');
            option.value = category;
            option.textContent = category;
            categoryFilter.appendChild(option);
        });
    }

    function buildPopupHTML(props, elevationText, weatherHTML, riskBadgeHTML) {
        return `
            <div style="width: 260px; font-family: 'Segoe UI', sans-serif;">
                <img src="${props.image_url}" style="width: 100%; height: 135px; object-fit: cover; border-radius: 6px; margin-bottom: 8px;" />
                <span style="background: #ebf5fb; color: #2980b9; padding: 2px 8px; font-size: 0.72rem; font-weight: bold; border-radius: 4px;">${props.category}</span>
                <h3 style="margin: 6px 0 4px 0; font-size: 1.08rem; color: #2c3e50;">${props.name}</h3>
                <p style="font-size: 0.82rem; margin: 2px 0;"><strong>District:</strong> ${props.district} (${props.province})</p>
                <p style="font-size: 0.82rem; margin: 2px 0;"><strong>⛰️ Elevation:</strong> ${elevationText}</p>
                <p style="font-size: 0.8rem; margin: 5px 0 8px 0; color: #555; line-height: 1.35;">${props.description || ''}</p>

                <div style="background: #f4f6f7; padding: 7px 9px; border-radius: 6px; margin-bottom: 8px; font-size: 0.8rem;">
                    ${weatherHTML}
                </div>

                <div style="margin-bottom: 10px;">${riskBadgeHTML}</div>

                <a href="details.html?id=${props.id}" target="_blank"
                   style="display: block; text-align: center; background: #2c3e50; color: #ffffff; text-decoration: none; padding: 8px 10px; border-radius: 6px; font-size: 0.82rem; font-weight: 600;">
                   📸 Full Details, Gallery & Nearby Spots →
                </a>
            </div>
        `;
    }

    function fetchLiveWeatherAndElevation(lat, lng, props, marker, metaElement) {
        fetch(`https://api.open-meteo.com/v1/forecast?latitude=${lat}&longitude=${lng}&current_weather=true`)
            .then(res => res.json())
            .then(weatherData => {
                const exactElevation = weatherData.elevation ? `${Math.round(weatherData.elevation).toLocaleString()} m` : (props.altitude || 'N/A');

                if (metaElement) {
                    metaElement.textContent = `${props.district} • ${exactElevation}`;
                }

                const temp = weatherData.current_weather ? `${weatherData.current_weather.temperature}°C` : 'N/A';
                const windspeed = weatherData.current_weather ? weatherData.current_weather.windspeed : 0;

                let riskBadge = `<span style="background: #27ae60; color: white; padding: 3px 8px; border-radius: 4px; font-size: 0.75rem; font-weight: 600;">🟢 Safe Conditions (${temp})</span>`;
                if (windspeed > 30) {
                    riskBadge = `<span style="background: #c0392b; color: white; padding: 3px 8px; border-radius: 4px; font-size: 0.75rem; font-weight: 600;">🔴 High Wind Risk (${windspeed} km/h)</span>`;
                }

                const weatherHTML = `🌡️ <strong>Temp:</strong> ${temp} &nbsp;|&nbsp; 💨 <strong>Wind:</strong> ${windspeed} km/h`;
                marker.setPopupContent(buildPopupHTML(props, exactElevation, weatherHTML, riskBadge));
            })
            .catch(() => { });
    }

    function renderLocations(features) {
        markersLayer.clearLayers();
        locationsListContainer.innerHTML = '';

        if (features.length === 0) {
            locationsListContainer.innerHTML = '<p style="padding: 10px; color: #7f8c8d; font-size: 0.9rem;">No locations found.</p>';
            return;
        }

        features.forEach(feature => {
            const props = feature.properties;
            const coords = feature.geometry.coordinates;
            const lat = coords[1];
            const lng = coords[0];

            const marker = L.marker([lat, lng]);
            marker.bindPopup(buildPopupHTML(props, props.altitude || 'Loading...', '🌡️ Click marker for live weather', '<span style="background: #27ae60; color: white; padding: 3px 8px; border-radius: 4px; font-size: 0.75rem;">🟢 Safe / Normal</span>'));
            markersLayer.addLayer(marker);

            const card = document.createElement('div');
            card.className = 'location-card';
            card.innerHTML = `
                <img src="${props.image_url}" alt="${props.name}" />
                <div class="card-info">
                    <h4>${props.name}</h4>
                    <div class="meta">${props.district} • ${props.category}</div>
                    <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 4px;">
                        <span class="badge">${props.province}</span>
                        <a href="details.html?id=${props.id}" target="_blank" class="details-link" style="font-size: 0.75rem; color: #2980b9; font-weight: 600; text-decoration: none;">Details →</a>
                    </div>
                </div>
            `;

            const metaEl = card.querySelector('.meta');
            let loaded = false;
            const loadWeather = () => {
                if (!loaded) {
                    loaded = true;
                    fetchLiveWeatherAndElevation(lat, lng, props, marker, metaEl);
                }
            };

            marker.on('click', loadWeather);
            card.addEventListener('click', (e) => {
                if (e.target.classList.contains('details-link')) return;
                loadWeather();
                map.setView([lat, lng], 12, { animate: true });
                marker.openPopup();
            });

            locationsListContainer.appendChild(card);
        });
    }

    function filterData() {
        const searchTerm = searchInput.value.toLowerCase();
        const selectedDistrict = districtFilter.value;
        const selectedCategory = categoryFilter.value;

        const filtered = allLocations.filter(feature => {
            const props = feature.properties;
            const matchesSearch = props.name.toLowerCase().includes(searchTerm) ||
                (props.description && props.description.toLowerCase().includes(searchTerm));
            const matchesDistrict = selectedDistrict === '' || props.district === selectedDistrict;
            const matchesCategory = selectedCategory === '' || props.category === selectedCategory;

            return matchesSearch && matchesDistrict && matchesCategory;
        });

        renderLocations(filtered);
    }

    searchInput.addEventListener('input', filterData);
    districtFilter.addEventListener('change', filterData);
    categoryFilter.addEventListener('change', filterData);
});