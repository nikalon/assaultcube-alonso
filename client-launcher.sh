#! /bin/bash

case ${SNAP_ARCH} in
amd64)
  ARCH="x86_64-linux-gnu"
  ARCH_LAUNCHER="_64";;
i386)
  ARCH="i386-linux-gnu"
  ARCH_LAUNCHER="";;
*)
  echo "Sorry, your architecture is currently not supported"
  exit;;
esac

export LIBGL_DRIVERS_PATH=${SNAP}/usr/lib/${ARCH}/dri:${LD_LIBRARY_PATH}
CONFIG_VERSION=1.2

cd ${SNAP_DATA}/${CONFIG_VERSION}
exec bin_unix/linux${ARCH_LAUNCHER}_client --home=${SNAP_USER_DATA}/${CONFIG_VERSION} --init "$@"

