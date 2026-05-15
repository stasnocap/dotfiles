# Installation

sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
locale-gen && \
echo "LANG=en_US.UTF-8" | tee /etc/locale.conf


WORK: echo "Server = http://mirror.rackspace.com/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

pacman -Sy --noconfirm \
    && pacman -S --noconfirm sudo

useradd -m -s /bin/bash stasnocap \
    && echo "stasnocap:1" | chpasswd \
    && usermod -aG wheel stasnocap \
    && echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

echo -e "[user]\ndefault = stasnocap" > /etc/wsl.conf
    && echo -e "[interop]\nappendWindowsPath = false" >> /etc/wsl.conf

# REBOOT WSL

cd

sudo pacman -S git

WORK: git config --global http.sslVerify false

WORK: echo "insecure" >> ~/.curlrc

git clone https://github.com/stasnocap/dotfiles

cd dotfiles/wsl

./install


# WORK

tee /etc/ca-certificates/trust-source/anchors/fortinet-ca.crt <<'EOF'
-----BEGIN CERTIFICATE-----
MIID5jCCAs6gAwIBAgIIYBYOvmQ0w/MwDQYJKoZIhvcNAQELBQAwgakxCzAJBgNV
BAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQHDAlTdW5ueXZhbGUx
ETAPBgNVBAoMCEZvcnRpbmV0MR4wHAYDVQQLDBVDZXJ0aWZpY2F0ZSBBdXRob3Jp
dHkxGTAXBgNVBAMMEEZHNUgwRTM5MTc5MDIxODIxIzAhBgkqhkiG9w0BCQEWFHN1
cHBvcnRAZm9ydGluZXQuY29tMB4XDTIxMDgzMTA5MDg0NloXDTMxMDkwMTA5MDg0
NlowgakxCzAJBgNVBAYTAlVTMRMwEQYDVQQIDApDYWxpZm9ybmlhMRIwEAYDVQQH
DAlTdW5ueXZhbGUxETAPBgNVBAoMCEZvcnRpbmV0MR4wHAYDVQQLDBVDZXJ0aWZp
Y2F0ZSBBdXRob3JpdHkxGTAXBgNVBAMMEEZHNUgwRTM5MTc5MDIxODIxIzAhBgkq
hkiG9w0BCQEWFHN1cHBvcnRAZm9ydGluZXQuY29tMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEAufxHVC+rPluvRFVyqD0PGaFd56/5+tthJsoiKprrCejh
TKew8g3BK9a8z5aUfcatlX5FeNOmBqYSxThSbZwrBghQEOYJJS4dMwi8aDBLwRx+
2pZpGkFilBydH1Y+hmy2AqlDKUMIXLwWKFzriB6JSwS73UDla8qxGHfg5XtSOjSa
id7l4iFaX7C6LB7HDGQ0en02dopxmhoPXvS1f/JIhjJu9nXS67Qto68uDgyHZi1g
isoACgUaowOaL7k8UeAzme8Mtheuug56IbabVnZL9uj92bAt+AXzScMKi1c7hpHx
RpHxQYMryV5ZL8fYK59oYbMe9ekXnVAp5JB9x27fFQIDAQABoxAwDjAMBgNVHRME
BTADAQH/MA0GCSqGSIb3DQEBCwUAA4IBAQBeDJGd/ro8g1BcNyMg1vlAteiduLQS
mfmrj4GIzvJnsUeF0BIfkpuAjbXcvUFvWSk110XIS43mmdGE+SiIKp9o9gyKAqED
Gbb4EQW5fsdxcIdXQJ/qHfSMwXbJ4T/0gK+h+jeup0fZfljZVx2r+qpi4bwbYbfO
BimoW3HnS/D+5KUUlBCOp921KFp42X1Tff66R1m5WDn1WKLRFVXULO/WIBZ3qOOk
k+ymWDzAFdJRuoaYNVW7NmEHnRrs+AAVII6vkeFgac+8mEUgYv46KVPcOzxu1OR8
I93MQYXn9XScIJkVDHN97zmp3EFVNyj6WS1+1k+hO2xZbPTdQ2Zd+0je
-----END CERTIFICATE-----
EOF

trust extract-compat
