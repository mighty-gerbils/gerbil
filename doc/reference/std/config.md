# Lightweight Configuration for Services and Applications

The `:std/config` library module provides basic procedures for
managing configuration for services and applications using plists.

::: tip Usage
(import :std/config)
:::

## Overview

Undoubtedly there is a need for configuration certain aspects of an
application or service. There are numerous ad hoc configuration
languages, ranging from atrocities like toml to json and so on.

In Gerbil we take a much simpler approach that takes advantage of LISP
homoiconicity.  Specifically, we don't need to invent yet another
configuration language; we can just use the reader/writer and allow any
primitive object to be part of the configuration.

As such, we settle for the use of plists (property lists), where
keywords are the keys for configuration aspects and any primitive
object can be the value, which also naturally leads to arbitrary
nesting and so on.

The only restriction we place is that the configuration must start
with a `config:` key followed by a value indicating the schema of the
configuration, with application specific semantics.

In terms of representation on disk, the plist is stored flat (without
the enclosing list delimiter) which makes for an easier editing
experience.

::: tip Note
The `:std/config` module provides functionality for reading,
editing, and writing configurations. At the moment we only provide
primitive functionality, but moving forward we will also add schema
support (using the type system) and macro generation of accessors and
mutators. This is all planned for v0.19.
:::

## Procedures

### config-get

```
(config-get cfg key (default #f))
```

Retrieves the value associated with `key` in the configuration `cfg`;
if the key is not present, the the `default` value is returned.


### config-get!
```
(config-get! cfg key)
```

Like `config-get` but raises an error if the value is not present or false.

### config-set!
```
(config-set! cfg key val)
```

Sets the config value `val` for `key`, mutating the congfiguration if needed.
Returns the new configuration.

### config-push!
```
(defrule (config-push! cfg key val)
  (set! cfg (config-set! cfg key val)))
```

Sets the config value `val` for `key` and updates the variable `cfg`
for with the resulting configuration.

### config-check!
```
(config-check! cfg type)
```

checks whether the configuration object `cfg` is a configuration with schema `type`.

### write-config
```
(write-config cfg (output (current-output-port)) pretty: (pretty? #f))
```

Flat writes the configuration object cfg to output; pretty prints if `pretty?` is true.

### save-config!
```
(save-config! cfg path)
```

Saves the configuration object `cfg` on disk to `path`.

### read-config
```
(read-config (input (current-input-port)))
```

Reads a configuration object from `input`

### load-config
```
(load-config path type)
```

Loads a configuration from disk path `path` and verifies the configuration schema.
Returns the loaded configuration.

### string->object
```
(string->object str)
```

Converts a string to a primitive object; complentary to the `object->string` builtin.

### string->integer
```
(string->integer str)
```

Converts a string to an integer, raising an error if the resulting object is a not an int4eger.

## Example

Here is an example from ensemble server configuration in the `gerbil ensemble` tool.

The schema of server configuration is like this:
```
config: ensemble-server-v0

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

And here is some code that updates the server configuration according to command line arguments:
```
(defrule (config-server! opt cfg)
  (let-hash opt
    (cond (.?secondary-roles => (cut config-push! cfg secondary-roles: <>)))
    (cond (.?env             => (cut config-push! cfg env: <>)))
    (cond (.?envvars         => (cut config-push! cfg envvars: <>)))
    (cond (.?log-level       => (cut config-push! cfg log-level: <>)))
    (cond (.?addresses       => (cut config-push! cfg addresses: <>)))
    (cond (.?auth-servers    => (cut config-push! cfg auth: <>)))
    (cond (.?known-servers   => (cut config-push! cfg known-servers: <>)))
    (when .?application
      (let (default-app-config-path
             (path-expand (symbol->string .application)
                          (path-expand "config" (gerbil-path))))
        (unless (or .?config (file-exists? default-app-config-path))
          (error "no application configuration"))
        (let* ((app-config-path (or .?config default-app-config-path))
               (app-config (call-with-input-file app-config-path read-config))
               (app-alist  (config-get cfg application: [])))
          (cond
           ((assq .application app-alist)
            => (lambda (p) (set-cdr! p app-config)))
           (else
            (set! app-alist [[.application :: app-config] :: app-alist])))
          (config-push! cfg application: app-alist))))))
```
