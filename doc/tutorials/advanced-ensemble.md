# Advanced Actor Ensembles

TODO words

## Ensemble Domains

TODO words

## Supervised Actor Ensembles

TODO words

## Case Study: The Gerbil httpd

TODO words

### Using a Standalone httpd
Here we walk through an example www project and how to serve it with `gerbil httpd server`.

First, let's compile our site's code -- see [src/tutorial/advanced-ensemble](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/advanced-ensemble) for the code.
```
1$ pushd site/project
1$ gerbil build
1$ popd
```

Now let's configure the httpd. Specifically:
- we set `www` as the root directory for the site
- we enable servlets
- we set a handler for the code we just build

```
1$ pushd site
1$ gerbil httpd -G project/.gerbil config --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

1$ gerbil httpd -G project/.gerbil config --print
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

And now let's start it and interact with it.
```
1$ gerbil httpd -G project/.gerbil server
...

2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler
```

### Using an httpd ensemble

A single server is just that: one process, with one thread of control
serving requests.  If we want to take advantage of multicore machines
with process isolation, we can spawn more and multiplex on the socket
using `SO_REUSEPORT` (the server does it by default).

We can do this very easily by constructing an ensemble, and by doing
that we take advantage of supervision and the all the available
tooling from `gxensemble`.

Here is how we can configure an httpd ensemble:
- we configure the ensemble root directory
- we configure the ensemble domain and worker domain
- we configure the number of workers
- and just pass the through the httpd config.

```
1$ pushd site
1$ gerbil httpd -G project/.gerbil config --ensemble --ensemble-root root --ensemble-domain /test --worker-domain /test/www -n 2 --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'

1$ gerbil httpd -G project/.gerbil config --ensemble --print
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
2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler

```

## Local Ensembles

What about services composed of things other than httpds? Can't we run
a general supervised ensemble that is open ended and can dynamically
add or remove servers?

The answer is a resounding yes; in fact `gerbil httpd ensemble` runs a
generic supervisor and which just happens to be configured for httpd.
In the folling we see how we can run an httpd ensemble with a standalone supervisor.

First, let's configure the ensemble:
- first we configure the httpd as usual -- notice the use of `-G env/local` so that
  the httpd configuration is placed in the standard service configuration path.
```
1$ gerbil httpd -G env/local config  --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'
```

And then we configure the ensemble to know about the `httpd` role:
```
1$ gerbil ensemble -G env/local config ensemble -D '/test' --root root
1$ gerbil ensemble -G env/local config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd

1$ gerbil ensemble -G env/local config ensemble --view --pretty
config:
ensemble-v0
domain:
/test
root:
"root"
roles:
((httpd exe:
        "gerbil"
        prefix:
        ("httpd" "server")
        policy:
        restart
        server-config:
        (config:
         ensemble-server-v0
         env:
         "www"
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
                 #t)))))
```

And that's it, now we can start a supervisor and spawn httpd server process with it.
```
1$ gerbil ensemble -G env/local supervisor
...

```

In order to easily interact with the ensemble supervisor, let's also configure the
environment to know about our supervisor:
```
2$ gerbil ensemble -G env/local env supervisor '(supervisor . /test)'
2$ gerbil ensemble -G env/local env known-servers --add  '(supervisor . /test)'
```

And now we can interact with the supervisor directly:
```
2$ gerbil ensemble -G env/local control list-servers --pretty
(((registry . /test) 2348146 running))

2$ gerbil ensemble -G env/local control get-ensemble-config --pretty
(config:
 ensemble-v0
 domain:
 /test
 root:
 "root"
 services:
 (supervisor:
  (config:
   ensemble-server-v0
   domain:
   /test
   identifier:
   (supervisor . /test)
   registry:
   (registry . /test)
   cookie:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/env/local/ensemble/cookie"
   admin:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/env/local/ensemble/admin.pub"
   role:
   supervisor
   exe:
   "gerbil"
   args:
   ("ensemble" "supervisor")
   root:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/"
   log-level:
   INFO
   log-dir:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/root/log/test/supervisor"
   log-file:
   "/home/vyzo/src/vyzo/advanced-ensemble-demo/root/log/test/supervisor/server.log"
   addresses:
   ((unix: "dellicious" "/tmp/ensemble/test/supervisor.sock"))
   known-servers:
   (((registry . /test) (unix: "dellicious" "/tmp/ensemble/test/registry.sock"))))
  registry:
  (config:
   ensemble-server-v0
   identifier:
   (registry . /test)
   role:
   registry
   exe:
   "gerbil"
   args:
   ("ensemble" "registry" "(registry . /test)")))
 roles:
 ((httpd exe:
         "gerbil"
         prefix:
         ("httpd" "server")
         policy:
         restart
         server-config:
         (config:
          ensemble-server-v0
          env:
          "www"
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
                  #t))))))
```

As we can see, the only server within the ensemble under the
supervisor is the automatically spawned registry, which facilitates
local interactions between servers in the ensemble.

Before we can spawn our httpds, we also need to _upload_ the necessary code
and content:
```
2$ cd site/project/.gerbil/
2$ tar czvf ../../env-www.tar.gz lib

2$ cd site
2$ tar czvf fs-www.tar.gz www

2$ gerbil ensemble -G env/local control upload --fs site/fs-www.tar.gz ""
2$ gerbil ensemble -G env/local control upload --env site/env-www.tar.gz www
```

And that's it, now we are ready to spawn our httpd servers as workers:
```
2$ gerbil ensemble -G env/local control start-workers -d /test/www httpd httpd 2
2$ gerbil ensemble -G env/local control list-servers --pretty
(((httpd-0 . /test/www) 2348366 running)
 ((httpd-1 . /test/www) 2348367 running)
 ((registry . /test) 2348146 running))
```

And we can interact with them:
```
2$ ps auxw | grep gerbil
2$ curl http://localhost:8080/
2$ curl http://localhost:8080/servlets/hello.ss
2$ curl http://localhost:8080/handler
```

Finally, we can shutdown the entire ensemble, including the supervisor:
```
2$ gerbil ensemble -G env/local control shutdown
```

## Distributed Ensembles

Naturally, we are not limited to controlling a local ensemble behind a
supervisor.  We can just as easy spawn a distributed ensemble that
runs in multiple hosts, all running their own supervisor.

The individual supervisors themselves can be spawned and supervised as
a `systemd` service.

In this tutorial, we build an ensemble with 3 hosts: 2 hosts serving
http requests with a (local) httpd ensemble each, and another host
acting as a load balancer using the example `rlb` program.

See [src/tutorial/advanced-ensemble/rlb](https://github.com/mighty-gerbils/gerbil/tree/master/src/tutorial/advanced-ensemble/rlb) for the `rlb` code.

::: tip Note
The IP addresses shown here were 3 linode servers, configured just for demonstration
purposes and no longer exist.
Please set up your own servers when following the tutorial!
:::

First, a bit of configuration: if we are going to manage a distributed ensemble we need to use TLS. So let's generate a CA and create certificates for our supervisors:
```
1$ gerbil ensemble -G env/private ca setup --domain demo.ensemble.internal
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode1)'
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode2)'
1$ gerbil ensemble -G env/private ca cert '(supervisor . /demo/linode3)'
```

Next, let's configure the supervisors for each host: notice that we
enable public access by passing the address where we listen with TLS:
```
1$ gerbil ensemble -G env/linode1 config ensemble -D /demo/linode1 --root root --public 0.0.0.0:4999
1$ gerbil ensemble -G env/linode2 config ensemble -D /demo/linode2 --root root --public 0.0.0.0:4999
1$ gerbil ensemble -G env/linode3 config ensemble -D /demo/linode3 --root root --public 0.0.0.0:4999
```
Next, let's package and upload the necessary environment for our supervisors:
```
1$ gerbil ensemble -G env/private package -o env/linode1.tar.gz -C env/linode1/ensemble/config '(supervisor . /demo/linode1)'
1$ gerbil ensemble -G env/private package -o env/linode2.tar.gz -C env/linode2/ensemble/config '(supervisor . /demo/linode2)'
1$ gerbil ensemble -G env/private package -o env/linode3.tar.gz -C env/linode3/ensemble/config '(supervisor . /demo/linode3)'

1$ scp env/linode1.tar.gz root@172.233.56.134:
1$ scp env/linode2.tar.gz root@172.233.56.175:
1$ scp env/linode3.tar.gz root@172.233.56.211:
```

Next, let's unpack the environment and run our supervisors:
```
# linode1
2$ ssh root@172.233.56.134
2$ mkdir env
2$ pushd env
2$ tar xzvf ../linode1.tar.gz
2$ popd
2$ export PATH=/opt/gerbil/bin:$PATH
2$ nohup gerbil ensemble -G env supervisor
...

# linode2
3$ ssh root@172.233.56.175
3$ ...

# linode3
4$ ssh root@172.233.56.211
4$ ...
```

Again, in order to facilitate the interaction, we setup our private environment:
```
1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode1)' '(tls: "172.233.56.134:4999")'
1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode2)' '(tls: "172.233.56.175:4999")'
1$ gerbil ensemble -G env/private env known-servers --set '(supervisor . /demo/linode3)' '(tls: "172.233.56.211:4999")'
```
Next, we configure and start our httpd servers:
```
1$ gerbil httpd -G env/tmp config  --root www --enable-servlets --handlers '(("/handler" . :demo/handler))'
1$ gerbil ensemble -G env/tmp/linode1 config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd -C env/tmp/config/httpd

$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode1)' env/tmp/linode1/ensemble/config
$ gerbil ensemble -G env/private control get-ensemble-config -S '(supervisor . /demo/linode1)' --pretty
(config:
 ensemble-v0
 domain:
 /demo/linode1
 root:
 "root"
 public-address:
 "0.0.0.0:4999"
 services:
 (supervisor:
  (config:
   ensemble-server-v0
   domain:
   /demo/linode1
   identifier:
   (supervisor . /demo/linode1)
   registry:
   (registry . /demo/linode1)
   cookie:
   "/root/env/ensemble/cookie"
   admin:
   "/root/env/ensemble/admin.pub"
   role:
   supervisor
   exe:
   "gerbil"
   args:
   ("ensemble" "supervisor")
   root:
   "/root/"
   log-level:
   INFO
   log-dir:
   "/root/root/log/demo/linode1/supervisor"
   log-file:
   "/root/root/log/demo/linode1/supervisor/server.log"
   addresses:
   ((unix: "localhost" "/tmp/ensemble/demo/linode1/supervisor.sock")
    (tls: "0.0.0.0:4999"))
   known-servers:
   (((registry . /demo/linode1)
     (unix: "localhost" "/tmp/ensemble/demo/linode1/registry.sock"))))
  registry:
  (config:
   ensemble-server-v0
   identifier:
   (registry . /demo/linode1)
   role:
   registry
   exe:
   "gerbil"
   args:
   ("ensemble" "registry" "(registry . /demo/linode1)")))
 roles:
 ((httpd exe:
         "gerbil"
         prefix:
         ("httpd" "server")
         policy:
         restart
         server-config:
         (config:
          ensemble-server-v0
          env:
          "www"
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
                  #t))))))


1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode1)' --fs site/fs-www.tar.gz ""
1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode1)' --env site/env-www.tar.gz www

1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode1)' -d www httpd httpd 2
(((httpd-1 . /demo/linode1/www) . 10099) ((httpd-0 . /demo/linode1/www) . 10098))

1$ gerbil ensemble -G env/private control list-servers  -S '(supervisor . /demo/linode1)' --pretty
(((httpd-0 . /demo/linode1/www) 10098 running)
 ((httpd-1 . /demo/linode1/www) 10099 running)
 ((registry . /demo/linode1) 9987 running))

1$ curl http://172.233.56.134:8080/
1$ curl http://172.233.56.134:8080/handler
1$ curl http://172.233.56.134:8080/servlets/hello.ss

1$ gerbil ensemble -G env/tmp/linode2 config role --role httpd --exe gerbil --prefix '("httpd" "server")' --policy restart --env www --application httpd -C env/tmp/config/httpd

$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode2)' env/tmp/linode2/ensemble/config
$ gerbil ensemble -G env/private control get-ensemble-config -S '(supervisor . /demo/linode2)' --pretty

1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode2)' --fs site/fs-www.tar.gz ""
1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode2)' --env site/env-www.tar.gz www
1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode2)' -d www httpd httpd 2
1$ gerbil ensemble -G env/private control list-servers  -S '(supervisor . /demo/linode2)' --pretty

1$ curl http://172.233.56.175:8080/
1$ curl http://172.233.56.175:8080/handler
1$ curl http://172.233.56.175:8080/servlets/hello.ss
```

And finally, let's configure and start the load balancer:
```
1$ cd rlb
1$ gerbil build

1$ cat > env/tmp/config/rlb
config: rlb-v0
listen: "0.0.0.0:8080"
proxies: ("172.233.56.134:8080" "172.233.56.175:8080")
^D

1$ gerbil ensemble -G env/tmp/linode3 config role --role rlb --exe rlb --policy restart --env rlb --application rlb -C env/tmp/config/rlb

1$ gerbil ensemble -G env/private control upload -S '(supervisor . /demo/linode3)' --exe rlb/.gerbil/bin/rlb rlb
1$ gerbil ensemble -G env/private control update-ensemble-config -S '(supervisor . /demo/linode3)' env/tmp/linode3/ensemble/config
1$ gerbil ensemble -G env/private control start-workers -S '(supervisor . /demo/linode3)' -d www rlb rlb 2
```

Try it out:
```
1$ curl http://172.233.56.211:8080/
1$ curl http://172.233.56.211:8080/servlets/hello.ss
```

And something for fun, let's ping an rlb server behind a supervisor and then start a repl on it, even though it doesn't itself has a public TLS address:
```
1$ gerbil ensemble -G env/private ping -s -S '(supervisor . /demo/linode3)' '(rlb-0 . /demo/linode3/www)'

1$ gerbil ensemble -G env/private repl -s -S '(supervisor . /demo/linode3)' '(rlb-0 . /demo/linode3/www)'
```

## Ensemble Orchestration

TODO orchiestrator and meta-supervision

This functionality is planned for v0.19

## More Ensemble Services

TODO vault, broadcast, resolver

This functionality is planned for v0.19
