##!/bin/bash

#killall -q polybar
#while pgrep -x polybar >/dev/null; do sleep 1; done

#polybar -r main

#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch
polybar -r top
