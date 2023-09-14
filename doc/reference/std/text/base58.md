# Base58
The `:std/text/base58` library provides encoding and decoding to base58.

::: tip To use the bindings from this module:
``` scheme
(import :std/text/base58)
```
:::

## base58-encode
``` scheme
(base58-encode bytes [alphabet = base58-btc-alphabet]) -> string

  bytes    := u8vector
  alphabet := optional encoding alphabet
```

Base58 encodes a u8vector, using the given alphabet.

## base58-decode
``` scheme
(base58-decode str [alphabet = base58-btc-alphabet]) -> u8vector | error

  str := string; base58 encoded
  alphabet := decoding alphabet
```

Base58 decodes a string, using the given *alphabet*. Signals a error on invalid characters.

## base58-btc-alphabet
``` scheme
(def base58-btc-alphabet)
```

The base58 encoding alphabet used by Bitcoin.

## base58-flickr-alphabet
``` scheme
(def base58-flickr-alphabet)
```

The base58 encoding alphabet used by Flickr.
