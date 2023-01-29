#!/usr/bin/env bash

# Create a new directory and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}

function mounttocs() {
	ln -s /media/psf/TOCS /home/tech;
}

function apt-updater () {
	sudo apt-get update &&
	sudo apt-get dist-upgrade -Vy &&
	sudo apt-get autoremove -y &&
	sudo apt-get autoclean &&
	sudo apt-get clean
}

function thmstart () {
	cd ${HOME}/TOCS/THM/boxes
	tmux new -s THM
}

function thmvpn () {
	sudo openvpn --config ${HOME}/TOCS/THM/vpn/TechOnlyCoding.ovpn --daemon
}
