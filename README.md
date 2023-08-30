# HCMUT Latex report template

## Usage

### Using Overleaf

On [release page](https://github.com/meterglost/HCMUT-Latex-report-template/releases/latest), download `HCMUT-Latex-Report-Template.zip`, upload on Overleaf, change compiler to `XeLaTeX` and recompile

### Build locally

Clone this project and open in devcontainer to code and compile.

#### Requirement

-   Docker
-   VSCode with [devcontainer extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

#### Compile your latex code to PDF

```shell
make test
```

#### Compile your latex code to PDF without cache

```shell
make full
```

#### Clear compiler cache

```shell
make clean
```

#### Create zip archive file to upload on Overleaf

```shell
make archive
```

## Documentclass

This template provide `HCMUT-Report-Template` class to use in command `\documentclass{<class>}`

### Example

```latex
\documentclass[
    title = Report title,
    author = Report author,
    subject = Brief description of the document,
    passwd = 456,
    print = twoside,
]{HCMUT-Report-Template}
```

### Options

#### title

_Possible value:_ any

_Description:_ Add title field in PDF document metadata. Maybe used by browsers or PDF viewer applications to display title instead of PDF file name.

---

#### author

_Possible value:_ any

_Description:_ Add author field in PDF document metadata

---

#### subject

_Possible value:_ any

_Description:_ Add subject field in PDF document metadata. Maybe used by search engines or document management systems.

---

#### passwd

_Possible value:_ any

_Description:_ Set password for PDF document

_Note that when set password, Overleaf will not be able to display the pdf. You have to download it, open it locally, and enter the password before being able to view the content._

---

#### print

_Possible value:_ oneside, twoside

_Description:_

-   oneside

    -   Add a left-only gutter margin to the PDF document.

-   twoside

    -   Add a left-right interleaved gutter margin to the PDF document.
    -   Add blank pages to make the title page, TOC page, first page of the PDF document place on the right side.
