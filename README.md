# NAISS support documentation

This is the documentation for NAISS support.

- [Go to the nicely rendered pages](https://menzzana.github.io/NAISS-support-web/)

## Installation and using zensical

1. Find instructions at [the Zensical documentation](https://zensical.org/docs/get-started/)
2. You need some extra extensions to render these documents
   1. In order to install attr_list, adminition and superfences
      `pip install Zensical-material`

## Published material

The published webpages reside on different locations depending if you are changing the support documentation or that main website.

### Main website

The primary document is available in `site`

### Support documentation

The primary document is available in `template/Zensical.yaml`
When site is build this file will act as a template, copied to
the main folder and software information will be added to it.
All the markdown file are found in `docs`

### Software documentation

All the markdown file are found in `software`
The primary document is available in `template/index.md`
When site is build this file will act as a template, copied to
the main folder and software information will be added to it.
Also there is a file called `clusters.yaml`
which directs what softwares will be published by pointing out active clusters, and their OS.

### Files for software

Files for different software should be stored under *software/[software name]*

1. **general.md** Contains general information about the software and a section on how to use the software on clusters. If you want additional
   clusters with information on how to run on those, just add them to this file.
1. **versions.yaml** A YAML file containing information about at which clusters the software is installed and what versions are installed
1. **keywords.yaml** A YAML file containing information about what keywords could be associated with the software

## format_software_info.py

This python script should always be executed prior of building the docs with zensical.
You can see how it is used in the *Makefile*

What the script does is....

1. Creates `docs/application` folder
1. Adds information and files for each software in the `docs/application` folder
   1. Updates `general.md` with information regarding installed versions
   1. Updates `general.md` with information regarding keywords
1. Moves `zensical.toml` from template to root folder
1. Updates `zensical.toml` with information regarding all softwares
1. Moves `index.md` from template to `docs/application` folder
1. Updates `index.md` with information regarding all softwares

## Build site

To build the website, use:

```text
make build
```

If you are running `zensical build` manually prior of running this
command you need to run [`format_software_info.py`](format_software_info.py)

## Run website locally

To build the website, use:

```text
make serve
```

If you are running `zensical serve` manually prior of running this
command you need to run [`format_software_info.py`](format_software_info.py)
You can now use a webbrowser to see the site at `https://127.0.0.1:1313`.

## Publish site

The site is published automatically upon a `git push`.

## Technical FAQ
