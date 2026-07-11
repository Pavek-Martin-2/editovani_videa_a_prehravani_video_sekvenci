@echo off
title play_Cekani_na_Patrika_1988.mp4

set file="Cekani_na_Patrika_1988.mp4"

set f="yes"
REM tady si jeste muzete vybrat, budto jedno nebo druhy
REM set f="no"

set m="no"
REM set m="yes"

set sp="1"
REM set sp="0.5"


set a01="00:38:16.006"
set b01="00:38:30.926"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:39:13.166"
set b02="00:40:31.286"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:20:14.406"
set b03="00:21:03.886"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:47:34.726"
set b04="00:50:56.966"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:07:51.686"
set b05="00:08:46.606"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:31:52.526"
set b06="00:32:25.286"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:16:02.606"
set b07="00:16:49.446"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:16:46.246"
set b08="00:16:49.446"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:16:49.486"
set b09="00:17:06.846"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="01:13:23.246"
set b10="01:13:24.686"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="01:13:25.486"
set b11="01:13:36.406"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

set a12="01:15:45.766"
set b12="01:15:50.726"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a12% --end=%b12% %file%

set a13="01:15:51.806"
set b13="01:15:59.686"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a13% --end=%b13% %file%

set a14="01:15:59.726"
set b14="01:16:02.086"
mpv --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a14% --end=%b14% %file%

pause
