@echo off
ffmpeg -i Andula.mp4 -ss 00:30:06.040 -t 00:00:08.320 01_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:30:22.280 -t 00:00:26.960 02_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:31:10.440 -t 00:00:23.560 03_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:31:40.200 -t 00:00:17.000 04_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:33:18.000 -t 00:00:19.120 05_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:35:09.280 -t 00:00:09.200 06_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:35:27.080 -t 00:00:17.880 07_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:37:32.400 -t 00:00:32.600 08_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:38:19.280 -t 00:00:15.640 09_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:38:50.520 -t 00:00:08.600 10_Andula.mp4 -n
ffmpeg -i Andula.mp4 -ss 00:39:25.960 -t 00:00:13.80 11_Andula.mp4 -n

ffmpeg -f concat -i "list_Andula.txt" "spojene_Andula.mp4" -n
pause
