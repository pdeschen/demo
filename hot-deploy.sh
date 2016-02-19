#!/bin/bash
EXTENSION=/etc/asterisk/enabled/extensions
cd ${EXTENSION};
if [ -d demo ]; then
  cd demo;git pull > /dev/null 2>&1;cd - > /dev/null;
else
  git clone https://github.com/pdeschen/demo.git > /dev/null 2>&1;
fi
cd - > /dev/null;
echo "#include ${EXTENSION}/demo/demo.conf_"
