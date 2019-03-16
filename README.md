# pdf-tools
This repository is a collection of useful pdf tools.

## Docker repository
[gkmr/pdf-tools](https://hub.docker.com/r/gkmr/pdf-tools)

## Tool list
* pdftk
* ghostscript
* qpdf
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
mkdir pdf
```
Put PDF files in pdf directory.

### Execute
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools <command>
```

## Samples & Documents
### pdftk
pdftk can combines, splits and rearranges PDF files.
#### Sample
**merge pdf**
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftk /pdf/0.pdf /pdf/1.pdf cat output /pdf/merged.pdf
```

**split pdf**
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftk /pdf/input.pdf cat 1-3 output /pdf/splitted.pdf
```
#### Document
https://www.pdflabs.com/docs/pdftk-man-page/

### ghostscript
ghostscript can convert image, embed font and outline, etc.
#### Sample
Convert to grayscale.
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools gs -sOutputFile=/pdf/grayscale.pdf -sDEVICE=pdfwrite -sColorConversionStrategy=Gray -dProcessColorModel=/DeviceGray -dCompatibilityLevel=1.4 -dAutoRotatePages=/None -dBATCH /pdf/output.pdf
```
#### Document
https://www.ghostscript.com/doc/current/Use.htm

### qpdf
qpdf does structural and content-preserving transformations on PDF files.
#### Sample
Password clear.
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools qpdf --decrypt encrypted.pdf --password=PASSWORD  decrypted.pdf 
```
#### Document
http://qpdf.sourceforge.net/files/qpdf-manual.html

### pdf2dsc
pdf2dsc is generate a PostScript page list of a PDF document.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdf2dsc /pdf/input.pdf
```
#### Document
https://linux.die.net/man/1/pdf2dsc

### pdf2ps
pdf2ps is Ghostscript PDF to PostScript translator.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdf2ps /pdf/input.pdf /pdf/output.pdf
```
#### Document
https://linux.die.net/man/1/pdf2ps

### pdfdetach
pdfdetach is document embedded file extractor.
#### Sample
Detach all embedded data.
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdfdetach -saveall -o output /pdf/input.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdfdetach.1.html

### pdffonts
pdffonts is font analyzer.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdffonts /pdf/foo.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdffonts.1.html

### pdfimages
pdfimages is image extractor.
#### Sample
Convert JPEG images.
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdfimages -j /pdf/input.pdf /pdf/output
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdfimages.1.html

### pdfinfo
pdfinfo is document information extractor.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdfinfo /pdf/foo.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdfinfo.1.html

### pdfseparate
pdfseparate is page extractor.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdfseparate /pdf/input.pdf /pdf/output_%d.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdfseparate.1.html

### pdftocairo
pdftocairo is to PNG/JPEG/TIFF/PDF/PS/EPS/SVG using cairo.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftocairo /pdf/input.pdf /pdf/output
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdftocairo.1.html

### pdftohtml
pdftohtml is to convert PDF files into HTML, XML and PNG images.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftohtml /pdf/input.pdf /pdf/output
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdftohtml.1.html

### pdftoppm
pdftoppm is to Portable Pixmap converter.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftoppm /pdf/input.pdf /pdf/output
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdftoppm.1.html

### pdftops
pdftops is to PostScript converter.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftops /pdf/input.pdf /pdf/output.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdftops.1.html

### pdftotext
pdftotext is to text converter.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdftotext /pdf/foo.pdf /pdf/foo.txt
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdftotext.1.html

### pdfunite
pdfunite is PDF page merger.
#### Sample
```
docker run -v $PWD/pdf:/pdf gkmr/pdf-tools pdfunite /pdf/0.pdf /pdf/1.pdf /pdf/2.pdf /pdf/merged.pdf
```
#### Document
http://manpages.ubuntu.com/manpages/cosmic/man1/pdfunite.1.html
