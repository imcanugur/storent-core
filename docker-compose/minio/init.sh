#!/bin/sh
# Run commands to create buckets matching tenant layouts
mc alias set local http://minio:9000 sail password
mc mb local/storent-assets-dev
mc mb local/storent-assets-test
mc policy set public local/storent-assets-dev
