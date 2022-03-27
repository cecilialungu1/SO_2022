#!/bin/bash

if test $# -eq 0 ; then
  read -p "Introduceti username-ul dvs. de pe serverul students: " username
else
  username=$1
fi

set -x

# informatii despre distributia de Linux instalata
hostnamectl status > distro_${username}_.txt

# informatii despre disc si sistemele de fisiere montate
lsblk -f > disc_${username}_.txt

# La final, arhivam informatiile colectate, pentru pastrarea integritatii la upload
zip info_${username}_.zip  dis*_${username}_.txt
