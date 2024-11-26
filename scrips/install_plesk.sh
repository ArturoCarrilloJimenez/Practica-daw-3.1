#!/bin/bash

set -ex

apt update

apt upgrade -y

# Borramos instalaciones previas
rm -rf /tmp/plesk-installer

# Descargar el instalador de Plesk
wget https://autoinstall.plesk.com/plesk-installer -P /tmp

chmod +x /tmp/plesk-installer

# Instalamos Plesk
/tmp/plesk-installer install plesk