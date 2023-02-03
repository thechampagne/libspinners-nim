# libspinners-nim

[![](https://img.shields.io/github/v/tag/thechampagne/libspinners-nim?label=version)](https://github.com/thechampagne/libspinners-nim/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libspinners-nim)](https://github.com/thechampagne/libspinners-nim/blob/main/LICENSE)

Nim binding for **libspinners** an elegant terminal spinners.

### Download

```
nimble install spinners
```

### Example

```nim
import std/os
import spinners

when isMainModule:
  var spin = spinners.new(Spinners.Dots9, "Waiting for 3 seconds")
  sleep(3000)
  spin.stop()
```

### References
 - [libspinners](https://github.com/thechampagne/libspinners)

### License

This repo is released under the [MIT License](https://github.com/thechampagne/libspinners-nim/blob/main/LICENSE).