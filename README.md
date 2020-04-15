My Homebrew Tap of little programs
==================================

This repository is a [Tap][tap] for use with Mac Homebrew. Here, you can
find some programs I've written. Most of them are small toy programs. To
install them:

    $ brew tap easoncxz/tap
    ... (Brew clones this repo in the background) ...
    
    $ brew install $SOME_FORMULA
    ... (your system might be used to compile some code from source) ...
    
Or in the case of ambiguity of names:

    $ brew install easoncxz/tap/$SOME_FORMULA
    ... (brew will run `brew tap easoncxz/tap` if you haven't already done so) ...
    
    $ brew uninstall easoncxz/tap/$SOME_FORMULA
    ... (stuff is uninstalled) ...
    
To let your Homebrew system forget about this repository:

    $ brew untap easoncxz/tap

You would still need to manually uninstall the Formulae you've already installed
from this repository, by the usual `brew uninstall`.

Many of the commits in this repository are created programmatically by my
build servers by using a tool I created called [homebrew-automation][auto].

[tap]: https://docs.brew.sh/Taps
[auto]: https://github.com/easoncxz/homebrew-automation
