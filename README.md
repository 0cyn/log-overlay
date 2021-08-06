# log-overlay
NSLog Overlay

Install:

Add `includes/kdb.h` to includes folder

link against `libs/liblogoverlay.dylib`

Install `packages/whatever.deb` on device

Usage:

```
#include "kdb.h"

...

NSLog(@"Whatever you wanna log");
```

Supports all normal NSLog syntax

compile with -DRELEASE to disable
