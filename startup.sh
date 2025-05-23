#!/bin/bash

# Set VNC password (default: vncpassword)
mkdir -p /home/devuser/.vnc
echo "vncpassword" | vncpasswd -f > /home/devuser/.vnc/passwd
chmod 600 /home/devuser/.vnc/passwd

# Start the VNC server
vncserver :1 -geometry 1280x720 -depth 24

# Kill it so we can run manually in foreground later
vncserver -kill :1

# Start VNC server in foreground with XFCE
vncserver :1 -geometry 1280x720 -depth 24 -SecurityTypes None -xstartup /usr/bin/startxfce4

# Start noVNC
/opt/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 6080 &
echo "noVNC server running on port 6080"
