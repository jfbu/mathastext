This README file is for version 1.0, 2011/01/25
of the package `mathastext' for LaTeX2e

Copyright (C) 2011 by Jean-Francois B..

Please report errors to 2589111+jfbu@users.noreply.github.com

Files `mathastext.dtx' and `mathastext-doc.pdf' and this
README may be distributed and/or modified under the
conditions of the LaTeX Project Public License, either
version 1.3 of this license or (at your option) any later
version.

The latest version of this license is in
  http://www.latex-project.org/lppl.txt
and version 1.3 or later is part of all distributions of
LaTeX version 2003/12/01 or later.

USAGE

mathastext.sty will make your document use the main text
font also in mathematics mode. It also provides a
mechanism to easily use distinct fonts (for mathematics
and also for text) in the same document. The goal is to
make documents exhibit a less polished look than is usual
with LaTeX, with the (vain?)  hope that the reader will
concentrate more on the (mathematical) content.

One corollary of the mechanism is that you can now typeset
documents (containing simple mathematics formulas) with a
quite arbitrary TeX text font, without worrying too much
that nobody ever designed accompanying math fonts.

A final aspect is that using mathastext usually reduces
the size of the final PDF file.

INSTALLATION

Run latex on mathastext.ins to create mathastext.sty from
mathastext.dtx and put it where LaTeX can find it.

To generate documentation run latex on mathastext.dtx
Further documentation is available at
mathsastext.html

