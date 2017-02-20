#! /bin/bash

case ${SNAP_ARCH} in
amd64)
  ARCH_LAUNCHER="_64";;
i386)
  ARCH_LAUNCHER="";;
*)
  echo "Sorry, your architecture is currently not supported"
  exit;;
esac

CONFIG_VERSION=1.2

cd ${SNAP_DATA}/${CONFIG_VERSION}
exec bin_unix/linux${ARCH_LAUNCHER}_server "$@"
