@echo off
title ffmpeg_vyrezi_videa_spojeni_vyrezu_5.ps1
cls

set volba=Tovaris.txt -n
echo %volba%

powershell -file ffmpeg_vyrezi_videa_spojeni_vyrezu_5.ps1 %volba%
REM ffmpeg_vyrezi_videa_spojeni_vyrezu_3.exe %volba%
pause

