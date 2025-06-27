# URIs [RFC3986]

The [RFC3986](https://datatracker.ietf.org/doc/html/rfc3986 "go to rfc
spec") specification defines the generic URI syntax and a process for
resolving URI references that might be in relative form. The URI
syntax defines a grammar that is a superset of all valid URIs. This is
how to work with them.

::: tip usage
(import :std/net/uri)
:::

## uri-encode
```
(def (uri-encode str (vt uri-encoding)) ...) -> /string/

	str := string to encode as URI
	vt  := a `uri-encoding-table`
```

Take any string and encode it using the `vt` which by defalt encodes any char that is not unreserved.

`rfc3986 unreserved chars: ALPHA / DIGIT / "-" / "." / "_" / "~"`

``` scheme
> (def usrt (list->string (let lp ((n 1234))
			       (if (> n 1240) []
				   (cons (integer->char n) (lp (1+ n)))))))
#!void
> usrt
"ӒӓӔӕӖӗӘ"
> (uri-encode usrt)
"%D3%92%D3%93%D3%94%D3%95%D3%96%D3%97%D3%98"
> (uri-decode #)
"ӒӓӔӕӖӗӘ"
```


## uri-decode
```
(uri-decode ...)
```

Please document me!

## form-url-encode
```
(form-url-encode ...)
```

Please document me!

## form-url-decode
```
(form-url-decode ...)
```

Please document me!
