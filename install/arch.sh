#/bin/bash

sudo pacman -S --needed xorg xorg-xinit gcc make git freetype2
git clone https://github.com/SaturnOSDevTeam/SaturnWM
cd SaturnWM
sudo cp saturn.desktop /usr/share/xsessions/ragnar.desktop
sudo make saturn install
echo "! INSTALLED"

if [ ! -f ~/.xinitrc ] 
then
    touch ~/.xinitrc
    echo "exec Saturn" > ~/.xinitrc
    echo "! WRITTEN TO ~/.xinitrc"
fi
