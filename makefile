ESLINT=./node_modules/.bin/eslint
TAP=./node_modules/.bin/tap

# ------------------------------------------------------------------------------

# Builds a JSON representation of the raw AFINN word list
build:
	node ./build/index.js

# ------------------------------------------------------------------------------

lint:
	$(ESLINT) ./lib/*.js
	$(ESLINT) ./build/*.js

# ------------------------------------------------------------------------------

.PHONY: build lint
