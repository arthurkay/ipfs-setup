![GitHub](https://img.shields.io/github/license/arthurkay/ipfs-setup)
![GitHub issues](https://img.shields.io/github/issues-raw/arthurkay/ipfs-setup)

# IPFS Daemon Setup

This repository is an automated way of setting up IPFS daemon on a Linux box.

# Introduciton

### IPFS (Inter-Planetary File System)

> "A peer-to-peer hypermedia protocol designed to make the web faster, safer, and more open."

 ~ipfs



IPFS is a ditributed web protocol thats built to supplement the web of today to make it the web of tomorrow.
IPFS makes this possible by utilising a peer to peer network to create a content addressable internet.


## Prerequists

You need to have the following on your machine;

* [C/C++ Compiler such as GCC](https://gcc.gnu.org/)

* [GO](https://golang.org)

* [Make](https://www.gnu.org/software/make/)

After the above requirements are met, clone this repository to your machine.

```zsh
$ git clone https://github.com/arthurkay/ipfs-setup
```

Then enter the directory the repo has been cloned in,

```zsh
cd ipfs-setup
```

The execute the setup command to setup the ipfs daemon, and start it immediately, the script also enables the daemon so it runs on boot.

```zsh
make setup
```

And just like that, you are done :tada: