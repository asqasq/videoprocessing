#!/bin/bash

#ffmpeg -i example1_134.mp4 -acodec copy -f segment -vcodec copy -reset_timestamps 1 -map 0 OUTPUT%d.mp4
#ffmpeg -i $1 -f segment -acodec copy  -vcodec copy -movflags empty_moov -movflags frag_keyframe -reset_timestamps 1 -map 0 %08d.mp4
#ffmpeg -i $1 -f segment -acodec copy  -vcodec copy -movflags empty_moov  -reset_timestamps 1 -map 0 %08d.mp4

#ffmpeg -i $1 -acodec copy  -vcodec copy -movflags frag_keyframe $1.neu.mp4
#ffmpeg -i $1.neu.mp4 -f segment -acodec copy  -vcodec copy -movflags frag_keyframe -reset_timestamps 1 -map 0 %08d.mp4


ffmpeg -i $1 -f segment -acodec copy  -vcodec copy -movflags frag_keyframe -reset_timestamps 1 -map 0 %08d.mp4

