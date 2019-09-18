#!/bin/bash

#ffmpeg -i example1_134.mp4 -acodec copy -f segment -vcodec copy -reset_timestamps 1 -map 0 OUTPUT%d.mp4
ffmpeg -i $1 -acodec copy -f segment -vcodec copy -reset_timestamps 1 -map 0 %08d.mp4
