#!/bin/bash

# borra los drivers antiguos del sistema

sudo apt-get purge --remove nwfermi-daemon nwfermi-module nwfermi-module-host nwfermi-module-host-pointer xf86-input-nextwindow -y

# Instala los drivers nuevos

sudo apt-get install libc6-i386 -y
sudo dpkg -i ./focal/nwfermi-daemon_0.6.5.1-0+lliurex6+focal_amd64.deb
sudo dpkg -i ./focal/nwfermi-module_0.6.5.1-0+lliurex6+focal_amd64.deb
#sudo dpkg -i ./focal/nwfermi-module-host_0.6.5.1-0+lliurex6+focal_amd64.deb
#sudo dpkg -i ./focal/nwfermi-module-host-pointer_0.6.5.1-0+lliurex6+focal_amd64.deb
sudo dpkg -i ./focal/xf86-input-nextwindow_0.3.4~lliurex1+focal2_amd64.deb
