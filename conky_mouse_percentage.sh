#!/bin/bash

#
# Get's the batt percentage of mouse
#
MOUSE_PATH=`upower -e | grep mouse`
MOUSE_BATT_PERCENTAGE=`upower -i $MOUSE_PATH | grep percentage: | sed 's/^.*: //' | sed 's/ *//'`


echo $MOUSE_BATT_PERCENTAGE
