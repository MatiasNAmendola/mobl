#!/bin/bash

if [ ! -d utils ]; then
  mkdir utils
  cd utils
  curl -O http://zef.me/mobl/aster.jar
  curl -O http://zef.me/mobl/make_permissive.jar
  curl -O http://zef.me/mobl/sdf2imp.jar
  curl -O http://zef.me/mobl/strategoxt.jar
  cd ..
fi
ANT_OPTS="-ss16m -Xmx1024m" CLASSPATH=utils/aster.jar:utils/make_permissive.jar:utils/sdf2imp.jar:utils/strategoxt.jar ant -f build.main.xml moblc