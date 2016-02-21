## Overview 

Features both the Demo Application Dial Plan itself along with a convinient hot deploy
facility.

## Hot Deploy

`curl -s  https://raw.githubusercontent.com/pdeschen/demo/master/hot-deploy.sh | sh`

Either clone or pull from remote git (this repo!) and returns an `#include` statement.
Note that dialplan configuration file extension is `.conf_` so that this very config
is loaded by other mean (`/usr/local/bin/asterisk-load`)

## Dial Plan Include

To activate this hot deploy dial plan, simply issue the following `#exec` within your
dialplan context of choice.

```
[mycontext]+
#exec curl -s  https://raw.githubusercontent.com/pdeschen/demo/master/hot-deploy.sh | sh
```

## Credits

+ Intro Segment: https://www.freesound.org/people/abett/sounds/316997/
+ Wah-wah: https://www.freesound.org/people/Benboncan/sounds/73581/
+ Claps: https://www.freesound.org/people/qubodup/sounds/169943/
+ Tick-Tock: https://www.freesound.org/people/ultradust/sounds/167385/

