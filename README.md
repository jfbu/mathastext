<!-- -->
            +-------------------------------------------+
            +                                           +
            +                mathastext                 +
            +                                           +
            +     'Use the text font in math mode'      +
            +                                           +
            +-------------------------------------------+

This Work may be distributed and/or modified under the conditions
of the [LPPL1.3c](http://www.latex-project.org/lppl/lppl-1-3c.txt)

The Author of this Work is Jean-Francois B.

Copyright (C) 2011-2019, 2022 Jean-Francois B. (`2589111+jfbu@users.noreply.github.com`)

      Source: mathastext.dtx 1.3y 2022/11/04


DESCRIPTION
===========

Optimal typographical results for documents containing
mathematical symbols can only be hoped for with math fonts
specifically designed to match a given text typeface.
Although the list of freely available math fonts (alongside
the Computer Modern and AMS extension fonts) is slowly
expanding (fourier, kpfonts, mathdesign, pxfonts, txfonts,
newpx, newtx, ...) it remains limited, and the situation is
even worse with Unicode fonts (XeTeX/LuaTeX). So if you can't
find a math font which fits well with your favorite text
font, and wish to still be able to typeset mathematical
documents, perhaps not of the highest typographical quality,
but at least not subjected to obvious visual incompatibilities
between your text font and the math fonts, try out mathastext:
it will simply use the text font also for the math!

- mathastext.html
- showcase.html

USAGE
=====

`mathastext` is a LaTeX package

      \usepackage{mathastext}

The document will use in math mode the text font as configured at
package loading time, for these characters:

      abcdefghijklmnopqrstuvwxyz
      ABCDEFGHIJKLMNOPQRSTUVWXYZ
      0123456789
      !?,.:;+-=()[]/#$%&<>|{}\

Main options: `italic`, `subdued`, `LGRgreek`.
- Use the `italic` option to get the Latin letters in math mode
  be in italics. Digits and log-like operator names (pre-defined
  as well as user-defined) will be in the same shape as the text
  font (usually this means upright).
- each `\Mathastext[<name>]` in the preamble defines a math version
  to be later activated in the document body via the command
  `\MTversion{<name>}`.
- With the `subdued` option, mathastext will be active
  only inside such math versions.
- For documents needing Greek letters the following is
  possible:
  - no option: Greek letters defined by other packages,
  - `eulergreek`: use the Euler font for the Greek letters,
  - `symbolgreek`: use the Postscript Symbol font for the
     Greek letters.
  - `LGRgreek`: use the document text font in LGR encoding.
     Further options specify the shape of the lowercase
     and uppercase Greek glyphs; starting with v1.15c it is
     possible to use multiple distinct LGR fonts in the
     same document.
- Commands are provided to scale the Euler and Symbol fonts by an
  arbitrary factor to let them fit better with the document text
  font.
- `\MTsetmathskips` allows to set up extra spacings around letters.

RECENT CHANGES
==============

1.3y \[2022/11/04\]
----

(the 1.3x had an annoying documentation bug, and had already
been pushed to CTAN, hence the version increase to 1.3y)

* mathastext now requires the `\expanded` primitive (which is
  available with all major engines since TeXLive 2019).

* Revisit parts of the documentation (mainly
  the Examples, and the section on Greek letters) and shuffle
  the other parts to surely improve things. Mention
  the [mathfont](https://ctan.org/pkg/mathfont)
  and [frenchmath](https://ctan.org/pkg/frenchmath) packages.

* Add the `ncccomma` option which loads the
  [ncccomma](https://ctan.org/pkg/ncccomma)
  package to allow the comma as decimal separator.

* Add the `binarysemicolon` option to let the semi-colon
  be of type `\mathbin`, not `\mathpunct`.

* Add the `frenchmath*` option which does all three of
  `frenchmath`, `ncccomma` and `binarysemicolon`.

* Under the `LGRgreek` and `LGRgreeks` options only:

  - make available upright and italic Greek letters in math mode
    via `\alphaup`, `\alphait`, ...  control sequences, in
    addition to those not using such postfixed-names.

  - add `\mathgreekup` and `\mathgreekit` math alphabets.

  - add `\MTgreekupdefault` and `\MTgreekitdefault`.  The former
    replaces `\updefault` which was used in some places and since
    LaTeX 2020-02-02 caused systematic Font Warnings about the
    substitution of `up` by `n`.

  These new features required an extensive internal refactoring
  which is expected to not induce changes to most existing
  documents.  But it may induce changes to those using some
  unusual configuration in the preamble, as made possible via the
  package macros; this can apply only to documents authored by
  those few people who actually read the documentation.  For full
  details make sure to read the PDF documentation about this
  change.

* Fix "`\Digamma` under `LGRgreek` option uses the shape for
  lowercase not uppercase Greek".

* Fix some incongruities in log messages related to Greek
  letters and emitted during math version creation in the
  preamble.

