#!/bin/bash
EXTENSION=/etc/asterisk/enabled/extensions
cd ${EXTENSION};
if [ -d demo ]; then
  cd demo;git pull 2>&1 /dev/null;cd - > /dev/null;
else
  git clone https://github.com/pdeschen/demo.git 2>&1 /dev/null;
fi
cd - > /dev/null;
echo "#include ${EXTENSION}/demo/demo.conf"
