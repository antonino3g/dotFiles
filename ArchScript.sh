#!/bin/sh

# Author: Antonino Praxedes
# Shell Script for Arch Linux

# Display message with option to cancel
	dialog --title "[Step 01] - Softwares Basics" --msgbox "jdk8-openjdk  
\nicedtea-web\nfirefox-pt-BR\nflashplayer\nunrar\nunzip\np7zip\nalsa-lib\nalsa-tools\nalsa-utils\nalsa-oss\nvlc\ndropbox\naudacious\nconky\nntfs-3g\nprimus\nnetworkmanager\nnetwork-manager-applet\nplayonlinux\nwine <all>\n\n <Esc> Skip" 28 50

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 10 50 ; 
	sleep 1
	clear	
else
	/usr/bin/sudo pacman -S jdk8-openjdk icedtea-web firefox firefox-i18n-pt-br flashplayer unrar unzip p7zip alsa-lib alsa-tools alsa-utils alsa-oss vlc dropbox audacious conky ntfs-3g primus networkmanager network-manager-applet playonlinux wine wine_gecko wine-mono lib32-libpulse lib32-alsa-plugins lib32-mpg123 lib32-sdl ;  
	/usr/bin/sudo systemctl enable NetworkManager.service ;
	/usr/bin/sudo systemctl start NetworkManager.service ;		
	sleep 10;
fi

# Display message
	dialog --title "[Step 02] - IDE Eclipse JEE" --msgbox "eclipse-jee\n\n <Esc> Skip" 10 50	

# Return status of non-zero indicates cancel
if [ "$?" != "0" ]
then
	dialog --infobox "Skiping step [...]" 10 50 ; 
	sleep 1
	clear	

else
	/usr/bin/sudo pacman -S eclipse-jee ; 

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
	/usr/bin/sudo systemctl status bumblebeed ;
	sleep 4 ;

fi

# Final display message
dialog --infobox "Thank you a lot for use my little shell script. See ya!\n\n\n
  .--.                 Pacman v5.0.1 - libalpm v10.0.1\n
/ _.-' .-.  .-.  .-.   Copyright (C) 2006-2016 Pacman Development Team\n
\  '-. '-'  '-'  '-'   Copyright (C) 2002-2006 Judd Vinet\n
 '--'\n\n Author: Antonino Praxedes		       
" 12 80 ; 
	




