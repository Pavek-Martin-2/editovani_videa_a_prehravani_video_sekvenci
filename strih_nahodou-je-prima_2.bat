@echo off
ffmpeg -i nahodou-je-prima.mp4 -ss 00:36:12.320 -t 00:01:52.440 01_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 00:33:27.600 -t 00:00:09.640 02_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 00:42:22.120 -t 00:00:59.400 03_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 00:56:47.520 -t 00:00:46.480 04_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 01:00:08.160 -t 00:01:24.600 05_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 01:01:32.760 -t 00:00:59.400 06_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 01:09:03.800 -t 00:00:47.680 07_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 00:29:31.120 -t 00:00:30.760 08_nahodou-je-prima.mp4 -n
ffmpeg -i nahodou-je-prima.mp4 -ss 01:04:53.920 -t 00:01:02.440 09_nahodou-je-prima.mp4 -n

ffmpeg -f concat -i "list_nahodou-je-prima.txt" "spojene_nahodou-je-prima.mp4" -y
pause
