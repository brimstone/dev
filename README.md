# dev
This is my dev environment. You're probably interested more in my `mkdev` script.

## Requirements
* tmux
* [docker](http://docker.com)
* [nsenter](https://github.com/jpetazzo/nsenter)
* [gumption](http://dictionary.reference.com/browse/gumption)

## Installation
1. Copy `mkdev` somewhere useful in your `$PATH`
1. Edit your `~/.tmux.conf` to include some bindings to `mkdev`

I use:

`bind C new-window 'mkdev -v /home:/home -v /tmp:/tmp dev'`

This creates a new window with a docker container dev that maps in /home and /tmp.

`bind \ split-window -h 'mkdev'`

This splits the window I'm in, and if I'm in a window with a dev environment already, it joins that dev environment with `nsenter`.

`bind s split-window -v 'mkdev'`

Same as the above, but the other kind of split.

## Usage
1. Press the keys to call `mkdev`
