# Imperial College Typst Template - Makefile

OUTPUT ?= main.pdf
INPUT  ?= main.typ
FONT_PATH = fonts/

.PHONY: all clean watch install-typst

all: $(OUTPUT)

$(OUTPUT): $(INPUT) template.typ
	typst compile $(INPUT) $(OUTPUT) --font-path $(FONT_PATH)

watch:
	typst watch $(INPUT) $(OUTPUT) --font-path $(FONT_PATH)

clean:
	rm -f $(OUTPUT)

install-typst:
	@echo "Installing Typst via Homebrew..."
	brew install typst
