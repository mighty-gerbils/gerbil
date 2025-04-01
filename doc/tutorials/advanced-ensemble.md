# Advanced Actor Ensembles

So far, in the [basic ensemble tutorial](ensemble.md) we have explored
the basics of actor ensembles in Gerbil. This is the foundation and basic
interaction, giving you the tools to control and debug unstructured ensembles.

In this tutorial we introduce advanced ensemble concepts and structured ensembles,
whereby a supervisor controls the ensemble for some domain in a host. We explore
distributed ensembles by creating a network of such local ensembles,
connected through TLS. Control of such distributed ensembles can be operational
through a console server for scripting and operator access.

::: tip Note
Future Work (soon enough! Planned for v0.19) will be to introduce
orchestrators, which can run in a host to setup, heathcheck and
maintain an ensemble through a dedicated tool. We will also introduce
additional supervisory services, besides the registry: a vault server
for sharing secrets without hitting the disk, a resolver for
distributed name resolution of servers, and broadcast facilities for
connecting nodes in an implicit ensemble wide network.
:::

## Ensemble Domains

As we all know, naming is one of the hardest problems in Computer
Sciences.  Names need to be intentional, and convey information about
the role while on the same time avoiding clashes within the global
namespaces.

Gerbil implements ensemble domains as a hierarchical
namespace. Servers have identifiers which are pairs of a symbol (the
_name_ or id of the server) and another symbol which is the
_domain_. Names cannot contain slashes while domains are hierarchically
partitioned with slashes.

The hierarchical structure of the domain namespace serves two purposes:
- it designates control structure, where we can easily refer to the subensemble
  that operations under a particular subdomain.
- it eliminates names clashes with easy conventions; for example a convention
  for the namespace would be `/project/host-id/application/...` and so on.

In addition, each server in a domain has a primary _role_, which
defines its purpose and its configuration. Servers can also have
secondary roles and provide a selector for refering to groups of
servers spanning multiple domains.

## Structured Ensembles

In a _structured ensemble_, a supervisor controls a subdomain and
provide necessary services for maintaining the ensemble. It manages
creation of servers, local server-level supervision, and automatically
spanws and supervises a registry for the entire subdomain in the
localhost.

Supervisors can be recursive, whereby a supervisor supervises a nested
supervisor in a local ensemble or meta-supervises remotely as part of
an orchestrator. In general we recommend as best practice to use a
single supervisor for a local subdomain and configure meta-supervision
through orchestrators.

## Case Study: The Gerbil httpd

A common requirement is to spawn an httpd that can utilize all cores,
and preferably with process isolation so that a bug can't bring down
the whole server.

Gerbil comes with a builtin httpd, runnable as `gerbil httpd`. The
server is quite capable, supports static file serving with a small
file cache, dynamically loadable handlers, and servlets which are interpreted
handlers in the server content.

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

## More on Ensemble Configuration

As we have seen, configuring the ensemble is a key step along the way;
we have seen examples of configuration and relevant commands to create
the appropriate configurations. Here we dive into some more detail
regarding configuration.

### Ensemble Configuration Structure

First, let's look at what really goes into an ensemble configuration.
The configuration is actually a plist, flat printed in a file (that is
without the enclosing list), with the following structure:
```
config: ensemble-v0

;;; supervisory domain for the ensemble
domain: <domain>
;;; [optional] root path for ensemble executions
root: <path>
;;; [optional] supervisor public address (over TLS)
public-address: <inet-address>
;;; ;;; supervisory services
services: (
 ;;; supervisor config
 supervisor: <ensemble-server-config>
 ;;; registry config for the local ensemble
 registry: <ensemble-server-config>
 ;;; [optional] resolver config for distributed ensemble name resolution
 resolver: <ensemble-server-config>
 ;;; [optional] broadcast config
 broadcast: <ensemble-server-config>
)

;;; roles -> execution mapping
roles:
 ((<role>  ; symbol
   ;;; for each role define an execution rule:
   ;;; the program is started as <exec> <prefix> ... <server-identifier>
   ;;; the server configuration will be in the <ensemble-server-path>/config
   ;;; <program>: the symbol 'self for single binary deployments
   ;;; or an executable path (string)
   exe: <program>
   ;;; optional executable argument prefix
   prefix: (<string> ...)
   ;;; optional executable argument suffix
   suffix: (<string> ...)
   ;;; supervision policy
   policy: <supervisory-policy>
   ;;; optional role server configuration template
   server-config: <ensemble-server-config>
   )
 ...)

;;; [optional] preloaded server configuration; the supervisor on its own is capable
;;; of receiving remote updates, executables, and server execution instructions.
preload: (
 ;;; static preloaded server configuration
 servers:
 ((domain
   ;;; server identifier
   server: <server-identifier>
   ;;; primary role
   role: <role>
   ;;; [optional] server configuration, the role template is overlayed
   server-config: <ensemble-server-config>
  )
  ... )

 ;;; preloaded worker server configuration
 workers:
 ((domain
   ;;; server id prefix; the actual server id will be <prefix>-<seqno>
   prefix: <id>
   ;;; number of servers
   servers: <fixnum>
   ;;; primary role
   role: <role>
   ;;; [optional] server configuration, the role template is overlayed
   server-config: <ensemble-server-config>
  )
 ...)
)
```
Individual server configuration has the following structure:
```
config: ensemble-server-v0

;;; ensemble
domain: <symbol>
identifier: <server-identifier>
supervisor: <server-identifier>
registry:   <server-identifier>
cookie:     <path>
admin:      <path>

;;; execution
role:    <symbol>
secondary-roles: (<symbol> ...)
exe:     <string>
args:    (<string> ...)
policy:  <symbol>
env:     <string>
envvars: (<string> ...)

;;; logging
log-level: <symbol>
log-file:  <path>
log-dir:   <path>

;;; bindings
addresses: (<address> ...)
auth: ((<server-identifier> <capability>) ...)
known-servers: ((<server-identifier> <address> ...) ...)

;;; application specific configuration
application: ((<symbol> config ...) ...)
```

Note that a lot of the details, especially for server configuration
are filled in by the supervisor. The user can however provide a
partial configuration, which is composed with the supervisor generated
configuration. What you as the programmer or administrator really care
to configure is roles and applications.

Every server must have a (primary) role, and can
also have any number of secondary roles. The primary role is used for
instantiating the specific configuration of the server. So as an
administrator you will want to configure appropriate roles for the
various servers in your ensemble.

Similarly, applications are the actors that live inside the server and
provide the application level functionality. Application specific
configuration is user controlled, any primitive object can be used for
said configuration but it is still recommended that you use the same
configuration format -- see [:std/config](/reference/std/config).

### Configuration Tooling

The `gerbil ensemble` tool provides a number of configuration commands
that can help you create the appropriate configurations; note that
there is nothing wrong with creating the programmatically or even by
hand, but it does help to have a tool that can do it for you and avoid
potential errors.

```
$ gerbil ensemble config help
Usage: gxensemble config  <command> command-arg ...

Commands:
 ensemble                         configure the ensemble as a whole
 role                             configure an ensemble role
 preload-server                   configure a preloaded server for supervised execution as part of an ensemble
 preload-workers                  configure preloaded workers for supervised execution as part of an ensemble
 server                           partially configure a server for supervised execution as part of an ensemble
 help                             display help; help <command> for command help
```

#### Configure the ensemble as a whole

You can do this with the `gerbil ensemble config ensemble` command:
```
$ gerbil ensemble config help ensemble
Usage: gxensemble config ensemble [command-option ...]
       configure the ensemble as a whole

Command Options:
 --view                           inspect existing, don't generate
 --pretty                         pretty print
 -D --ensemble-domain <ensemble-domain>  specifies the ensemble domain [default: #f]
 --root  <ensemble-root>          specifies the ensemble root directory [default: #f]
 --public  <ensemble-public-address>  specifies the ensemble supervisor public address for TLS [default: #f]
```

The tool allows you to retrieve an existing configuration, or create and update it.
The basic parameters you can specify are the ensemble domain, the root directory, and the public address for TLS.

#### Configure an ensemble role

You can do this with the `gerbil ensemble config role` command:
```
$ gerbil ensemble config help role
Usage: gxensemble config role [command-option ...]
       configure an ensemble role

Command Options:
 --role  <role>                   server role; a symbol [default: #f]
 --exe  <exe>                     executable path [default: #f]
 --prefix  <prefix>               executable arguments prefix; a list [default: #f]
 --suffix  <suffix>               executable arguments suffix; a list [default: #f]
 --policy  <policy>               supervisory policy [default: #f]
 --secondary-roles  <log-level>   the server secondary roles; a list of symbols [default: #f]
 --env  <env>                     server environment [default: #f]
 --envvars  <envvars>             server environment variables [default: #f]
 --log-level  <log-level>         the server log level [default: #f]
 -a --addresses <addresses>       server public addresses [default: #f]
 --known-servers  <known-servers>  server known servers for external communication [default: #f]
 --auth  <auth-servers>           server pre-authorized servers [default: #f]
 --application  <application>     role server application name [default: #f]
 -C --config <config>             server application configuration file [default: #f]
 ```

Perhaps the most important part is configuring the applications in a
role; you can configure multiple applications with multiple
invocations of the command, one application at a time.

#### Configure preloaded servers and workers

Preloaded servers are servers that are spawned by the supervisor when
the ensemble starts up; preloading workers allows you to run multiple
servers with the same role.

You can configure preloading with the following commands:
```
$ gerbil ensemble config help preload-server
Usage: gxensemble config preload-server [command-option ...] <server-id>
       configure a preloaded server for supervised execution as part of an ensemble

Command Options:
 -d --domain <domain>             specifies the server domain [default: #f]
 --role  <role>                   server role; a symbol [default: #f]
 -C --config <config>             server configuration file [default: #f]

Arguments:
 server-id                        the server id

$ gerbil ensemble config help preload-workers
Usage: gxensemble config preload-workers [command-option ...] <server-id>
       configure preloaded workers for supervised execution as part of an ensemble

Command Options:
 -d --domain <domain>             specifies the server domain [default: #f]
 --role  <role>                   server role; a symbol [default: #f]
 -n --workers <count>             number of workers [default: #f]
 -C --config <config>             server configuration file [default: #f]

Arguments:
 server-id                        the server id
```

Note that when configuring workers, the server id is the prefix of the
worker server ids, which are incrementally assigned.

#### Configure a server

The `gerbil ensemble config server` command allows you to create a
(partial) configuration for a server, that can be used by the other
configuration commands.

Here is the usage:
```
$ gerbil ensemble config help server
Usage: gxensemble config server [command-option ...] <server-id>
       partially configure a server for supervised execution as part of an ensemble

Command Options:
 --role  <role>                   server role; a symbol [default: #f]
 --secondary-roles  <log-level>   the server secondary roles; a list of symbols [default: #f]
 --env  <env>                     server environment [default: #f]
 --envvars  <envvars>             server environment variables [default: #f]
 --log-level  <log-level>         the server log level [default: #f]
 -a --addresses <addresses>       server public addresses [default: #f]
 --known-servers  <known-servers>  server known servers for external communication [default: #f]
 --auth  <auth-servers>           server pre-authorized servers [default: #f]
 --application  <application>     role server application name [default: #f]
 -C --config <config>             server application configuration file [default: #f]

Arguments:
 server-id                        the server id
```




## More on Ensemble Control Tooling

We have already seen the `gerbil ensemble control` command in action;
it is the swiss army knife command that allows us to interact with the
ensemble supervisor.

Here is the summary:
```
$ gerbil ensemble control help
Usage: gxensemble control  <command> command-arg ...

Commands:
 list-servers                     list supervised servers in the ensemble
 start-server                     start a supervised ensemble server
 start-workers                    start supervised ensemble workers
 stop-server                      stop some supervised ensemble servers
 restart-server                   restart some supervised ensemble servers
 get-server-log                   retrieve a supervised server log
 get-server-config                retrieve a server configuration
 update-server-config             update a supervisor server configuration
 get-ensemble-config              retrieve the supervised ensemble configuration
 update-ensemble-config           update the supervised ensemble configuration
 list-processes                   list processes running in the context of an ensemble supervisor
 exec-process                     execute a process in the context of an ensemble supervisor
 kill-process                     send a signal to a process
 restart-process                  restart a process by pid
 get-process-output               get a process's output
 upload                           upload an executable, environment overlay image, or file system overlay image as a tarball
 shell                            execute a shell command in the context of an ensemble supervisor
 shutdown                         shutdown a supervised ensemble, including the supervisor
 restart                          mass restart servers in a supervised ensemble
 help                             display help; help <command> for command help
 ```
