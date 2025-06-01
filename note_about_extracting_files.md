# Extracting `mathastext.sty` and other files from `mathastext.dtx`

You don't need any extraction process if checking out this repository
at tag `1.13` or later, as `mathastext.sty` has been committed since
then here.  Initially at top level, then inside `v13` and now inside
`v14` sub-directory, alongside source `mathastext.dtx`.

If you want to extract test files, or build yourself the PDF documentation (as
this repository does not include it), with or without the commented source
code, follow these instructions first:

- prior to `1.2` tag, issue `etex mathastext.ins`.

- starting with `1.2` tag, you can also use `latex mathastext.dtx`.

- starting with `1.3c` tag, you can also use `etex mathastext.dtx`, and this
  is the recommended way from then on.

- starting with `1.3e` tag, the `mathastext.ins` is no more committed to this
  repository, you must use `etex` (or `latex`) on `mathastext.dtx` to extract
  the files.  Regarding [CTAN](https://ctan.org) uploads they ceased
  containing `mathastext.ins` at `1.3u 2019-08-20`.

To produce `mathastext.pdf` follow the instructions printed during the
extraction process (or check inside extracted `mathastext.tex` for them).

This text was written on June 1st, 2025, during the archival process creating
this repository.
