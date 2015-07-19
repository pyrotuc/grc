#!/bin/sh

DESTDIR=$1
BINDIR=$DESTDIR/usr/bin
LIBDIR=$DESTDIR/usr/share/grc
MANDIR=$DESTDIR/usr/share/man/man1
CONFDIR=$DESTDIR/etc

mkdir -p $BINDIR || true
cp -fv grc grcat $BINDIR
mkdir -p $LIBDIR || true
cp -fv conf.* $LIBDIR
mkdir -p $CONFDIR || true
cp -fv grc.conf $CONFDIR

if [ -f ~/.bash_aliases ]; then
echo "alias gure='grc gure'" >> .bash_aliases
echo "alias cvs='grc cvs'" >> .bash_aliases
echo "alias df='grc df'" >> .bash_aliases
echo "alias diff='grc diff'" >> .bash_aliases
echo "alias esperanto='grc esperanto'" >> .bash_aliases
echo "alias gcc='grc gcc'" >> .bash_aliases
echo "alias irclog='grc irclog'" >> .bash_aliases
echo "alias ldap='grc ldap'" >> .bash_aliases
echo "alias log='grc log'" >> .bash_aliases
echo "alias mount='grc mount'" >> .bash_aliases
echo "alias netstat='grc netstat'" >> .bash_aliases
echo "alias ping='grc ping'" >> .bash_aliases
echo "alias proftpd='grc proftpd'" >> .bash_aliases
echo "alias traceroute='grc traceroute'" >> .bash_aliases
echo "alias wdiff='grc wdiff'" >> .bash_aliases
fi
