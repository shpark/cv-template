cv-template
===========

This is a CV template based on [moderncv](https://github.com/moderncv/moderncv)
where you don't actually have to modify LaTeX document yourself, but instead
fill in your information to a yaml file. You can take a look at the example
[cv.yaml](./cv.yaml) to see how it works.

This template is inspired by other structured CV templates, especially,
[cv-zach](https://github.com/rzach/cv-zach) and
[CV-pandoc-healy](https://github.com/bmschmidt/CV-pandoc-healy).

## 0. Quick start

```
make
```

## 1. Prerequisites

On Debian, install the following packages:
- texlive-science
- texlive-extra-utils
- texlive-fonts-extra
- texlive-lang-cjk (Required by luatexko)
- gawk (required by ./vc.sh)

## 2. Compile

First, use pandoc to generate `cv.tex` from `cv.yaml` using `cv-template.tex`
template.

```
pandoc --template cv-template.tex -t latex cv.yaml
```

Then, compile generated `cv.tex` using your favorite `xelatex` or `lualatex`:


```
lualatex --shell-escape cv.tex
```

or

```
xelatex --enable-write18 cv.tex
```

## TODOs

- [ ] Bibliography support
- [ ] Try `latexmk`
