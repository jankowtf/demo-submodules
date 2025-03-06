# Git Submodules Learning Repository

This is a Quarto-based learning repository that demonstrates how to create and manage Git submodules.

## Project Structure

```
main_repo/
├── _quarto.yml        # Quarto configuration
├── index.qmd          # Main landing page
├── styles.css         # Custom CSS styles
├── content/           # Learning content
│   └── 01_git_submodules/
│       ├── index.qmd
│       ├── creating_submodules.qmd
│       └── managing_submodules.qmd
├── images/            # Images for the content
└── scripts/           # Utility scripts
    └── render.sh      # Script to render the Quarto project
```

## Getting Started

### Prerequisites

- [Quarto](https://quarto.org/docs/get-started/) installed
- Git installed

### Rendering the Website

To render the website to HTML, run:

```bash
./scripts/render.sh
```

This will create a `_site` directory containing the rendered HTML files.

### Previewing the Website

To preview the website locally, run:

```bash
quarto preview
```

This will start a local web server and open the website in your default browser.

## Content

The repository contains learning materials about:

- Creating a meta repository with Git submodules
- Managing and updating Git submodules
- Best practices for working with Git submodules

## License

This project is licensed under the MIT License - see the LICENSE file for details. 