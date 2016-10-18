MD2Word
=======

*MD2Word is a personal tool to generate simple word report from markdown (using word title
page and template).*

**Warning: This tool is experimental.**

Requirements
------------

* *pandoc* - Free implementation of the .NET platform including runtime and compiler
* *python3.5*
* *python-pip* - The PyPA recommended tool for installing Python packages
* *python-yaml* - Python bindings for YAML, using fast libYAML library
* *mono* - Free implementation of the .NET platform including runtime and compiler

Modules
-------

* [ODocxMerge](https://github.com/Ventto/odocxmerge) - Simple tool to merge two docx files into one (using Open-XML-SDK
and Mono)
* [ODocxTpl](https://github.com/Ventto/odocxtpl) - Simple tool to generate a word document from .docx template and YAML
variables (using py-docx-tpl)

Installation
------------

```
$ git clone --recursive https://github.com/Ventto/md2word.git
```

Generate Report
-----

```
$ make
```

TODO
----

- [ ] Describe the repo's arborescence
- [ ] How to manage word template with titlepage and generated pandoc.docx
