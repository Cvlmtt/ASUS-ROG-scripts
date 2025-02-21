# ASUS-ROG-scripts
These are small scripts that allow switching between fan profiles and GPU modes on ASUS TOG laptopts. 
They use ```asusctl``` to change the operating modes. 

The ```togglefan.sh``` script sequentially cycles through the three fan modes:
 - Quite
 - Balanced
 - Performance
The ```togglegpu.sh``` script allows switching between the "Integrated" and "Hybrid" GPU modes and vice versa. 

### Dependencies:
- [asusctl](https://gitlab.com/asus-linux/asusctl)
- [zenity](https://github.com/GNOME/zenity)
- [supergfxctl](https://gitlab.com/asus-linux/supergfxctl)
- notify-send
### Notes: 
If you want to display the fan icon in the fan notification, replace "mypath/fan.png" with the path where the image is stored on your computer. 
The scripts have been tested on GNOME 41. 
