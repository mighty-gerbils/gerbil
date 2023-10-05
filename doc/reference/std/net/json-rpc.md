# JSON RPC

## json-rpc
```
(json-rpc server-url method (params (void))
          auth: (auth #f)
          headers: (headers #f)
          cookies: (cookies #f)
          ssl-context: (ssl-context (default-client-ssl-context))
          result-decoder: (result-decoder identity)
          param-encoder: (param-encoder identity)
          log: (log #f)
          http-method: (http-method 'POST)) -> json-rpc response
```

Issue a client request to a JSON RPC server at `server-url`,
calling the JSON-RPC `method` (a string),
optionally with the given `params` as parameters.
When transformed by `param-encoder`, the parameters must be transformable by
[`json-object->string`](../text/json) into a valid JSON array or object or null.
The given `http-method` is used (`POST` is recommended,
though `GET` is supported for debugging purposes mainly),
and the `auth`, `headers`, `cookies` and `ssl-context` are passed to the
[HTTP client interface](request).
The provided `log` function is called, if any, with some JSON information about the request.
The JSON returned by the server is transformed by `param-encoder`.

A variety of HTTP or JSON-RPC errors can be raised during the query
that you may or may not want to report, log or inspect, but otherwise
this is the only function you need to call as a JSON RPC client.

## json-rpc-handler
```
(json-rpc-handler processor log: (log #f))
```

Given a `processor` function that takes two arguments, the `method` and the `params` of a request,
and either returns a JSON result for the request response or raises an error,
`json-rpc-handler` will return an HTTP request handler suitable to be registered with:

```
(import :std/net/httpd :std/net/json-rpc)
(http-register-handler httpd "/my-json-rpc-endpoint" (json-rpc-handler processor))
```

The optional `log` function if provided will be called with some JSON object that
document the request and its response.

A variety of HTTP or JSON-RPC errors can be raised during the processing,
that you may or may not want to handle, log or inspect, but otherwise
this is the only function you need to use as a JSON RPC server.

## serve-json-rpc
```
(serve-json-rpc processor request-json) -> response-json
```
In case you are implementing a JSON RPC server over a transport layer other than HTTP,
you can use `serve-json-rpc` to handle the JSON RPC processing and call it in your server.

## decode-json-rpc-response
```
(decode-json-rpc-response decoder request-id response-json) -> result or error
```
In case you are implementing a JSON RPC client over a transport layer other than HTTP,
you can use `decode-json-rpc` to handle the response from the server.

## json-rpc-version

A string, `"2.0"`, representing the version of JSON RPC that we support as client and server.

## json-rpc-request json-rpc-request? json-rpc-response json-rpc-response?

The classes `json-rpc-request` and `json-rpc-response` are used internally for JSON RPC processing,
in case you are working with the transport layer.

## Error handling
```
  json-rpc-error json-rpc-error?
  json-rpc-error-code json-rpc-error-message json-rpc-error-data
  parser-error invalid-request method-not-found invalid-params
  internal-error application-error system-error tranport-error
  JSON-RPCError JSON-RPCError? json-rpc-error?
  MalformedRequest MalformedRequest? malformed-request?
  MalformedResponse MalformedResponse? malformed-response?
```

A variety of classes and functions are offered to you to handle errors if you so desire,
that correspond to the various failure modes of using the JSON RPC protocol.
