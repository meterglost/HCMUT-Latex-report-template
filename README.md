# HCMUT Latex report template

## Using Overleaf

On [release page](https://github.com/meterglost/HCMUT-Latex-report-template/releases/latest), download `HCMUT-Latex-Report-Template.zip`, upload on Overleaf, change compiler to `XeLaTeX` and recompile

## Build locally

Clone this project and open in devcontainer to code and compile.

Compile your latex code to PDF

```shell
make test
```

Compile your latex code to PDF without cache

```shell
make full
```

Clear compiler cache

```shell
make clean
```

Create zip archive file to upload on Overleaf

```shell
make archive
```

## About documentclass

This template provide `HCMUT-Report-Template` class to use in command `\documentclass{<class>}`

### Example

```latex
\documentclass[
    lang = en,
    author = Ha Vinh Nguyen,
    subject = ,
    project = ,
    passwd = 456,
    print = twoside,
]{HCMUT-Report-Template}
```

### Options

`lang` = `en` | `vi`

Set document default language

---

`author` = any

Add author field in PDF document metadata

---

`subject` = any

Set subject on title page and add subject field in PDF document metadata.

---

`passwd` = any

Set password for PDF document

> [!NOTE]\
> When password is set, Overleaf will not be able to display the pdf. You need to download the pdf, open it with a supported software, and enter the password before being able to view the content.

---

`print` = `oneside` | `twoside`

Specify that the document is intended to be print.

> [!NOTE]\
> If not set, the document is intended to be view as electronic document.
