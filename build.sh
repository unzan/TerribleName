#!/bin/sh

# $1 = actual version
# $2 = min version
function check_min_version {
   if [ "$1" = "$2" ]; then
      echo "$1"
   else
      local v=$(echo -e "$1\n$2" | sort -rV | head -1)
      if [ "$v" = "$1" ]; then
         echo "$1"
      fi
   fi
}

SOURCEMAP="${SOURCEMAP:-none}"
PARAM="--unix-newlines --style=expanded"
VERSION=$(gem list sass | sed -r '/^sass /!d;s/^[^(]+\(([^)]+)\)$/\1/')

if [ -z "$VERSION" ]; then
   echo "This script requires the following ruby gem: sass" >&2
   exit 1
fi

if [ "$(check_min_version "$VERSION" 3.3.0)" = "$VERSION" ]; then
   PARAM="${PARAM} --sourcemap=$SOURCEMAP"
fi

if [ "$1" = "-w" -o "$1" = "--watch" ]; then
   PARAM="${PARAM} --watch"
else
   PARAM="${PARAM} --update"
fi

scss $PARAM scss:.
