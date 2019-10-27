if ls webcamenable
then
        #disable webcam
        sudo rmmod -f uvcvideo
        notify-send 'WebCam Disabled' 'The WebCam was been disabled.' 
        echo before 
	ls webcamenable
        rm webcamenable
        echo after 
	ls webcamenable 
else
        #enable webcam 
        sudo modprobe uvcvideo
        notify-send 'WebCam Enabled' 'The WebCam was been enabled.'
        echo before 
	ls webcanenable
        touch webcamenable
        echo after
	ls  webcamenable 
fi




