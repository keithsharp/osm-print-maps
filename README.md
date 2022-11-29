# Maps for Nicky
This is the notes, scripts, and tools I used to build the maps for the virtual running challenges.

## Software install
Use `scripts/build-mapnik.sh` to build `mapnik` (version 4.0 from HEAD) and `python-mapnik`.
```bash
brew install postgresql@14 postgis osm2pgsql
pip3 install nik4
git clone https://github.com/gravitystorm/openstreetmap-carto.git
```

## OSM Data
Download data from [Geofabrik](http://download.geofabrik.de/).

To start the PostgresQL database:
```bash
brew services run postgresql@14
```

To prepare the database (you might want to delete the database first?):
```bash
createdb gis
psql -d gis -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;'
```

To load the data:
```bash
cd openstreetmap-carto
osm2pgsql -G --hstore --style openstreetmap-carto.style --tag-transform-script openstreetmap-carto.lua -d gis ../data/us-latest.osm.pbf
./scripts/get-external-data.py
```

Build the `mapnik.xml`:
```bash
npm install -g carto
cd openstreetmap-carto
carto project.mml > mapnik.xml
```

## Fonts
You need to use `Font Book.app` to check if the fonts are installed.  If not:
```bash
cd openstreetmap-carto
./scripts/get-fonts.sh
```
Now use the Finder to drag all the font files to Font Book.

## Tools
+ Postgres - database
+ PostGIS - geospatial extensions to the database
+ osm2pgsql - load OSM data into database
+ [Nik4](https://github.com/Zverik/Nik4) - render data to image
