#!/bin/bash
EXTENSION=/etc/asterisk/enabled/extensions
cd ${EXTENSION};
if [ -d demo ]; then
  cd demo;git pull > /dev/null;cd - > /dev/null;
else
  git clone https://github.com/pdeschen/demo.git > /dev/null;
fi
cd - > /dev/null;
echo "#include ${EXTENSION}/demo/demo.conf"
