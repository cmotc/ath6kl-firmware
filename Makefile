dummy:
	echo "do make install to install the firmware, make uninstall to remove, and make deb-pkg to make a debian package."

install:
	mkdir -p /lib/firmware/hw1.3/ /lib/firmware/hw3.0/
	cp ath6k/AR6004/hw1.3/bdata.bin \
	ath6k/AR6004/hw1.3/fw-5.bin \
	/lib/firmware/hw1.3/
	cp ath6k/AR6004/hw3.0/bdata.bin \
	ath6k/AR6004/hw3.0/fw-5.bin \
	/lib/firmware/hw3.0/

deb-pkg:
	checkinstall --default \
		--install=no \
		--pkgname="ath6kl" \
		--pkgversion="6004" \
		--pakdir=../ \
		--deldoc=yes \
		--deldesc=yes \
		--delspec=yes \
		--backup=no
	rm description-pak
