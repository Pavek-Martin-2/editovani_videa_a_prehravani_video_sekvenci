@echo off
ffmpeg -i Erika.mp4 -ss 00:01:55.840 -t 00:00:04.960 01_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:02:19.920 -t 00:00:20.320 02_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:02:45.120 -t 00:00:08.120 03_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:03:01.880 -t 00:00:19.600 04_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:03:21.560 -t 00:00:10.720 05_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:04:22.240 -t 00:00:05.280 06_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:04:45.680 -t 00:00:26.000 07_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:15:33.520 -t 00:00:48.658 08_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:16:47.400 -t 00:00:06.160 09_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:17:00.160 -t 00:01:58.400 10_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:29:01.840 -t 00:00:19.960 11_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:29:42.440 -t 00:00:13.440 12_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:30:10.400 -t 00:01:05.880 13_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:31:22.720 -t 00:00:08.880 14_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:35:44.840 -t 00:00:14.600 15_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:36:05.680 -t 00:00:20.560 16_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:56:41.760 -t 00:00:07.600 17_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:51:57.000 -t 00:00:27.120 18_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:52:34.400 -t 00:00:33.160 19_Erika.mp4 -n
ffmpeg -i Erika.mp4 -ss 00:53:15.320 -t 00:00:07.160 20_Erika.mp4 -n

ffmpeg -f concat -i "list_Erika.txt" "spojene_Erika.mp4" -n
pause
