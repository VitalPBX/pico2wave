Pico2Wave Text to Speech (TTS) in VitalPBX
=====

This script makes use of pico2wave translate text to speech service
in order to render text to speech and play it back to the user.
It supports a variety of different languages.

## Requirements<br>
Perl:                    The Perl Programming Language<br>
perl-libwww-perl:        The World-Wide Web library for Perl<br>
perl-LWP-Protocol-https: For HTTPS support<br>
sox:                     Sound eXchange, sound processing program<br>

## Installation<br>

Copy install.sh to your home directory and procedure to execute.
<pre>
[root@vitalpbx ~]# cd /
[root@vitalpbx ~]# wget https://raw.githubusercontent.com/VitalPBX/pico2wave/master/install.sh
[root@vitalpbx ~]# chmod +x install.sh
[root@vitalpbx ~]# ./install.sh
</pre>

Now Dial
<pre>
*8877
</pre>

You should hear the following sentence
<pre>
;;Play mesage in US English:
This is a simple Vital P B X text to speech test in english.
;;Play mesage in GB English:
This is a simple Vital P B X text to speech test in british english.
;;Play mesage in German:
Dies ist ein einfacher Vital P B X Text-to-Speech-Test in German.
;;Play message in Spanish
Esta es una prueba simple de texto a voz de Vital P B X en Español.
;;Play message in french
Il s'agit d'un simple test Vital P B X text to speech en french.
;;Play message in french
Questo è un semplice test di sintesi vocale di Vital P B X in italiano.
</pre>
