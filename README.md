AirControl
==========

Simple utility for controlling AirPlay Display Mirroring from the command line.


Installation
------------

    ln -s $PWD/aircontrol ~/bin  # assuming ~/bin is on your PATH
    brew install bash-completion
    cp _aircontrol_completion /usr/local/etc/bash_completion.d/aircontrol


Usage
-----

Mirror display to Apple TV named "2nd Floor Lounge":

    aircontrol "2nd Floor Lounge"

Stop mirroring

    aircontrol -k

Completion:

    aircontrol 2nd<TAB>
    # expands to
    aircontrol "2nd Floor Lounge"
    # assuming such a device is on your local network
