#!/bin/sh
echo 'Creating database'
createdb geo

echo 'Creating schema and loading data'
psql geo < db_schema.sql

echo 'Setting up environment'
virtualenv --python python3 env
source env/bin/activate
pip install -r requirements.txt

echo 'Setup complete'
