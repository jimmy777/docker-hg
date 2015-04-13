### USAGE ###

Recommended usage is to create a shell script like this:

	#!/bin/bash

	CPATH="$(pwd)"

	CLINE=$(ls -ald "$CPATH")
	CUSER=$(echo "$CLINE" | cut -d\  -f3)
	CGROUP=$(echo "$CLINE" | cut -d\  -f4)

	docker run -ti --rm -v "$CPATH":/mnt jramon76/hg $*

	sudo find "$CPATH" -mindepth 1 -maxdepth 1 ! -name vol ! -name .hg -exec chown "$CUSER:$CGROUP" -R \{\} \;

**Notice** that all files on the current path **WILL BE CHANGING OWNERSHIP** to match the owner and group of the current folder.

TODO

* Use preperms mercurial extension to only change permisions and ownership of required files and folders
