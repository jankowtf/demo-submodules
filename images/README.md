# Images Directory

This directory contains images used in the Quarto website.

## Recommended Image Types

- Use SVG for diagrams and illustrations when possible
- Use PNG for screenshots and other raster images
- Optimize images for web use to keep the site loading quickly

## Adding Images to Content

To add an image to a Quarto document, use the following Markdown syntax:

```markdown
![Alt text for the image](../images/image-name.png)
```

Or using Quarto's figure syntax for more control:

```markdown
::: {#fig-example}
![Alt text for the image](../images/image-name.png)

Caption for the figure.
:::
``` 