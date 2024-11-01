#!/bin/bash

#
# Get's the name and batt percentage of mouse
#
MOUSE_PATH=`upower -e | grep mouse`
MOUSE_MODEL=`upower -i $MOUSE_PATH | grep model: | sed 's/^.*: //' | sed 's/ *//'`

echo $MOUSE_MODEL
