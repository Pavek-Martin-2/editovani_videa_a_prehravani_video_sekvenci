@echo off
title ffmpeg_vyrezi_videa_spojeni_vyrezu_5.ps1
cls

REM  jedna se zde o bounus k predchzimu prispevku "vostipoval me remeslnik"
set volba=Erika.txt -n
echo %volba%

powershell -file ffmpeg_vyrezi_videa_spojeni_vyrezu_5.ps1 %volba%
::pause

