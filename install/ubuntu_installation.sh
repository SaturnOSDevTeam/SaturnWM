sudo apt-get install xorg xorg-dev gcc make git
sudo apt-get install libfreetype6-dev
git clone git clone https://github.com/SaturnOSDevTeam/SaturnWM
cd SaturnWM
sudo make clean ubuntu_install
sudo cp saturn.desktop /usr/share/xsessions/ragnar.desktop
