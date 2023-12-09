#!/bin/bash

ffmpeg -ss $1 -accurate_seek -i "$2" -t $3 -preset ultrafast -c:a copy -c:v libx264 "$4"
