#!/bin/bash

set -e

# direnv should automatically load the .envrc file
# and activate the virtual environment
# source .venv/bin/activate

if [ ! -d "zmk" ]; then
    git clone git@github.com:slicemk/zmk.git
fi
cd zmk
python3 -m venv .venv
source .venv/bin/activate
pip install west
west init -l app
west update
west zephyr-export
pip install -r zephyr/scripts/requirements-base.txt