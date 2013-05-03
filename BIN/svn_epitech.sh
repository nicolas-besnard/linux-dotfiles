#!/bin/sh

if [ -z $1 ]; then
    read -p 'Repo Name ? ' repo
    if [ -n $repo ]; then
	svn co svn+ssh://kscm@koala-rendus.epitech.net/$repo
    else
	echo "Exit."
    fi
else
    svn co svn+ssh://kscm@koala-rendus.epitech.net/$1
fi