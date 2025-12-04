@echo off
title ffmpeg_vyrezi_videa_spojeni_vyrezu_3.ps1
cls

echo napr. wiki_1.txt
set /p volba="nazev souboru : "
echo %volba%

REM powershell -file ffmpeg_vyrezi_videa_spojeni_vyrezu_3.ps1 %volba%
ffmpeg_vyrezi_videa_spojeni_vyrezu_3.exe %volba%
pause

