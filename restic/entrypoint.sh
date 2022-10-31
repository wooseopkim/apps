#!/bin/sh

restic snapshots || restic init

watch -n 86400 restic backup /data

