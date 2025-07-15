- [JWT: JSON Web Token](#org23921cb)
    - [`RS256` signature](#org0ae03de)
      - [Private key](#org7ba532e)
      - [Signing with our Private Key](#org91964e3)
      - [Verify with a Public Key](#orgecf80fc)
  - [Reference Documents](#org66e4081)

I need RSA in order to perform the `RS256` algorithm, an asymmetric algorithm that uses a private key to sign a `JSON Web Token` (JWT) and a public key to verify that signature.

Alternatively a JWT can be an `HS256` .We'll get into that as well. along with those an **ECDSA** algo is outlined in the [RFC7519](https://datatracker.ietf.org/doc/html/rfc7519) specification.

To start let's import the right things.

```scheme
> (import :std/crypto :std/text/base64 :std/format)
```


<a id="org23921cb"></a>

# JWT: JSON Web Token

> JSON Web Token (JWT) is a compact, URL-safe means of representing claims to be transferred between two parties. The claims in a JWT are encoded as a JSON object &#x2026; --[RFC7519](https://datatracker.ietf.org/doc/html/rfc7519)


<a id="org0ae03de"></a>

## `RS256` signature

What that means is that there a string `header.payload.signature` that when decoded gives us a verifed object of somekind.

```scheme
> (def token "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImlhdCI6MTc1MjAxNzc2NSwiZXhwIjoxNzUyMDIxMzY1LCJpc3MiOiJmaXJlYmFzZS1hZG1pbnNkay1mYnN2Y0BlbGVjdHJvbmljLWNsYWltcy1tYW5hZ2VyLmlhbS5nc2VydmljZWFjY291bnQuY29tIiwic3ViIjoiZmlyZWJhc2UtYWRtaW5zZGstZmJzdmNAZWxlY3Ryb25pYy1jbGFpbXMtbWFuYWdlci5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IjEifQ.XEBUFxgXvN0etkU1Fd4q7B-uqAVtlkJQOwG_dvj1osxvk6nnnByTO3BTgQgILXNhkPzePh9-LCZc_70VYGbodnzK7VxwjHas5Kg9LXueSdkdXDXwzdB2b1hPoXg95BVBe5iOou5j6g9PlRfrjkL05MIKE9dKuZl8n3Am11LUTijRyc20nWSwS86OmElkiU_XUD_O_r_CyygAUdNxIYkpWZVcbKsFaZpc9rA9Lj8DDLH-l7EeBkywv1Oi7dKd-9HxIYB8vVnp3txNhM6egP293YY9OqKDvOB6lvJ7mKaPTWbpY3PDh6XU4I5HUHKmU8bRReO0ZkPyy8t6oi3HVx_KoQ")
> (defvalues (header payload signature) (apply values (string-split token #\.)))
```

According to the RFC all of those are `BASE64URL` encoded. Let us make a `STRING` from it.

```scheme
> (def (STRING b64)
    (utf8->string (base64-string->u8vector b64 urlsafe?: #t)))
> (STRING header)
"{\"alg\":\"RS256\",\"typ\":\"JWT\"}"
> (def (BASE64URL thing)
    (let ((u8 (if (u8vector? thing) thing (string->utf8 thing))))
      (u8vector->base64-string u8 urlsafe?: #t padding?: #f)))
> (string=? header (BASE64URL (STRING header)))
#t
```

The `alg` is `RS256` according to the **JSON** string in `header`. That means the `signature` is a `sha256` signed digest of `header.payload` with an `RSA` private key.


<a id="org7ba532e"></a>

### Private key

In this case the imported `pkey-text` is a `PEM` with `"PrivateKeyInfo"` style like outlined in [RFC5208](https://datatracker.ietf.org/doc/html/rfc5208).

```scheme
> (def pkey-text "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDT0U3Pw6EkTaQO\nQFBkcMsTEBeyBibv5NvBvevWvVCF1IN0j1hz3gsudOHbe2Uo9Ncm4HxK7QFrZsh9\nHZcFGALYyGRCqPX2RK/Zg66yqh0rdQdzhTr6JNDI2q63kxfaCzXS6ZIAMJ7XzMT0\nNl+O5V5JK8EO+MegvRrq1lgxBP8OGGhC2G+yC/uilZ43gtCZKioa2uZba0nWa4hX\ngH/DMmNeasLTFFDMcikabDtZSKsxtVa8NIZ0YgpUQkaAMf73vjcBHHKocytFJOBR\nU/uwKUVtkwhDYvAVLJXITIJe91UyJ+57uIEBeEbIGeBEfzrp9SVuwYyIvwr84WHe\n/NMkjTErAgMBAAECgf8LywrYJ7drrMW2YoE1RPEnc1UxhUQWwLzVRsytyU2ZeQgA\nh6Qq6epy9oNaMad/Kj00HSBQHD8UPxDMoK+Q+x1cAcw5eNumnPc0HMVcaQhRVCBu\nLobB/DbO3Wteh1itCKmbEusMZ3NmmmwTqxSS/GrGyWSyKThh1u0A1mX0sdKE3VlU\nkzJsX+WKDENraG7RKXh89d98Vq7bjeSHW6AJr+i16XXgM68obFSpY6EDxz5NtTOt\nJEllJMCLKIlaHLDz08/nZXRvmfEFYjf6+Z2CsffNXUjoi1ECWjEpUN74yPR4C/Rx\nYDIyObg8LIQXrGGXmL1t10DYV2VDVecV+V3hTj0CgYEA8Y8VdUf9Si0mLuxicTj1\nflUKhr/2hAfOvy3KOH74kR4iiC1rBZToFc35xzGeOGuVrF2OVyZrUTvhDFdz8MZ7\nrL1wjadoaiiYIAgL5gMFB846Qhm0gRSSIPzPesYI6oid3vIaQ/yCNwtdmcrUqoyQ\n/uPV/YmrOJy9JVc0P9R2kM0CgYEA4HsL9ph5JJo8g7Rl2eCK8M2VK9vEUK+ka01U\nz9hVXfFkEEZCSF7H3CAk7H3jKKTx2ZXw6G60v+FsRHhL6oLqZgmUMMsVeDydNKyr\nIkw+wGj56JFJXFDYYyvMOOU0Tz4YM0vubrGUycTx9tDE7ZBKAijIrT8J5sa0rcoG\nqFvr6dcCgYEAiWpeSKO1YZchm5v5vHMspLt4C4P0ltNiN7uyyETi3psIBfPgaAJ3\nrL/KEhkV6v643J80NDu03Td1JPIzEIu5G2GBP/Q2H/4L3Fz3d9fL6s7UsXmyB6RO\nJNnspek2dUVWmdecPYTOBsY+bxjFtmfUrEusFllUwBXaO/3JyW3yLRkCgYARvUeN\nvjDclp+vnMLru9Xe/7AJHj3eTnME08CfCC5+1QOeUZ8NTwgmOhgQ5EXeQWKnWjUG\neTEpdKv0oTkGmD/jvmAKlxHkRY36yqZfeH0BAYq2OTz94ZmoBJ8H4/0FQhfxfc+i\nyb/DTh/87DSTvXJLx2NMZY3nwc4naa6rAVCcUwKBgQDW4QP3cPiOpyNUlws0D98L\nAvTJxS1GW4z6jkAfcpArQ9FF5cDva4JkEzjFDSMj69KG0rCFzmbSbAKMUGcne8lh\nNzJ15SNHJ6tBLGsllB0vqv7SWWj4kEWC7snXcNETaCvVzUbV0boQZAcJ7gOSweWw\nErJ9eO6qLxw64/e2dwwDHA==\n-----END PRIVATE KEY-----\n")
```

Crypto works with bytes, not with strings so we'll convert it.

```scheme
> (def pkey-bytes (string->utf8 pkey-text))
```

Using that it's time to create a `pkey` using `:std/crypto`'s `(bytes->pkey type bytes)` with the type as `#f` because it's actually hidden in the key text. Have a look at [the documentation](https://cons.io/reference/std/crypto.html#bytes-to-private-key) for more options.

```scheme
> (def pkey (bytes->private-key #f pkey-bytes))
```

Because it's a `PEM` with `PrivateKeyInfo` as the format we can recreate that

```scheme
> (def pkey-out-bytes
    (private-key->bytes pkey format: "PEM" structure: "PrivateKeyInfo"))
> (string=? (utf8->string pkey-out-bytes) pkey-text)
#t
```


<a id="org91964e3"></a>

### Signing with our Private Key

As mentioned previously the `signing-input` for the signature is `header.payload`.

```scheme
> (def signing-input (string->utf8 (format "~a.~a" header payload)))
```

The `signature-output` is a signing digest of that using our `pkey` with a `model: 'sha256`.

```scheme
> (def signing-output (digest-sign pkey signing-input model: 'sha256))
```

So a `BASE64URL` encoding of that should match our initial test signature and that means we've come full circle and can sign out own **JWT**'s!

```scheme
> (string=? signature (BASE64URL signing-output))
#t
```


<a id="orgecf80fc"></a>

### Verify with a Public Key


<a id="org66e4081"></a>

# Reference Documents

A number of pointers to get me there:

-   <https://ephemeral.cx/2012/06/openssl-rsa-aes-and-c/>
-   <https://gist.github.com/jusonqiu/6fcfe386f209d46c5f1d>

<https://www.rfc-editor.org/rfc/rfc7518#section-3.3>

And the big one with examples:

<https://www.rfc-editor.org/rfc/rfc7515.html#appendix-A.2>
