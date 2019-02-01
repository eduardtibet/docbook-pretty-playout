# docbook pretty playout FAQ

## Why docbook pretty playout and what does it mean?

Because it's quite simple, fully reflects project goal and sounds good :)

Note, that _playout_ has nothing in common with broadcasting, amateurs radios, etc. The word "playout" is originated and formed from a words **p**age and **layout**.

So, this project deals with XSLT, required to get production ready page layouts output (mostly PDFs) for DocBook/XML documents.

## Why docbook pretty playout was created?

Short answer: to make things easy.

Long answer (it's a real longread - you have been warned :)

The author of the _docbook pretty playout_ project is a technical writer/documentation engineer by profession. He primary uses [DocBook/XML](https://docbook.org/) as a source for documentation (of course, he sometimes also uses lightweight markup languages like asciidoc, ReStructured text, Markdown).

DocBook toolchain includes and mostly relies on the [DocBook XSL Stylesheets](https://github.com/docbook/xslt10-stylesheets/) - free, open source set of `.xsl` files for making transformation from source `.xml` to a target formats. The latter include print output (PDFs), online presentation output (HTMLs), gadget-friendly output (ePub) and much more. Despite the DocBook XSL Stylesheets cover nearly all features of DocBook source format (i.e. conditions/profiling, content reuse, gentexts, all kinds of documentation components - TOC, tables indexes, figures, etc) - they are quite complicated in nature.

If we talk about print output (technical documentation PDFs), the result is quite basic from a visual presentation and design points of view (despite it covers nearly all DocBook advanced features). This phenomenon is well explained due to a creators and maintainers of DocBook XSL Stylesheets are developers by nature.

Of course, alot of people would say that DocBook is for a technical documentation and there is nothing with design there. But... We all (as a customers) want to look at a good designed documentation, that is easy to read, good to look at, easy to navigate in... rather than the poor one. And we (as a technical writers) want to deliver to our customers best-class documentation not only from the content and accuracy points of view, but from a presentation one too.

Someone can say that a presentation forms and delivery methods are changed so fast that the print output have been outdated already. But there are still and will be many segments where a print documentation (in a form of an electronically delivered pdf files) is and will be the most reliable and usable one. Curious, what segment is it? The answer is obvious and quite simple - it is a corporate segment.

So, to summarize all the above information there are two problems exist:
- using default out-of-box print-related output is quite unpretty and is not ready for customer delivering;
- any customization requires efforts that any novice users can't afford either from the point of skills, or from the point of time.

The main goal of the project is to provide any newcomer to DocBook an affordable way to get pretty, design-approved print output for the full spectrum of technical documentation exists: manuals, marketing brochures, whitepapers, etc.

The second goal is to provide a construction kit for any DocBook user to get a custom documents WITH a design layout without any hassle.

The idea behind this project is a main ready-to-use design plus easy alternation within design-approved bondaries.

## How I can contact the author?

Just drop me a line to eduard.tibet@gmail.com with a "docbook pretty playout" in subject line. I'm very curious to hear about your usage of **docbook pretty playout**.
