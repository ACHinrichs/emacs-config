# emacs-config
This is my personal `.emacs.d`-directory, and some other usefull
things (located in /usefull) like a linux `.desktop` file to run
emacsclient


## Installation
Clone this repo to `~/.emacs.d` (or create a hardlink) to use the
configuration. The gitignore should exclude everything ›personal‹ from
commits, but if you want to contribute to this repo, be sure to check
the files before you `git add .` :grin:.

To use `all-the-icons`, which is used by `NeoTree` please execute
```
M-x all-the-icons-install-fonts
```
to install the fonts. If you do not do that *before* you start emacs
with NeoTree, emacs will crash instantly.

For the other usefull things I commited, see the sectios below.

## runemacsclient
If you are using Ubuntu (possibly works with other distros, but I have
not tested) copy `runemacsclient` and the image to `usr/local/bin/`
and the `.desktop`-file to `/usr/share/applications/`


## External Credits
The Emacs-Client-Icon is from
[emacs.sexy](https://github.com/picandocodigo/emacs.sexy)