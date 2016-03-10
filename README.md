# PiDelayedAuditoryFeedback

A very simple RaspberryPi project that delays input audio about 200ms to the output audio to get something that is called "delayed auditory feedback". The usage of a similar solution is quite popular in german tv show called [Circus HalliGalli](http://www.prosieben.de/tv/circus-halligalli) or the "SpeechJammer" project.

## Installation

TODO

## Configuration

If you run [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) on your RaspberryPi, everything should already set up for you. You may want to increase the gain of all input and output devices. The volume should be very high to make sure the effect takes in place.

To configure your sound cards type:

    alsamixer

Once you have set your settings, remember to store your changes:

	sudo alsactl store

The script automatically selectes the **second** sound card that is found (not the sound card built in the Raspberry Pi). Since a usb headset offers a audio output and a audio input, everything should work. If you want to change this, just modify `start.sh` and change the `1` in `plughw:1` to the number of the soundcard you prefer.

## Hardware

I am using the following hardware, but I think the most Raspberry Pi models, WiFi sticks, usb-headsets should work. Feel free to click on [this link](https://einkaufen.gooding.de/toolbox-bodensee-e-v-33513) before you buy the stuff, so our non-profit hackspace [Toolbox Bodensee e.V.](http://toolbox-bodensee.de) will get a commission.

* [Raspberry Pi 2](http://www.amazon.de/gp/product/B00T2U7R7I)
* [Power supply (2000mA)](http://www.amazon.de/gp/product/B00FA2V318)
* [WiFi stick](http://www.amazon.de/gp/product/B003MTTJOY)
* [USB headset](http://www.amazon.de/gp/product/B00SX5W6FQ)
* [MicroSD card (16GB)](http://www.amazon.de/gp/product/B007XZL7PC)

## Usage 

You have nothing todo, since the service is started automatically. If you want to start the service by your own just type:

    sudo /etc/init.d/pi-delayed-auditory-feedback start

To stop the service, just type:

    sudo /etc/init.d/pi-delayed-auditory-feedback stop