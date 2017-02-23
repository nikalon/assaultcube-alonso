#! /bin/bash

CONFIG_VERSION=next

cd ${SNAP_DATA}/${CONFIG_VERSION}
exec ${SNAP}/bin/bin_unix/native_server "$@"
