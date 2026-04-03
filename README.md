# Imperial College London — Individual Project Template (Typst)

A Typst port of the official LaTeX Individual Project template for Imperial College London (Department of Computing).

> Original LaTeX template by Marc Deisenroth (2015).

## Preview

<!-- Add a screenshot of the compiled PDF here -->

## Usage

### Requirements

- [Typst](https://typst.app) v0.11+

```bash
# Install Typst via Homebrew
brew install typst
```

### Compile

```bash
typst compile main.typ
```

Or use the Typst web app / VS Code extension for live preview.

### Customise

Edit `main.typ` and fill in your details:

```typst
#show: project.with(
  title: "Your Project Title",
  author: "Your Name",
  supervisor: "Supervisor Name",
  report-type: "MEng Individual Project",
  degree: "Master of Engineering (MEng)",
  date: datetime(year: 2026, month: 6, day: 1),
  abstract: [ ... ],
  acknowledgements: [ ... ],
)
```

### Bibliography

Create a `refs.bib` file and uncomment the last line in `main.typ`:

```typst
#bibliography("refs.bib", style: "apa")
```

## Structure

```
.
├── main.typ          # Main document — edit this
├── template.typ      # Template logic — usually no need to edit
├── figures/
│   ├── imperial.pdf  # IC logo (official)
│   └── imperial2.pdf
└── refs.bib          # (create this for bibliography)
```

## Reference

Original LaTeX template: [Imperial College DoC](https://www.imperial.ac.uk/computing)
