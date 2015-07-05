#!/bin/bash

WHERE=`pwd`

if [ -a .encoded ]; then
  TGZ_NAME="whois-enc-1.1.1.tgz"
  DIR_NAME="whois-enc"
else
  TGZ_NAME="whois-1.1.1.tgz"
  DIR_NAME="whois"
fi

cd ..
tar -cvz --exclude=OLD --exclude=work --exclude=*~ --exclude=CVS --exclude=.?* --exclude=np --exclude=.cvsignore -f $TGZ_NAME $DIR_NAME
cd $WHERE
