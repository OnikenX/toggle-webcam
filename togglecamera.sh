#!/bin/bash

#Copyright (C) 2019 OnikenX

#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.

#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.

#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <https://www.gnu.org/licenses/>.

if lsmod | grep uvcvideo
then
        #disable webcam
        if kdesu -c "rmmod -f uvcvideo"
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
