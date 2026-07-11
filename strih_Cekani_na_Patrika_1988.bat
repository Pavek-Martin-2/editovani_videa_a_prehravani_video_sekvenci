@echo off
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:38:16.006 -t 00:00:14.920 01_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:39:13.166 -t 00:01:18.120 02_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:20:14.406 -t 00:00:49.480 03_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:47:34.726 -t 00:03:22.240 04_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:07:51.686 -t 00:00:54.920 05_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:31:52.526 -t 00:00:32.760 06_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:16:02.606 -t 00:00:46.840 07_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:16:46.246 -t 00:00:03.200 08_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 00:16:49.486 -t 00:00:17.360 09_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 01:13:23.246 -t 00:00:01.440 10_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 01:13:25.486 -t 00:00:10.920 11_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 01:15:45.766 -t 00:00:04.960 12_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 01:15:51.806 -t 00:00:07.880 13_Cekani_na_Patrika_1988.mp4 -n
ffmpeg -i Cekani_na_Patrika_1988.mp4 -ss 01:15:59.726 -t 00:00:02.360 14_Cekani_na_Patrika_1988.mp4 -n

ffmpeg -f concat -i "list_Cekani_na_Patrika_1988.txt" "spojene_Cekani_na_Patrika_1988.mp4" -n
pause
