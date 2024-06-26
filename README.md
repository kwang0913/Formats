# Formats

This is my latex template preamble. Pairing with [MyLatex](https://github.com/kwang0913/MyLatex/tree/main/Example) can reproduce the template.

- This has been fully tested on Linux and Win. Working around Linux is much easier. Working with Win requires extra care in package order. I have fixed what I encountered.
- __[Outdated]__ One problem with Win is that MiKTeX doesn't install all packages (it only installs needed packages). This is good to save disk space but will violate many package default value. For instance, install __cm-super__ before using this template on Win.
- __[New]__ In MiKTeX or MacTeX, Go to setting $\rightarrow$ Package Installation and choose `Always`. This will install the new package on the fly. If you choose `Ask me`, some package (e.g. __cm_super__) won't trigger the installation prompt window and causes error. It has to be in `Always` option.
- Fonts.sty: It contains many fonts families that I feel nice. Since this is a template for pdfTeX, only T1 type fonts are considered.
  - 1st: Linux Libertine families of fonts in Open Type and encoded into T1 Type. A variant of Roman and Time New Roman. It has limit but adequate math fonts. Very easy to work with. The math fonts are extended from Libertine family.
  - 2nd: New tweak of Time New Roman. Nice coverage of math fonts. Need extra effort to work with. Still in extensive development.
  - 3rd: Supported by AMS. A variant of Roman font. Large coverage of math fonts. Easy to cause issue since it defines too many commands.
  - 4th: Famous modern Noto font. It handles math fonts quite brutally. Easy to work with but not an elegant choice.
  - 5th: A wrapper of newpxtext (Palatino text font) and eulervm (AMS Euler math font). These two fonts are designed by [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf). It is not a surprise why they blend so well (and not well when blend with other fonts). Need some extra care.
  - 6th: New tweak of Palatino. Has the same author of the 2nd font so are the same pros and cons.
  - 7th: A variant of Palatino. It has complete coverage of font type and math fonts. I don't like it but it never makes mistake.
  - 8th: Adobe Utopia font and its math font version. It looks really, but a lot of math symbols are not defined.
  - Rest: [Michael Sharpe](https://ctan.org/author/sharpe), the author of many fantastic font packages including newtx/newpx gives newtx more options in using math font. Thanks for the great job!

Eventually choosing font is a quite subjective thing. Use whatever you like.
