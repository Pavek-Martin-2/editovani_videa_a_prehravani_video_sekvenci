@echo off
title play_Tovaris.mp4

set file="Tovaris.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:10:59.840"
set b01="00:11:21.440"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:11:47.560"
set b02="00:12:55.800"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:13:20.760"
set b03="00:13:39.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:15:48.880"
set b04="00:18:07.400"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:20:00.480"
set b05="00:20:58.520"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:22:46.720"
set b06="00:24:55.880"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:25:50.640"
set b07="00:25:59.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:31:52.920"
set b08="00:32:19.360"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:29:12.560"
set b09="00:29:40.280"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

pause
