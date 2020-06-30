sudo raspi-config
sudo apt-get install codeblocks
sudo apt-get remove libopencv*
sudo apt autoremote
sudo apt autoremove
sudo apt-get install build-essential cmake cmake-curses-gui pkg-config
sudo apt-get install   libjpeg-dev   libtiff5-dev   libjasper-dev   libpng12-dev   libavcodec-dev   libavformat-dev   libswscale-dev   libeigen3-dev   libxvidcore-dev   libx264-dev   libgtk2.0-dev
sudo apt-get install libjpeg-dev libpng-dev libtiff-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install libgtk-3-dev
sudo apt-get install libcanberra-gtk*
sudo apt-get install libatlas-base-dev gfortran
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.0.1.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.0.1.zip
unzip opencv.zip
unzip opencv_contrib.zip
mv opencv-4.0.1 opencv
mv opencv_contrib-4.0.1 opencv_contrib
cd ~/opencv
mkdir build
cd build
ccmake
ccmake ../
cd ..
ls
cd cmake
ls
cd ..
ls
cmake
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules     -D ENABLE_NEON=ON     -D ENABLE_VFPV3=ON     -D BUILD_TESTS=OFF     -D OPENCV_ENABLE_NONFREE=ON     -D INSTALL_PYTHON_EXAMPLES=OFF     -D BUILD_EXAMPLES=OFF ..
sudo apt-get -y install libv4l-dev v4l-utils
sudo modprobe bcm2835-v4l2
v4l2-ctl --list-devices
ccmake
ccmake ../
sudo nano /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
make -j4
sudo make install
sudo ldconfig
sudo nano /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
v4l2-ctl --list-devices
sudo modprobe bcm2835-v4l2
v4l2-ctl --list-devices
v4l2-ctl --set-fmt-video=width=800,height=600,pixelformat=3
v4l2-ctl --stream-mmap=3 --stream-count=1 --stream-to=~/test.jpg
ls
v4l2-ctl --stream-mmap=3 --stream-count=1 --stream-to=test.jpg
ls
sudo nano /etc/modules-load.d/modules.conf
sudo raspi-config
pkg-config --cflags opencv
sudo ldconfig
ls
cd opencv
ls
sudo make install
cd build/
sudo make install
sudo ldconfig
ccmake ../
sudo nano /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
make -j4
make install
sudo make install
sudo ldconfig
pkg-config --cflags opencv4
ccmake
ccmake ../
ls
mkdir Eduroam
cd Eduroam/
cp /media/pi/EEZJIB/year1/* .
ls
sudo cp wpa_supplicant.conf /etc/wpa_supplicant/
sudo cp ca.pem /etc/wpa_supplicant/
ls
rm -rf ca.pem wpa_supplicant.conf 
ls
rm pifinder.tar 
ls
sudo reboot
cd /etc
cd wpa_supplicant/
vi wpa_supplicant.conf 
sudo vi wpa_supplicant.conf 
cd
ls
cd Eduroam/
ls
chmod a+x set_wpa_password 
ls
sudo ./set_wpa_password 
more /etc/wpa_supplicant/wpa_supplicant.conf 
sudo ./set_wpa_password 
more /etc/wpa_supplicant/wpa_supplicant.conf 
sudo vi /etc/wpa_supplicant/wpa_supplicant.conf 
sudo ./set_wpa_password 
more /etc/wpa_supplicant/wpa_supplicant.conf 
sudo vi /etc/wpa_supplicant/wpa_supplicant.conf 
ls
sudo reboot
cd Eduroam/
ls
more README.txt 
sudo shutdown
sudo shutdown now
gpio -v
sudo apt-get purge wiringpi
hash -r
sudo apt-get install git-core
sudo apt-get update
sudo apt-get upgrade
cd 
git clone git://git.drogon.net/wiringPi
cd ~/wiringPi/
git pull origin
cd ~/wiringPi/
./build
exit
ls /dev
raspi-config
sudo raspi-config
raspistill -v -o test.jpg
sudo nano /etc/modules
cd opencv
cd build/
ls
ccmake ../
v4l2-ctl -d /dev/video0 --all
sudo nano /etc/modules-load.d/modules.conf
ccmake ../
sudo raspi-config
sudo apt-get install libv4l-dev
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h
cd "$cwd"
sudo apt-get install v4l-utils
sudo apt-get install ffmpeg
sudo apt-get install gstreamer
sudo apt-get install gstreamer1.0
sudo apt-get install gstreamer-tools
sudo apt-get install gstreamer1.0-tools
sudo apt-get install v4l
dmesg
sudo raspi-config
dmesg
v4l2-ctl -V
dmesg
v4l2-ctl -V
dmesg
v4l2-ctl -V
v4l2-ctl
v4l2-ctl -l
raspistill -v -o test.jpg
v4l2-ctl -d /dev/video0 --all
dmesg
wpa_supplicant -h
sudo apt-mark hold wpa_supplicant
apt list --installed
sudo apt-mark hold wpasupplicant
sudo apt update
sudo apt upgrade
df -Bm
sudo reboot
df -Bm
wpa_supplicant -h
espeak
sudo apt install espeak
espeak
espeak "hello"
sudo raspi-config
espeak "hello"
espeak "hello" 2>/dev/null
amixer cset numid=3,1
sudo apt-get install pulseaudio
espeak "hello" 2>/dev/null
sudo apt remove pulseaudio
espeak "hello" 2>/dev/null
espeak "hello"
sudo raspi-config
espeak "hello"
sudo shutdown now
sudo set_wpa_password
sudo nano /etc/wpa_supplicant/wpa_supplicant.conf 
cd /etc/wpa_supplicant/
sudo ./set_wpa_password
ls
cd /home/pi/Eduroam/
sudo ./set_wpa_password 
ping google#
ping google
reboot
sudo set_wpa_password
ping google.com
ping google
ping google.com
passwd
sudo ./set_wpa_password
cd Eduroam/
sudo ./set_wpa_password
reboot
ifconfig
sudo ./set_wpa_password
cd Eduroam/
sudo ./set_wpa_password
reboot
cd Eduroam/
sudo ./set_wpa_password
reboot
ifconfig
sudo cp dhcpcd.exit-hook /etc/
cd Eduroam/
sudo cp dhcpcd.exit-hook /etc/
sudo cp pifinder_register /usr/local/bin
sudo cp pifinder_submit /usr/local/bin
sudo /usr/local/bin/pifinder_register
cd /usr/local/bin/
ls
./pifinder_register
sudo chmod -x pifinder_register 
./pifinder_register
sudo ./pifinder_register
sudo chmod +x pifinder_register 
sudo ./pifinder_register
reboot
ifconfig
cd /usr/local/bin/
ls
sudo chmod +x pifinder_submit 
sudo ./pifinder_register
reboot
cd Documents/Example\ Projects/BlinkTest/
ls
gcc -o blink main.cpp -l wiringPi
gcc -h
gcc -o blink main.cpp -l wiringPi
cd bin/Debug/
ls
./BlinkTest 
cd /home/pi/Documents/testing/
ls
./hello_world
gcc -o hello hello_world.c
ls
./hello
cd..
cd ..
cd Example\ Projects/
cd BlinkTest/
ls
gcc -o blink main.c
gcc -o blink main.cpp
ls
./blink
gcc -o blink main.cpp
gpio readall
gcc -o blink main.cpp
./blink 
gcc -o blink main.cpp
./blink 
gcc -o blink main.cpp
./blink 
gcc -o blink main.cpp
./blink 
gcc -o blink main.cpp
gcc -o blink main.cpp -l wiringPi
./blink 
raspi-config
sudo
raspi-config
sudo raspi-config
espeak
espeak "hello"
sudo raspi-config
a
sudo amixer
sudo amixer cset numid=1 70%
espeak "hello"
sudo amixer cset numid=1 100%
espeak "hello"
espeak "cunt"
espeak "hello cunt"
eseak "The missile knows where it is at all times. It knows this because it knows where it isn't, by subtracting where it is, from where it isn't, or where it isn't, from where it is, whichever is greater, it obtains a difference, or deviation. The guidance sub-system uses deviations to generate corrective commands to drive the missile from a position where it is, to a position where it isn't, and arriving at a position where it wasn't, it now is. Consequently, the position where it is, is now the position that it wasn't, and it follows that the position where it was, is now the position that it isn't. In the event of the position that it is in is not the position that it wasn't, the system has required a variation. The variation being the difference between where the missile is, and where it wasn't. If variation is considered to be a significant factor, it too, may be corrected by the GEA. However, the missile must also know where it was. The missile guidance computance scenario works as follows: Because a variation has modified some of the information the missile has obtained, it is not sure just where it is, however it is sure where it isn't, within reason, and it knows where it was. It now subracts where it should be, from where it wasn't, or vice versa. By differentiating this from the algebraic sum og where it shouldn't be, and where it was. It is able to obtain a deviation, and a variation, which is called air"
espeak "The missile knows where it is at all times. It knows this because it knows where it isn't, by subtracting where it is, from where it isn't, or where it isn't, from where it is, whichever is greater, it obtains a difference, or deviation. The guidance sub-system uses deviations to generate corrective commands to drive the missile from a position where it is, to a position where it isn't, and arriving at a position where it wasn't, it now is. Consequently, the position where it is, is now the position that it wasn't, and it follows that the position where it was, is now the position that it isn't. In the event of the position that it is in is not the position that it wasn't, the system has required a variation. The variation being the difference between where the missile is, and where it wasn't. If variation is considered to be a significant factor, it too, may be corrected by the GEA. However, the missile must also know where it was. The missile guidance computance scenario works as follows: Because a variation has modified some of the information the missile has obtained, it is not sure just where it is, however it is sure where it isn't, within reason, and it knows where it was. It now subracts where it should be, from where it wasn't, or vice versa. By differentiating this from the algebraic sum og where it shouldn't be, and where it was. It is able to obtain a deviation, and a variation, which is called air"
espeak "Somebody once told me the world is gonna roll me
I ain't the sharpest tool in the shed
She was looking kind of dumb with her finger and her thumb
espeak "Somebody once told me the world is gonna roll me
I ain't the sharpest tool in the shed
She was looking kind of dumb with her finger and her thumb
espeak "What the fuck did you just fucking say about me, you little bitch? I’ll have you know I graduated top of my class in the Navy Seals, and I’ve been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I’m the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You’re fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that’s just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little “clever” comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn’t, you didn’t, and now you’re paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You’re fucking dead, kiddo."

end
hel
p
espeak "What the fuck did you just fucking say about me, you little bitch? I’ll have you know I graduated top of my class in the Navy Seals, and I’ve been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I’m the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You’re fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that’s just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little “clever” comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn’t, you didn’t, and now you’re paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You’re fucking dead, kiddo."
espeak "A MAN HAS BEEN SPOTTED PROTESTING IN LEGO CITY

START THE NEW MILITARY TANKS

嘿!

BUILD THE TANKS

AND OFF TO TIANANMEN SQUARE

BRING IN THE SOLDIERS

CENSOR THE MEDIA

AND RUN OVER THE STUDENTS

THE NEW TIANANMEN SQUARE COLLECTION FROM LEGO CITY

sets not available in china"
espeak "企鹅"
espeak "ペンギン"
espeak "pengwin"
espeak "A man has fallen into the river in Lego City! Start the new rescue helicopter! Hey! Build the helicopter and off to the rescue. Prepare the lifeline, lower the stretcher, and make the rescue. The new Emergency Collection from Lego City!"
cd
ls
cd Music
omxplayer Hello\ World.mp3 
sudo omxplayer Hello\ World.mp3 
omxplayer -o localHello\ World.mp3
omxplayer -o local Hello\ World.mp3
sudo apt install omxplayer
sudo omxplayer Hello\ World.mp3 
omxplayer Hello\ World.mp3
sudo omxplayer helloworld.mp3
omxplayer--help
omxplayer --help
omxplayer -p -o local test.mkv
./omxplayer -p -o local test.mkv
aplay
aplay helloworld.mp3 
sudo amixer cset numid=1 70%
aplay helloworld.mp3 
sudo amixer cset numid=1 50%
aplay helloworld.mp3 
sudo amixer cset numid=1 75%
mpg helloworld.mp3 
mpg321 helloworld.mp3 
sudo apt-get -y install mpg321
mpg321 helloworld.mp3 
sudo amixer cset numid=1 100%
mpg321 helloworld.mp3 
mpg321 8bithello.mp3 
sudo amixer cset numid=1 75%
mpg321 8bithello.mp3 
omxplayer 8bithello.mp3 
mpg321 8bithello.mp3 
sudo amixer cset numid=1 100%
mpg321 8bithello.mp3 
alsamixer
mpg321 8bithello.mp3 
alsamixer
mpg321 8bithello.mp3 
espeak 
espeak "What the fuck did you just fucking say about me, you little bitch? I’ll have you know I graduated top of my class in the Navy Seals, and I’ve been involved in numerous secret raids on Al-Quaeda, and I have over 300 confirmed kills. I am trained in gorilla warfare and I’m the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You’re fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that’s just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little “clever” comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn’t, you didn’t, and now you’re paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You’re fucking dead, kiddo."
espeak "A man has fallen into the river in Lego City! Start the new rescue helicopter! Hey! Build the helicopter and off to the rescue. Prepare the lifeline, lower the stretcher, and make the rescue. The new Emergency Collection from Lego City!"
espeak "A MAN HAS BEEN SPOTTED PROTESTING IN LEGO CITY

START THE NEW MILITARY TANKS

嘿!

BUILD THE TANKS

AND OFF TO TIANANMEN SQUARE

BRING IN THE SOLDIERS

CENSOR THE MEDIA

AND RUN OVER THE STUDENTS

THE NEW TIANANMEN SQUARE COLLECTION FROM LEGO CITY

sets not available in china"
mpg321 8bithello.mp3 
ls
cd Documents
ls
~
cd /
cd Music
ls
cd Music
ls
mpg321 8bithello.mp3 
$ DISPLAY=:0 mpg123 test.mp3
DISPLAY=:0 mpg123 test.mp3
raspi-config
sudo raspi-config
sudo i2cdetect -y l
sudo i2cdetect
sudo i2cdetect -y l
sudo reboot
play ~/Music/8bithello.mp3
play ~/Music/helloworld.mp3
amixer sset 'Master' 50%
play ~/Music/helloworld.mp3
ls
cd Music
MPG123 8bithello.mp3 
mpg321 8bithello.mp3 
sudo apt-get update
sudo apt-get install sox
sudo apt-get install libsox-fmt-all
sox --version
play -/Music/8bithello.mp3
play ~/Music/8bithello.mp3
play ~/Music/dueloffates
play ~/Music/dueloffates.mp3
amixer sset 'Master' 100%
play ~/Music/dueloffates.mp3
amixer sset 'Master' 80%
play ~/Music/dueloffates.mp3
amixer sset 'Master' 75%
play ~/Music/dueloffates.mp3
play ~/Music/vengabus.mp3
amixer sset 'Master' 50%
play ~/Music/vengabus.mp3
amixer sset 'Master' 75%
play ~/Music/vengabus.mp3
cd Documents/testing/control/
ls
./control_test_2
./control_test
./control_test_2
g++g++ pi2c.o control_test_2.cpp -o control_test_2
g++ pi2c.o control_test_2.cpp -o control_test_2
./control_test_2
g++ pi2c.o control_test_2.cpp -o control_test_2
./control_test_2
g++ pi2c.o control_test_2.cpp -o control_test_2
./control_test_2
ls
g++ pi2c.o control.cpp -o control
ls
./control
g++ pi2c.o control.cpp -o control
./control
g++ pi2c.o control.cpp -o control
./control
g++ pi2c.o control.cpp -o control
./control
g++ pi2c.o control.cpp -o control
./control
raspi-config
sudo raspi-config
sudo reboot
espeak "ok sure"
espeak "C B A to do the distance"
espeak "geting encoder stuff is a pain in the arce crack"
espeak "kill humans"
espeak "dieeeee"
espeak "die"
espeak "kill kill kill"
espeak "die"
cp Documents/web/control/speak.php /var/www/html/control/ 
cd /var/www/html/control/ 
ls
cd ..;chmod 777 -R control
sudo cd ..;chmod 777 -R control
sudo chmod 777 -R control
cp ~Documents/web/control/speak.php /var/www/html/control/ 
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
ls
cd control/
ls
./control_2 f
./control_2 f -s 100 -t 1
cp /home/pi/Documents/web/control/speak.php /var/www/html/control/ 
sudo chmod 777 -R control
sudo chmod 777 -R .
espeak "helloo"
sudo raspi-config
sudo reboot
play ~/Music/caseyjones.mp3
espeak "micheal, lunch?"
espeak "lunch?"
espeak "lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? lunch? "
play ~/Music/500miles.mp3#
play ~/Music/500miles.mp3
amixer sset 'Master' 75%
play ~/Music/500miles.mp3
play ~/Music/helloworld.mp3
play ~/Music/500miles.mp3
amixer sset 'Master' 100%
play ~/Music/500miles.mp3
play ~/Music/dueloffates.mp3
cd Documents/testing/control/
ls
./control_2 f -s 50 -t 2
cd ..
cd speak/
ls
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest hello
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
./comtest
g++ comtest.cpp  -o comtest
espeask "kill all humans. kill all humans. 
espeask "kill all humans. kill all humans.  kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans.Q"

amixer set 'Master' 100%
espeask "kill all humans. kill all humans. 
espeask "kill all humans. kill all humans.  kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans"

amixer set 'Master' 100%
amixer sset 'Master' 100%
espeask "kill all humans. kill all humans. 
espeask "kill all humans. kill all humans.  kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans"
espeak " kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans."
espeak -help
espeak -a 200 -g 30 " kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans. kill all humans."
cd Documents/testing/cam
ls
python3 rpi_camera_stream.py 
cd .. 
cd control/
nano forward.sh
./forwafrd.sh
./forward.sh
sudo ./forward.sh
chmod -r forward.sh 
./forward.sh
i2cdetect -y 1
i2cdetect -y 0
i2cdetect -y 1
cd ..
cd ultrasonic/
ls
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
i2cdetect -y 0
./sonics_test 
i2cdetect -y 1
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
g++ pi2c.o sonics_test.cpp -o sonics_test
./sonics_test 
cd ..
ls
cd cam/
ls
python3 rpi_camera_stream.py 
cd ..
cd control/
g++ keyin.cpp -o key_in
sudo apt-get install libncurses5-dev libncursesw5-dev
g++ keyin.cpp -o key_in
ls
g++ keyin.cpp -o key_in
g++ keyin.cpp -o key_in -lncurses
./key_in 
g++ keyin.cpp -o key_in -lncurses
./key_in 
g++ keyin.cpp -o key_in -lncurses
./key_in 
g++ keyin.cpp -o key_in -lncurses
./key_in 
ls
g++ comtest.cpp -o comtest
./ comtest hello
./comtest hello
cut -d: -f1 /etc/passwd
usermod -aG sudo www-data
su www-user
su www-data
sudo su www-data
sudo system ctl stop apache2
sudo systemctl stop apache2
sudo systemctl stauts apache2
sudo systemctl status apache2
sudo su www-data
sudo systemctl start apache2
sudo systemctl status apache2
sudo nano /etc/sudoers 
ls
./control_2 f -s 20 -t 0.5
~/Documents/testing/control/control_2 f -s 20 -t 1
./control_2 f -s 20 -t 0.5
~/Documents/testing/control/control_2 f -s 40 -t 1
~/Documents/testing/control/control_2 f -s 40 -t 2
~/Documents/testing/control/control_2 f -s 100 - t 1
amixer set 'Master' 60%
play ~/Music/hopeandlory.mp3
play ~/Music/hopeandglory.mp3
amixer set 'Master' 70%
play ~/Music/hopeandglory.mp3
amixer set 'Master' 60%
play ~/Music/1812.mp3
amixer set 'Master' 70%
amixer set 'Master' 75%
play ~/Music/1812.mp3
amixer set 'Master' 60%
play ~/Music/dambuster.mp3
ls
play ~/Music/cider.mp3
amixer set 'Master' 80%
play ~/Music/cider.mp3
amixer set 'Master' 100%
play ~/Music/cider.mp3
amixer set 'Master' 75%
play ~/Music/tequila.mp3
ls
cd Documents
ls
cd testing]
cd testing
ls
cd speak
ls
g++ comtest2.cpp  -o comtest
./comtest2
g++ comtest.cpp  -o comtest
g++ comtest2.cpp  -o comtest2
./comtest2
espeak
espeak -help
espeak "A an has fallen into the river in lego city" -g
espeak "A an has fallen into the river in lego city" -g 3
espeak "test test test test test test test test" -g 5
espeak "test test test test test test test test" -g 10
espeak "test test test test test test test test" -g 20
./comtest2
g++ comtest2.cpp  -o comtest2
./comtest2
espeak "150"
./comtest2
g++ comtest2.cpp  -o comtest2
./comtest2
g++ comtest2.cpp  -o comtest2
./comtest2
espeak "150"
espeak "hello 150"
espeak "no"
amixer set 'Master' 100%
espeak "have you heard of the high elves?"
espeak "Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself" -g 20
espeak "Did you ever hear the tragedy of Darth Plagueis The Wise? I thought not. It’s not a story the Jedi would tell you. It’s a Sith legend. Darth Plagueis was a Dark Lord of the Sith, so powerful and so wise he could use the Force to influence the midichlorians to create life… He had such a knowledge of the dark side that he could even keep the ones he cared about from dying. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful… the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. Ironic. He could save others from death, but not himself" -g 10
espeak "150" -g 20
espeak "150" -g 10
espeak "shit on the city" -g 10
cd
cd Documents
cd testing
ls
cd ultrasonic
g++ speak.cpp  -o speaktest.cpp -o test
g++ speak.cpp  -o speak
ls
ls
cd Documents
ls
cd testing
ls
cd ultrasonic
ls
g++ pi2c.o speaker.cpp -o speaker
.\ speaker
.\speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
play ~/Music/karma
play ~/Music/karma.mp3
amixer set 'Master' 70%
play ~/Music/birthday.mp3
play ~/Music/truefaith.mp3
amixer set 'Master' 60%
play ~/Music/truefaith.mp3
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
cd Documents
cd testing
cd ultrasonic
./speaker
g++ pi2c.o speaker.cpp -o speaker
./speaker
