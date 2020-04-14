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
wget https://github.com/VitalPBX/pico2wave/raw/master/app-picotts.conf
cd /usr/bin
wget https://github.com/VitalPBX/pico2wave/raw/master/pico2wave
chmod +x pico2wave
cd /usr/share/picotts/lang
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/de-DE_gl0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/de-DE_ta.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/en-GB_kh0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/en-GB_ta.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/en-US_lh0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/en-US_ta.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/es-ES_ta.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/es-ES_zl0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/fr-FR_nk0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/fr-FR_ta.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/it-IT_cm0_sg.bin
wget https://github.com/VitalPBX/pico2wave/raw/master/lang/it-IT_ta.bin
cd /etc/asterisk/ombutel
wget https://github.com/VitalPBX/pico2wave/raw/master/extensions__90-pico2wave.conf
asterisk -rx"dialplan reload"
echo -e "\n"
echo -e "************************************************************"
echo -e "*                 For test dial *8877                      *"
echo -e "************************************************************"
