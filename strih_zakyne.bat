@echo off
ffmpeg -i zakyne.mp4 -ss 00:33:15.560 -t 00:00:00.240 01_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:33:21.160 -t 00:00:05.740 02_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:11:40.200 -t 00:00:24.440 03_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:12:23.360 -t 00:00:05.280 04_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:14:46.600 -t 00:00:00.440 05_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:12:43.000 -t 00:02:03.560 06_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:32:58.800 -t 00:00:15.120 07_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:33:15.560 -t 00:00:00.240 08_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:28:32.440 -t 00:01:04.920 09_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:12:31.480 -t 00:00:00.320 10_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:29:37.400 -t 00:00:35.840 11_zakyne.mp4 -n
ffmpeg -i zakyne.mp4 -ss 00:33:15.560 -t 00:00:00.240 12_zakyne.mp4 -n

ffmpeg -f concat -i "list_zakyne.txt" "spojene_zakyne.mp4" -n
pause
