PANDOC = pandoc
PANDOC_FLAGS = --toc -V lang=it -V geometry:margin=2.5cm

PLANTUML = plantuml
PLANTUML_FLAGS = -config diagrams/config.pu -tsvg

BOOK_NAME = Integrazione_numerica_polinomi_Bernstein.pdf
DIAG_IMGS = $(patsubst %.pu,%.svg, $(wildcard diagrams/*/*.pu))
BOOK_CHAPTERS = $(wildcard *.md)

.PHONY: all
all: diagrams book

.PHONY: diagrams
diagrams: $(DIAG_IMGS)

.PHONY: book
book: diagrams $(BOOK_NAME)

$(BOOK_NAME): $(BOOK_CHAPTERS)
	cat $^ | $(PANDOC) $(PANDOC_FLAGS) -o $(BOOK_NAME)

%.svg: %.pu
	$(PLANTUML) $(PLANTUML_FLAGS) $<

