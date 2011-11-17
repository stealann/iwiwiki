\[[iwiWiki]]
============

Introduction
------------

iwiWiki is a wiki compiler. It is designed to be used **without** any web servers.

Main features of iwiWiki includes:

* No web servers. No CGIs.

    * All the pages are *compiled* into HTML files statically.
    * You can browse for the pages locally with your favorite web browsers.

* You can use any VCS you like for versioning.

    * iwiWiki does not care about VCS behind.

* See [[Features]] for more complete list.

* See [[Todo]] for what we'd like to implement.

* Currently, iwiWiki only supports [Markdown][markdown] [Extra][markdownextra]. See [[Syntax]] for how to markup documents.

[markdown]: http://daringfireball.net/projects/markdown/ "Markdown"
[markdownextra]: http://michelf.com/projects/php-markdown/extra/ "Markdown Extra"

License
-------

iwiWiki is Free Software, licensed under the 3-Clause BSD Liscence. See [[License]] for more details.

Dependencies
------------
* [Python](http://python.org) >= 2.4
* [python-markdown](http://www.freewisdom.org/projects/python-markdown/)
