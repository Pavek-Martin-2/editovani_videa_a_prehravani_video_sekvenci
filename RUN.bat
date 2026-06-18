@echo off
title ffmpeg_vyrezi_videa_spojeni_vyrezu_4.ps1
cls

echo napr. wiki_1.txt -n
set /p volba="nazev souboru : "
echo %volba%

powershell -file ffmpeg_vyrezi_videa_spojeni_vyrezu_4.ps1 %volba%
pause

