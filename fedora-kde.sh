flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak remote-delete fedora
dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf config-manager setopt fedora-cisco-openh264.enabled=1
dnf update @core -y
dnf install rpmfusion-\*-appstream-data -y
dnf group remove desktop-accesibility kde-apps kde-media kde-pim libreoffice admin-tools -y
dnf autoremove -y
dnf update -y
