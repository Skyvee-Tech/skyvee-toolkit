@echo off
title ALL DOWNLOADER BY SKYVEE TECH
mode con: cols=100 lines=30
color 0F

:menu
cls
echo.
echo  [106;30m  SKYVEE TECH ALL DOWNLOADER  [0m
echo  [90m  Location: %~dp0 [0m
echo.
echo  [97m[1][0m TikTok Video (No Watermark)
echo  [97m[2][0m YouTube Download (MP3 / MP4)
echo  [97m[3][0m Download Full Profil TikTok (Hati-hati Storage!)
echo  [97m[4][0m Update Mesin Downloader
echo  [91m[5][0m Keluar
echo.
set /p "choice= Pilih Menu [1-5]: "

if "%choice%"=="1" goto tiktok
if "%choice%"=="2" goto music
if "%choice%"=="3" goto profile
if "%choice%"=="4" goto update
if "%choice%"=="5" exit
goto menu

:tiktok
cls
set /p "link= Masukkan Link Video TikTok: "
echo.
echo  [94m[*] Memproses Video No-Watermark...[0m
.\yt-dlp.exe --no-part -o "Downloads/TikTok/%%(uploader)s_%%(id)s.%%(ext)s" --referer "https://www.tiktok.com/" "%link%"
goto selesai

:music
cls
echo.
echo  [106;30m  YOUTUBE DOWNLOADER  [0m
echo.
echo  [97m[1][0m MP3 (Audio Only)
echo  [97m[2][0m MP4 (Video)
echo  [91m[0][0m Kembali ke Menu Utama
echo.
set /p "yt_fmt= Pilih Format [1-2]: "
if "%yt_fmt%"=="1" goto yt_mp3_quality
if "%yt_fmt%"=="2" goto yt_mp4_quality
if "%yt_fmt%"=="0" goto menu
goto music

:yt_mp3_quality
cls
echo.
echo  [106;30m  YOUTUBE - PILIH KUALITAS MP3  [0m
echo.
echo  [97m[1][0m 320 kbps  (Kualitas Terbaik)
echo  [97m[2][0m 192 kbps  (Kualitas Bagus)
echo  [97m[3][0m 128 kbps  (Ukuran Kecil)
echo  [91m[0][0m Kembali
echo.
set /p "mp3_q= Pilih Kualitas [1-3]: "
if "%mp3_q%"=="1" set "mp3_br=320K" & goto yt_mp3_dl
if "%mp3_q%"=="2" set "mp3_br=192K" & goto yt_mp3_dl
if "%mp3_q%"=="3" set "mp3_br=128K" & goto yt_mp3_dl
if "%mp3_q%"=="0" goto music
goto yt_mp3_quality

:yt_mp3_dl
cls
set /p "link= Masukkan Link YouTube: "
echo.
echo  [95m[*] Mengonversi ke MP3 %mp3_br%...[0m
.\yt-dlp.exe -x --audio-format mp3 --audio-quality 0 --postprocessor-args "-b:a %mp3_br%" -o "Downloads/Music/%%(title)s.%%(ext)s" "%link%"
goto selesai

:yt_mp4_quality
cls
echo.
echo  [106;30m  YOUTUBE - PILIH KUALITAS MP4  [0m
echo.
echo  [97m[1][0m 1080p  (Full HD)
echo  [97m[2][0m 720p   (HD)
echo  [97m[3][0m 480p   (SD)
echo  [97m[4][0m 360p   (Ringan)
echo  [97m[5][0m Kualitas Terbaik
echo  [91m[0][0m Kembali
echo.
set /p "mp4_q= Pilih Kualitas [1-5]: "
if "%mp4_q%"=="1" set "mp4_res=1080" & goto yt_mp4_dl
if "%mp4_q%"=="2" set "mp4_res=720"  & goto yt_mp4_dl
if "%mp4_q%"=="3" set "mp4_res=480"  & goto yt_mp4_dl
if "%mp4_q%"=="4" set "mp4_res=360"  & goto yt_mp4_dl
if "%mp4_q%"=="5" goto yt_mp4_best
if "%mp4_q%"=="0" goto music
goto yt_mp4_quality

:yt_mp4_dl
cls
set /p "link= Masukkan Link YouTube: "
echo.
echo  [94m[*] Mendownload MP4 %mp4_res%p...[0m
.\yt-dlp.exe -f "bestvideo[height<=%mp4_res%][ext=mp4]+bestaudio[ext=m4a]/bestvideo[height<=%mp4_res%]+bestaudio/best[height<=%mp4_res%]" --merge-output-format mp4 -o "Downloads/YouTube/%%(title)s_%mp4_res%p.%%(ext)s" "%link%"
goto selesai

:yt_mp4_best
cls
set /p "link= Masukkan Link YouTube: "
echo.
echo  [94m[*] Mendownload MP4 Kualitas Terbaik...[0m
.\yt-dlp.exe -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio/best" --merge-output-format mp4 -o "Downloads/YouTube/%%(title)s_best.%%(ext)s" "%link%"
goto selesai

:profile
cls
echo  [91m[!] PERINGATAN: Ini akan mendownload SEMUA video dari akun tersebut.[0m
set /p "user= Masukkan Link Profil/Username: "
.\yt-dlp.exe --no-part -o "Downloads/Profiles/%%(uploader)s/%%(title)s.%%(ext)s" --referer "https://www.tiktok.com/" "%user%"
goto selesai

:update
cls
echo  [92m[*] Mengecek versi terbaru yt-dlp...[0m
.\yt-dlp.exe -U
pause
goto menu

:selesai
echo.
echo  [102;30m  DONE!  [0m

timeout /t 5 /nobreak >nul

:: Notifikasi Windows via PowerShell
powershell -Command "& { $t = 'Download Selesai sayang!'; $m = 'File berhasil diproses oleh SKYVEE TECH'; [Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime] | Out-Null; $template = [Windows.UI.Notifications.ToastNotificationManager]::GetTemplateContent([Windows.UI.Notifications.ToastTemplateType]::ToastText02); $textNodes = $template.GetElementsByTagName('text'); $textNodes.Item(0).AppendChild($template.CreateTextNode($t)) | Out-Null; $textNodes.Item(1).AppendChild($template.CreateTextNode($m)) | Out-Null; $toast = [Windows.UI.Notifications.ToastNotification]::new($template); [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier('yt-dlpTool').Show($toast); }"
pause
goto menu