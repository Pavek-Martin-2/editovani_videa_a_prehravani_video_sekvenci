@echo off
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:05:17.240 -t 00:00:13.240 01_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:05:40.080 -t 00:00:45.960 02_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:06:45.840 -t 00:00:05.800 03_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:07:03.320 -t 00:00:04.160 04_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:07:20.520 -t 00:00:49.720 05_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:08:24.080 -t 00:00:01.720 06_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:19:23.640 -t 00:00:26.520 07_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:36:43.080 -t 00:00:07.800 08_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:08:43.720 -t 00:00:44.120 09_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:22:47.360 -t 00:00:04.240 10_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:23:15.720 -t 00:00:19.160 11_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:23:47.800 -t 00:00:12.200 12_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:25:31.880 -t 00:00:33.200 13_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:26:09.040 -t 00:00:18.640 14_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:26:53.120 -t 00:00:54.480 15_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:28:49.320 -t 00:00:30.560 16_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:29:19.920 -t 00:01:28.800 17_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:38:48.720 -t 00:00:09.680 18_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:39:03.680 -t 00:00:10.720 19_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:39:24.920 -t 00:00:36.960 20_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:40:03.320 -t 00:00:17.720 21_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:40:30.520 -t 00:00:30.760 22_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:41:11.060 -t 00:00:14.940 23_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 00:41:28.440 -t 00:01:42.560 24_kdyz_v_Litomericich_horelo.mp4 -n
ffmpeg -i kdyz_v_Litomericich_horelo.mp4 -ss 01:01:46.840 -t 00:00:25.680 25_kdyz_v_Litomericich_horelo.mp4 -n

ffmpeg -f concat -i "list_kdyz_v_Litomericich_horelo.txt" "spojene_kdyz_v_Litomericich_horelo.mp4" -n
pause
