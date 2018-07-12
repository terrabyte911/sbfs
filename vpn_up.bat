Taskkill /IM BvSsh.exe /F
timeout 2 >nul
netsh -c interface ipv4 add neighbors "tap" "10.8.0.1" "00-ff-f3-88-c2-01" store=persistent
start "" "C:\Program Files (x86)\Bitvise SSH Client\BvSsh.exe" -profile=C:\Users\david\Documents\default.tlp -loginOnStartup