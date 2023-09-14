# Text Utilities
::: tip To use the bindings from this module:
``` scheme
(import :std/misc/text)
```
:::

## include-text
``` scheme
(include-text path) -> string

  path := path to file to include, string
```

Macro that expands to file contents of *path* at compile-time.

::: tip Examples:
``` scheme
> (def vert-shader-src (include-text "/home/user/dev/opengl/minimal.vert"))

;; instead of here strings:
> (def vert-shader-src #<<EOF
#version 420 core

void main(void)
{
    gl_Position = gl_Vertex;
}
EOF
)

> vert-shader-src    ; same string in both cases
"#version 420 core\n\nvoid main(void)\n{\n    gl_Position = gl_Vertex;\n}"
```
:::
