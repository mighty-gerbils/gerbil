# Web programming with the Gerbil http server

## Preliminaries

In this tutorial we illustrate web programming with the embedded Gerbil http server.

The source code for the tutorial is available at [src/tutorial/httpd](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/httpd).
You can build the code using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/httpd/build.ss):
```
$ cd gerbil/src/tutorial/httpd
$ gerbil build
...
```


## A Simple Web Server

The [server](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/httpd/simpled.ss) binds by default to localhost:8080
and handles 3 request URLs:
- `/` which greets the requestor
- `/echo` which echoes back the body of the request
- `/headers[?json]` which echoes back the request headers
- `/self` which prints the source code of the program

### The main function

The server `main` function uses getopt to parse arguments and then
calls the `run` function. It starts an http server using the default
handler multiplexer, and registers handlers using `http-register-handler`
for the various paths we want to handle:
```scheme
(def (main . args)
  (call-with-getopt simpled-main args
    program: "simpled"
    help: "A simple httpd server"
    (option 'address "-a" "--address"
      help: "server address"
      default: "127.0.0.1:8080")))

(def (simpled-main opt)
  (run (hash-ref opt 'address)))

(def (run address)
  (let (httpd (start-http-server! address mux: (make-default-http-mux default-handler)))
    (http-register-handler httpd "/" root-handler)
    (http-register-handler httpd "/echo" echo-handler)
    (http-register-handler httpd "/headers" headers-handler)
    (http-register-handler httpd "/self" self-handler)
    (thread-join! httpd)))
```

### Request Handlers

Request handlers are functions that accept two arguments: a request
and a response object. The request object bundles the request together,
while the response object offers an interface to write the response.
Request handlers are dispatched in a new thread.

#### The `/` handler

The root handler simply prints a hello message:
```scheme
(def (root-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
    (string-append "hello, " (inet-address->string (http-request-client req)) "\n")))
```

#### The `/echo` handler

The echo handler echoes back the body of the request:
```scheme
(def (echo-handler req res)
  (let* ((content-type
          (assget "Content-Type" (http-request-headers req)))
         (headers
          (if content-type
            [["Content-Type" . content-type]]
            [])))
    (http-response-write res 200 headers
      (http-request-body req))))
```

#### The `/headers` handler

The headers handler responds with the headers of the request,
either in plain text or in json if requested so with a `?json`
parameter. The plain text handler uses the chunked response
interface.

```scheme
(def (headers-handler req res)
  (let (headers (http-request-headers req))
    (if (equal? (http-request-params req) "json")
      (write-json-headers res headers)
      (write-text-headers res headers))))

(def (write-json-headers res headers)
  (let (content
        (json-object->string
         (list->hash-table headers)))
    (http-response-write res 200 '(("Content-Type" . "application/json"))
      content)))

(def (write-text-headers res headers)
  (http-response-begin res 200 '(("Content-Type" . "text/plain")))
  (for ([key . val] headers)
    (http-response-chunk res (string-append key ": " val "\n")))
  (http-response-end res))

```

#### The `/self` handler

The self handler responds by printing the server source code.
The handler uses the `http-response-file` procedure, which sends
a file as an http response using fast raw device I/O.

```scheme
(def (self-handler req res)
  (http-response-file res '(("Content-Type" . "text/plain")) "simpled.ss"))
```

#### The default handler

The default handler is invoked when there is no matching handler.
If no default handler is registered with the multiplexer, then the server
simply responds with a 404.

Here, we registered a slightly friendlier handler that uses the force to
print an informative message:
```scheme
(def (default-handler req res)
  (http-response-write res 404 '(("Content-Type" . "text/plain"))
    "these aren't the droids you are looking for.\n"))
```

### Examples

Here are some example interactions with the server using curl:
```bash
## in one terminal
$ gerbil env simpled

## in another terminal
$ curl http://localhost:8080/
hello, 127.0.0.1:39189

$ curl --data-binary "hello gerbil" http://localhost:8080/echo
hello gerbil

$ curl http://localhost:8080/headers
Host: localhost:8080
User-Agent: curl/7.45.0
Accept: */*

$ curl http://localhost:8080/headers?json
{"Accept":"*/*","Host":"localhost:8080","User-Agent":"curl/7.45.0"}

$ curl -i http://localhost:8080/bogus
HTTP/1.1 404 Not Found
Date: Tue Aug 22 16:16:19 2017
Content-Length: 45
Content-Type: text/plain

these aren't the droids you are looking for.
```

### Deploying with nginx

A developed application can be deployed on a server, such as a VPS, using [nginx](https://nginx.org/en) as a reverse proxy. This tutorial assumes you're using a linux server with systemd. Steps involved include:

1. Compiling your server into a binary
2. Installing necessary prerequisites
3. Configuring nginx as a reverse proxy
4. Using systemd (or similar) to run your binary as a service

#### Install and configure nginx

Check out the [nginx installation documentation](https://nginx.org/en/docs/install.html) for detailed instructions on how to install engine x. Typically this can be done with your distribution's package manager.

Once installed, create an nginx profile at /etc/nginx/sites-available. If you're only using one such profile, consider editing the default profile at /etc/nginx/sites-available/default to include the following:

```
server {
    listen 80;
    listen [::]:80;
    server_name www.example.com;

location / {
        # Forward requests to Gerbil production port
        proxy_pass http://localhost:8080;
        proxy_buffering off; # Single page apps work faster with it
        proxy_set_header X-Real-IP $remote_addr;
    }
}
```

Notes:

- www.example.com should be replaced with your domain name or server IP address. Note that multiple values are supported, such as `server_name  domain1.com www.domain1.com;`
- The line `proxy_pass http://localhost:8080;` should be set to the appropriate port as determined in your Gerbil `getopt` configuration. Replace *8080* with the port number that Gerbil's httpd will be listening on.

If you have edited the file /etc/nginx/sites-available/default, you are ready to go. If you've created another profile, you will need to symlink to this file in /etc/nginx/sites-enabled.

By default, nginx is typically set to start at boot. However, after changing this config file, you will need to restart the service:

```bash
sudo systemctl restart nginx
```

#### Create systemd service

The following assumes you have a project called *my-server*, with a Gerbil binary called *my-server*.

Create a systemd service file at /etc/systemd/system/my-server for your application. A minimal working example is:

```
[Unit]
Description=my-server website
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=5
WorkingDirectory=/srv/my-server
ExecStart=/srv/my-server/my-server
User=web
Group=web

[Install]
WantedBy=multi-user.target
```

In the above example:

- Replace `my-server website` with an appropriate description.
- Replace `/srv/my-server` with an appropriate working directory, possibly the directory of your project on the server.
- Replace `/srv/my-server/my-server` with the path to your compiled Gerbil binary.
- Replace `web` with an existing user and group (as created with `useradd`). Systemd will run your server with the privileges of this user. Note that this user must have read and execute privileges for your binary and workingDirectory.

This service can be manually started with `sudo systemctl start my-server`. Once running, you can view Gerbil's responses with `sudo journalctl -f -u my-server`.

Once confirmed, set the Gerbil server to run automatically, including persistence after reboot:

```
sudo systemctl enable my-server
```
