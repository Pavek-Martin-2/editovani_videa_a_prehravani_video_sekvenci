@echo off
REM play_all_mute_50_procent_speed.exe
REM ^ aktualizuje sam sebe pred spustenim aktualniho obsahu adresare,tento soubor do adresare Windows
set /a p=1
echo video %p%/12
mpv --mute -fs -speed=0.5 "01_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "02_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "03_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "04_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "05_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "06_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "07_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "08_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "09_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "10_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "11_wiki_1.mp4"
set /a p=p+1
echo video %p%/12
mpv --mute -fs -speed=0.5 "12_wiki_1.mp4"
pause

