# Route 66
This is the notes, scripts, and tools I used to build the maps for the Route 66 Challenge.

## Nik Commands

### Chicago, IL to St Louis, MO - 297 miles
1. Chicago: 41.8781N, -87.6298W
2. St Louis: 38.6270N, -90.1994W

```bash
nik4.py -b \-90.4502 38.4751 \-86.8348 42.0156 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-01.png
```

### St Louis, MO to Joplin, MO - 284 miles
1. St Louis: 38.6270N, -90.1994W
2. Joplin: 37.0842N, -94.5133W

```bash
nik4.py -b \-94.8133 36.8842 \-89.5994 38.9270 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-02.png
```

### Joplin, MO to Oklahoma City, OK - 218 miles
1. Joplin: 37.0842N, -94.5133W
2. Oklahoma City: 35.4676N, -97.5164W

```bash
nik4.py -b \-97.8164 35.1676 \-94.3133 37.3842 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-03.png
```

### Oklahoma City, OK to Amarillo, TX - 258 miles
1. Oklahoma City: 35.4676N, -97.5164W
2. Amarillo: 35.2220N, -101.8313W

```bash
nik4.py -b \-102.1313 34.9220 \-97.5164 35.4676 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-04.png
```

### Amarillo, TX to Albuquerque, MN - 287 miles
1. Amarillo: 35.2220N, -101.8313W
2. Albuquerque: 35.0844N, -106.6504W

```bash
nik4.py -b \-106.9504 34.7844 \-101.5313 35.5220 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-05.png
```

### Albuquerque, MN to Winslow, AZ - 265 miles
1. Albuquerque: 35.0844N, -106.6504W
2. Winslow: 35.0242N, -110.6974W

```bash
nik4.py -b \-110.9974 34.7242 \-106.3504 35.3844 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-06.png
```

### Winslow, AZ to Topock, AZ - 253 miles
1. Winslow: 35.0242N, -110.6974W
2. Topock: 34.7713N, -114.4915W

```bash
nik4.py -b \-114.7915 34.4713 \-110.3974 35.3242 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-07.png
```

### Topock, AZ to Santa Monica, CA - 286 miles
1. Topock: 34.7713N, -114.4915W
2. Santa Monica: 34.0099N, -118.4960W

```bash
nik4.py -b \-118.7960 33.7099 \-114.1915 35.0713 --ppi 300 -a 0 ./style/openstreetmap-carto/mapnik.xml images/stage-08.png
```

## OSM Data
+ [USA Midwest](https://download.geofabrik.de/north-america/us-midwest.html)
+ [USA West](https://download.geofabrik.de/north-america/us-west.html)
+ [USA](https://download.geofabrik.de/north-america/us.html)

Probably need to use all of the USA (8.0Gb) or combine the Midwest (1.6Gb) + West (2.2Gb) + Oklahoma (132Mb) + Texas (485Mb).  The saving is 3.5Gb, is it worth it for the extra work?

## GPX Route Data
[TomTom Route 66](https://mydrive.tomtom.com/en_gb/#mode=itinerary+viewport=38.05254,-106.94134,4.49,0,-0+itinerary=%7B%22id%22:%2288762ed9-7168-45df-86f2-22af671eff74%22%7D+ver=3) - note that this has route points and track points, use the track points.  The first route point is the start and the last route point is the end.

## OSM Route 66 Relations.
+ [Historic US 66 (IL) westbound](https://www.openstreetmap.org/relation/3734410) - 3734410
+ [Historic US 66 (MO) westbound](https://www.openstreetmap.org/relation/3734771) - 3734771
+ [Historic US 66 (KS)](https://www.openstreetmap.org/relation/1796822) - 1796822  **This is tiny**
+ [Historic US 66 (OK) East](https://www.openstreetmap.org/relation/12442123) - 12552123
+ [Historic US 66 (OK) West](https://www.openstreetmap.org/relation/3283241) - 3283241
+ [Historic US 66 (TX)](https://www.openstreetmap.org/relation/1796340) - 1796340
+ [Historic US 66 (NM)](https://www.openstreetmap.org/relation/1796339) - 1796339
+ [Historic US 66 (AZ)](https://www.openstreetmap.org/relation/1796336) - 1796336
+ California is partial :-(