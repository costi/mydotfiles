# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

export GEM_HOME="/export/comp/stable/cnu_gems/gems-1.3.5_ruby-1.8.7.174_linux-gnu_i686-linux_Debian-GNU-Linux-5.0"
# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$GEM_HOME/bin:/export/comp/stable/cnu_scm/bin:$HOME/bin:/cnu/bin:$PATH"
fi
