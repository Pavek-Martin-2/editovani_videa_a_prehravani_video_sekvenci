@echo off
title play_wiki_1.mp4

set mpvpl="C:\Program Files (x86)\mpv-x86_64\mpv.exe"
set file="wiki_1.mp4"

set f="yes"
REM set f="no"

set m="yes"
REM set m="no"

set sp="1"
REM set sp="0.5"
REM tady si jeste muzete vybrat, budto jedno nebo druhy


set a01="00:00:00.000"
set b01="00:00:10.700"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a01% --end=%b01% %file%

set a02="00:00:17.400"
set b02="00:00:24.300"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a02% --end=%b02% %file%

set a03="00:00:27.700"
set b03="00:00:31.500"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a03% --end=%b03% %file%

set a04="00:00:58.100"
set b04="00:01:02.800"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a04% --end=%b04% %file%

set a05="00:01:42.000"
set b05="00:01:47.000"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a05% --end=%b05% %file%

set a06="00:01:49.500"
set b06="00:01:54.700"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a06% --end=%b06% %file%

set a07="00:04:30.000"
set b07="00:04:43.500"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a07% --end=%b07% %file%

set a08="00:06:43.000"
set b08="00:06:47.000"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a08% --end=%b08% %file%

set a09="00:07:06.400"
set b09="00:07:18.500"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a09% --end=%b09% %file%

set a10="00:07:30.000"
set b10="00:07:36.800"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a10% --end=%b10% %file%

set a11="00:08:11.000"
set b11="00:08:14.500"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a11% --end=%b11% %file%

set a12="00:08:36.200"
set b12="00:08:42.600"
%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a12% --end=%b12% %file%

pause
