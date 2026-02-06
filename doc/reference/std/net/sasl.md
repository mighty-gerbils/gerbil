# SASL Authentication

The `:std/net/sasl` library implements the SCRAM (Salted Challenge Response
Authentication Mechanism) family of SASL authentication mechanisms, as
specified in [RFC 5802](https://www.rfc-editor.org/rfc/rfc5802) (SCRAM-SHA-1)
and [RFC 7677](https://www.rfc-editor.org/rfc/rfc7677) (SCRAM-SHA-256).

SCRAM is used by protocols such as PostgreSQL, XMPP, and SMTP for secure
password-based authentication without transmitting the password in the clear.

::: tip To use the bindings from this module:
```scheme
(import :std/net/sasl)
```
:::

## Overview

SCRAM authentication follows a four-step exchange:

1. **Begin**: Create a SCRAM context with `scram-sha-1-begin` or `scram-sha-256-begin`
2. **Client first**: Generate the client's first message with `scram-client-first-message`
3. **Server first**: Process the server's first response with `scram-client-first-server-message!`
4. **Client final**: Generate the client's final message with `scram-client-final-message`
5. **Server final**: Verify the server's final response with `scram-client-final-server-message!`

## scram-context?
```scheme
(scram-context? obj) -> boolean
```

Returns `#t` if *obj* is a SCRAM authentication context.

## scram-sha-1-begin
```scheme
(scram-sha-1-begin user pass) -> scram-context
```

Creates a SCRAM-SHA-1 authentication context for the given *user* (username
string) and *pass* (password string).

::: tip Example:
```scheme
(import :std/net/sasl)

(def ctx (scram-sha-1-begin "myuser" "mypassword"))
```
:::

## scram-sha-256-begin
```scheme
(scram-sha-256-begin user pass) -> scram-context
```

Creates a SCRAM-SHA-256 authentication context for the given *user* and
*pass*. SHA-256 is recommended over SHA-1 for stronger security.

::: tip Example:
```scheme
(import :std/net/sasl)

(def ctx (scram-sha-256-begin "myuser" "mypassword"))
```
:::

## scram-client-first-message
```scheme
(scram-client-first-message ctx (nonce #f)) -> string
```

Generates the client's first message for the SCRAM exchange. A random nonce
is generated automatically unless *nonce* is provided (useful for testing).

The returned string should be sent to the server as the initial authentication
message.

::: tip Example:
```scheme
(def ctx (scram-sha-256-begin "user" "pass"))
(def first-msg (scram-client-first-message ctx))
;; => "n,,n=user,r=<random-nonce>"
```
:::

## scram-client-first-server-message!
```scheme
(scram-client-first-server-message! ctx sfm) -> void
```

Processes the server's first message *sfm* (a string) and updates the SCRAM
context *ctx* with the server's nonce, salt, and iteration count.

Raises an I/O error if:
- The server message is missing required fields (`r`, `s`, `i`)
- The server nonce does not begin with the client's nonce (possible attack)

## scram-client-final-message
```scheme
(scram-client-final-message ctx) -> string
```

Generates the client's final message, which includes the client proof. This
must be called after `scram-client-first-server-message!` has processed the
server's challenge.

The returned string should be sent to the server. The context is also updated
with the expected server verifier for use in the final verification step.

## scram-client-final-server-message!
```scheme
(scram-client-final-server-message! ctx smsg) -> void
```

Verifies the server's final message *smsg*. Checks that the server's
signature matches the expected verifier computed during
`scram-client-final-message`.

Raises an I/O error if:
- The server reports an authentication error (the `e` field is present)
- The server's verifier does not match (possible impersonation)
- The message is malformed

## Example: Full SCRAM Exchange

```scheme
(import :std/net/sasl)

;; 1. Begin
(def ctx (scram-sha-256-begin "username" "password"))

;; 2. Client -> Server: first message
(def client-first (scram-client-first-message ctx))
;; Send client-first to server, receive server-first

;; 3. Process server's challenge
;; (scram-client-first-server-message! ctx server-first-message)

;; 4. Client -> Server: final message
;; (def client-final (scram-client-final-message ctx))
;; Send client-final to server, receive server-final

;; 5. Verify server
;; (scram-client-final-server-message! ctx server-final-message)
```
