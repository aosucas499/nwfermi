#!/bin/bash

# borra los drivers antiguos del sistema

sudo apt-get purge --remove nwfermi-daemon -y
sudo apt-get purge --remove nwfermi-module -y
sudo apt-get purge --remove nwfermi-module-host -y
sudo apt-get purge --remove nwfermi-module-host-pointer -y
sudo apt-get purge --remove xf86-input-nextwindow -y


