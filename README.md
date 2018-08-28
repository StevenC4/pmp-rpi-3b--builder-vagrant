# pmp-rpi-3b-plus-builder-vagrant
A vagrant box definition for building a Plex Media Player image specific for the Raspberry Pi 3 B+

This repo is based off of some of the steps included in the [Community Builds of Plex Media Player Embedded 2.x for Raspberry Pi 2/3[+] & NUC/x86_64](https://forums.plex.tv/t/community-builds-of-plex-media-player-embedded-2-x-for-raspberry-pi-2-3-nuc-x86_64/229040) guide.

## Running the project

* Install `vagrant` and `virtualbox`.
* Clone this repository
* From inside your local project directory, run `vagrant up`
* Run `vagrant ssh` to ssh into the virtual machine
* Run `cd plex-LibreELEC.tv`
* Run `start.sh`
* You will need to confirm several package installs on the first run
* For me, the script always fails on the first run.  It usually continues where it left off when I run `start.sh` a second time
