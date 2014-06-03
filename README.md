# libinterposed
`libinterposed` extracted from [`forza`](https://github.com/opsmezzo/forza),
with a minor face lift.

`libinterposed` is a `LD_PRELOAD` shim which monkey-punches `bind` call to
detect on what port process listens on. On `EACCES` and `EADDRINUSE` errors
from `bind` it retries `bind` with a higher port. It outputs the port the
application ends up listening on to fd 3.
