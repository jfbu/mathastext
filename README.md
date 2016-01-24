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

Copyright (C) 2011-2016 Jean-Francois B. (`2589111+jfbu@users.noreply.github.com`)

      Source: mathastext.dtx 1.3k 2016/01/24

> cumulative Change Log at bottom of this file.

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

INSTALLATION
============

### From `mathastext.tds.zip`

This is the fastest way: `unzip -d <destfolder> mathastext.tds.zip`,
where `<destfolder>` could be `~/texmf` or (macosx), `~/Library/texmf`.

### From `mathastext.dtx`

- with mathastext.ins: run tex on mathastext.ins to generate the package
  style file mathastext.sty as well as mathastext.tex and some test
  files.
- without mathastext.ins: run tex (or etex) on mathastext.dtx to
  generate the package style file mathastext.sty as well as
  mathastext.tex and some test files. (and also mathastext.ins)
- Move the style file mathastext.sty to a location where TeX can find it.
  In a TDS compliant hierarchy this will be
        <TDS>:tex/latex/mathastext/mathastext.sty

### Generating documentation and test files

Run tex (or etex) on mathastext.dtx to generate mathastext.tex and some
test files:

    mathastexttestmathversions.tex
    mathastexttestunicodemacos.tex
    mathastexttestunicodelinux.tex
    mathastexttestalphabets.tex

To generate the documentation (with source code):

    latex mathastext.tex (thrice)
    dvipdfmx mathastext.dvi

The file mathastext.tex can be customized to change the font size or set
other options therein. Alternative: pdflatex mathastext.dtx (thrice).
This produces the documentation without the source code.

> (One cannot use lualatex/xelatex to compile the documentation.)

CHANGE LOG
==========

1.3k \[2016/01/24\]
----

* typos fixed in the documentation. In particular, the README link to
  the package homepage had remained broken from day one of the package
  releases: `mathastext.html` therein was misspelled as
  `mathsastext.html` ! (but the pdf documentation had the correct link;
  as well as the CTAN catalogue).

1.3j \[2016/01/15\]
----

* renamed and modified recent `1.3i`'s `\MTactivemathoff` into
  `\MTeverymathoff`. Added `\MTeverymathdefault`.

* `subdued` mode is a bit stronger: also the asterisk reverts to the
  default (if it was modified due to option `asterisk`), the added
  extra `\mskip`'s (useful with upright fonts) for `'`, `\exists`,
  and `\forall` are suppressed rather than re-configured to use `0mu`.
  Related new commands `\MTexistsdoesskip`, `\MTforalldoesskip`,
  `\MTprimedoesskip`, `\MTnormalexists`, `\MTnormalforall`,
  `\MTnormalprime`.

* the toggle for using mathematically active letters is only emitted
  once during package loading; the `\Mathastext` command does not do
  it anymore; the use in the preamble of `\MTmathstandardletters`,
  or `\MTnoicinmath` and related commands is not overruled by later
  use of `\Mathastext`.

* quite a few documentation improvements and rewrites, particularly
  in the description of commands which are related to the
  modifications of mathcodes (mainly for math activation of
  characters or letters) as done by mathastext at `\everymath` or
  `\everydisplay`.

1.3i \[2016/01/06\]
----

* `\url` from `url.sty` as well as `\url` and `\nolinkurl` from
  `hyperref.sty` use math mode and (by default) the monospace text
  font. To avoid mathastext overwriting the special preparation done
  by `{url,hyperref}.sty` the commands `\url/\nolinkurl` are patched
  to do automatically `MTactivemathoff` (now `\MTeverymathoff`)
  before entering math mode.

* the extra skips specified by `\MTsetmathskips` are not inserted
  around letters if inside the arguments of math alphabet commands,
  or within operator names.

* the added explicit italic corrections (for non-oblique fonts) were
  disabled within math alphabet scopes, except `mathnormal`; they
  are now disabled within all math alphabets, inclusive of
  `mathnormal`.

1.3h \[2015/10/31\]
----

* bugfixes: since `1.3d 2014/05/23` the option `symbolgreek` caused
  `\ell` to become undefined, and, similarly but far worse, options
  `selfGreek`, `selfGreeks` caused all lowercase Greek letters
  `\alpha`, `\beta`, etc.. to become undefined.

1.3g \[2015/10/15\]
----

* following `2015/10/01` LaTeX release, removal of the `"luatex"`
  prefix from the names of the LuaLaTeX math primitives. Compatibility
  maintained with older LaTeX formats.

1.3f \[2015/09/12\]
----

* the replacement of amsmath's `\resetMathstrut@`, when it is
  done, emits an Info rather than a Warning as this could be
  potentially stressful to some users.

* the `README` self-extracts from the `dtx` source, as a text
  file `README.md` with Markdown syntax.

1.3e \[2015/09/10\]
----

* bugfix: under option nosmalldelims, `\lbrace` and `\rbrace` were
  redefined as math symbols and could not be used as delimiters.

1.3d \[2015/02/26\]
----

* the documentation mentions the improved compatibility of mathastext
  with the latest (3.34) beamer release: no more need for
  `\usefonttheme{professionalfonts}`.

1.3d \[2014/05/23\]
----

* new commands `\MTstandardgreek` and `\MTcustomgreek`.

* The Greek letters, in case of use of one of the package related
  options, are left to their defaults in the normal and bold math
  versions if the subdued option was also used (this was so far
  the case only with options LGRgreek/LGRgreeks).

* `\newmcodes@` of amsmath is left untouched if package
  lualatex-math is detected.

1.3c \[2013/12/14\]
----

* added a starred variant to `\MTversion` which tells mathastext to
  only do the math set-up and not modify the text fonts.

* added second optional version name argument to `\Mathastext` and
  to `\MTDeclareVersion`, to transfer settings for things not
  otherwise changed by mathastext from a math version to the one
  declared. This is mainly for symbols and large symbols to be the
  bold ones when the user sets up the series of a mathastextified
  font to be bold in a mathastext-declared version.

* renamed `\defaultprod` to `\MToriginalprod`, `\defaultsum` to
  `\MToriginalsum`, (this is in case of option symbolmisc).

* changes to the dtx organization; options for generating the
  documentation can be customized in generated mathastext.tex file.

* 1.2d code for `\#`, `\$`, `\%`, and `\&` modified erroneously the
  earlier correct 1.2c code and created a bug showing up with more
  than 16 math families (a possibility only with lualatex or
  xelatex).

1.3a \[2013/09/04\]
----

* the somewhat silly `\string`'s are removed from the
  `\MTsetmathskips` command of release 1.3, thus allowing its first
  argument to be a macro, or any expandable code, giving a letter.

* the amsmath `\resetMathstrut@`, which is incompatible with a
  mathematically active parenthesis ( is now modified only if
  necessary (i.e. only when `\MTnonlettersobeymathxx` is issued) and
  is restored to its original value if not needed anymore (i.e.
  after `\MTnonlettersdonotobeymathxx`, as for example when
  switching to the normal version under option subdued).

* improved documentation.

1.3  \[2013/09/02\]
----

* commands `\MTsetmathskips` and `\MTunsetmathskips` added.

* commands `\MTmathactiveletters` and `\MTmathstandardletters` to
  govern the math activation of letters independently of its use
  for insertion of the italic corrections (`\MTicinmath` and
  `\MTnoicinmath` correspondingly modified).

* the new `\luatexUmathcodenum` as available since TL2013 allows
  identical treatment by mathastext of = and - under both LuaTeX
  and XeTeX.

* `\newmcodes@` of amsmath is left untouched in case of option basic.

* a sentence containing | which was written to the log during the
  loading caused a problem if | was active (typically if
  `\MakeShortVerb`{\|} was added to the preamble prior to the
  loading of mathastext).

* some preemptive measures taken regarding things such as `\mid`,
  `\lbrace`, and `\rbrace`, as some packages define these things in
  manners which made the re-definitions done by mathastext issue
  errors.

1.2f \[2013/01/21\]
----

* minor code improvements. Change log added to the user manual.

1.2e \[2013/01/10\]
----

This version should be the last one in the 1.2 series as it seems to
correct most of the main problems which were introduced with the massive
use of mathematically active characters in versions 1.2 and 1.2b.

* It is indeed a thorny point when one wants to modify only in math
     mode how an active character acts, without breaking things. The
     package now does that /only/ if the activation appears to originate
     in the Babel system, as it is then possible to modify appropriately
     the Babel macros `\user@active<char>` and `\normal@char<char>`. The
     relevant issues are discussed in section 2.10 of the user manual,
     in the test file mathastexttestalphabets.tex, and in the source
     code comments to the macro `\mst@mathactivate`. The inherent
     incompatibility of Babel with packages having made mathematically
     active the characters itself makes document active is circumvented
     by this interference of mathastext. A generally applicable Babel
     patch could be derived from the method used by mathastext.

* The technique of mathematical activation is maintained only for the
     characters which are not catcode active (at the entrance in math
     mode, as mathastext does all its activation job at everymath and
     everydisplay).

* Sadly, the feature of added italic corrections introduced in
     version 1.2b did not behave as described in the user manual, due to
     forgotten group braces. Fixed.

* The command `\MTlowerast` from the user manual of v1.2d was not the
     one implemented in the source code. Fixed.

* The test files automatically extracted from a latex run on the dtx
     file have been revised and extended.

* The code is better documented.

1.2d \[2013/01/02\]
----

*  an incompatibility with amsmath (its macro `\resetMathstrut@`),
      exists since version 1.2 of the package. This is fixed
      here.

*  various improvements in dealing with the asterisk and in the
      mechanism of letting non-letter symbols obey the math alphabet
      commands.

*  documentation extended and improved.

1.2c \[2012/12/31\]
----

*  mathastext now inserts automatically after all (latin)
      letters in math mode their italic corrections, if the font
      used is upright (sic). This improves the spacings for the
      positioning of subscripts. The feature is de-activated
      inside the math alphabets commands (apart from `\mathnormal`),
      so as to not prohibit the formation of ligatures,

*  the documentation has been extended to explain in detail the
      issues which are relevant to the new feature of added italic
      corrections,

* version 1.2 had some bad bugs when confronted to active
  characters. This is corrected and additionally
  `\MTnonlettersdonotobeymathxx` is made the default, as the user
  input is too much constrained in its absence.

*  a less fatal, but still annoying, typo had made the dot in 1.2
      of type `\mathpunct` rather than `\mathord`

*  the inner namespace has been rationalized a bit.

1.2 \[2012/12/20\]
----

*  a new command sets up the amount of space to be automatically
      inserted before the derivative glyph (useful when using an
      upright font).

*  the scope of the math alphabets has been extended to apply
      to the non-alphabetical characters, and also to operator
      names.

*  the format of the dtx file has changed. The package file
      is self-extracting from the dtx, and four additional test
      files are also produced during `latex mathastext.dtx`.

1.15f and 1.15g \[2012/10/25\]
----

*  `\$`, `\#`, `\&`, and `\%` had been re-defined by mathastext since its
      inception in a rather strange (but working) way, which
      could cause surprises to other packages. Fixed.

*  the subdued mechanism for the math alphabets is implemented
      in a simpler and more efficient manner than in 1.15e.

*  the `defaultxx` options act a bit differently, and are more
      useful in case of a `too many math alphabets` situation.

*  various improvements in the documentation.

*  general clean up and better commenting of the source code.

1.15e \[2012/10/22\]
----

*  new user commands to specify skip or glue to be
      inserted after the math symbols `\exists` and `\forall`

*  complete (user transparent) rewrite of the code
      implementing the subdued option; and its action has
      been extended to apply also to the `\mathbf`, `\mathit`,
      `\mathsf`, `\mathtt` alphabets and not only to `\mathrm` and
      `\mathnormal` as in the previous versions.

*  improvements in the documentation.

1.15d \[2012/10/13\]
----

* the Unicode situation is now correctly treated, throughout the
  code (this had been left in a half-done way from version 1.14 of
  April 2011).

* this includes an issue related to amsmath and its
  DeclareMathOperator macro which has been fixed,

* and the code related to `\relbar` and `\Relbar` (and
  `\models`) has been revised.

1.15c \[2012/10/05\]
----

*  it is now possible to use distinct fonts in LGR encoding
      for the Greek letters according to the current math
      version.

*  improvements to the documentation.

1.15b
----

*  corrected a 'feature' of 1.15 which was backward-incompatible

*  improvements to the pdf documentation

1.15  \[2012/09/26\]
----

*  the subdued option allows the mathastextification to
      act only locally.

*  some measures taken to deal with amsmath related
      issues when using xetex or luatex.

1.14c
----

*  a bug is fixed: the `\Mathastext` macro reinitializes
      the fonts in the normal and bold math versions, but it
      also erroneously redeclared the math alphabet changing
      commands which could have been set up in previously
      defined math versions (via earlier calls to
      `\Mathastext`\[version_name\]).

1.14b \[2011/04/03\]
----

*  there was a bug with `\$`, `\#`, `\&`, `\%` in math mode which
      showed up when ten or more math families had been
      declared. This bug affected also the minus sign under
      the same circumstances, when Unicode engines were
      used. Fixed.

*  the options LGRgreek and selfGreek act now a bit
      differently, and new options LGRgreeks and selfGreeks
      have been defined.

*  I also cleaned up a bit the code, for a more
      structured namespace.

1.14
----

*  mathastext now modifies also the math alphabets `\mathit`,
      `\mathsf` and `\mathtt`, thus making it a quite generic
      complete manner to adapt the math configuration to fonts
      provided with no math support.

1.13b
----

*  when the Symbol font is used for `\prod` and `\sum` this
      will be only for inline math; display math will use the
      default glyphs

1.13 \[2011/03/11\]
----

*  the LGRgreek option is added.

*  internal changes for better readability of the code.

1.12
----

*  various bugs have been corrected.

*  the endash and alldelims options are active by default.

*  the package is more Unicode aware.

*  the `\Mathastext` command has been improved to
      facilitate the mechanism of math versions also when
      using XeTeX or LuaTeX (with package fontspec.)

*  the en-dash and dotless i and j now work with all
      encodings, Unicode inclusive.

1.11 \[2011/02/06\]
----

*  optional argument to `\Mathastext` macro.

1.1  \[2011/02/01\]
----

*  options italic and frenchmath.

1.0  \[2011/01/25\]
----

*  Initial version.

