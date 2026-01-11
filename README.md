# runscript

`runscript` is a modern, structured interpreter launcher designed to extend the limited Unix shebang mechanism. It provides:

- multi‑line argument declarations
- environment bindings
- conditional environment initialisation
- strict, single‑pass substitution
- explicit escape semantics
- deterministic execution via `execve()`

Scripts begin with:

    #!/usr/bin/runscript <executable>

Followed by a header block of lines beginning with `#!`.

See `SPEC.md` for the full execution model.

