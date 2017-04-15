#pick host name
#hostnamectl set-hostname MinnowTurbot

#add gnome min/max buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# enable SSH and start it at boot
sudo service sshd start
sudo chkconfig sshd on

# personal setup
sudo dnf -y install emacs

# audio stuff
sudo dnf -y install audacity pavucontrol
sudo dnf -y builddep pulseaudio
sudo dnf -y builddep alsa-lib

sudo dnf -y install git-core gnupg gperf make automake gcc gcc-c++ kernel-devel flex bison zip curl zlib-devel 

#linux kernel dependencies
sudo dnf -y builddep kernel-$(uname -r)

# more stuff
sudo dnf -y install git-email gitk sshpass

# for firmware
sudo dnf -y install acpica-tools uuid-devel libuuid-devel nasm

# for ubuntu customization and chroot
sudo dnf -y install squashfs-tools genisoimage debootstrap gparted

# for virtualization
sudo dnf group -y install with-optional virtualization
