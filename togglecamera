if lsmod | grep uvcvideo
then
        #disable webcam
        kdesu -c "rmmod -f uvcvideo"
        notify-send -a Camera -u normal  'WebCam Disabled' 'The WebCam was been disabled.' 
else
        #enable webcam 
        kdesu -c "modprobe uvcvideo"
        notify-send -a Camera -u normal 'WebCam Enabled' 'The WebCam was been enabled.'
fi
