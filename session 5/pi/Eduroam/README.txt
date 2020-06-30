Here are some files to help you use your Pi.

WiFi Password Security
======================

You first need to edit the file /etc/wpa_supplicant/wpa_supplicant.conf
changing 'USERNAME' to be your University username.

To do this use the command below

  sudo pico /etc/wpa_supplicant/wpa_supplicant.conf

Next you need to set the password however this needs to be in the file to allow
your Pi to connect to the eduroam WiFi network is plain text - in other
words anybody who has access to the file can see your password. If you've
left the default username and password as they are then anybody could log in
to your Pi and find your password.

You can use a hashed version of your password instead. A hash is a one way
function (i.e. it shouldn't be possible to recover the password from the
hash).

If you've already configured the wpa_supplicant.conf file then run the file
set_wpa_password in the terminal/console as:

sudo ./set_wpa_password

Finding your Pi IP address
==========================

If you want to connect to your Pi with ssh or vnc you need to know its IP
address. If you don't want to hook up a display to find out the IP address
then we've put together a simple service to help you.

Once you've configured things as below, you'll be able to go to

http://pifinder.eee.nottingham.ac.uk/

then enter your username and find out your IP address. This should work
everywhere on campus or in univeristy accommodation where the eduroam
network is. If you're in your own accommodation you'll have to figure
something else out!

To configure the Pi finder run the following commands in the
terminal/console (if using putty you can use cut/paste)

# When the WiFi network gets a new address the dhcpcd.exit-hook script will
# be run. Copy it to the right place.
sudo cp dhcpcd.exit-hook /etc/

# The pifinder_register script is used to configure the username associated
# with this Pi and pifinder_submit is run automatically by dhcpcd.exit-hook
# when the IP address changes.
# Copy them to the correct place.
sudo cp pifinder_register /usr/local/bin
sudo cp pifinder_submit /usr/local/bin

# Now configure pi finder for this Pi:
sudo /usr/local/bin/pifinder_register

# Reboot
sudo reboot

# Now when the Pi has rebooted, go to http://pifinder.eee.nottingham.ac.uk
# and enter your username. Hopefully you'll see your IP address in green!

