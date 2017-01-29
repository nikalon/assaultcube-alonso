#! /bin/bash

cd ${SNAP}/bin
exec bin_unix/native_server "$@"
