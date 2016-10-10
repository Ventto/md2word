MD_FILE = markdown/report.md

OUTPUT = report.docx

WORD_REFDIR		= word_ref
WORD_TITLEPAGE	= $(WORD_REFDIR)/titlepage.docx
WORD_MODEL		= $(WORD_REFDIR)/template.docx
WORD_TPL_VARS	= meta/meta.yaml

ODOCXMERGE_EXE	= ./tools/odocxmerge/odocxmerge.exe
ODOCXTPL_EXE	= ./tools/odocxtpl/src/odocxtpl.py

.PHONY: all
all: $(OUTPUT)

$(OUTPUT): odocxtpl-titlepage odocxtpl-body
	$(MAKE) -C tools/odocxmerge
	$(ODOCXMERGE_EXE) titlepage.docx body.docx $@

.PHONY: odocxtpl-titlepage
odocxtpl-titlepage:
	$(ODOCXTPL_EXE) $(WORD_TITLEPAGE) $(WORD_TPL_VARS) titlepage.docx

.PHONY: odocxtpl-body
odocxtpl-body: pandoc
	$(ODOCXTPL_EXE) pandoc.docx $(WORD_TPL_VARS) body.docx

.PHONY: pandoc
pandoc:
	pandoc --from=markdown_github \
		-N -s -S --toc \
		--reference-docx=$(WORD_MODEL) \
		$(MD_FILE) --output=pandoc.docx

.PHONY: clean
clean:
	$(RM) pandoc.docx
	$(RM) body.docx
	$(RM) titlepage.docx
	$(RM) $(OUTPUT)
