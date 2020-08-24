#!/usr/bin/bash
if $USER = root
then
	echo " " >> /etc/sudoers
	echo "##run command without root" >> /etc/sudoers
	echo "ALL oniken-pc = (root) NOPASSWD: /usr/bin/disablecamera.sh" >
        echo "#!/usr/bin/bash" >> /usr/bin/disablecamera.sh
        echo "rmmod -f uvcvideo" >> /usr/bin/disablecamera.sh
        chmod +x /usr/bin/disablecamera.sh
else
        #run this with sudo or as root 
fi

