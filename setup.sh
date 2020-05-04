#!/usr/bin/env bash

# --- install blackarch

curl -O https://blackarch.org/strap.sh

if [ " sha1sum strap.sh " != "9f770789df3b7803105e5fbc19212889674cd50" ]; then
  exit 1
fi

chmod +x strap.sh

sudo ./strap.sh

# ---

sudo pacman -Syu

sudo pacman -S \
  vim \
  freetype2 \
  xorg-xauth \
  xorg-xclock \
  xorg-xhost \
  libxtst \
  libglvnd \
  libxcomposite \
  libxcursor \
  libxrandr \
  alsa-libi \
  libxcb \
  libxkbcommon-x11 \
  ttf-defavu \
  binutils

sudo pacman -S \
  jd-gui \
  burpsuite \
  hopper \
  binaryninja-demo \
  gdb \
  hash-identifier \
  stegsolve \
  peda \
  volatility \
  testdisk \
  gobuster \
  john \
  jwt-tool \
  nmap \
  nikto \
  angr \
  stegoveritas
