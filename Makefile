#!/bin/bash

fetch-apps:
	git submodule update --init --recursive

clean:
	yarn clean
	rm -rf node_modules
	rm -rf apps/my-app/node_modules
	rm -rf apps/my-app-2/node_modules

create-new-package:
	mkdir ./packages/${NAME}
	cp -r ./packages/template/* ./packages/${NAME}
