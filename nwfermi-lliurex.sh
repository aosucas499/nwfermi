#!/bin/bash

# borra los drivers antiguos del sistema

sudo apt-get purge --remove nwfermi-daemon -y
sudo apt-get purge --remove nwfermi-module -y
sudo apt-get purge --remove nwfermi-module-host -y
sudo apt-get purge --remove nwfermi-module-host-pointer -y
sudo apt-get purge --remove xf86-input-nextwindow -y

# Instala los drivers nuevos

# Los paquetes daemon, host y host-pointer no pueden estar instalados al mismo tiempo.

sudo apt-get install libc6-i386 -y
sudo dpkg -i ./lliurex21/nwfermi-daemon_0.6.5.1-0+lliurex11_amd64.deb
sudo dpkg -i ./lliurex21/nwfermi-module_0.6.5.1-0+lliurex11_amd64.deb
#sudo dpkg -i ./lliurex21/nwfermi-module-host_0.6.5.1-0+lliurex11_amd64.deb.deb
#sudo dpkg -i ./lliurex21/nwfermi-module-host-pointer_0.6.5.1-0+lliurex11_amd64.deb.deb
sudo dpkg -i ./lliurex21/xf86-input-nextwindow_0.3.4_lliurex1_amd64.deb
