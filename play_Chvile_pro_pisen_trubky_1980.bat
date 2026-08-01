@echo off
title play_Chvile_pro_pisen_trubky_1980.mp4

set file="Chvile_pro_pisen_trubky_1980.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:06:22.470"
set b01="00:06:43.470"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:06:22.470"
set b02="00:07:23.190"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:06:35.390"
set b03="00:06:43.362"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:07:55.870"
set b04="00:08:14.248"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:14:53.670"
set b05="00:15:38.430"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:15:42.150"
set b06="00:15:55.433"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:18:24.030"
set b07="00:19:12.510"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:16:38.110"
set b08="00:17:03.070"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:17:17.710"
set b09="00:18:07.590"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="00:18:09.430"
set b10="00:18:10.750"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="00:18:13.590"
set b11="00:18:23.950"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

set a12="00:33:01.150"
set b12="00:35:08.870"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a12% --end=%b12% %file%

set a13="00:44:34.190"
set b13="00:44:45.790"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a13% --end=%b13% %file%

set a14="00:45:48.750"
set b14="00:45:50.350"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a14% --end=%b14% %file%

set a15="00:46:30.750"
set b15="00:46:40.550"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a15% --end=%b15% %file%

set a16="00:46:50.070"
set b16="00:47:04.592"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a16% --end=%b16% %file%

set a17="00:47:38.110"
set b17="00:48:04.430"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a17% --end=%b17% %file%

set a18="00:48:24.870"
set b18="00:48:46.350"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a18% --end=%b18% %file%

pause
