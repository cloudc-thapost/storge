wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip -o ngrok-stable-linux-amd64.zip > /dev/null 2>&1
read -p "Enter your ngork token here: " CRP
./ngrok authtoken $CRP 
nohup ./ngrok tcp 5900 &>/dev/null &



clear
echo "Script by BZOT9 TEAM"
echo "Updating System..."
sudo apt-get update -y
clear
echo "Setting Up..."
sudo apt-get install -y qemu-system-x86-64
clear
echo "Download Disk Windows XP SP3 by BinZ FAKE"
wget -O XP_BY_BZOT9.qcow2 'https://www.dropbox.com/s/ogt3hnf0ghzgqij/XP_BY_BZOT9.qcow2?dl=1'
clear
echo "Download..."
wget -O binz_disk_cd.iso 'https://www.dropbox.com/s/2h1r9z7tltkn4g6/binz_disk_cd.iso?dl=1'
clear
echo "Set up VNC address..."
sleep 5
clear
echo "Use VNC Viewer to connect."
echo "Your Address VNC (Password login: binzfakevps) is:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "==================="
echo "YT: youtube.com/@binzfake2500"
echo "Website: binzfake9999.github.io"
echo "Website: binzfake9999.github.io"
echo "Email: bzot9ws@gmail.com"
echo "==================="
sudo qemu-system-x86_64 \
  -m 8G \
  -cpu EPYC \
  -boot order=d \
  -drive file=XP_BY_BZOT9.qcow2 \
  -drive file=binz_disk_cd.iso,media=cdrom \
  -device usb-ehci,id=usb,bus=pci.0,addr=0x4 \
  -device usb-tablet \
  -vnc :0 \
  -cpu coreduo \
  -smp sockets=1,cores=4,threads=1 \
  -vga std \
  -device e1000,netdev=n0 -netdev user,id=n0 \
  -accel tcg,thread=multi \
