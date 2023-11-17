# Formats

This is my latex template preamble. Pairing with [MyLatex](https://github.com/kwang0913/MyLatex/tree/main/Example) can reproduce the template.

- This has been fully tested on Linux and Win. Working around Linux is much easier. Working with Win requires extra care in package order. I have fixed what I encountered.
- One problem with Win is that Miktex doesn't install all packages (it only installs needed packages). This is good to save disk space but will violate many package default value. For instance, install __cm-super__ before using this template on Win.
- Fonts.sty: It contains 7 fonts family that I feel nice. Since this is a template for pdfTex, only T1 type fonts are considered.
  - 1st: Linux Libertine families of fonts. A variant of Roman and Time New Roman. It has limit but adequate math fonts. Very easy to work with.
  - 2nd: New tweak of Time New Roman. Nice coverage of math fonts. Need extra effort to work with. Still in development.
  - 3rd: Supported by AMS. A variant of Roman font. Large coverage of math fonts. Easy to cause issue since it defines too many commands.
  - 4th: Famous modern Noto font. It handles math fonts quite brutally. Easy to work with but not an elegant choice.
  - 5th: A wrapper of newpxtext (Palatino text font) and eulervm (AMS Euler math font). These two fonts are designed by [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf). It is not a surprise why they blend so well (and not well when blend with other fonts). Need some extra care.
  - 6th: New tweak of Palatino. Has the same author of the 2nd font so are the same pros and cons.
  - 7th: A variant of Palatino. It has complete coverage of font type and math fonts. I don't like it but it never makes mistake.

Eventually choosing font is a quite subjective thing. Use whatever you like.
