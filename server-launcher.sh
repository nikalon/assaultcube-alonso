#! /bin/bash

CONFIG_VERSION=next

cd ${SNAP_DATA}/${CONFIG_VERSION}
exec bin_unix/native_server "$@"
