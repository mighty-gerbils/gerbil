# Internet Addresses

Internet addresses as host-port pairs.

The canonical representation of Internet addresses throughout the
Gerbil standard library is that of a pair, with a host in the car and
the port at the cdr.  The host can be a string or an IP address, which
is a u8vector of the right size (4 for IPv4 and 16 for IPv6).  A
_normalized_ address can only have an IP address as the host.

The `:std/net/address` module provides utilities for Internet address
processing.

::: tip usage
(import :std/net/address)
:::

## inet-address?
```
(inet-address? obj)
```

Returns true if `obj` is an Internet address.

## inet-address-string?
```
(inet-address-string? obj)
```

Returns true if `obj` is a string representation of Internet address,
with the canonical form `"host:port"`.

## inet-address
```
(inet-address obj)
```

Normalizes the Internet address represented by `obj`, which can be an
host-port pair or a string representing an Internet address.

Example:
```
> (inet-address "127.0.0.1:8080")
(#u8(127 0 0 1) . 8080)
```

## resolve-address
```
(resolve-address obj)
```

Resolves through DNS and normalizes the address represented by `obj`,
which can be a string or a host-port pair.

Example:
```
> (resolve-address "www.google.com:443")
(#u8(172 217 18 4) . 443)
```

## resolved-address?
```
(resolved-address? obj)
```

Returns true if `obj` is a normalized Internet address.


## inet-address->string
```
(inet-address->string addr)
```

Returns the string representation of an Internet address.

## string->inet-address
```
(string->inet-address str)
```

Converts the string `str` representing an Internet address to its normalized form.


## ip-address?
```
(ip-address? obj)
```

Returns true if `obj` is an IP address or a string representation of an IP address.

Example:
```
> (ip-address? #u8(127 0 0 1))
#t
> (ip-address? "127.0.0.1")
#t
> (ip-address? "localhost")
#f
```

## ip-address
```
(ip-address obj) -> ip-address
```

Normalizes the IP address represented by `obj`.

Example:
```
> (ip-address #u8(127 0 0 1))
#u8(127 0 0 1)
> (ip-address "127.0.0.1")
#u8(127 0 0 1)
```

## ip4-address?
```
(ip4-address? obj)
```
Returns true if `obj` is an IPv4 address or a string representation of an IPv4 address.

## ip4-address
```
(ip4-address obj)
```

Normalizes the IPv4 address represented by `obj`.

## ip4-address-string?
```
(ip4-address-string? obj)
```

Returns true if `obj` is a string representing an IPv4 address

## ip4-address->string
```
(ip4-address->string ip4)
```

Returns the string representation of IPv4 address.

Example:
```
> (ip4-address->string #u8(127 0 0 1))
"127.0.0.1"
```


## string->ip4-address
```
(string->ip4-address str)
```

Converts the string representation `str` of an IPv4 address to its canonical
u8vector representation.

## ip6-address?
```
(ip6-address? obj)
```

Returns true if `obj` is an IPv6 address or a string representation of an IPv6 address.

## ip6-address
```
(ip6-address obj)
```

Normalizes the IPv4 address represented by `obj`.

## ip6-address-string?
```
(ip6-address-string? obj)
```

Returns true if `obj` is a string representing an IPv6 address

## ip6-address->string
```
(ip6-address->string ip6)
```

Returns the string representation of an IPv6 address.

Example:
```
> (ip6-address->string #u8(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1))
"::1"
```

## string->ip6-address
```
(string->ip6-address str)
```

Converts the string representation `str` of an IPv6 address to its canonical
u8vector representation.

## inaddr-any4 inaddr-any6 localhost4 localhost6
```
(def inaddr-any4 ...)
(def inaddr-any6 ...)
(def localhost4 ...)
(def localhost6 ...)
```

Predefined ip address for the any address binding and localhost, for
IPv4 and IPv6 respectively.
