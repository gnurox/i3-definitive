#exec startxfce4

xinput set-prop "Synaptics TM3381-002" "libinput Scrolling Pixel Distance" 50
export MOZ_USE_XINPUT2=1
export QT_QPA_PLATFORMTHEME=qt5ct
exec i3
