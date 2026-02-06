# SMTP: Simple Mail Transfer Protocol

The `:std/net/smtp` library provides an SMTP client for sending email.

::: tip To use the bindings from this module:
```scheme
(import :std/net/smtp)
```
:::

## smtp-connect
```scheme
(smtp-connect address
              timeout: (timeo #f)
              input-timeout: (itimeo #f)
              domain: (domain (##host-name))
              tls: (tls 'maybe)
              ssl-context: (context (insecure-client-ssl-context)))
=> SMTP
```

Opens an SMTP connection to *address* (a string in `"host:port"` format).
Performs the EHLO handshake and optionally negotiates STARTTLS.

- `timeout`: Connection timeout
- `input-timeout`: Read timeout for the connection
- `domain`: Domain name to use in the EHLO greeting. Defaults to the local hostname.
- `tls`: TLS mode:
  - `'maybe` (default): Use STARTTLS if the server advertises it
  - `#t`: Require STARTTLS; error if the server does not support it
  - `#f`: Do not attempt STARTTLS
- `ssl-context`: SSL context for the TLS connection

Returns an SMTP connection object that can be used with `send-mail` and the
SMTP command methods.

::: tip Example:
```scheme
(import :std/net/smtp)
(def mail (smtp-connect "localhost:25"))
```
:::

## send-mail
```scheme
(send-mail smtp return-path forward-path . data) -> list
```

Sends an email message through the SMTP connection *smtp*.

- `smtp`: An SMTP connection from `smtp-connect`
- `return-path`: The sender address (envelope from), e.g. `"<sender@example.com>"`
- `forward-path`: The recipient address(es). Can be a single string or a list
  of strings for multiple recipients.
- `data`: A mix of keyword/value header pairs, header alists, and body content:
  - `Key: "value"` pairs become email headers (e.g. `Subject: "Hello"`)
  - Lists of pairs are treated as header alists
  - Strings and byte vectors become the message body
  - Procedures are called with the SMTP object for streaming body content

Returns the server's response as a list of strings.

::: tip Example:
```scheme
(import :std/net/smtp)
(def mail (smtp-connect "localhost:25"))
(send-mail mail "<sender@example.com>" "<recipient@example.com>"
  To: "Recipient <recipient@example.com>"
  From: "Sender <sender@example.com>"
  Subject: "Test message"
  "Hello, this is the message body.")
;; => ("250 2.0.0 Ok: queued as ABC123")
```
:::

::: tip Example:
```scheme
;; Send to multiple recipients with no headers
(send-mail mail "<sender@example.com>"
  ["<alice@example.com>" "<bob@example.com>"]
  "Plain body, no headers.")
```
:::

## SMTP Command Methods

The SMTP connection object supports the following low-level SMTP commands as
methods. Each returns the server's response as a list of strings.

| Method | Description |
|--------|-------------|
| `{smtp.EHLO domain}` | Extended HELLO |
| `{smtp.HELO domain}` | HELLO |
| `{smtp.MAIL return-path}` | Begin mail transaction |
| `{smtp.RCPT forward-path}` | Specify recipient |
| `{smtp.DATA}` | Begin message data |
| `{smtp.RSET}` | Reset transaction |
| `{smtp.NOOP}` | No operation |
| `{smtp.VRFY user}` | Verify user |
| `{smtp.QUIT}` | Close connection |
| `{smtp.STARTTLS}` | Start TLS negotiation |
