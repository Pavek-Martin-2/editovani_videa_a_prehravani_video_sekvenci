@echo off
ffmpeg -i Tovaris.mp4 -ss 00:10:59.840 -t 00:00:21.600 01_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:11:47.560 -t 00:01:08.240 02_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:13:20.760 -t 00:00:18.240 03_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:15:48.880 -t 00:02:18.520 04_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:20:00.480 -t 00:00:58.40 05_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:22:46.720 -t 00:02:09.160 06_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:25:50.640 -t 00:00:08.600 07_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:31:52.920 -t 00:00:26.440 08_Tovaris.mp4 -n
ffmpeg -i Tovaris.mp4 -ss 00:29:12.560 -t 00:00:27.720 09_Tovaris.mp4 -n

ffmpeg -f concat -i "list_Tovaris.txt" "spojene_Tovaris.mp4" -n
pause
