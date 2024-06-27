# Formats

This is my latex template preamble. Pairing with [MyLatex](https://github.com/kwang0913/MyLatex/tree/main/Example) can reproduce the template.

- This has been fully tested on Linux and Win. Working around Linux is much easier. Working with Win requires extra care in package order. I have fixed what I encountered.
- __[Outdated]__ One problem with Win is that MiKTeX doesn't install all packages (it only installs needed packages). This is good to save disk space but will violate many package default value. For instance, install __cm-super__ before using this template on Win.
- __[New]__ In MiKTeX or MacTeX, Go to setting $\rightarrow$ Package Installation and choose `Always`. This will install the new package on the fly. If you choose `Ask me`, some package (e.g. __cm_super__) won't trigger the installation prompt window and causes error. It has to be in `Always` option.
- RU.cls is the Beamer template modified for usages of Rutgers University ECE department.
- Format.tex is the document template preamble.
- Macro.tex contains many defined function for mathematical academic writing.
- Fonts.sty contains many fonts families that I feel nice. Since this is a template for pdfTeX, only T1 type fonts are considered. Below are the details of this file.
- Upper choices: The command changes both text and math fonts. I recommend the 1st choice since it provides optimal result in nearly 99% usage.
  - 1st: Linux Libertine family of fonts in Open Type and encoded into T1 Type. A variant of Roman and Time New Roman. Very easy to work with.
  - 2nd: New tweak of Time New Roman. Nice coverage of math fonts. Need extra effort to work with. Still in extensive development.
  - 3rd: Supported by AMS. A variant of Roman font. Large coverage of math fonts. Easy to cause issue since it defines too many commands.
  - 4th: Famous Google Noto font. It handles math fonts quite brutally. Easy to work with but not an elegant choice.
  - 5th: Palatino text font with AMS Euler math font. These two fonts are designed by [Hermann Zapf](https://en.wikipedia.org/wiki/Hermann_Zapf). It is not a surprise why they blend so well. Need minor extra care.
  - 6th: New tweak of Palatino. Has the same author of the 2nd font so are the same pros and cons.
  - 7th: A variant of Palatino. It has complete coverage of font type and math fonts. I don't like it, but it never makes mistake.
  - 8th: Adobe Utopia font and its math font version. It looks really nice, but a lot of math symbols are not defined.
- Lower Choices: [Michael Sharpe](https://ctan.org/author/sharpe), the author of many fantastic font packages including newtx/notomath/newpx gives newtx more options in using math font. Thanks for the great job!
  - The text font and math font can be adjusted separately. It is useful in academic writing since publishers usually set requirements in one and give freedom in the other.
  - You may find some options are not available on Overleaf yet since Overleaf uses not up to date texlive version.
  - I recommend the last one since it uses stix2 font family, which has the largest math symbol coverage, with better implementation in Latex. It is not available on Overleaf yet.

Eventually choosing font is a quite subjective thing. Use whatever you like.
