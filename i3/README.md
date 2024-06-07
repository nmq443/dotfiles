# i3 config

When using mousepad on laptop, you should create file `/etc/X11/xorg.conf.d/30-touchpad.conf` and put these lines in it:
```
Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    # Option "ScrollMethod" "edge"
    Option "TappingButtonMap" "lrm" # 1/2/3 finger, for 3-finger middle lrm
    Option "NaturalScrolling" "true"
EndSection
```
