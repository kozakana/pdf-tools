# pdf-tools
This repository is a collection of useful pdf tools.

## Docker repository
[gkmr/pdf-tools](https://hub.docker.com/r/gkmr/pdf-tools)

## Tool list
* pdftk
* ghostscript
* pdf2dsc 
* pdf2ps
* pdfdetach
* pdffonts
* pdfimages
* pdfinfo
* pdfseparate
* pdftocairo
* pdftohtml
* pdftoppm
* pdftops
* pdftotext
* pdfunite

## Usage
### Prepare
```
docker pull gkmr/pdf-tools
```

### Execute
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools <command>
```
