@echo off
title play_Kour_1990.mp4

set file="Kour_1990.mp4"

set f="no"

set m="no"

set sp="1"
REM set sp="0.5"
REM tady si jeste muzete vybrat, budto jedno nebo druhy


set a01="00:28:32.520"
set b01="00:30:47.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:36:19.200"
set b02="00:39:23.200"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:43:33.840"
set b03="00:44:46.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="01:02:06.960"
set b04="01:04:37.320"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

pause
