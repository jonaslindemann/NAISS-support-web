# Makefile for building NAISS documentation website

# Default target
all: build

# Build NAISS documentation site
build:
	make clean
	python3 -u format_software_info.py
	cd $(CURDIR)
	zensical build
# Runs a local server
serve:
	make clean
	python3 -u format_software_info.py
	cd $(CURDIR)
	zensical serve
# Optional: Clean the site directory
clean:
	rm -rf site
	rm -rf docs/applications
	rm -f zensical.toml
