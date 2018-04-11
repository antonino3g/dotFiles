#!/bin/sh

# By: Antonino Praxedes
# Shell Script for After installation Arch Linux

# Display message with option to cancel
	dialog --title "[Step 01] - Softwares Basics" --msgbox "jdk8-openjdk  
\nicedtea-web\nnet-tools\nfile-roller\nsystem-config-printer\ncups\nnghostscript\ngsfonts\nfirefox-pt-BR\nflashplayer\nunrar\nunzip\np7zip\nalsa-lib\nalsa-tools\nalsa-utils\nalsa-oss\nvlc\ndropbox\naudacious\nconky\nntfs-3g\nprimus\nnetworkmanager\nnetwork-manager-applet\nplayonlinux\nwine <all>\n\n <Esc> Skip" 28 50

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 10 50 ; 
	sleep 1
	clear	
else
	/usr/bin/sudo pacman -S jdk8-openjdk qt4 icedtea-web net-tools ;
	/usr/bin/sudo pacman -S firefox firefox-i18n-pt-br flashplugin unrar unzip ;
	/usr/bin/sudo pacman -S alsa-lib alsa-tools alsa-utils alsa-oss playonlinux ;
	/usr/bin/sudo pacman -S vlc audacious conky ntfs-3g primus networkmanager network-manager-applet ;
	/usr/bin/sudo pacman -S wine wine_gecko wine-mono lib32-libpulse ;
	/usr/bin/sudo pacman -S lib32-alsa-plugins lib32-mpg123 lib32-sdl ;
	/usr/bin/sudo pacman -S system-config-printer cups ghostscript gsfonts file-roller ;  
	
	/usr/bin/sudo systemctl enable NetworkManager.service ;
	/usr/bin/sudo systemctl start NetworkManager.service ;		
	/usr/bin/sudo systemctl start org.cups.cupsd.service ;
	/usr/bin/sudo systemctl enable org.cups.cupsd.service ;
	sleep 4;
fi

# Display message
	dialog --title "[Step 02] - AUR " --msgbox "android-studio\ndropbox\ngoogle-chrome\n\n <Esc> Skip" 10 50	

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 10 50 ; 
	sleep 1
	clear	
else
	yaourt -S android-studio ; 
	yaourt -S dropbox ; 
	yaourt -S google-chrome ; 
fi

# Display message
	dialog --title "[Step 03] - LibreOffice" --msgbox "libreoffice
\nlibreoffice-pt-BR\n\n <Esc> Skip" 10 50	

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 10 50 ; 
	sleep 1
	clear	
else
	/usr/bin/sudo pacman -Sy libreoffice libreoffice-pt-BR ; 
fi

# Display message
	dialog --title "[Step 04] - Bumblebee & drivers Intel/Nvidia" --msgbox "bumblebee\nintel-dri\nxf86-video-intel\nsteam\nnvidia\nbbswitch\nlib32-nvidia-utils\nlib32-intel-dri\nlib32-virtualgl\n\n <Esc> Skip" 15 50	

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 15 50 ; 
	sleep 1
	clear	
else
	/usr/bin/sudo pacman -S  steam intel-dri xf86-video-intel bumblebee nvidia bbswitch lib32-nvidia-utils lib32-intel-dri lib32-virtualgl ; 
	/usr/bin/sudo gpasswd -a $USER bumblebee ;
	/usr/bin/sudo systemctl enable bumblebeed ;
	/usr/bin/sudo systemctl start bumblebeed ;
	sleep 4 ;
fi

# Final display message
dialog --infobox "Thank you a lot for use my little shell script. See ya!\n\n\n
  .--.                 Pacman v5.0.1 - libalpm v10.0.1\n
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2016 Pacman Development Team\n
\  '-. '-'  '-'  '-'   Copyright (C) 2002-2006 Judd Vinet\n
 '--'\n\n By: Antonino Praxedes		       
" 12 80 ;
