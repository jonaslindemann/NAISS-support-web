# Makefile for building NAISS documentation website

# Default target
all: build

# Build NAISS documentation site
build:
	make clean
	python3 format_software_info.py
	mkdocs build
# Runs a local server
serve:
	make clean
	python3 format_software_info.py
	mkdocs serve
# As we do not have a site, this does not work at them moment
# public:
#	python3 update_docs.py

# Optional: Clean the site directory
clean:
	rm -rf site
	rm -rf docs/applications
	rm -f mkdocs.yaml
