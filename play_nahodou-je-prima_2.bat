@echo off
title play_nahodou-je-prima.mp4

set file="nahodou-je-prima.mp4"

set f="yes"

set m="no"

set sp="1"

set a01="00:36:12.320"
set b01="00:38:04.760"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:33:27.600"
set b02="00:33:37.240"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:42:22.120"
set b03="00:43:21.520"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:56:47.520"
set b04="00:57:34.000"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="01:00:08.160"
set b05="01:01:32.760"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="01:01:32.760"
set b06="01:02:32.160"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="01:09:03.800"
set b07="01:09:51.480"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:29:31.120"
set b08="00:30:01.880"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="01:04:53.920"
set b09="01:05:56.360"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

pause
