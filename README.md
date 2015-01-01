Just configuration files and a small program or two so that I may learn a bit about git, vim, github and other things.

------------------------------------------------------------
I found the Arduino IDE installation approach to be
frustrating. It installs it's own, older version of avrdude
into a non-standard location without a path in the
environment. This means there are two versions installed and
used, depending on how it's called. Old for the IDE and new
for everything else. The version is so old that the conf
file is incompatible.

I had already set the conf file to suit Ada Fruit's Trinket
and Gemma (/etc/avrdude.conf) and didn't want to mess with
the old avrdude's file too.
  
avrdude.sh is a simple wrapper to replace hard-coded avrdude 
command-line parameters, from Arduino's IDE, with parameters
which better suit the host and target.

This allows boards which emulate programmers, like Trinket
and Gemma, to be easilv supported. It also allows the use
of a pre-existing install of Avrdude, perhaps of a newer
release, to be used with its compatible avrdude.conf file.

It must sit in place of the avrdude located in
/usr/share/arduino/hardware/tools/
Since it must share that directory, the original avrdude should
be renamed to "avrdude.old." Of course, this script must be
named "avrdude" and be made executable through
"chmod +x avrdude"
------------------------------------------------------------


------------------------------------------------------------
Texlive from Arch repositories is missing tlmgr and so
updates from TUG are not possible. This is intentional but
makes texlive, well, not quite so alive and manual package
instalation is a PITA.

Instead I installed the official version from
http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

The file "/etc/profile" exports paths for texlive 2014

------------------------------------------------------------


