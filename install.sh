#!/bin/bash
set -e
# Authors:      Rodrigo Cuadra
#               with Collaboration of Jose Miguel Rivera
#
# Support:      rcuadra@vitalpbx.com
#
echo -e "\n"
echo -e "************************************************************"
echo -e "*    Welcome to the VitalPBX Pico2Wave TTS Integration     *"
echo -e "************************************************************"
cd /var/lib/asterisk/agi-bin/
wget https://github.com/VitalPBX/pico2wave/raw/master/picotts.agi
chown asterisk:asterisk picotts.agi
chmod +x picotts.agi
cd /etc/asterisk/
wget https://github.com/VitalPBX/pico2wave/raw/master/app_picotts.conf
cd /usr/bin
wget https://github.com/VitalPBX/pico2wave/blob/master/pico2wave
chmod +x pico2wave
apt install libttspico-data
cd /etc/asterisk/vitalpbx
wget https://github.com/VitalPBX/pico2wave/raw/master/extensions__90-pico2wave.conf
asterisk -rx"dialplan reload"
echo -e "\n"
echo -e "************************************************************"
echo -e "*                 For test dial *8877                      *"
echo -e "************************************************************"
