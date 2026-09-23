@echo off
title play_Andula.mp4

set file="Andula.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:30:06.040"
set b01="00:30:14.360"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:30:22.280"
set b02="00:30:49.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:31:10.440"
set b03="00:31:34.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:31:40.200"
set b04="00:31:57.200"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:33:18.000"
set b05="00:33:37.120"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:35:09.280"
set b06="00:35:18.480"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:35:27.080"
set b07="00:35:44.960"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:37:32.400"
set b08="00:38:05.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:38:19.280"
set b09="00:38:34.920"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="00:38:50.520"
set b10="00:38:59.120"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="00:39:25.960"
set b11="00:39:39.040"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

pause
