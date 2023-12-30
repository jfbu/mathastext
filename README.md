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

The Author of this Work is Jean-Francois B. (`2589111+jfbu@users.noreply.github.com`)

Copyright (C) 2011-2019, 2022, 2023 Jean-Francois B.

      Source: mathastext.dtx 1.3zb 2023/12/29


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

Main options: `italic`, `frenchmath`, `subdued`, `LGRgreek`.
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

1.3zb \[2023/12/29\]
-----

* Update to the `frenchmath*` option to maintain compatibility
  with the [frenchmath](https://ctan.org/pkg/frenchmath)
  package whose release 2.7 (2023/12/23) has replaced
  the ncccomma package by the decimalcomma package.

* The `frenchmath+` option holds the former meaning of `frenchmath*`.

* Option `decimalcomma` to load the eponymous package by Antoine
  Missier.  This is tacitly done by `frenchmath*`.

* No more messages sent to the console output during loading,
  only info messages going into the log, and using (more or less)
  the official LaTeX interface: after close to 13 years of development
  of this package it was perhaps finally the time to do it.

* Documentation improvements.  Close to 13 years after the
  birth of the package, and as it nowadays rarely wakes up from
  dormancy, this was almost last chance to try to improve a few
  things.

1.3za \[2023/12/20\]
-----

* Under `LGRgreek` and `LGRgreeks` options, new math alphabets
  `\mathgreekupbold` and `\mathgreekitbold`.

* New options `LGRgreek+` and `LGRgreeks+`.

  Thanks to Holger Gerhardt for feature request and code ideas.
  Please find and read the relevant documentation in the PDF.

* The meaning of `defaultalphabets` and related individual
  options such as `defaultbf` has been modified (reverted to pre
  `1.15f` release): even under these options, the package always
  creates `\mathnormalbold`, `\Mathnormal`, `\Mathrm`, `\Mathbf`
  etc..., commands.  This may break documents which used these
  options in order to reserve these command names.  This was done
  with some hesitancy, but for the sake of internal logical
  coherence.

* Fix an obscure bug with no real consequences regarding
  interaction of `subdued` with `LGRgreek` and `\MTgreekfont`.
  See the `LGRgreek` documentation in the complete list of
  options for details.

* Fix long-standing hyperlink problems in the documentation:
  blue color words should now all be functioning hyperlinks.

1.3z \[2023/09/01\]
----

Fix 1.3y regression which broke `selfGreek` option due to internal
renamings.  Thanks to Stephan Korell for report.

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

