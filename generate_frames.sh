#!/bin/bash

start_frame=`head -1 $1.idx`
echo "$start_frame"

ffmpeg -i $1 -start_number $start_frame  $2/frame%08d.jpg

