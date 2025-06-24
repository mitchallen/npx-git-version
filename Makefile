# Makefile for npx-git-version

.PHONY: help start run bump-patch bump-minor bump-major clean

help:
	@echo "Available targets:"
	@echo "  start       - Run the script via npm (npm start)"
	@echo "  run         - Run the script directly (./bin/run.sh)"
	@echo "  bump-patch  - Bump git version patch (./bin/run.sh patch)"
	@echo "  bump-minor  - Bump git version minor (./bin/run.sh minor)"
	@echo "  bump-major  - Bump git version major (./bin/run.sh major)"
	@echo "  clean       - Remove .DS_Store and other temp files"

start:
	npm start

run:
	./bin/run.sh

bump-patch:
	./bin/run.sh patch

bump-minor:
	./bin/run.sh minor

bump-major:
	./bin/run.sh major

clean:
	rm -f .DS_Store
	find . -name "*.DS_Store" -type f -delete
