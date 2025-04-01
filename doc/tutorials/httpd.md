# Web programming with the Gerbil http server

In this tutorial we discuss the basics of web server programming with the gerbil httpd.

Gerbil provides two options for web server programming:
- You can use the implementation of the web server as a library as
  an embedded httpd, within your applications. This option is good for
  programming standalone binaries that provide a web ihnterface.
- You can use the standalone gerbil httpd, which you can run with
  `gerbil httpd`. The standalone server is quite capable and fast, it
  can utilize all cores in your system with an ensemble and provides
  support for dynamic handlers and servlets. If you are building a web
  site, this option provides a great framework to work on.

## A Simple Embedded Web Server

The [embedded server](https://github.com/mighty-gerbils/gerbil/blob/master/src/tutorial/httpd/simpled.ss) binds by default to localhost:8080
and handles 3 request URLs:
- `/` which greets the requestor
- `/echo` which echoes back the body of the request
- `/headers[?json]` which echoes back the request headers
- `/self` which prints the source code of the program

### Preliminaries

The source code for the embedded web server tutorial is available at [src/tutorial/httpd](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/httpd).
You can build the code using the [build script](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/httpd/build.ss):
```
$ cd gerbil/src/tutorial/httpd
$ gerbil build
...
```
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

### Request handlers

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



## The standalone Gerbil httpd

The standalone gerbil httpd is part of the gerbil distribution and can
be invoked with `gerbil httpd`.

The httpd is designed to host sites, with static content served off the file system.
For dynamic programming the server provides two options:
- dynamic handlers, which are modules that export a `handle-request`
  procedure, similar to the request handlers we discussed in the
  embedded server tutorial above.
- servlets, which are source modules that implement dynamic handlers
  and live the root file system together with other content.

### A simple site

So let's create a simple site for the purposes of this tutorial; the code is in [src/tutorial/advanced-ensemble/site](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/advanced-ensemble/site).

So here is the site layout:
```
$ tree
.
├── project
│   ├── build.ss
│   ├── gerbil.pkg
│   └── handler.ss
└── www
    ├── files
    │   └── hello.txt
    ├── index.html
    ├── index.txt
    └── servlets
        └── hello.ss
```

The `project` directory contains the code for dynamic handlers in the
site; this can be compiled with `gerbil build` like any other project.
The `www` directory contains the site's content, including a servlet.

We can build the handlers with `gerbil build` as usual:
```
$ pushd project
$ gerbil build
...
$ popd
```

### What's in a handler

As we mentioned before, a handler is a module that exports a
`handle-request` procedure.  In addition, it can also optionally
export a `handler-init!` procedure that is invoked when the handler
module is first loaded to initialize state.

Here is the handler in our site:
```
 cat project/handler.ss
(import :std/net/httpd
        :std/format
        :std/actor)
(export handle-request)

(def (handle-request req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
    (format "hello! I am a dynamic handler and in ~a~n"
            (if (current-actor-server)
              (actor-server-identifier)
              '(unknown)))))
```

### What's in a servlet

Servlets are just like dynamic handlers, with the only difference that
they reside in the site's content directory structure and are
interpreted.

Here is the servlet in our site:
```
$ cat www/servlets/hello.ss
(import :std/net/httpd
        :std/format
        :std/actor)
(export handle-request)

(def (handle-request req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
    (format "hello! I am a servlet in ~a~n"
            (if (current-actor-server)
              (actor-server-identifier)
              '(unknown)))))
```

### Configuring and running the httpd

The server needs a tiny bit of configuration, which can be accomplished with the `gerbil httpd config` command.
Here we configure the root of the site's content, enable servlets and specify our dynamic handler. The server by default liestens to port `8080`, without SSL:
```
$ gerbil httpd -G project/.gerbil config --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

$ gerbil httpd -G project/.gerbil config --print
config:
httpd-v0
root:
"www"
listen:
("0.0.0.0:8080")
handlers:
(("/handler" . :demo/handler))
enable-servlets:
#t
```

And now we can start it in situ, and interact with it:
```
1$ gerbil httpd -G project/.gerbil server
...

2$ curl http://localhost:8080/
<html>
  <head>
    <title>hello</title>
  </head>
  <body>
    hello, world!
  </body>

2$ curl http://localhost:8080/servlets/hello.ss
hello! I am a servlet in (unknown)

2$ curl http://localhost:8080/handler
hello! I am a dynamic handler and in (unknown)
```

### Running an httpd ensemble

A single server is just that: one process, with one OS thread of control
serving requests.  If we want to take advantage of multicore machines
with process isolation, we can spawn more and multiplex on the socket
using `SO_REUSEPORT` (the server does it by default).

We can do this very easily by constructing an ensemble, and by doing
that we take advantage of supervision and the all the available
tooling from `gerbil ensemble`.

Here is how we can configure an httpd ensemble:
- we configure the ensemble root directory
- we configure the ensemble domain and worker domain
- we configure the number of workers
- and just pass the through the httpd config.

```
$ gerbil httpd -G project/.gerbil config --ensemble --ensemble-root root --ensemble-domain /test --worker-domain /test/www -n 2 --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

$ gerbil httpd -G project/.gerbil config --ensemble --print
config:
ensemble-v0
roles:
((httpd server-config:
        (config:
         ensemble-server-v0
         application:
         ((httpd config:
                 httpd-v0
                 root:
                 "www"
                 listen:
                 ("0.0.0.0:8080")
                 handlers:
                 (("/handler" . :demo/handler))
                 enable-servlets:
                 #t))
         env:
         #f)
        exe:
        "gerbil"
        prefix:
        ("httpd" "server")
        policy:
        restart))
preload:
(workers: ((/test/www prefix: httpd role: httpd servers: 2)))
domain:
/test
root:
"root"
```

This configuration will preload and supervise, restarting as needed, 2 workers.
The all we have to do is:
```
1$ gerbil httpd -G project/.gerbil ensemble
...
```

So let's interact with our ensemble, and notice the multiplexing by
the server identifier in the response:
```
2$ ps auxw | grep gerbil
vyzo     1204789  2.0  0.4 225988 161600 pts/4   S+   20:30   0:00 gerbil httpd -G project/.gerbil ensemble
vyzo     1204798  1.7  0.4 223904 158604 pts/4   S+   20:30   0:00 gerbil ensemble registry --supervised (registry . /test)
vyzo     1204802  1.8  0.4 225476 159200 pts/4   S+   20:30   0:00 gerbil httpd server (httpd-0 . /test/www)
vyzo     1204803  1.8  0.4 225488 159108 pts/4   S+   20:30   0:00 gerbil httpd server (httpd-1 . /test/www)

2$ curl http://localhost:8080/
<html>
  <head>
    <title>hello</title>
  </head>
  <body>
    hello, world!
  </body>


2$ curl http://localhost:8080/servlets/hello.ss
hello! I am a servlet in (httpd-1 . /test/www)
...
2$ curl http://localhost:8080/servlets/hello.ss
hello! I am a servlet in (httpd-0 . /test/www)

2$ curl http://localhost:8080/handler
hello! I am a dynamic handler and in (httpd-1 . /test/www)
...
2$ curl http://localhost:8080/handler
hello! I am a dynamic handler and in (httpd-0 . /test/www)
```

### Shipping to remote servers in production

So far we have demonstrated how to run an httpd (ensemble) in your
local machine.  This of course is great for development, and you can
just as easily run an httpd ensemble in production, perhaps supervised
by systemd or in a docker container and what not.

It doesn't end here however -- Gerbil provides admvanced machinery for
building and managing actor ensembles. It is quite easy to run an
ensemble with multiple servers, not just httpd instances but any other
server you might want to include in your site. This is covered in the
[Advanced Ensemble tutorial](advanced-ensemble.md).


### SSL Termination

The Gerbil httpd natively supports SSL. All you have to do is provide
an SSL listen address in the list of addresses when configuring your
httpd:

```
$ gerbil httpd ... config ... --listen '((ssl: "0.0.0.0:443" "/path/to/ssl/certificate" "/path/to/ssl/private-key"))'
```

Note that if you are shipping to remote servers you should not forget
to ship the certificate and private key.
