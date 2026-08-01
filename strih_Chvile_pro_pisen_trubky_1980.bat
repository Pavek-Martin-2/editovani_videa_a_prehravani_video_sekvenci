@echo off
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:06:22.470 -t 00:00:21.000 01_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:06:22.470 -t 00:01:00.720 02_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:06:35.390 -t 00:00:07.972 03_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:07:55.870 -t 00:00:18.378 04_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:14:53.670 -t 00:00:44.760 05_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:15:42.150 -t 00:00:13.283 06_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:18:24.030 -t 00:00:48.480 07_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:16:38.110 -t 00:00:24.960 08_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:17:17.710 -t 00:00:49.880 09_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:18:09.430 -t 00:00:01.320 10_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:18:13.590 -t 00:00:10.360 11_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:33:01.150 -t 00:02:07.720 12_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:44:34.190 -t 00:00:11.600 13_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:45:48.750 -t 00:00:01.600 14_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:46:30.750 -t 00:00:09.800 15_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:46:50.070 -t 00:00:14.522 16_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:47:38.110 -t 00:00:26.320 17_Chvile_pro_pisen_trubky_1980.mp4 -n
ffmpeg -i Chvile_pro_pisen_trubky_1980.mp4 -ss 00:48:24.870 -t 00:00:21.480 18_Chvile_pro_pisen_trubky_1980.mp4 -n

ffmpeg -f concat -i "list_Chvile_pro_pisen_trubky_1980.txt" "spojene_Chvile_pro_pisen_trubky_1980.mp4" -n
pause
