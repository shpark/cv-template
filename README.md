cv-template
===========

## 0. Quick start

```
pandoc --template cv-template.tex -t latex cv.yaml
lualatex --shell-escape cv.tex
```

## 1. Prerequisites

On Debian, install the following packages:
- texlive-science
- texlive-extra-utils
- texlive-fonts-extra
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
