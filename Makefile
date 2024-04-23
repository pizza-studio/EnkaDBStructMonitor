SHELL := /bin/sh
.PHONY: build

build:
	rm -rf /var/tmp/temporaryJSON4Enka/ || true
	mkdir /var/tmp/temporaryJSON4Enka/
	git clone https://github.com/EnkaNetwork/API-docs.git /var/tmp/temporaryJSON4Enka/
	cp -r /var/tmp/temporaryJSON4Enka/store ./
	rm -rf /var/tmp/temporaryJSON4Enka/
	export PATH=${PATH}:$(pwd) && CWD=$(pwd) && find . -name '*.json' -exec quicktype --lang swift {} --out {}.swift \;
	find . -name '*.json' -exec rm {} \;
