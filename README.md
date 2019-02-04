# docbook pretty playout project

## Table of contents

<!-- TOC started -->

 * [About](#about)
 * [Installation](#installation)
   * [Prerequisites](#prerequisites)
   * [Installation steps](#installation-steps)
 * [Usage](#usage)
 * [FAQ](#faq)
 * [Roadmap](#roadmap)
 * [Contributing](#contributing)
 * [Authors](#authors)
 * [License](#license)


<!-- TOC ended -->

## About

docbook pretty playout project is a (yet) simple set of `.xsl` stylesheets used as a customization layer above [stock DocBook XSL stylesheets](https://github.com/docbook/xslt10-stylesheets).

BTW, if you are interested in what customization layer is - see a perfect explanation in [Bob Stayton's book](http://www.sagehill.net/docbookxsl/CustomMethods.html#CustomizationLayer)

Project deals with a print-related DocBook XSL stylesheets only (location within stock stylesheets is a [/fo directory](https://github.com/docbook/xslt10-stylesheets/tree/master/xsl/fo))

The aim of the project is to provide:

- to any newcomer to DocBook or even seasoned DocBook user an affordable way to get pretty, design-approved print output for the full spectrum of technical documentation exists: manuals, marketing brochures, whitepapers, etc.

- a some kind of construction kit for any DocBook user to get a custom documents WITH a design layout without any hassle. The idea behind this project is a main ready-to-use design plus easy alternation gears within a design-approved boundaries.

If you want to get more details - see expanded explanation about, [why this project was created](FAQ.md#why-docbook-pretty-playout-was-created)

## Installation

### Prerequisites

1. Any machine (PC, Mac, headless server, ...) with OS, that supports Java.
2. Java (JRE) 1.6 or newer installed and working. Check if Java is installed correctly:

```
$ java -version
```

3. Any XSLT processor (xsltproc, Xalan, Saxon) installed and working.

**NOTE**: XSLT 1.0 processor recommended. Despite any of XSLT v2.0 or v3.0 processor can work with a v1.0 stylesheets, this can lead to an annoying warnings about using outdated (v1.0) stylesheets. 

4. Apache FOP 2.1 or newer. You can get the latest FOP [from official download page](https://xmlgraphics.apache.org/fop/download.html). Check if Apache FOP is installed correctly:

```
$ fop -version
```

5. Git - to clone the repo.
6. Any utility (or web browser) - to download a files (`wget` is recommended).
7. Any Docbook/XML v5.0/5.1 file (document) you need to convert to a PDF file.

**NOTE 1**: To check how _docbook pretty playout_ project works, a sample source Docbook/XML (`.xml`) and additional files are provided within a `docbook-samples` directory.

**NOTE 2**: Due to samples, used in this project, are the core of another project [link](https://github.com/eduardtibet/docbook-samples/), `docbook-samples` folder is provided as a git submodule within foponts project.

### Installation steps

1. Create a directory, where you want to store a project:

```
$ mkdir docbook-pretty-playout
```

2. Change directory to the created one:

```
$ cd docbook-pretty-playout
```

3. Get the project files:

```
$ git clone --recursive https://github.com/eduardtibet/docbook-pretty-playout.git
```

**NOTE:** You have to use `--recursive` option, because the directory with a samples is a separate author's [project](https://github.com/eduardtibet/docbook-samples) and is included as a git submodule here!

6. Change a directory to the foponts project:

```
$ cd foponts
```

7. foponts is initially configured to run in a FOD mode, so use your favorite text editor to change the default value of a `<font-base>` element in `foponts.xml` file to the actual local path to a directory with a downloaded fonts:

Default:

```xml
<font-base>http://www.singlesourcing.ru/pub/foponts/foponts-fonts/</font-base>
```

Change to:
```xml
<font-base>/home/[your_user_directory]/foponts-pdf-generation/foponts-fonts/</font-base>
```

**NOTE:** Trailing slash is a must thing here!

## Usage

To get your `.pdf` files use either 1-step or 2-steps processing. Although it is not required (you can use any FOP configuration file or even don't use it at all), author highly recommends to use [foponts](https://github.com/eduardtibet/foponts) project to get a fully satisfied result.

To get your pdf file with 1-step processing:

1. Run Apache FOP with the following command line (use `-c` option and corresponding value only in case you use _foponts_ project or any other custom generated configuration file for Apache FOP; in any other case - leave it out):

```
fop -c <your_path_to_foponts_project>/foponts.xml -xml docbook-samples/stdf/stdf_manual.xml -xsl docbook-pretty-playout.xsl -pdf docbook-samples/stdf/stdf_manual.pdf
```

2. Look at the result just opening the generated file `stdf_manual.pdf` (or any other generated file of your own) in your favorite PDF viewer:

```
$ xpdf docbook-samples/stdf/stdf_manual.pdf
```

To get your pdf file with 2-step processing (`xsltproc` xslt engine is shown as an example):

1. First get a `.fo` file from DocBook source (a sample below shows generating a sample file from a `docbook-samples` project):
```
xsltproc -o docbook-samples/stdf/stdf_manual.fo docbook-pretty-playout.xsl docbook-samples/stdf/stdf_manual.xml
```

2. Now, it's time to get a `.pdf` file:

```
fop -c <your_path_to_foponts_project>/foponts.xml -fo docbook-samples/stdf/stdf_manual.fo -pdf docbook-samples/stdf/stdf_manual.pdf
```

3. Look at the result just opening the generated file `stdf_manual.pdf` (or any other generated file of your own) in your favorite PDF viewer:

```
$ xpdf docbook-samples/stdf/stdf_manual.pdf
```

**NOTE**: You can compare the result with the reference file, generated by the author using this project in conjunction with a [foponts](https://github.com/eduardtibet/foponts) project. It can be downloaded from:

```
$ wget http://www.singlesourcing.ru/pub/docbook-samples/stdf/stdf_manual.pdf
```

## FAQ

See [FAQ](FAQ.md).

## Roadmap

See [TODO](TODO.md).

## Contributing

It fully depends on a type of your contribution:

1. If you found a bug or have any amazing RFE - just create an [issue](https://github.com/eduardtibet/docbook-pretty-playout/issues). 
2. If you want to add new features to docbook-pretty-playout - just fork th project, make any alternation you want and create a pull request.


## Authors

* Eduard Tibet [eduardtibet](https://github.com/eduardtibet) - initial work based on the stock DocBook XSL Stylesheets See the original [repository](https://github.com/docbook/xslt10-stylesheets) if you are interested in.

## License

This project is licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) for more details.
