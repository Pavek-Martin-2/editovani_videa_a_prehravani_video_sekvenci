@echo off
title play_Erika.mp4

set file="Erika.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:01:55.840"
set b01="00:02:00.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:02:19.920"
set b02="00:02:40.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:02:45.120"
set b03="00:02:53.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:03:01.880"
set b04="00:03:21.480"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:03:21.560"
set b05="00:03:32.280"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:04:22.240"
set b06="00:04:27.520"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:04:45.680"
set b07="00:05:11.680"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:15:33.520"
set b08="00:16:22.178"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:16:47.400"
set b09="00:16:53.560"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="00:17:00.160"
set b10="00:18:58.560"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="00:29:01.840"
set b11="00:29:21.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

set a12="00:29:42.440"
set b12="00:29:55.880"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a12% --end=%b12% %file%

set a13="00:30:10.400"
set b13="00:31:16.280"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a13% --end=%b13% %file%

set a14="00:31:22.720"
set b14="00:31:31.600"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a14% --end=%b14% %file%

set a15="00:35:44.840"
set b15="00:35:59.440"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a15% --end=%b15% %file%

set a16="00:36:05.680"
set b16="00:36:26.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a16% --end=%b16% %file%

set a17="00:56:41.760"
set b17="00:56:49.360"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a17% --end=%b17% %file%

set a18="00:51:57.000"
set b18="00:52:24.120"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a18% --end=%b18% %file%

set a19="00:52:34.400"
set b19="00:53:07.560"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a19% --end=%b19% %file%

set a20="00:53:15.320"
set b20="00:53:22.480"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a20% --end=%b20% %file%

pause
