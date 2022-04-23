---
author: Chris Godwin
tag: docs
time: 2021-01-01
copyright:
  minLength: 1
title: Content DEMO
icon: markdown
article: false
showinsidebar: true
autoSort: 95
---

<!-- markdownlint-disable -->

# For some reason this heading is ignored
# This First Heading

<!-- markdownlint-restore -->
Was made by this text:

```md
# This First Heading
```

## And This Second Heading
Was made by this text:

```md
## And This Second Heading
```

### Third Heading

```md
### Third Heading
```

#### Fourth Heading

```md
#### Fourth Heading
```

##### Fifth Heading

```md
##### Fifth Heading
```

###### Sixth Heading

```md
###### Sixth Heading
```

## Text

This is what **bold**, _italic_ and ~~strikethrough~~ look like.

```md
This is what **bold**, _italic_ and ~~strikethrough~~ look like.
```

## Paragraph

This is a paragraph about the Morrigan.

This is another paragraph about ravens.

```md
This is a paragraph about the Morrigan.

This is another paragraph about ravens.
```

## Line Break

This is how you do a line  
break

```md
This is how you do a line  
break
```

::: warning

In block above, the word `at` is followed by two spaces.

:::

## Blockquotes

> Blockquotes can also be nested...
>
> > ...by using greater-than signs right next to each other...
> >
> > > ...or with spaces between arrows.

```md
> Blockquotes can also be nested...
>
> > ...by using greater-than signs right next to each other...
> >
> > > ...or with spaces between arrows.
```

## List

### Unordered List

- Create a list by starting a line with `-`
- Make sub-lists by indenting 2 spaces:

  - Marker character change forces new list start:

    - Oghma
    - Dagda
    - Lugh of the Long  
      arm

      I am a song on a spear!

- It’s easy!

```md
- Create a list by starting a line with `-`
- Make sub-lists by indenting 2 spaces:

  - Marker character change forces new list start:

    - Oghma
    - Dagda
    - Lugh of the Long-  
      Arm

      I am a song on a spear!

- Very easy!
```

### Ordered List

1. Lorem ipsum dolor sit amet
1. Consectetur adipiscing elit  
   line break  
   line break again
1. Integer molestie lorem at massa

```md
1. Lorem ipsum dolor sit amet
1. Consectetur adipiscing elit  
   line break  
   line break again
1. Integer molestie lorem at massa
```

## HR

---

```md
---
```

## Link

[Home page using absolute path](/)

[Home page using relative path](../readme.md)

[About page using absolute path](/about)

[About page using relative path](../about.md)

```md
[Home page using absolute path](/)

[Home page using relative path](../readme.md)

[About page using absolute path](/about)

[About page using relative path](../about.md)
```

::: tip

You can also use these:

- [Home page-Can route when editing Markdown file](../readme.md)

- [Home page using absolute path 2](/readme.md)

- [Visit in HTML](../index.html)

To be able to jump to each other when editing the Markdown using the editor, you need to use the **relative path**, also you must place `readme.md` in **every folder**.

代码:

```md
- [Home page-Can route when editing Markdown file](../readme.md)

- [Home page using absolute path 2](/readme.md)

- [Visit in HTML](../index.html)
```

:::

## Image

![Logo](/logo.png)

```md
![Logo](/logo.png)
```

## Emoji

Classic:

:wink: :cry: :laughing: :yum:

```md
:wink: :cry: :laughing: :yum:
```

Shortcuts:

8-) :) :\* :( :-) :-( ;)

```md
8-) :) :\* :( :-) :-( ;)
```

::: tip

Though we have these, it is better to paste the emoji characther directly into your text.
For all of them see the [Unicode Full Emoji List](https://unicode.org/emoji/charts/full-emoji-list.html)

:::

## Tables

|           center           |                    right | left                    |
| :------------------------: | -----------------------: | :---------------------- |
| For center align use `:-:` | For right align use `-:` | For left align use `:-` |
|             b              |                aaaaaaaaa | aaaa                    |
|             c              |                     aaaa | a                       |

```md
|           center           |                    right | left                    |
| :------------------------: | -----------------------: | :---------------------- |
| For center align use `:-:` | For right align use `-:` | For left align use `:-` |
|             b              |                aaaaaaaaa | aaaa                    |
|             c              |                     aaaa | a                       |
```

## Preformatted

Inline Preformatted: `pre`

```md
Inline Preformatted: `pre`
```

Indented Preformatted:

    // Some comments
    line 1 of pre
    line 2 of pre
    line 3 of pre

```md
Indented Preformatted:
    // Some comments
    line 1 of pre
    line 2 of pre
    line 3 of pre
```

Preformatted Block:

```
Sample text here...
```

````md
Preformatted Block:

```
Sample text here...
```
````

## Super and Subscript

- 19^th^
- H~2~O

```md
- 19^th^
- H~2~O
```
## Tips, Notes, Warnings & Containers

::: tip

This is a tip.

:::

```md
::: tip
This is a tip.
:::
```

::: warning
This is a Note
:::

```md
::: warning
This is a note
:::
```

::: info
There are other kids of containers besides tips.
:::

```md
::: info
There are other kids of containers besides tips.
:::
```

:::: danger
Careful how you use these boxes, each has a specific psychological impact.
::::

```md
::: danger
Careful how you use these boxes, each has a specific psychological impact.
:::
```

:::: info

This is an info container with a tip inside.
::: tip
Notice how the nested tip has three colons and that the info container has four.
 Colons are 3+_n_ where **_n_** is the nest level.
:::
::::

```md
:::: info

This is an info container with a tip inside.
::: tip
Notice how the nested tip has three colons and that the info container has four.
 The number of colons required are 3+n where n is the nest level.
:::
::::
```

## Alignment

::: center
Paragraph to center
:::

::: right
Right paragraph
:::

::: left
Left alignment
:::

```md

::: center
Paragraph to center
:::

::: right
Right paragraph
:::

::: left
Left alignment
:::

```

:::: danger
This is a danger box with a center block inside.
::: center
Significant changes.
:::
::::

```md
:::: danger
This is a danger box with a center block inside.
::: center
Center text.
:::
::::
```

## Footnotes

Footnote 1 sentence [^first].

Footnote 2 sentence [^second].

[^first]: Footnote one
[^second]: Footnote two

```md
Footnote 1 sentence [^first].

Footnote 2 sentence [^second].

[^first]: Footnote one
[^second]: Footnote two
```

::: warning

Check the footnotes at the bottom of this page.

:::

## Highlight words

This is how you ==highlight a word==.

```md
This is how you ==highlight a word==.
```

# Tasks and Checkboxes

- [ ] Plan A
- [x] Plan B

```md
- [ ] Plan A
- [x] Plan B
```

## Flowcharts & Pie Graphs

```flow
st=>start: Start|past:>http://www.google.com[blank]
e=>end: End|future:>http://www.google.com
op1=>operation: My Operation|past
op2=>operation: Stuff|current
sub1=>subroutine: My Subroutine|invalid
cond=>condition: Yes
or No?|approved:>http://www.google.com
c2=>condition: Good idea|rejected
io=>inputoutput: catch something...|future

st->op1(right)->cond
cond(yes, right)->c2
cond(no)->sub1(left)->op1
c2(yes)->io->e
c2(no)->op2->e
```

````md
```flow
st=>start: Start|past:>http://www.google.com[blank]
e=>end: End|future:>http://www.google.com
op1=>operation: My Operation|past
op2=>operation: Stuff|current
sub1=>subroutine: My Subroutine|invalid
cond=>condition: Yes
or No?|approved:>http://www.google.com
c2=>condition: Good idea|rejected
io=>inputoutput: catch something...|future

st->op1(right)->cond
cond(yes, right)->c2
cond(no)->sub1(left)->op1
c2(yes)->io->e
c2(no)->op2->e
```
````
Go [here](https://vuepress-theme-hope.github.io/md-enhance/guide/flowchart/) and also see the [flowchart.js](https://github.com/adrai/flowchart.js) reference to master
 this type of formatting.

```pie
title What is your favorite smith god?
  "Luchta" : 2
  "Lughaid" : 3
  "Goibniu" : 45
```

````md
```pie
title What is your favorite smith god?
  "Luchta" : 2
  "Lughaid" : 3
  "Goibniu" : 45
```
````
## Tex lang

$$
\frac {\partial^r} {\partial \omega^r} \left(\frac {y^{\omega}} {\omega}\right)
= \left(\frac {y^{\omega}} {\omega}\right) \left\{(\log y)^r + \sum_{i=1}^r \frac {(-1)^ Ir \cdots (r-i+1) (\log y)^{ri}} {\omega^i} \right\}
$$

```md
$$
\frac {\partial^r} {\partial \omega^r} \left(\frac {y^{\omega}} {\omega}\right)
= \left(\frac {y^{\omega}} {\omega}\right) \left\{(\log y)^r + \sum_{i=1}^r \frac {(-1)^ Ir \cdots (r-i+1) (\log y)^{ri}} {\omega^i} \right\}
$$
```

## Slideshow

Setting `layout: Slide` at the top of a page will make it a fullscreen slideshow.


@slidestart

<!-- .slide: data-transition="slide" -->

### Slide Demo

<!-- .element: class="r-fit-text" -->

A simple slide demo and useful hints.

<!-- .element: class="r-fit-text" -->

> By Mr.Hope. Please scroll mousewheel down to the next slide

---

<!-- .slide: data-transition="slide" data-auto-animate -->

### Marking Slides

<!-- .element: class="r-fit-text" -->

[👇](#/1/1)

--
@slideend

```md
@slidestart

<!-- .slide: data-transition="slide" -->

### Slide Demo

<!-- .element: class="r-fit-text" -->

A simple slide demo and useful hints.

<!-- .element: class="r-fit-text" -->

> By Mr.Hope. Please scroll mousewheel down to the next slide

---

<!-- .slide: data-transition="slide" data-auto-animate -->

### Marking Slides

<!-- .element: class="r-fit-text" -->

[👇](#/1/1)

--
@slideend
```

[Slideshow Reference](https://vuepress-theme-hope.github.io/md-enhance/guide/presentation/)