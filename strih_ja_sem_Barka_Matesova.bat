@echo off
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:30:24.520 -t 00:00:04.200 01_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:36:46.240 -t 00:00:04.120 02_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:47:15.160 -t 00:00:15.260 03_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:00:28.680 -t 00:00:15.480 04_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:02:18.040 -t 00:00:51.760 05_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:03:09.840 -t 00:01:27.40 06_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:04:36.920 -t 00:01:21.520 07_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:13:31.640 -t 00:00:20.800 08_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:13:57.480 -t 00:00:09.240 09_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:14:45.600 -t 00:00:19.320 10_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:16:04.840 -t 00:00:05.380 11_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:17:19.080 -t 00:00:05.900 12_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:19:07.040 -t 00:00:35.520 13_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:20:17.120 -t 00:00:19.40 14_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:21:06.680 -t 00:00:18.200 15_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:22:56.560 -t 00:00:20.960 16_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:27:15.160 -t 00:00:12.280 17_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:28:17.800 -t 00:00:17.480 18_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:28:43.800 -t 00:00:08.280 19_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:29:01.240 -t 00:00:13.260 20_ja_sem_Barka_Matesova.mp4 -n
ffmpeg -i ja_sem_Barka_Matesova.mp4 -ss 00:34:43.680 -t 00:00:43.120 21_ja_sem_Barka_Matesova.mp4 -n

ffmpeg -f concat -i "list_ja_sem_Barka_Matesova.txt" "spojene_ja_sem_Barka_Matesova.mp4" -n
pause
