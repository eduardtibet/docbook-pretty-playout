# docbook pretty playout FAQ

## Why docbook pretty playout and what does it mean?

Because it's quite simple, fully reflects project goal and sounds good :)

Note, that _playout_ is nothing in common with broadcasting, amauters radios, etc. The word "playout" is originated and formed from the **p**age **layout**.

So, this project deals with `.xsl` required to get production ready page layouts output (mostly PDFs) for DocBook/XML documents.

## Why foponts was created?

Short answer: to make things easy.

Long answer:
The author of the **foponts** project is a technical writer/documentation engineer by profession. He primary uses [DocBook/XML](https://docbook.org/) as a source for documentation (of course, he sometimes also uses lightweight markup languages like asciidoc, ReStructured text, Markdown).

To get PDF files from a DocBook sources the most affordable (actually, free) software is [FOP](https://xmlgraphics.apache.org/fop/) from Apache Software Foundation.

The problem was, that an earlier versions of FOP (v.0.93 - v.1.0, within a period of 2007-2009) needed to be configured hardly to work with the characters beyond the ordinary Latin alphabet (author widely uses documents with a Cyrillic alphabet).

Moreover, after implementing fonts autodetect feature (`<auto-detect/>` ) in a later versions of FOP, rendering results became totally unpredictable. That is because autodetection feature discovers fonts to use within *local* machine but fonts sets can differ from machine to machine. That led to a situation when one document with the same text and structure looked different while rendering on a machine X or on a server Y.

To take a rendering process under full control author decided to create a configuration file that gives totally predictable result for rendering documents irrespective the machine and/or server used for a rendering process.

As a result:

- rendered PDF documents uses only fonts that are available, well known, pre-checked for visual impression and character sets (Cyrillic, Greek, etc);

- patent- or license-related issues (if any) with a rendered documents are eliminated due to OFL-licensed fonts are used everytime and everywhere.

## How I can contact the author?

Just drop me a line to eduard.tibet@gmail.com with a "docbook pretty playout" in subject line. I'm very curious to hear about your usage of **docbook pretty playout**.
