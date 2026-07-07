@echo off
ffmpeg -i Kour_1990.mp4 -ss 00:28:32.520 -t 00:02:14.480 01_Kour_1990.mp4 -n
ffmpeg -i Kour_1990.mp4 -ss 00:36:19.200 -t 00:03:04.000 02_Kour_1990.mp4 -n
ffmpeg -i Kour_1990.mp4 -ss 00:43:33.840 -t 00:01:12.160 03_Kour_1990.mp4 -n
ffmpeg -i Kour_1990.mp4 -ss 01:02:06.960 -t 00:02:30.360 04_Kour_1990.mp4 -n

ffmpeg -f concat -i "list_Kour_1990.txt" "spojene_Kour_1990.mp4" -n


REM video je docela tmavy
ffmpeg -i spojene_Kour_1990.mp4 -vf "eq=brightness=0.1:contrast=1.1" spojene_Kour_1990_BRIGHT.mp4 -n
ffmpeg -i spojene_Kour_1990.mp4 -vf "eq=brightness=0.1:contrast=1.1:gamma=1" spojene_Kour_1990_BRIGHT_2.mp4 -n

pause
