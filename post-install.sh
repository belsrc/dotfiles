#!/bin/bash

# Install Package Archives
clear
echo "Installing New Package Archives..."
echo ""
# System Monitor
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository -y --remove ppa:whatever/ppa
# Atom.io
sudo add-apt-repository -y ppa:webupd8team/atom
# Filezilla
sudo add-apt-repository -y ppa:n-muench/programs-ppa2
# LibreOffice
sudo add-apt-repository -y ppa:libreoffice/ppa
# Inkscape
sudo add-apt-repository -y ppa:inkscape.dev/stable
# Pinta
sudo add-apt-repository -y ppa:pinta-maintainers/pinta-stable
# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# Vocal
sudo add-apt-repository -y ppa:nathandyer/vocal-daily
# Numix Icons
sudo apt-add-repository -y ppa:numix/ppa
# ElementaryPlus Icons
sudo add-apt-repository -y ppa:cybre/elementaryplus
# f.lux
sudo add-apt-repository -y ppa:kilian/f.lux
# Make
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
# Node
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -



# Update System Action
clear
echo "Updating system..."
echo ""
sudo apt-get -y update
sudo apt-get -y dist-upgrade

# Speed-Up Memory Action
clear
echo "Speeding-up Memory..."
echo ""
sudo apt-get -y install preload
sudo apt-get -y install zram-config

# Install Ubuntu Restricted Extras Action
clear
echo "Installing Ubuntu Restricted Extras..."
echo ""
sudo apt-get -y install ubuntu-restricted-extras

# Install Support for Archive Formats Action
clear
echo "Installing Support for Archive Formats"
echo ""
sudo apt-get -y install zip unzip p7zip p7zip-rar rar unrar

# Install Gnome system monitor
clear
echo "Installing Gnome system monitor..."
echo ""
sudo apt-get -y install gnome-system-monitor




# Install Google Chrome Action
clear
echo "Installing Google Chrome..."
echo ""
wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# Install Firefox Action
clear
echo "Installing Firefox..."
echo ""
sudo apt-get -y install firefox
sudo apt-get -y install ttf-lyx

# Install Atom Action
clear
echo "Installing Atom..."
echo ""
sudo apt-get -y install atom

# Install FileZilla
clear
echo "Installing FileZilla..."
echo ""
sudo apt-get -y install filezilla

# Install LibreOffice
clear
echo "Installing LibreOffice..."
echo ""
sudo apt-get -y install libreoffice

# Install Inkscape
clear
echo "Installing Inkscape..."
echo ""
sudo apt-get -y install inkscape

# Install Pinta
clear
echo "Installing Pinta..."
echo ""
sudo apt-get -y install pinta



# Install Spotify
clear
echo "Installing Spotify - input will we required"
echo ""
sudo apt-get -y install spotify-client

# Install Vocal
clear
echo "Installing Vocal..."
echo ""
sudo apt-get -y install vocal



# Install Numix Circle icon theme
clear
echo "Installing Numix Circle icon theme..."
echo ""
sudo apt-get -y install numix-icon-theme-circle

# Install ElementaryPlus icons
clear
echo "Installing ElementaryPlus icons..."
echo ""
sudo apt-get -y install elementaryplus

# Install Combine elementaryPlus and Numic icon sets
clear
echo "Combineing elementaryPlus and Numic icon sets..."
echo ""
sudo curl https://raw.githubusercontent.com/michaldaniel/elementary-script/master/resources/numix-circle.index.theme > /usr/share/icons/Numix-Circle/index.theme
sudo curl https://raw.githubusercontent.com/michaldaniel/elementary-script/master/resources/elementay-plus.index.theme > /usr/share/icons/elementaryPlus/index.theme

# Install f.lux
clear
echo "Installing f.lux..."
echo ""
sudo apt-get -y install fluxgui




# Install Ubuntu make
clear
echo "Installing Ubuntu make..."
echo ""
sudo apt-get -y install ubuntu-make

# Install GIT
clear
echo "Installing GIT..."
echo ""
sudo apt-get -y install git

# Install MongoDB
clear
echo "Installing MongoDB..."
echo ""
sudo apt-get -y install mongodb-org
sudo service mongod start

# Install MySQL
clear
echo "Installing MySQL..."
echo ""
sudo apt-get -y install mysql-server
sudo service mysql start

# Install Redis
wget http://download.redis.io/releases/redis-stable.tar.gz
tar xzf redis-stable.tar.gz
cd redis-stable
sudo make install
sudo utils/install_server.sh
cd ..
# This assumes you took default port during install
sudo service redis_6379 start

# Install Node
clear
echo "Installing Node..."
echo ""
sudo apt-get -y install nodejs

# Install Global Node Packages
clear
echo "Installing Global Node..."
echo ""
npm install -g gulp
npm install -g nodemon
npm install -g webpack
npm install -g eslint
npm install -g plato



# Fix Broken Packages Action
clear
echo "Fixing the broken packages..."
echo ""
sudo apt-get -y -f install

# Clean-Up Junk Action
clear
echo "Cleaning-up junk..."
echo ""
sudo apt-get -y autoremove
sudo apt-get -y autoclean

# Notification
clear
notify-send -i utilities-terminal elementary-script "All tasks ran successfully!"
