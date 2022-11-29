# North Coast 500
This is the notes, scripts, and tools I used to build the maps for the North Coast Challenge.

## Nik Commands
```bash
# Whole route
nik4.py -b \-5.9000 58.7500 \-3.1200 56.4000 --ppi 300 -a 0 ./openstreetmap-carto/mapnik.xml ./images/north-coast-500.png

# Top half
nik4.py -b \-5.9000 58.7500 \-3.0000 57.8500 --ppi 300 -a 0 ./openstreetmap-carto/mapnik.xml ./images/north-coast-500-top.png

# Bottom half
nik4.py -b \-5.9000 57.9000 \-3.9000 57.3524 --ppi 300 -a 0 ./openstreetmap-carto/mapnik.xml ./images/north-coast-500-bottom.png
```

# OSM Data
+ [Scotland](http://download.geofabrik.de/europe/great-britain/scotland.html)