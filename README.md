My Homebrew Tap of little programs
==================================

This repository is a [Tap][tap] for use with Mac Homebrew. Here, you can
find some programs I've written. Most of them are small toy programs.

For example, to install [`hello-homebrew-packaging`](Formula/hello-homebrew-packaging.rb):

    $ brew tap easoncxz/tap
    ... (Brew clones this repo in the background) ...
    
    $ brew install hello-homebrew-packaging
    ... (your system might be used to compile some code from source) ...
    
Alternatively, all in one go:

    $ brew install easoncxz/tap/hello-homebrew-packaging
    ... (brew will run `brew tap easoncxz/tap` implicitly) ...
    
To undo all the above:

    $ brew uninstall easoncxz/tap/hello-homebrew-packaging
    ... ( Homebrew deletes files ) ...
    
    $ brew untap easoncxz/tap

Many of the commits in this repository are created programmatically by my
build servers by using a tool I created called [homebrew-automation][auto].

[tap]: https://docs.brew.sh/Taps
[auto]: https://github.com/easoncxz/homebrew-automation
