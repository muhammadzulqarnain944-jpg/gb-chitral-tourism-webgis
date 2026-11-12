
BEGIN;

INSERT INTO tourist_locations
(name, district, province, category, description,
 latitude, longitude, geom)
VALUES

-- ==========================================
-- 1. GILGIT DISTRICT
-- ==========================================

('Gilgit City', 'Gilgit', 'Gilgit-Baltistan', 'City',
 'Capital city of Gilgit-Baltistan and an important tourism gateway.',
 35.920834, 74.308334,
 ST_SetSRID(ST_MakePoint(74.308334, 35.920834),4326)),

('Naltar Valley', 'Gilgit', 'Gilgit-Baltistan', 'Valley',
 'Mountain valley famous for alpine forests, skiing and lakes.',
 36.1700, 74.1800,
 ST_SetSRID(ST_MakePoint(74.1800,36.1700),4326)),

('Naltar Lakes', 'Gilgit', 'Gilgit-Baltistan', 'Lake',
 'Collection of scenic alpine lakes surrounded by mountains.',
 36.1600, 74.1700,
 ST_SetSRID(ST_MakePoint(74.1700,36.1600),4326)),

('Kargah Buddha', 'Gilgit', 'Gilgit-Baltistan', 'Archaeological Site',
 'Ancient Buddha carving and Buddhist archaeological remains.',
 35.8840, 74.2930,
 ST_SetSRID(ST_MakePoint(74.2930,35.8840),4326)),

('Bagrot Valley', 'Gilgit', 'Gilgit-Baltistan', 'Valley',
 'Mountain valley known for glaciers, villages and trekking.',
 35.8400, 74.5500,
 ST_SetSRID(ST_MakePoint(74.5500,35.8400),4326)),

('Danyore Suspension Bridge', 'Gilgit', 'Gilgit-Baltistan', 'Bridge',
 'Traditional suspension bridge and local tourist attraction.',
 35.9450, 74.3780,
 ST_SetSRID(ST_MakePoint(74.3780,35.9450),4326)),

('Heramosh Valley', 'Gilgit', 'Gilgit-Baltistan', 'Valley',
 'Remote mountain valley surrounded by high peaks and glaciers.',
 35.8500, 74.8000,
 ST_SetSRID(ST_MakePoint(74.8000,35.8500),4326)),

-- ==========================================
-- 2. HUNZA DISTRICT
-- ==========================================

('Hunza Valley', 'Hunza', 'Gilgit-Baltistan', 'Valley',
 'Famous mountain valley known for spectacular scenery and culture.',
 36.3167, 74.6500,
 ST_SetSRID(ST_MakePoint(74.6500,36.3167),4326)),

('Baltit Fort', 'Hunza', 'Gilgit-Baltistan', 'Historical Fort',
 'Historic fort overlooking Karimabad and the Hunza Valley.',
 36.3250, 74.6690,
 ST_SetSRID(ST_MakePoint(74.6690,36.3250),4326)),

('Altit Fort', 'Hunza', 'Gilgit-Baltistan', 'Historical Fort',
 'Ancient royal fort representing traditional Hunza architecture.',
 36.3190, 74.6720,
 ST_SetSRID(ST_MakePoint(74.6720,36.3190),4326)),

('Attabad Lake', 'Hunza', 'Gilgit-Baltistan', 'Lake',
 'Turquoise mountain lake famous for boating and scenic landscapes.',
 36.3650, 74.8660,
 ST_SetSRID(ST_MakePoint(74.8660,36.3650),4326)),

('Passu Cones', 'Hunza', 'Gilgit-Baltistan', 'Mountain',
 'Distinctive pointed mountain peaks near Passu village.',
 36.4780, 74.8830,
 ST_SetSRID(ST_MakePoint(74.8830,36.4780),4326)),

('Hussaini Suspension Bridge', 'Hunza', 'Gilgit-Baltistan', 'Bridge',
 'Famous suspension bridge crossing the Hunza River.',
 36.4290, 74.8900,
 ST_SetSRID(ST_MakePoint(74.8900,36.4290),4326)),

('Khunjerab Pass', 'Hunza', 'Gilgit-Baltistan', 'Mountain Pass',
 'High mountain border pass between Pakistan and China.',
 36.8490, 75.4280,
 ST_SetSRID(ST_MakePoint(75.4280,36.8490),4326)),

('Gulmit Village', 'Hunza', 'Gilgit-Baltistan', 'Village',
 'Traditional Wakhi settlement in Upper Hunza.',
 36.3700, 74.8600,
 ST_SetSRID(ST_MakePoint(74.8600,36.3700),4326)),

('Ganish Historic Village', 'Hunza', 'Gilgit-Baltistan', 'Historical Site',
 'Historic settlement containing traditional architecture and heritage.',
 36.3180, 74.6680,
 ST_SetSRID(ST_MakePoint(74.6680,36.3180),4326)),

('Sacred Rock of Hunza', 'Hunza', 'Gilgit-Baltistan', 'Archaeological Site',
 'Historic rock carvings and inscriptions along the ancient Silk Route.',
 36.312850, 74.686510,
 ST_SetSRID(ST_MakePoint(74.686510,36.312850),4326)),

('Duikar Viewpoint', 'Hunza', 'Gilgit-Baltistan', 'Viewpoint',
 'Popular elevated viewpoint overlooking the Hunza Valley.',
 36.3240, 74.6950,
 ST_SetSRID(ST_MakePoint(74.6950,36.3240),4326)),

('Shimshal Valley', 'Hunza', 'Gilgit-Baltistan', 'Valley',
 'Remote high-altitude valley popular for trekking and mountaineering.',
 36.4400, 75.1000,
 ST_SetSRID(ST_MakePoint(75.1000,36.4400),4326)),

-- ==========================================
-- 3. NAGAR DISTRICT
-- ==========================================

('Rakaposhi Mountain', 'Nagar', 'Gilgit-Baltistan', 'Mountain',
 'Famous 7788 metre mountain in the Karakoram Range.',
 36.144642, 74.490028,
 ST_SetSRID(ST_MakePoint(74.490028,36.144642),4326)),

('Rakaposhi Base Camp', 'Nagar', 'Gilgit-Baltistan', 'Trekking Site',
 'Popular trekking destination with views of Rakaposhi Mountain.',
 36.1600, 74.4900,
 ST_SetSRID(ST_MakePoint(74.4900,36.1600),4326)),

('Rush Lake', 'Nagar', 'Gilgit-Baltistan', 'Lake',
 'High-altitude alpine lake near Rush Pari Peak.',
 36.13056, 74.93250,
 ST_SetSRID(ST_MakePoint(74.93250,36.13056),4326)),

('Hoper Glacier', 'Nagar', 'Gilgit-Baltistan', 'Glacier',
 'Large glacier accessible from Hoper Valley.',
 36.2000, 74.6500,
 ST_SetSRID(ST_MakePoint(74.6500,36.2000),4326)),

('Kacheli Lake', 'Nagar', 'Gilgit-Baltistan', 'Lake',
 'High-altitude lake located in the Miacher Valley region.',
 36.1983, 74.5903,
 ST_SetSRID(ST_MakePoint(74.5903,36.1983),4326)),

('Minapin Village', 'Nagar', 'Gilgit-Baltistan', 'Village',
 'Mountain settlement and starting point for Rakaposhi trekking.',
 36.1700, 74.6500,
 ST_SetSRID(ST_MakePoint(74.6500,36.1700),4326)),

('Hopar Valley', 'Nagar', 'Gilgit-Baltistan', 'Valley',
 'Scenic valley known for glaciers and mountain landscapes.',
 36.2000, 74.6500,
 ST_SetSRID(ST_MakePoint(74.6500,36.2000),4326)),

-- ==========================================
-- 4. SKARDU DISTRICT
-- ==========================================

('Skardu City', 'Skardu', 'Gilgit-Baltistan', 'City',
 'Major tourism center and gateway to the Karakoram mountains.',
 35.2970, 75.6330,
 ST_SetSRID(ST_MakePoint(75.6330,35.2970),4326)),

('Upper Kachura Lake', 'Skardu', 'Gilgit-Baltistan', 'Lake',
 'Beautiful mountain lake surrounded by forests and resorts.',
 35.4200, 75.4600,
 ST_SetSRID(ST_MakePoint(75.4600,35.4200),4326)),

('Lower Kachura Lake', 'Skardu', 'Gilgit-Baltistan', 'Lake',
 'Scenic lake also known as Shangrila Lake.',
 35.4200, 75.4600,
 ST_SetSRID(ST_MakePoint(75.4600,35.4200),4326)),

('Satpara Lake', 'Skardu', 'Gilgit-Baltistan', 'Lake',
 'Mountain lake and freshwater reservoir near Skardu.',
 35.3000, 75.6300,
 ST_SetSRID(ST_MakePoint(75.6300,35.3000),4326)),

('Deosai National Park', 'Skardu', 'Gilgit-Baltistan', 'National Park',
 'High-altitude plateau famous for wildlife and alpine grasslands.',
 35.0000, 75.4000,
 ST_SetSRID(ST_MakePoint(75.4000,35.0000),4326)),

('Sheosar Lake', 'Skardu', 'Gilgit-Baltistan', 'Lake',
 'Alpine lake located inside Deosai National Park.',
 34.99097, 75.23698,
 ST_SetSRID(ST_MakePoint(75.23698,34.99097),4326)),

('Shigar Fort', 'Shigar', 'Gilgit-Baltistan', 'Historical Fort',
 'Historic palace restored as a heritage hotel and museum.',
 35.4230, 75.7300,
 ST_SetSRID(ST_MakePoint(75.7300,35.4230),4326)),

('Manthal Buddha Rock', 'Skardu', 'Gilgit-Baltistan', 'Archaeological Site',
 'Historic Buddhist rock carving near Skardu.',
 35.2900, 75.6300,
 ST_SetSRID(ST_MakePoint(75.6300,35.2900),4326)),

('Katpana Cold Desert', 'Skardu', 'Gilgit-Baltistan', 'Desert',
 'High-altitude cold desert featuring sand dunes and mountains.',
 35.3100, 75.6200,
 ST_SetSRID(ST_MakePoint(75.6200,35.3100),4326)),

('Basho Valley', 'Skardu', 'Gilgit-Baltistan', 'Valley',
 'Green mountain valley famous for forests, streams and camping.',
 35.1800, 75.5500,
 ST_SetSRID(ST_MakePoint(75.5500,35.1800),4326)),

('Shangrila Resort', 'Skardu', 'Gilgit-Baltistan', 'Resort',
 'Popular tourist resort situated beside Lower Kachura Lake.',
 35.4200, 75.4600,
 ST_SetSRID(ST_MakePoint(75.4600,35.4200),4326)),

('Blind Lake', 'Skardu', 'Gilgit-Baltistan', 'Lake',
 'Remote alpine lake in the Skardu mountain region.',
 35.2000, 75.5000,
 ST_SetSRID(ST_MakePoint(75.5000,35.2000),4326)),

-- ==========================================
-- 5. ASTORE DISTRICT
-- ==========================================

('Rama Lake', 'Astore', 'Gilgit-Baltistan', 'Lake',
 'High-altitude alpine lake surrounded by pine forests and mountains.',
 35.3302, 74.7858,
 ST_SetSRID(ST_MakePoint(74.7858,35.3302),4326)),

('Rama Meadows', 'Astore', 'Gilgit-Baltistan', 'Meadow',
 'Beautiful alpine meadow near Rama Lake and Nanga Parbat.',
 35.3500, 74.8200,
 ST_SetSRID(ST_MakePoint(74.8200,35.3500),4326)),

('Astore Valley', 'Astore', 'Gilgit-Baltistan', 'Valley',
 'Mountain valley famous for meadows, forests and trekking.',
 35.3570, 74.8624,
 ST_SetSRID(ST_MakePoint(74.8624,35.3570),4326)),

('Minimarg Valley', 'Astore', 'Gilgit-Baltistan', 'Valley',
 'Remote mountain valley known for alpine scenery and lakes.',
 34.9200, 75.4500,
 ST_SetSRID(ST_MakePoint(75.4500,34.9200),4326)),

('Domail Valley', 'Astore', 'Gilgit-Baltistan', 'Valley',
 'Remote scenic valley with mountain landscapes and streams.',
 34.8800, 75.4000,
 ST_SetSRID(ST_MakePoint(75.4000,34.8800),4326)),

('Rattu', 'Astore', 'Gilgit-Baltistan', 'Tourist Area',
 'Mountain settlement and recreational area in Astore.',
 35.2200, 74.8500,
 ST_SetSRID(ST_MakePoint(74.8500,35.2200),4326)),

('Chilim', 'Astore', 'Gilgit-Baltistan', 'Village',
 'Mountain village and access point to Deosai.',
 35.0000, 75.0000,
 ST_SetSRID(ST_MakePoint(75.0000,35.0000),4326)),

-- ==========================================
-- 6. GHANCHE DISTRICT
-- ==========================================

('Khaplu Valley', 'Ghanche', 'Gilgit-Baltistan', 'Valley',
 'Historic valley known for Balti culture and mountain scenery.',
 35.165192, 76.340574,
 ST_SetSRID(ST_MakePoint(76.340574,35.165192),4326)),

('Khaplu Palace', 'Ghanche', 'Gilgit-Baltistan', 'Historical Palace',
 'Historic royal palace associated with the Yabgo dynasty.',
 35.151903, 76.335363,
 ST_SetSRID(ST_MakePoint(76.335363,35.151903),4326)),

('Chaqchan Mosque', 'Ghanche', 'Gilgit-Baltistan', 'Historical Mosque',
 'Historic mosque representing traditional Balti architecture.',
 35.156322, 76.330706,
 ST_SetSRID(ST_MakePoint(76.330706,35.156322),4326)),

('Hushe Valley', 'Ghanche', 'Gilgit-Baltistan', 'Valley',
 'Remote mountain valley and gateway to famous climbing routes.',
 35.4200, 76.3500,
 ST_SetSRID(ST_MakePoint(76.3500,35.4200),4326)),

('Machulu Valley', 'Ghanche', 'Gilgit-Baltistan', 'Valley',
 'Traditional Balti valley surrounded by high mountain peaks.',
 35.1900, 76.3500,
 ST_SetSRID(ST_MakePoint(76.3500,35.1900),4326)),

('Masherbrum Viewpoint', 'Ghanche', 'Gilgit-Baltistan', 'Viewpoint',
 'Mountain viewpoint offering views of the Masherbrum range.',
 35.4000, 76.3500,
 ST_SetSRID(ST_MakePoint(76.3500,35.4000),4326)),

-- ==========================================
-- 7. GHIZER DISTRICT
-- ==========================================

('Phander Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Picturesque valley famous for rivers, lakes and green landscapes.',
 36.1700, 73.3600,
 ST_SetSRID(ST_MakePoint(73.3600,36.1700),4326)),

('Phander Lake', 'Ghizer', 'Gilgit-Baltistan', 'Lake',
 'Scenic lake surrounded by mountains and green meadows.',
 36.1700, 73.3600,
 ST_SetSRID(ST_MakePoint(73.3600,36.1700),4326)),

('Khalti Lake', 'Ghizer', 'Gilgit-Baltistan', 'Lake',
 'Famous mountain lake known for trout fishing and winter scenery.',
 36.2300, 73.4500,
 ST_SetSRID(ST_MakePoint(73.4500,36.2300),4326)),

('Shandur Pass', 'Ghizer', 'Gilgit-Baltistan', 'Mountain Pass',
 'High-altitude pass famous for its traditional polo festival.',
 36.0900, 72.5200,
 ST_SetSRID(ST_MakePoint(72.5200,36.0900),4326)),

('Yasin Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Historic mountain valley with villages and alpine landscapes.',
 36.3900, 73.3000,
 ST_SetSRID(ST_MakePoint(73.3000,36.3900),4326)),

('Ishkoman Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Remote valley featuring glaciers, lakes and mountain villages.',
 36.508891, 73.921284,
 ST_SetSRID(ST_MakePoint(73.921284,36.508891),4326)),

('Gupis Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Beautiful valley with rivers, mountains and traditional villages.',
 36.1600, 73.4000,
 ST_SetSRID(ST_MakePoint(73.4000,36.1600),4326)),

('Punial Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Fertile valley famous for orchards and traditional settlements.',
 36.0500, 73.6000,
 ST_SetSRID(ST_MakePoint(73.6000,36.0500),4326)),

('Darkot Pass', 'Ghizer', 'Gilgit-Baltistan', 'Mountain Pass',
 'High mountain pass connecting remote mountain valleys.',
 36.7800, 73.4000,
 ST_SetSRID(ST_MakePoint(73.4000,36.7800),4326)),

('Hundarap Valley', 'Ghizer', 'Gilgit-Baltistan', 'Valley',
 'Remote valley known for trout fishing and camping.',
 36.2000, 73.4000,
 ST_SetSRID(ST_MakePoint(73.4000,36.2000),4326)),

('Qurumbar Lake', 'Ghizer', 'Gilgit-Baltistan', 'Lake',
 'Remote high-altitude alpine lake near the Wakhan region.',
 36.8300, 73.5700,
 ST_SetSRID(ST_MakePoint(73.5700,36.8300),4326)),

-- ==========================================
-- 8. DIAMER DISTRICT
-- ==========================================

('Fairy Meadows', 'Diamer', 'Gilgit-Baltistan', 'Meadow',
 'Famous alpine meadow offering views of Nanga Parbat.',
 35.3800, 74.5800,
 ST_SetSRID(ST_MakePoint(74.5800,35.3800),4326)),

('Nanga Parbat', 'Diamer', 'Gilgit-Baltistan', 'Mountain',
 'The ninth-highest mountain in the world.',
 35.2370, 74.5890,
 ST_SetSRID(ST_MakePoint(74.5890,35.2370),4326)),

('Babusar Pass', 'Diamer', 'Gilgit-Baltistan', 'Mountain Pass',
 'High mountain pass connecting Kaghan Valley with Chilas.',
 35.1000, 74.0800,
 ST_SetSRID(ST_MakePoint(74.0800,35.1000),4326)),

('Chilas', 'Diamer', 'Gilgit-Baltistan', 'City',
 'Historic town known for ancient rock carvings and Silk Route heritage.',
 35.4200, 74.1000,
 ST_SetSRID(ST_MakePoint(74.1000,35.4200),4326)),

('Thalpan Petroglyphs', 'Diamer', 'Gilgit-Baltistan', 'Archaeological Site',
 'Ancient rock carvings and inscriptions near the Indus River.',
 35.4200, 74.6200,
 ST_SetSRID(ST_MakePoint(74.6200,35.4200),4326)),

('Raikot Bridge', 'Diamer', 'Gilgit-Baltistan', 'Bridge',
 'Important access point for Fairy Meadows and Nanga Parbat.',
 35.3600, 74.5700,
 ST_SetSRID(ST_MakePoint(74.5700,35.3600),4326)),

('Darel Valley', 'Diamer', 'Gilgit-Baltistan', 'Valley',
 'Historic valley with ancient archaeological and cultural heritage.',
 35.4500, 73.9500,
 ST_SetSRID(ST_MakePoint(73.9500,35.4500),4326)),

('Tangir Valley', 'Diamer', 'Gilgit-Baltistan', 'Valley',
 'Mountain valley known for traditional settlements and landscapes.',
 35.5500, 73.9500,
 ST_SetSRID(ST_MakePoint(73.9500,35.5500),4326)),

-- ==========================================
-- 9. SHIGAR DISTRICT
-- ==========================================

('Shigar Valley', 'Shigar', 'Gilgit-Baltistan', 'Valley',
 'Historic valley with mountain landscapes and Balti heritage.',
 35.4230, 75.7300,
 ST_SetSRID(ST_MakePoint(75.7300,35.4230),4326)),

('Shigar Fort Palace', 'Shigar', 'Gilgit-Baltistan', 'Historical Fort',
 'Historic palace representing traditional Balti architecture.',
 35.4230, 75.7300,
 ST_SetSRID(ST_MakePoint(75.7300,35.4230),4326)),

('Chutron Hot Springs', 'Shigar', 'Gilgit-Baltistan', 'Hot Spring',
 'Natural hot springs in the Shigar mountain region.',
 35.4500, 75.7500,
 ST_SetSRID(ST_MakePoint(75.7500,35.4500),4326)),

('Braldu Valley', 'Shigar', 'Gilgit-Baltistan', 'Valley',
 'Remote mountain valley and route towards Concordia and K2.',
 35.6500, 76.2000,
 ST_SetSRID(ST_MakePoint(76.2000,35.6500),4326)),

('K2 Base Camp', 'Shigar', 'Gilgit-Baltistan', 'Trekking Site',
 'World-famous mountaineering destination below K2.',
 35.8800, 76.5150,
 ST_SetSRID(ST_MakePoint(76.5150,35.8800),4326)),

-- ==========================================
-- 10. KHARMANG DISTRICT
-- ==========================================

('Manthokha Waterfall', 'Kharmang', 'Gilgit-Baltistan', 'Waterfall',
 'Beautiful waterfall surrounded by rocky mountain landscapes.',
 35.2000, 76.3000,
 ST_SetSRID(ST_MakePoint(76.3000,35.2000),4326)),

('Khamosh Waterfall', 'Kharmang', 'Gilgit-Baltistan', 'Waterfall',
 'Natural waterfall in the Kharmang region.',
 35.1500, 76.2500,
 ST_SetSRID(ST_MakePoint(76.2500,35.1500),4326)),

('Kharmang Valley', 'Kharmang', 'Gilgit-Baltistan', 'Valley',
 'Scenic valley known for waterfalls and mountain villages.',
 35.2000, 76.3000,
 ST_SetSRID(ST_MakePoint(76.3000,35.2000),4326)),

-- ==========================================
-- 11. CHITRAL DISTRICT - KHYBER PAKHTUNKHWA
-- ==========================================

('Chitral City', 'Chitral', 'Khyber Pakhtunkhwa', 'City',
 'Main town of Chitral, surrounded by Hindu Kush mountains.',
 35.8510, 71.7860,
 ST_SetSRID(ST_MakePoint(71.7860,35.8510),4326)),

('Chitral Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic fortified palace beside the Chitral River.',
 35.8551, 71.7917,
 ST_SetSRID(ST_MakePoint(71.7917,35.8551),4326)),

('Bumburet Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Largest and most visited of the three Kalash valleys.',
 35.698814, 71.685800,
 ST_SetSRID(ST_MakePoint(71.685800,35.698814),4326)),

('Rumbur Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Scenic Kalash valley known for traditional culture and landscapes.',
 35.775931, 71.691003,
 ST_SetSRID(ST_MakePoint(71.691003,35.775931),4326)),

('Birir Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Traditional Kalash valley with villages and mountain scenery.',
 35.6700, 71.7200,
 ST_SetSRID(ST_MakePoint(71.7200,35.6700),4326)),

('Garam Chashma', 'Chitral', 'Khyber Pakhtunkhwa', 'Hot Spring',
 'Mountain settlement famous for natural hot springs.',
 36.0000, 71.5500,
 ST_SetSRID(ST_MakePoint(71.5500,36.0000),4326)),

('Garam Chashma Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic Kathoor period fort.',
 35.961611, 71.612229,
 ST_SetSRID(ST_MakePoint(71.612229,35.961611),4326)),

('Tirich Mir', 'Chitral', 'Khyber Pakhtunkhwa', 'Mountain',
 'Highest peak of the Hindu Kush mountain range.',
 36.2550, 71.8370,
 ST_SetSRID(ST_MakePoint(71.8370,36.2550),4326)),

('Ayun Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Beautiful valley located near the confluence of mountain rivers.',
 35.7900, 71.7800,
 ST_SetSRID(ST_MakePoint(71.7800,35.7900),4326)),

('Barmoghlasht', 'Chitral', 'Khyber Pakhtunkhwa', 'Viewpoint',
 'Mountain resort and viewpoint overlooking Chitral.',
 35.9000, 71.8200,
 ST_SetSRID(ST_MakePoint(71.8200,35.9000),4326)),

('Golen Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Mountain valley known for glaciers, waterfalls and trekking.',
 35.9300, 72.0200,
 ST_SetSRID(ST_MakePoint(72.0200,35.9300),4326)),

('Mastuj Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic fort associated with the former rulers of Chitral.',
 36.2848, 72.5242,
 ST_SetSRID(ST_MakePoint(72.5242,36.2848),4326)),

('Chuinj Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Kathoor period fort constructed using wood, mud and stone.',
 36.311916, 72.591588,
 ST_SetSRID(ST_MakePoint(72.591588,36.311916),4326)),

('Brep Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic fort associated with the Rayissia period.',
 36.441431, 72.643526,
 ST_SetSRID(ST_MakePoint(72.643526,36.441431),4326)),

('Kautai Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'British period fort on the left bank of the Chitral River.',
 35.370294, 71.694258,
 ST_SetSRID(ST_MakePoint(71.694258,35.370294),4326)),

('Chuinj Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic fort associated with the Kathoor period.',
 36.311916, 72.591588,
 ST_SetSRID(ST_MakePoint(72.591588,36.311916),4326)),

('Darbatoshali Fort', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Ruined Kalasha period fort dating to the medieval period.',
 36.298426, 72.435063,
 ST_SetSRID(ST_MakePoint(72.435063,36.298426),4326)),

('Old Fort Naghar', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Fort',
 'Historic Kathoor period fort currently used as a residence.',
 35.509078, 71.791865,
 ST_SetSRID(ST_MakePoint(71.791865,35.509078),4326)),

('Kartis Historic Settlement', 'Chitral', 'Khyber Pakhtunkhwa', 'Historical Site',
 'Historic Kalash settlement containing traditional houses and a graveyard.',
 35.736570, 71.771780,
 ST_SetSRID(ST_MakePoint(71.771780,35.736570),4326)),

('Chitral Gol National Park', 'Chitral', 'Khyber Pakhtunkhwa', 'National Park',
 'Protected mountain landscape known for wildlife and natural forests.',
 35.9100, 71.7300,
 ST_SetSRID(ST_MakePoint(71.7300,35.9100),4326)),

('Broghil Valley', 'Chitral', 'Khyber Pakhtunkhwa', 'Valley',
 'Remote high-altitude valley near the Wakhan Corridor.',
 36.8500, 72.5000,
 ST_SetSRID(ST_MakePoint(72.5000,36.8500),4326)),

('Shandur Polo Ground', 'Chitral', 'Khyber Pakhtunkhwa', 'Sports and Cultural Site',
 'Famous high-altitude polo ground associated with the annual festival.',
 36.0900, 72.5200,
 ST_SetSRID(ST_MakePoint(72.5200,36.0900),4326))

ON CONFLICT ON CONSTRAINT unique_tourist_location_name
DO NOTHING;

-- ==========================================
-- 12. VERIFY DATA
-- ==========================================

SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT name) AS unique_names,
    COUNT(*) FILTER (WHERE geom IS NULL) AS missing_geometry,
    COUNT(*) FILTER (
        WHERE ST_SRID(geom) <> 4326
    ) AS incorrect_srid
FROM tourist_locations;

COMMIT;

SELECT
    district,
    province,
    COUNT(*) AS total_locations
FROM tourist_locations
GROUP BY district, province
ORDER BY province, district;

SELECT
    COUNT(*) AS total_locations,
    COUNT(DISTINCT name) AS unique_locations,
    COUNT(*) FILTER (
        WHERE geom IS NULL
    ) AS missing_geometry
FROM tourist_locations;


SELECT
    COUNT(*) AS total_locations,
    COUNT(DISTINCT name) AS unique_locations,
    COUNT(*) FILTER (WHERE geom IS NULL) AS missing_geometry,
    COUNT(*) FILTER (WHERE ST_SRID(geom) <> 4326) AS incorrect_srid
FROM tourist_locations;

SELECT
    name,
    latitude,
    longitude,
    ST_Y(geom) AS geometry_latitude,
    ST_X(geom) AS geometry_longitude
FROM tourist_locations
LIMIT 10;

-- 1. Update specific famous tourist locations with stunning authentic photos
UPDATE tourist_locations SET image_url = 'https://images.unsplash.com/photo-1605648916361-9bc12ad6a566?w=800' WHERE name ILIKE '%Passu%';
UPDATE tourist_locations SET image_url = 'https://images.unsplash.com/photo-1589182373726-e4f658ab50f0?w=800' WHERE name ILIKE '%Altit%';
UPDATE tourist_locations SET image_url = 'https://images.unsplash.com/photo-1544735716-392fe2489ffa?w=800' WHERE name ILIKE '%Hussaini%';
UPDATE tourist_locations SET image_url = 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=800' WHERE name ILIKE '%Lake%';
UPDATE tourist_locations SET image_url = 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=800' WHERE name ILIKE '%Peak%' OR name ILIKE '%Cones%';

-- 2. Fallback for any remaining locations so no image ever fails to load
UPDATE tourist_locations 
SET image_url = 'https://images.unsplash.com/photo-1454496522488-7a8e488e8606?w=800'
WHERE image_url IS NULL;