1) This requires postgres, if not installed locally run `pip install postgres`

2) Run the `./setup.sh` to set up the database as well as the virtual environment

3) If environment is not active, activate with `source env/bin/activate`

4) Run `./update_long_lat.py --help` for flags. The script needs `--records` flag and either the `--instant` or `--bulk` flag
