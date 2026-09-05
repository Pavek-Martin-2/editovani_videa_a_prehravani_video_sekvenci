@echo off
title play_zakyne.mp4

set file="zakyne.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:33:15.560"
set b01="00:33:15.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:33:21.160"
set b02="00:33:26.900"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:11:40.200"
set b03="00:12:04.640"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:12:23.360"
set b04="00:12:28.640"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:14:46.600"
set b05="00:14:47.040"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:12:43.000"
set b06="00:14:46.560"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:32:58.800"
set b07="00:33:13.920"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:33:15.560"
set b08="00:33:15.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:28:32.440"
set b09="00:29:37.360"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="00:12:31.480"
set b10="00:12:31.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="00:29:37.400"
set b11="00:30:13.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

set a12="00:33:15.560"
set b12="00:33:15.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a12% --end=%b12% %file%

pause
