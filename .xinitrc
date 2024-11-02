#exec startxfce4

xinput set-prop "Synaptics TM3381-002" "libinput Scrolling Pixel Distance" 50
export MOZ_USE_XINPUT2=1
exec i3
