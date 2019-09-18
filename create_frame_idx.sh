#!/bin/bash


start_frame=0
nr_frames=0

for f in `ls 0*.mp4|sort`; do
  nr_frames=`ffmpeg -i $f -map 0:v:0 -c copy -f null - 2>&1 |grep frame=|sed -r -e 's/(frame=[ \t]*)([0-9]+).*/\2/g'`;
  echo "$start_frame" > $f.idx
  echo "$nr_frames" >> $f.idx
  start_frame=$((start_frame + nr_frames))
done


