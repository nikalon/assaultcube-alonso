#! /bin/bash

case ${SNAP_ARCH} in
amd64)
  ARCH="x86_64-linux-gnu";;
i386)
  ARCH="i386-linux-gnu";;
armhf)
  ARCH="arm-linux-gnueabihf";;
arm64)
  ARCH="aarch64-linux-gnu";;
esac

export LIBGL_DRIVERS_PATH=${SNAP}/usr/lib/$ARCH/dri:${LD_LIBRARY_PATH}
CUBE_OPTIONS="--home=${SNAP_USER_DATA} --init"

cd ${SNAP}/bin
exec "bin_unix/native_client" "$@"

