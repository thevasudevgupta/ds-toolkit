# Some useful/additional stuff

### Writting keystrokes on markdown

```markdown
Press the following to save: <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>s</kbd>
```

Press the following to save: <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>s</kbd>

### Writing mathematical equations

**CodeCogs** provides a good solution for embedding mathematics equations as images in markdown files, like the following equation.

![My Awesome Equation](https://latex.codecogs.com/png.latex?%5Cinline%20%5Cdpi%7B200%7D%20%5Csmall%20%5Cint%20u%20%5Cfrac%7Bdv%7D%7Bdx%7D%5C%2Cdx%3Duv-%5Cint%20%5Cfrac%7Bdu%7D%7Bdx%7Dv%5C%2Cdx)

- Write your equation in the [Equation Editor](https://www.codecogs.com/latex/eqneditor.php).
- Edit Image type, font, and size.
- Choose **URL (encoded)** from the combobox at the end of the page.
- Use the copied URL in a markdown **image** as follows:

```markdown
![Example Equation](Endoded_URL_Here)
```

### Dropdowns

Keep the less useful content collapsed, no one needs to see it!

```markdown
<details>

<summary><b>Example</b></summary>
<br/>

I am HIDDEN YAYYY!

</details>
```

<details>

<summary><b>Example</b></summary>
<br/>

I am HIDDEN YAYYY!

</details>

### Captions

Some images are meaningless without captions, so to do that

```html
<div align="center">
    <img src="https://image.flaticon.com/icons/svg/25/25231.svg" width="50" height="50"/>
    <br/>
    <sub><sup>© 2019, licensed under the <a href="https://opensource.org/licenses/MIT">MIT License</a>.</sup></sub>
</div>
```

<div align="center">
    <img src="https://image.flaticon.com/icons/svg/25/25231.svg" width="50" height="50"/>
    <br/>
    <sub><sup>© 2020, licensed under the <a href="https://opensource.org/licenses/MIT">MIT License</a>.</sup></sub>
</div>

### Badges

To add badges to your repo, use [**shields.io**](https://shields.io/).

```markdown
![GitHub last modified](https://img.shields.io/aur/last-modified/today)
```

![GitHub last modified](https://img.shields.io/aur/last-modified/today)
