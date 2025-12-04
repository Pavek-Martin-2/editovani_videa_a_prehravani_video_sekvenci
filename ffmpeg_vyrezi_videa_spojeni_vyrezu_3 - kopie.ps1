cls

<#

nacita radky z textoveho souboru napr. "wiki_1.txt"
kazdy radek ma delku 25 znaku, mezi temito radky muzou byt take prazdne radky, program je bude preskakovat
kazdy radek obsahuje "start" a "stop" cas ve formatu "hh:mm:ss.tt" "hh:mm:ss.tt" ( v souboru bez uvozovek )
viz priklad "wiki_1.txt"

soubor "wiki_1.txt" vzniknul tak ze jsem pri pousteni videa, mel pripravenou ruku na tlacitku "pause"
mel jsem v OSD zapnute zobrazovani tisicin vteriny (uverejneno drive) a video jsem spomalil na 1/4 puvodni rychlosti klavesou "["
pozn. "]" opet zrychluje a backspace vraci normalni rychlost, rychlost prehravani se zobrazuje v OSD
pozn 2. pri spomalenem videu je take dobre pouzit klavesu "m" mute, pokud neradi posluchate huhlani
a klavesu "f" fullscreen, "mezera" je potom pause/unpause, je toho mnohem vic - prostudujte obrazek "MPV.jpg"

mej jsem otevrenej poznamkovej blok a psal jsem si radky, vzdycky na jednom radku pocatecni a koncovej cas pozadovaneho useku
napr.     00:08:36.200 00:08:42.600
           ^  ^  ^  ^
start HH --+  |  |  |
start MM -----+  |  |
start SS --------+  |
start tisiciny -----+

pak jedna mezera jako oddelovac
a totez ze "stop" casem

kazdy radek tedy musi mit pevnou delku 25 znaku, neni osetreni chyby, pouze radek ktery by to nesplnoval se preskoci
krome prazdnyho radku, ktere maji delku nulovou, tan byt muze ale preskoci se taky ( nekdy mam rad mezery mezi radky, takovej zvyk)
jeste take neni osetreni chyby proti chybe v zapisu casu, kdyby treba nekdo napsal cas aa:bb:cc.ddd apod.
tady by asi pomohl nejaky regulerni vyraz

program hleda podle nazvu zadaneho textoveho souboru, kdyz se mu zada napr. "wiki_1.txt" bude hledat v temze adresari 
video "wiki_1.mp4" a bude vytvaret podle seznamu casu z "wiki_1.txt" fragmenty "01_wiki_1.mp4" "02_wiki_1.mp4" atd. az do 99
a ty pak spoji do jednoho videa "spojene_wiki_1.mp4"
dale program vytvori filelist "list_wiki_1.txt", ktery je potreba ke spojeni fragmentu videi pomoci "ffmpeg.exe"
a vytvori davkovy soubor pro prehravani videa "wiki_1.mp4" pomoci prehravace "mpv.exe", ten se bude jmenovat "play_wiki_1.bat"
tento soubor si muzete take jese editovat a trochu upravit, slouzi take k doladeni casu strihu "nanecisto" a pripadne oprave, testu
a take k pripadne uprave souboru "strih_wiki_1.bat"
uvadim zde vzdy prefix nazvu zadaneho souboru, kdyz bude seznam casu pro strih mit nazev treba "abcd.txt" pak vzniknou souboru
"play_abcd.bat" "strih_abcd.bat" "list_abcd.bat" a fragmenty se budou jmenovat "01_abcd.mp4" atd.

jako druhej argument volitelne muze byt, budoto "-y" "-n" nebo nic
"-y" bude zpusobovat ze pri znovuspusteni souboru "strih_wiki_1.bat" bude program automaticky prepisovat jiz existujici fragmenty
pri volne "-n" pripadne jiz existuji pragmety prisovay nebude, soubor ""strih_wiki_1.bat" ktery ma vsechny radky na konci
z parametrem " -n" se da editovat a treba u pateho fragmentu u ktereho chci opravit cas prepisu na "-y" a tim setrim cas
ze se neprepsuje vsechno znova a jen to co potrebuju
a posledni moznost je ze neni paramert zadnej, v takovem pripade se pri jiz existujicim nazvu videa program u kazdeho fragmentu
bude vzlast parat "ovewrwrite [y/n|"
tyto parametry jsem tam pridal pro doladovani casu, kdyz s neco na poprve netrefi pressne a pak je dodatecne nekde v prostredku
potreba treba jedna vterina pridat nebo ubrat...

soubor "wiki_1.mp4" ktery je tady slouzi jenom jako "vycpavka" a je to textovy soubor ktery ma jenom zmeneno priponu na "mp4"
jinak by skript "rval" ze nenasel k otevreneho textaku prislusne video a predcasne by se ukoncil"
takze nakopiruje si misto neho jakoeholiv video a delce asi to tak 10 minut a vice a patricne ho prejmenujte tak jak bylo
popsano vyse, program hleda stejny nazev jenom jina pripona "a.txt" zadanej jako seznam casu, tak bude hledat video "a.mp4"
atd.
#>

# nazev spusteneho skriptu v zahlavi okna
$ExistingVariables = Get-Variable | Select-Object -ExpandProperty Name
[string] $scriptName = pwd
$scriptName += $MyInvocation.MyCommand.Name
$host.UI.RawUI.WindowTitle = $scriptName

Set-PSDebug -Strict # jakakoliv nedeklarovana promenna pri jejim zavolani udela chybu skriptu

$delka_args = $args.length
#echo "celkem args $delka_args" # int32

# help
if ($delka_args -eq 0) { #int32
echo "help:"
echo "pro_ffmpeg_vyrez_casu_seznam_1 text_1.txt"
# bez zadneho parametru se u kzadeho videa bude ptat
echo "pro_ffmpeg_vyrez_casu_seznam_1 text_1.txt -y"
# prida parametr pro prepis jiz existujicich fragmentu
echo "pro_ffmpeg_vyrez_casu_seznam_1 text_1.txt -n"
# prida parametr ze bude preskakoat jiz existujisi
sleep 10
Exit 1
}

$nazev_seznamu = $args[0]

# exist seznam.txt
$test_exist_nazev_seznamu = Test-Path $nazev_seznamu 
if ($test_exist_nazev_seznamu -clike "False"){ 
Write-host -ForegroundColor yellow "nenalezen soubor $nazev_seznamu"
sleep 1
Exit 1
}

echo $nazev_seznamu

$nazev_videa = $nazev_seznamu.Substring(0, $nazev_seznamu.Length -4)
$nazev_videa += ".mp4"

# exist seznam.mp4
$test_exist_nazev_videa = Test-Path $nazev_videa
if ($test_exist_nazev_videa -clike "False"){ 
Write-host -ForegroundColor yellow "nenalezen soubor $nazev_videa"
sleep 1
Exit 1
}

echo $nazev_videa
echo ""

$poc_1 = 0

$pole_file_bat = @("@echo off")
$pole_file_list = @()

# pole pro prehravani v mpv.exe
$pole_prehravani_v_mpv = @("@echo off")
$pole_prehravani_v_mpv += "title play_$nazev_videa"
$pole_prehravani_v_mpv += ""

$radek_mpv_1 = "set mpvpl=" + '"' + "C:\Program Files (x86)\mpv-x86_64\mpv.exe" + '"' # tady menit podle svoji situace
$pole_prehravani_v_mpv += $radek_mpv_1

$radek_mpv_2 = "set file=" + '"' + $nazev_videa + '"'
$pole_prehravani_v_mpv += $radek_mpv_2
$pole_prehravani_v_mpv += ""

$radek_mpv_3 = "set f=" + '"' + "yes" + '"'
$pole_prehravani_v_mpv += $radek_mpv_3

$radek_mpv_4 = "REM set f=" + '"' + "no" + '"'
$pole_prehravani_v_mpv += $radek_mpv_4
$pole_prehravani_v_mpv += ""

$radek_mpv_5 = "set m=" + '"' + "yes" +'"'
$pole_prehravani_v_mpv += $radek_mpv_5

$radek_mpv_6 = "REM set m=" + '"' + "no" +'"'
$pole_prehravani_v_mpv += $radek_mpv_6
$pole_prehravani_v_mpv += ""

$radek_mpv_7 = "set sp=" + '"' + "1" + '"'
$pole_prehravani_v_mpv += $radek_mpv_7

$radek_mpv_8 = "REM set sp=" + '"' + "0.5" + '"'
$pole_prehravani_v_mpv += $radek_mpv_8

$radek_mpv_8b = "REM tady si jeste muzete vybrat, budto jedno nebo druhy"
$pole_prehravani_v_mpv += $radek_mpv_8b

$pole_prehravani_v_mpv += ""
$pole_prehravani_v_mpv += ""



# otevreni souboru seznam.txt
$stream_reader = [System.IO.StreamReader]::new($nazev_seznamu)

while (-not $stream_reader.EndOfStream) {

$radek_seznamu = [string]($stream_reader.ReadLine())
#echo $radek_seznamu

$d_radek_seznamu = $radek_seznamu.Length
if ( $d_radek_seznamu -eq  25 ) {
echo $radek_seznamu


# pocitado fragmentu souboru ( 00-99 )
$poc_1++;

if ( $poc_1 -lt 10 ) {
$poc_2 = "0"
$poc_2 += [string] $poc_1
}else{
$poc_2 = [string] $poc_1
}

#echo $poc_2"<<"

$nazev_fragmentu_videa = $poc_2 + "_" + $nazev_videa
#echo $nazev_fragmentu_videa

#echo $radek_seznamu

$cas_1 = $radek_seznamu.Substring(0,12)
echo $cas_1

$cas_2 = $radek_seznamu.Substring(13,12)
echo $cas_2


# dalsi pridavani radku po pole pro mpv.exe
$radek_mpv_9 = "set a" + $poc_2 + '="' + $cas_1 + '"'
$pole_prehravani_v_mpv += $radek_mpv_9

$radek_mpv_10 = "set b" + $poc_2 + '="' + $cas_2 + '"'
$pole_prehravani_v_mpv += $radek_mpv_10
#$pole_prehravani_v_mpv += ""

# pridavani do pole mpv, prikaz na prehrani useku videa
#%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%a1% --end=%b1% %file%
$radek_mpv_11 = "%mpvpl% --fullscreen=%f% --mute=%m% --speed=%sp% --start=%" + "a" + $poc_2 + "%"
$radek_mpv_11 += " --end=%" + "b" + $poc_2 + "% %file%" 
$pole_prehravani_v_mpv += $radek_mpv_11
$pole_prehravani_v_mpv += ""
# konec pole mpv


# substituce radku steameru, na jednotlive polozky ( delka radku 25 znaku )
[int] $cas_1_h = $cas_1.Substring(0,2)
#echo $cas_1_h
$cas_1_h_s = (( $cas_1_h * 3600 ))

[int] $cas_1_m = $cas_1.Substring(3,2)
#echo $cas_1_m
$cas_1_m_s = (( $cas_1_m * 60 ))


[int] $cas_1_s = $cas_1.Substring(6,2)
#echo $cas_1_s

$cas_1_ms = $cas_1.Substring(9,3)
$cas_1_ms_2 = "0."
$cas_1_ms_2 += $cas_1_ms
#echo $cas_1_ms_2
$cas_1_ms_3 = [Double] $cas_1_ms_2
#echo $cas_1_ms_3
#echo $cas_1_ms_3.GetType()

$cas_1_celkem_vterin = ((  $cas_1_h_s + $cas_1_m_s + $cas_1_s + $cas_1_ms_3 ))


[int] $cas_2_h = $cas_2.Substring(0,2)
#echo $cas_2_h
$cas_2_h_s = (( $cas_2_h * 3600 ))

[int] $cas_2_m = $cas_2.Substring(3,2)
#echo $cas_2_m
$cas_2_m_s = (( $cas_2_m * 60 ))

[int] $cas_2_s = $cas_2.Substring(6,2)
#echo $cas_2_s

$cas_2_ms = $cas_2.Substring(9,3)
#echo $cas_1_ms"<"
#echo $cas_1_ms.GetType()
$cas_2_ms_2 = "0."
$cas_2_ms_2 += $cas_2_ms
#echo $cas_2_ms_2
$cas_2_ms_3 = [Double] $cas_2_ms_2

#echo $cas_2_ms_3
#echo $cas_2_ms_3.GetType()

$cas_2_celkem_vterin = ((  $cas_2_h_s + $cas_2_m_s + $cas_2_s + $cas_2_ms_3 ))
#echo $cas_2_celkem_vterin

$rozdil_vterin = (( $cas_2_celkem_vterin - $cas_1_celkem_vterin ))
#echo "rozdil casu je $rozdil_vterin"


# prevadi pocet vterin na hh:mm:ss.xxx
$ts = [timespan]::FromSeconds($rozdil_vterin)

[string] $hh = $ts.Hours
if ( $hh.Length -eq 1 ){ $hh = "0" + $hh }
#echo $hh

[string ] $mm = $ts.Minutes
if ( $mm.Length -eq 1 ){ $mm = "0" + $mm }
#echo $mm

[string] $ss = $ts.Seconds
if ( $ss.Length -eq 1 ){ $ss = "0" + $ss }
#echo $ss

[string] $ms = $ts.Milliseconds
if ( $ms.Length -eq 1 ) {
$ms = "00" + $ms
}
#echo $ms"<<"
#echo $ms.GetType()

# echo rozdilu casu presne vcetne .xxx
$cas_1_celkem_vterin_2 = ((  $cas_1_h_s + $cas_1_m_s + $cas_1_s ))
$cas_2_celkem_vterin_2 = ((  $cas_2_h_s + $cas_2_m_s + $cas_2_s ))
[string] $rozdil_vterin_out = (( $cas_2_celkem_vterin_2 - $cas_1_celkem_vterin_2 ))
$rozdil_vterin_out += "."
$rozdil_vterin_out += $ms
#echo "rozdil casu je $rozdil_vterin_out vterin"
echo "rozdil casu je $rozdil_vterin_out vterin"
#echo $rozdil_vterin_out.GetType()
#ffmpeg -i in.mp4 -ss 00:00:15.000 -t 00:02:55.000 -c copy out.mp4
$out_cas = $hh + ":" + $mm + ":" + $ss
#$out_1 = "ffmpeg -i in.mp4 -ss " + $cas_1 + " -t " + $out_cas + "." + $ms + " -vcodec copy out.mp4"
$out_1 = "ffmpeg -i " + $nazev_videa + " -ss " + $cas_1 + " -t " + $out_cas + "." + $ms + " " + $nazev_fragmentu_videa 

# mozny parametr[1] -n ; -y
if (( $args[1] -like "-y")  -or  ($args[1] -like "-n")) {
$out_1 += " " + $args[1]
}

echo $out_1
$pole_file_bat += $out_1 # prida radek do pole "bat"

# radek souboru listu pro spojeni fragmentu
$radek_list = "file " + "'" + $nazev_fragmentu_videa + "'"
echo $radek_list
echo ""
$pole_file_list += $radek_list

} # if d_radek
} # while

$stream_reader.close()

echo "byli vytvoreny soubory"
# zapis filelistu, pro strih videa
$out_file_name_list = "list_" + $nazev_videa.Substring(0, $nazev_videa.Length -4) + ".txt"
Write-Host -ForegroundColor cyan "$out_file_name_list " -NoNewline

Remove-Item -Path $out_file_name_list -Force -ErrorAction SilentlyContinue
sleep 1
Set-Content -Path $out_file_name_list -Encoding ASCII -Value $pole_file_list
sleep 1


# zapis do souboru "bat" pro strih videa
# prida na konec jeste radek pro spojeni fragmentu dohromady
$pole_file_bat += ""

#ffmpeg -f concat -i "filelist_all.txt" "Skate_king_all.mp4"
$vloz_1 = "ffmpeg -f concat -i " + '"' + $out_file_name_list + '" "' + "spojene_" + $nazev_videa + '"'

# mozny parametr[1] -n ; -y
if (( $args[1] -like "-y")  -or  ($args[1] -like "-n")) {
$vloz_1 += " " + $args[1]
}

#echo $vloz_1
$pole_file_bat += $vloz_1

$pole_file_bat += "pause"

$out_file_name_bat = "strih_" +  $nazev_videa.Substring(0, $nazev_videa.Length -4) + ".bat"
Write-Host -ForegroundColor yellow " $out_file_name_bat " -NoNewline

Remove-Item -Path $out_file_name_bat -Force -ErrorAction SilentlyContinue
sleep -Milliseconds 500

Set-Content -Path $out_file_name_bat -Encoding ASCII -Value $pole_file_bat
sleep -Milliseconds 500


#$pole_prehravani_v_mpv
# zapis pole $pole_prehravani_v_mpv  do souboru "bat"
$out_file_name_play = "play_" +  $nazev_videa.Substring(0, $nazev_videa.Length -4) + ".bat"
Write-Host -ForegroundColor red " $out_file_name_play"# -NoNewline

Remove-Item -Path $out_file_name_play -Force -ErrorAction SilentlyContinue
sleep -Milliseconds 500

#echo $pole_prehravani_v_mpv
$pole_prehravani_v_mpv += "pause"
Set-Content -Path $out_file_name_play -Encoding ASCII -Value $pole_prehravani_v_mpv
sleep -Milliseconds 500

echo "hotovo"
sleep 10

