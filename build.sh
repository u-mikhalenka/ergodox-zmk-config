#!/bin/bash

CONFIG_DIR="$(dirname "$(realpath "$0")")/config"

west build -p -s zmk/app \
    -b "slicemk_ergodox_left" \
    -- \
    -DZMK_CONFIG=$CONFIG_DIR \
    -DSHIELD="slicemk_ergodox_leftcentral"