#!/bin/bash

read -p "Enter Youtube Video URL: " url

if [ ! -d "YTVids" ]; then
    mkdir -p "YTVids"
    echo "Created directory: YTVids"
else
    echo "Directory already exists: YTVids"
fi

yt-dlp -f "bv*+ba/b" $url -o "YTVids/video.mp4"
