===================
About This Document
===================




The road to Emacs is not easy: I have tried to use Emacs for many
years, and started using on daily basis from Jun 2014. The transition
is difficulty, and full of tears and bloody, and every day I feel like
being doomed in the dark. About Jan 2015, I start to the light. And
conquered Emacs, and it now becomes a symbol of me, and I use it does
most of productive work.

As the configuration grows bigger and bigger, a single *init.el* is
not suitable for organising, testing, and expanding any more.
Previously, I have about 7 ``.el`` files, for example, ``setup-org.el``,
``setup-email.el``, and I document on each file. Inspired by Sachua's
new posts, I think it would be a brilliant idea to org Emacs
configuration code into one single org file, letting along the
convince of organising and share my settings, the precious thing I
would appreciate is it provide a way I could start with a long
comments, thoughts or workflow. In this way, the code becomes less
important as it should be.

My configuration file is initially separated by different purpose or
mode, but as it growths, it became probelmatic in tracking, and, As for
other Emacs user, my configuration is keep growing, and This
documents is first combined by 5 configuration files, and it keeps
expanding, I use literate programming to include all the notes, and
keep a log of how I use them

This Emacs configuration is free of bug and fully tested on Ubuntu and
OS X.

Normally you could tangle an org file to extract all the source code
into one file, that you could use. But I would like to push literate
programming further in two aspects: 1) the source code takes input
from this org file, I.e. table. 2) it facility Babel Library to
integrate not only Emacs Lisp, but also sh and R functions that could
be run in Emacs, and I found it particular useful.

.. toctree::
   :maxdepth: 2
   :caption: Documentation
   
   licence
   how_to_use_this_document
   install_packages
   general
   ui__emacs_looks_cool
   completion_and_selection
   file_management
   ess__emacs_speaks_statistics
   writing_in_emacs
   org_mode
   hydra
   emacs_lisp_programming
   refile
