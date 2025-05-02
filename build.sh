#!/bin/bash

set -e


CONFIG_DIR="$(dirname "$(realpath "$0")")/config"
source local-build-env/zmk/.venv/bin/activate
cd local-build-env/zmk/app
west build -p \
    -b "slicemk_ergodox_202207_green_left" \
    -- \
    -DZMK_CONFIG=$CONFIG_DIR \
    -DSHIELD="slicemk_ergodox_leftcentral"