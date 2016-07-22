AirControl
==========

Simple utility for controlling AirPlay Display Mirroring from the command line.


Installation
------------

    ln -s $PWD/aircontrol ~/bin  # assuming ~/bin is on your PATH

If you want tab completion and have bash-completion installed, then install aircontrol completion:

    ln -s $PWD/aircontrol-completion.bash /usr/local/etc/bash_completion.d/aircontrol-completion.bash


Usage
-----

Mirror display to Apple TV named "2nd Floor Lounge":

    aircontrol "2nd Floor Lounge"

The first time you do this, you'll be prompted to grant accessibility access to
"Terminal" (or iTerm, if that's your thing). Go into System Preferences ->
Security & Privacy -> Privacy and check the box for "Terminal". You won't be
prompte for this in the future.

Stop mirroring:

    aircontrol -k

Completion:

    aircontrol 2nd<TAB>
    # expands to
    aircontrol 2nd\ Floor\ Lounge
    # assuming such a device is on your local network

In action
---------
![aircontrol in action](./aircontrol.gif)

Details
-------
For details on how we built it, please check out this blog post: [http://tech.adroll.com/blog/terminal/2014/09/26/introducing-aircontrol-control-airplay-through-terminal.html](http://tech.adroll.com/blog/terminal/2014/09/26/introducing-aircontrol-control-airplay-through-terminal.html)
