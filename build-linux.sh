#!/bin/sh

boostbuild="./b2"
if [ ! -f "$boostbuild" ]; then
    chmod +x bootstrap.sh
    ./bootstrap.sh
fi

./b2 --with-chrono --with-system --with-regex --with-date_time  link=static runtime-link=static
