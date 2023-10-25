
Debian
====================
This directory contains files used to package maxeterd/maxeter-qt
for Debian-based Linux systems. If you compile maxeterd/maxeter-qt yourself, there are some useful files here.

## maxeter: URI support ##


maxeter-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install maxeter-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your maxeter-qt binary to `/usr/bin`
and the `../../share/pixmaps/maxeter128.png` to `/usr/share/pixmaps`

maxeter-qt.protocol (KDE)

