#!/bin/bash

if lsmod | grep uvcvideo
then
        #disable webcam
        if sudo /usr/bin/disablecamera.sh
	then        
		notify-send -a Camera -u normal  'WebCam Disabled' 'The WebCam was been disabled.' 
	else
		notify-send -a Camera -u normal 'Error Disabling' 'The WebCam was not been disabled'
	fi
else
        #enable webcam 
        if kdesu -c "modprobe uvcvideo"
        then
		notify-send -a Camera -u normal 'WebCam Enabled' 'The WebCam was been enabled.'
	else
		notify-send -a Camera -u normal 'Error Enabling' 'The WebCam was not been enabled.'
	fi
fi
