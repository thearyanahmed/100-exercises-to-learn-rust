# Variables
BOOK_DIR := book
BUILD_DIR := $(BOOK_DIR)/book
PDF_OUTPUT := $(BUILD_DIR)/pandoc/pdf/100-exercises-to-learn-rust.pdf
EPUB_OUTPUT := $(BUILD_DIR)/pandoc/html/100-exercises-to-learn-rust.epub

# Default target
.PHONY: all
all: build

# Build the book
.PHONY: build
build:
	@echo "Building the book..."
	cd $(BOOK_DIR) && mdbook build

# Clean generated files
.PHONY: clean
clean:
	@echo "Cleaning up generated files..."
	rm -rf $(BUILD_DIR)

# Generate PDF with cover and back
.PHONY: pdf
pdf: build
	@echo "Generating PDF with cover and back..."
	pdftk $(BOOK_DIR)/assets/cover.pdf $(PDF_OUTPUT) $(BOOK_DIR)/assets/back.pdf cat output $(PDF_OUTPUT)

# Generate ePUB
.PHONY: epub
epub: build
	@echo "Generating ePUB..."
	cd $(BUILD_DIR)/pandoc/html && \
		sed -i 's|<code>\\newpage</code>{=latex}||g' 100-exercises-to-learn-rust.html && \
		ebook-convert 100-exercises-to-learn-rust.html 100-exercises-to-learn-rust.epub --embed-all-fonts --subset-embedded-fonts

# Run link checker
.PHONY: check-links
check-links:
	@echo "Running link checker..."
	lychee --exclude-loopback --require-https --no-progress $(BUILD_DIR)/html/

# Install dependencies (e.g., mdbook and plugins)
.PHONY: install
install:
	@echo "Installing dependencies..."
	cargo install mdbook
	cargo install --path helpers/mdbook-exercise-linker
	cargo install --path helpers/mdbook-link-shortener
	cargo install mdbook-pandoc --locked --version 0.7.1

# Watch for changes and rebuild
.PHONY: watch
watch:
	@echo "Watching for changes in the book directory..."
	cd $(BOOK_DIR) && mdbook serve --port 8000

# Help message
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all         - Build the book (default)"
	@echo "  build       - Build the book"
	@echo "  clean       - Clean up generated files"
	@echo "  pdf         - Generate PDF with cover and back"
	@echo "  epub        - Generate ePUB"
	@echo "  check-links - Run link checker"
	@echo "  install     - Install dependencies"
	@echo "  watch       - Watch for changes and rebuild"
