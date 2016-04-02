# `mathastext.dtx` versus `mathastext.html`

Git version control for `mathastext` started only at `1.3e` of `2015-09-10`.
The version control for the author personal web site, which had hosted
`mathastext.html` ever since the initial release of `mathastext.html` in
January 2011 got initiated for real only in 2016, some previous snapshots (all
the way back to 2004) having been recovered by various means.

So until `1.3k` of January 24, 2016, only some releases are accompanied in
this archival repository with the corresponding update to the HTML site:
`1.0`, `1.13`, `1.14c`, `1.15d`, `1.15g`, `1.3a`, and `1.3d`.

For this reason file `mathastext.dtx` (and also `mathastext.sty` starting with
the commit here of release `1.13`) is at top level here in addition to perhaps
being also in some `v11`, `v111`, ..., up to `v13` sub-directory as done for
the package web site.  For intermediate releases these sub-directories
will contain earlier versions of `mathastext.dtx` and derived files.

Starting with `1.3m` though, each commit here updates in sync the package
source and the package HTML files.  For this reason right before the `1.3m`
commit, `mathastext.{dtx,sty}` were removed from top level and are only
located in the `v13` directory.  The `mathastext.sty` file is obtainable via
`etex mathastext.dtx` but for convenience we have committed here at each
release too.

Starting with `v14` they will be in the `v14` directory but `v13` still exists
as a symbolic link, because `mathastext.html` and `showcase.html` continued by
laziness to always point to `v13` where my release script updates the file at
the time the `.zip` file for [CTAN](https://ctan.org) is prepared for upload.

If there is some newer release of `mathastext` in future, probably the web
site will at long last switch to use `v14` as sub-directory and not
`v13`... Perhaps it will be hosted as GitHub page rather, and the legacy
location at my personal web site will be gone.  By the way for various
reasons, this personal web site which used to host more than one hundred PDFs
related to (part of) my professional activities was terminated as an act of
protest against the 2020-2021 period (and not only! but I shall not comment
here).

This text was written on May 30, 2025, during the archival process creating
this repository.
