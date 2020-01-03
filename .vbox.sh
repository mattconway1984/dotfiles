#!/bin/bash

# Script to automatically resize virtual monitors in VirtualBox

# Start the server
#sudo killall VBoxService
#sleep 1
#sudo VBoxService
#sleep 1

# Start the client service
#VBoxClient-all

# Get the modeline information we want for the following resolutions:
# 1680x1050@60.00Hz (Laptop display)
RES0="1920 1080 60"

# Setup mappings for physical to virtual monitors
MAP0="Virtual1"

# Generate settings
SETTINGS0=$( gtf $RES0 | grep Modeline | cut -d ' ' -f4-16 )

# Get name of modelines from settings
NAME0=$( echo $SETTINGS0 | cut -d ' ' -f1 )

# Echo settings
echo "Modeline for Display 0 ($NAME0): $SETTINGS0"

# Create the new modelines via xrandr
xrandr --newmode $SETTINGS0

# Add the newly created modelines to devices
xrandr --addmode $MAP0 $NAME0

# Finally, enable the new modes
xrandr --output $MAP0 --mode $NAME0
