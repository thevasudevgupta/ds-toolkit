# Markdown

## Why use markdown?
Because it's :
 * **EZ** : The syntax is so easy that you can learn in a minute or two then write without noticing anything weirdo  or geeky.
 * **FAST** : It saves time compared to other types of text files/formats. It helps boost the productivity and workflows of writer.
 * **CLEAN** : Both the syntax and output are clean, not messy with our eyes and simple to manage.
 * **FLEXIBLE** : With just a little set-up, your text will be translated cross any platform out there, editable in any text-editing software and convertible to a wide array of formats.
<br></br>
**In short**, normal users will find it useful in any cases, especially when you are in need of something better than plain text but less functional than Microsoft Word.  
**For Developers**, if you are lazy to write HTML code , you will love markdown. **Moreover**, **Github** and many sites favor markdown for readme file of projects. That means you gonna meet markdown in your life one way or another.  
<div id='tools'/>  


## Some markdown syntax

| Format        | Syntax      | Example |
| ------|-----|-----|
| Italic  	| \*Text\* 	| *This is italic* 	|
| Bold  	| \*\*Bold\*\* 	| **This is bold** 	|
| Inline links 	| \[Description text\](url here) 	| A [link](http://www.github.com) 	|
| Images 	| \![Caption\](url to img) 	| An image ![image](http://i.imgur.com/hRLuez2.png) 	|
| Link+images 	| \[\![Caption\](url to img)\](url to a page)\] 	| Click me [![me](http://i.imgur.com/hRLuez2.png)](https://www.youtube.com) 	|
| Footnotes  	| I have more \[^1\] to say.   \[^1\]: say it down here. 	| <a href="#section1">Hey,Please read the note below this table.  	|
| Line breaks 	| Double space + enter 	|  	|
| Unordered Lists 	| \* Item1     \*Item 2 	| <ul><li>item1</li><li>item2</li><li>item3</li><li>item4</li></ul> 	|
| Ordered Lists 	| 1. Item a    2. Item b 	| <ol><li>itema</li><li>itemb</li><li>itemc</li><li>itemd</li></ol>  	|
| Mixed Lists 	| 1. Item 1      * item 1a 	|  <ol><li>itema</li></ol><ul><li> item1</li></ul>	|
| Block quote 	| \> Quoted text 	|  <blockquote>Stay Hungry Stay Foolish</blockquote> 	|
| Preformatted 	| Begin each line with,two spaces or more to,make text look,e x a c t l y,like,you,type i,t. 	|   Begin each line with,two spaces or more to,make text look,e x a c t l y,like,you,type i,t. 	|
| Code 	| \`Insert Code\` 	| `cout<<"Hello world";` 	|
| Code block/ Syntax highlighting 	| \`\`\`insert code\`\`\` 	|  <a href="#section1">Hey,Please read the note below this table. 	|
| Headers 	| \#, \##, \###, \####, \#####, \###### (from h1 to h6) 	|  <h3>This is a h3 header</h3>	|
| Strike through 	| \~~Insert text here\~~ 	| ~~I am dead~~ 	|
| Tables 	| \| Tables   \|      Are      \|  Cool \| \|\----------\|\:\-------------\:\|------\:\| \| col 1 is\|  left-aligned \| $1600 \| | ![](http://i.imgur.com/EItt7mh.png) |

### Writting keystrokes on markdown

`Press the following to save: <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>s</kbd>`

Press the following to save: <kbd>ctrl</kbd> + <kbd>shift</kbd> + <kbd>s</kbd>

### Writing mathematical equations

**CodeCogs** provides a good solution for embedding mathematics equations as images in markdown files, like the following equation.

![My Awesome Equation](https://latex.codecogs.com/png.latex?%5Cinline%20%5Cdpi%7B200%7D%20%5Csmall%20%5Cint%20u%20%5Cfrac%7Bdv%7D%7Bdx%7D%5C%2Cdx%3Duv-%5Cint%20%5Cfrac%7Bdu%7D%7Bdx%7Dv%5C%2Cdx)

- Write your equation in the [Equation Editor](https://www.codecogs.com/latex/eqneditor.php).
- Edit Image type, font, and size.
- Choose **URL (encoded)** from the combobox at the end of the page.
- Use the copied URL in a markdown **image** as follows:

```
![Example Equation](Endoded_URL_Here)
```