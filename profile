# /etc/profile

#Set our umask
umask 022

# Set our default path
PATH="/usr/local/sbin:/usr/local/bin:/usr/bin"
export PATH

export PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH
export MANPATH=/usr/local/texlive/2014/texmf-dist/doc/man:$MANPATH
export INFOPATH=/usr/local/texlive/2014/texmf-dist/doc/info:$INFOPATH

# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
BROWSER=/usr/bin/xdg-open
