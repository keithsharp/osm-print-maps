#!/bin/bash

# Watch the python versions here, and match them to the boost_python version below in python-mapnik
brew install boost boost-python3 sqlite gdal cairo python3 harfbuzz
brew upgrade boost boost-python3 sqlite gdal cairo python3 harfbuzz
brew link boost

# We're build a custom mapnik 4, uninstall the stale 3.x version in homebrew:
brew uninstall mapnik

# Build Mapnik from master
git clone https://github.com/mapnik/mapnik
cd mapnik
git submodule update --init
PYTHON=python3 ./configure SQLITE_INCLUDES=/usr/local/opt/sqlite3/include
PYTHON=python3 JOBS=8 make
PYTHON=python3 make install
# This empty dir is needed to python-mapnik to build
mkdir freetype
cd ..

git clone https://github.com/mapnik/python-mapnik
cd python-mapnik
# Switch to Proj6 branch when building from Mapnik HEAD above
git checkout proj6
BOOST_PYTHON_LIB=boost_python311 python3 setup.py install 

# Mapnik should now be available as a Python module
python3 -c "import mapnik ; print(dir(mapnik))"`