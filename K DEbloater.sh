#!/bin/bash

# Script to Debloat KDE
# Bloatwares: Games, Education, Development

filename='utilities.txt'
utilities=""
while IFS= read -r bloat; do
    utilities+="$bloat "
done < $filename

filename='education.txt'
education=""
while IFS= read -r bloat; do
    education+="$bloat "
done < $filename

filename='development.txt'
development=""
while IFS= read -r bloat; do
    development+="$bloat "
done < $filename

filename='multimedia.txt'
multimedia=""
while IFS= read -r bloat; do 
    multimedia+="$bloat "
done < $filename

filename='network.txt'
network=""
while IFS= read -r bloat; do 
    network+="$bloat "
done < $filename

filename='graphics.txt'
graphics=""
while IFS= read -r bloat; do 
    graphics+="$bloat "
done < $filename

filename='system.txt'
system=""
while IFS= read -r bloat; do 
    system+="$bloat "
done < $filename

filename='fix_brokens.txt'
patches=""
while IFS= read -r bloat; do 
    patches+="$bloat "
done < $filename

yes | sudo pacman -Rsc $utilites
yes | sudo pacman -Rsc $education
yes | sudo pacman -Rsc $development
yes | sudo pacman -Rsc $multimedia
yes | sudo pacman -Rsc $network
yes | sudo pacman -Rsc $graphics
yes | sudo pacman -Rsc $system

sudo pacman -Syyu
yes | sudo pacman -S $patches