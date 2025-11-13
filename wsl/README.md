# Installation

sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
locale-gen && \
echo "LANG=en_US.UTF-8" | tee /etc/locale.conf

pacman -Sy --noconfirm \
    && pacman -S --noconfirm sudo

useradd -m -s /bin/bash stasnocap \
    && echo "stasnocap:1" | chpasswd \
    && usermod -aG wheel stasnocap \
    && echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

echo -e "[user]\ndefault = stasnocap" > /etc/wsl.conf
echo -e "[interop]\nappendWindowsPath = false" >> /etc/wsl.conf

# REBOOT WSL

cd

sudo pacman -S git
git clone https://github.com/stasnocap/dotfiles

cd dotfiles/wsl

./install
