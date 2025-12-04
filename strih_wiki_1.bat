@echo off
ffmpeg -i wiki_1.mp4 -ss 00:00:00.000 -t 00:00:10.700 01_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:00:17.400 -t 00:00:06.900 02_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:00:27.700 -t 00:00:03.800 03_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:00:58.100 -t 00:00:04.700 04_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:01:42.000 -t 00:00:05.000 05_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:01:49.500 -t 00:00:05.200 06_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:04:30.000 -t 00:00:13.500 07_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:06:43.000 -t 00:00:04.000 08_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:07:06.400 -t 00:00:12.100 09_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:07:30.000 -t 00:00:06.800 10_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:08:11.000 -t 00:00:03.500 11_wiki_1.mp4 -y
ffmpeg -i wiki_1.mp4 -ss 00:08:36.200 -t 00:00:06.400 12_wiki_1.mp4 -y

ffmpeg -f concat -i "list_wiki_1.txt" "spojene_wiki_1.mp4" -y
pause
