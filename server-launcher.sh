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

cd ${SNAP}/bin
exec bin_unix/linux${ARCH_LAUNCHER}_server "$@"
