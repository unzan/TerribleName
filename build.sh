#!/bin/sh

if [ "$1" = "-w" -o "$1" = "--watch" ]; then
   PARAM="--watch scss:."
else
   PARAM="scss/terriblename.scss terriblename.css"
fi

scss --style=expanded $PARAM
