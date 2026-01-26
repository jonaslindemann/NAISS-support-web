# NAISS support documentation

This is the documentation for NAISS support.

- [Go to the nicely rendered pages](https://menzzana.github.io/NAISS-support-web/)

## Installation and using mkDocs

1. Find instructions at [the Zensical documentation](https://zensical.org/docs/get-started/)
2. You need some extra extensions to render these documents
   1. In order to install attr_list, adminition and superfences
      `pip install Zensical-material`

## Published material

The published webpages reside on different location depending if you are changing
the support documentation or that main website.

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
which directs what softwares will be published by pointing out active clusters, and their os.

### Files for software

Files for different software should be stored under *software/[software name]*

1. **general.md** Contains general information about the software and a section on how to use the software on clusters. If you want additional
   clusters with information on how to run on those, just add them to this file.
1. **versions.yaml** A YAML file containing information about at which clusters the software is installed and what versions are installed
1. **keywords.yaml** A YAML file containing information about what keywords could be associated with the software

## Build site

To build the website, use:

```text
make build
```

Using `zensical build` will fail, as
[`template/zensical.toml`](template/zensical.toml) is
(1) not in the root folder, (2) in an intentionally broken state.
The [`format_software_info.py`](format_software_info.py) script creates
a working `zensical.toml` file.



## Run website locally

To build the website, use:

```text
make serve
```

Using `zensical serve` will fail, as
[`template/zensical.toml`](template/zensical.toml) is
(1) not in the root folder, (2) in an intentionally broken state.
The [`format_software_info.py`](format_software_info.py) script creates
a working `zensical.toml` file.

You can now use a webbrowser to see the site at `https://127.0.0.1:1313`.

## Publish site

The site is published automatically upon a `git push`.

## Technical FAQ

### Why is [`template/zensical.toml`](template/zensical.toml) broken?

Because the [`format_software_info.py`](format_software_info.py) script creates
a working `zensical.toml` file from it.

[`template/zensical.toml`](template/zensical.toml) has too few closing braces
and brackets in the table of content. This is intentional:
the [`format_software_info.py`](format_software_info.py) script
adds items at the end and creates a `zensical.toml` file in the root of
the repository.




