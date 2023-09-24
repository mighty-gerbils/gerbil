# The Gerbil Build Tool

Building complex libraries and executables by invoking `gxc` quickly gets tedious. When you reach that point of complexity and you need a build tool, you can use the [`:std/make` library module](/reference/std/make.md) which provides a modest build tool that can handle reasonably complex project building.

## A Trivial Project

For illustration purposes, we'll make a hello world library module and an executable that uses it.

``` scheme
$ cat gerbil.pkg
(package: example)

$ cat util.ss
(export #t)
(def (hello who)
  (displayln "hello, " who))

$ cat hello.ss
(import :example/util)
(export main)

(def (main . args)
  (for-each hello args))
```

### The Standard Build Script Template

The recommended way to write a build script is to use the template provided by the standard library.
You can do this by importing `:std/build-script` and using the `defbuild-script` macro.

The macro defines a main function suitable for building packages either directly or through gpxkg.
The syntax is
``` scheme
(defbuild-script build-spec . settings)
```

Using this, the build script for our project is the following:

``` scheme
$ cat build.ss
#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  '("util"
    (exe: "hello")))
```

And we can build by invoking the script:
``` bash
$ chmod +x build.ss
$ ./build.ss
...
```

### Intermediate Build Scripts

Here is a build script that uses an environment variable to determine
whether to build an optimized fully static binary or a normally linked binary:

```bash
$ cat build.ss
#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  `("util"
    ,(if (getenv "GERBIL_BUILD_RELEASE" #f)
       '(optimized-static-exe: "hello")
       '(exe: "hello"))))
```

If you are in your development environment and building executables
for your host, then you can just invoke it as
```bash
$ ./build.ss
```

On the other hand, if you are building inside a docker container that
supports fully static binaries (say alpine or void linux), you can
just use the following to build an optimized fully static binary:
```bash
GERBIL_BUILD_RELEASE=t ./build.ss
```

::: tip Note
You may need to pass some linker flags in your build spec when using
`(optimized-static-exe: <module> "-ld-options" "...")`.  This may be
necessary because the compiler cannot tell in advance what the tree
shaker will eliminate and thus it is not prudent to automatically
link all stdlib foreign dependencies.
:::

## Using the Gerbil build tool

Normally, you should not run `build.ss` directly but you use the
`gerbil build` tool insted. This will run it for you with the proper build
environment:

```shell
$ gerbil build
...
```

Also note, you don't have to use `optimized-exe:` or `static-exe:`
explicitly in your build scripts, you can use `exe:` which is context
dependent.  If you invoke the build tool with the `--optimized` and/or
`--release` flags it will automatically translate `exe:` build specs
to `optimized-exe:`, `static-exe:` or `optimized-static-exe:` as
applicable.  You can also define `GERBIL_BUILD_OPTIMIZED` and
`GERBIL_BUILD_RELEASE` environment variables, which has the same effect.

So to build executables with full program optimization:
```shell
$ gerbil build --optimized
```

And to build optimized release executables, you can do this inside
your [docker build container](/guide/docker.md):
```shell
$ gerbil build --release --optimized
```

## Dependency Management and Build Isolation

So far we have illustrated projects without any package dependencies;
things get more interesting when we factor those in. The build tool
provides functionality to manage your project dependencies and build
your project cleanly in an isolated environment irrespective of the
current global state in `~/.gerbil`.

All this is best explained with an example, but first let's explicitly
state the problem so that you can understand what follows:
- The Gerbil build environment is dictated by the `GERBIL_PATH` environment variable.
- If you don't set this variable, it will default to `~/.gerbil`.
- This is totally fine for casual or interactive use, where you want
  to install things globally to access libraries in the interpreter
  and have binaries in your path.
- However, it is entirely inappropriate when building and assembling
  your project, as a dirty `~/.gerbil` can break the build and
  generally have unintended side effects because of state.
- Prior to Gerbil v0.18, the recommended best practice was to
  _manually_ set `GERBIL_PATH` on a per project basis to isolate your
  builds.
- This works, but it is poor developer UX; so in Gerbil v0.18 we have
  systematized it and unless you explicitly set `GERBIL_PATH` (you can
  still do that if you want full control of the build environment),
  when building a project locally the build tool will automatically
  create a build environment for your project and set `GERBIL_PATH`
  for relevant commands.

### A Simple Project with an External Dependency

### The Project Structure Source Code

So let's start over again: this time we'll build a primitive web
scrapper: it is a command line tool that takes a URL, makes an http
request and parses the html output using `parse-html` from the
[gerbil-libxml](https://github.com/mighty-gerbils/gerbil-libxml)
package.

First, let's create the project:
```shell
$ mkdir scrape-it
$ cd scrape-it
$ gerbil new -n scraper
$ ls -lR
.:
total 16
-rwxr-xr-x 1 vyzo vyzo  144 Sep 24 11:33 build.ss
-rw-rw-r-- 1 vyzo vyzo   16 Sep 24 11:33 gerbil.pkg
-rw-rw-r-- 1 vyzo vyzo  478 Sep 24 11:33 Makefile
drwxrwxr-x 2 vyzo vyzo 4096 Sep 24 11:33 scraper

./scraper:
total 8
-rw-rw-r-- 1 vyzo vyzo 109 Sep 24 11:33 lib.ss
-rw-rw-r-- 1 vyzo vyzo 791 Sep 24 11:33 main.ss
```

Now let's add our dependency:
```shell
$ gerbil deps -a -i github.com/mighty-gerbils/gerbil-libxml
... cloning github.com/mighty-gerbils/gerbil-libxml
... pulling
... build github.com/mighty-gerbils/gerbil-libxml
... compile foreign xml/_libxml
... copy ssi xml/_libxml
... compile loader xml/_libxml
... compile xml/libxml
... tagging packages
```

Next, we add the code for the scrapper:
```shell
 cat scraper/lib.ss
;;; -*- Gerbil -*-
(import :std/error
        :std/sugar
        :std/net/request
        :clan/xml/libxml)
(export #t)

(def (scrape url)
  (let (req (http-get url redirect: #t))
    (unless (= (request-status req) 200)
      (error "HTTP request did not succeed" status: (request-status-text req)))
    (let (content-type (assget "Content-Type"(request-headers req)))
      (unless (string-prefix? "text/html" content-type)
        (error "HTTP response did not return html" content-type: content-type)))
    (parse-html (request-text req))))

$ cat scraper/main.ss
;;; -*- Gerbil -*-
(import :std/error
        :std/sugar
        :std/getopt
        :gerbil/gambit
        ./lib)
(export main)

;; build manifest; generated during the build
;; defines version-manifest which you can use for exact versioning
(include "../manifest.ss")

(def (main . args)
  (call-with-getopt scraper-main args
    program: "scraper"
    help: "A simple web scraper"
    (argument 'url help: "URL to scrape")))

(def* scraper-main
  ((opt)
   (scraper-main/options opt))
  ((cmd opt)
   (scraper-main/command cmd opt)))

;;; Implement this if your CLI doesn't have commands
(def (scraper-main/options opt)
  (let (sxml (scrape (hash-ref opt 'url)))
    (pretty-print sxml)))

;;; Implement this if your CLI has commands
(def (scraper-main/command cmd opt)
  (error "Implement me!"))

$ cat build.ss
#!/usr/bin/env gxi
;;; -*- Gerbil -*-
(import :std/build-script :std/make)

(defbuild-script
  `("scraper/lib"
    (exe: "scraper/main" bin: "scraper"
          "-cc-options" ,(shell-config "xml2-config" "--cflags")
          "-ld-options" ,(shell-config "xml2-config" "--libs"))))

```

And let's build it and run it:
```shell
$ gerbil build
... build in current directory
... compile scraper/main
... compile exe scraper/main -> /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper
/tmp/gxc.1695545021.0991077/clan__xml___libxml.scm:
/tmp/gxc.1695545021.0991077/clan__xml__libxml.scm:
/tmp/gxc.1695545021.0991077/vyzo__scraper__lib.scm:
/tmp/gxc.1695545021.0991077/vyzo__scraper__main.scm:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.scmx:
/tmp/gxc.1695545021.0991077/clan__xml___libxml.c:
/tmp/gxc.1695545021.0991077/clan__xml__libxml.c:
/tmp/gxc.1695545021.0991077/vyzo__scraper__lib.c:
/tmp/gxc.1695545021.0991077/vyzo__scraper__main.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper_.c:

$ ./.gerbil/bin/scraper http://hackzen.org
(*TOP* (html (head (title "(hackzen.org)")
                   (link (@ (rel "stylesheet") (type "text/css") (href "style.css"))))
             (body "\n    "
                   (h1 (@ (id "header")) "(hackzen.org)")
                   "\n    "
                   "\n    "
                   (div (a (@ (href "http://xkcd.com/297/")) (img (@ (src "parens.png")))))
                   "\n    "
                   (br)
                   (div (a (@ (href "robots.html")) "(robots)"))
                   "\n    "
                   (div (a (@ (href "gerbil/index.html")) "(gerbils)"))
                   "\n    "
                   (div (a (@ (href "humans.html")) "(humans)"))
                   "\n    "
                   (div (a (@ (href "nic9/index.html")) "[N1C#09]"))
                   "\n    "
                   (br)
                   (script (@ (src "harhar.js"))))))
```

So everything worked smoothly with the build, and the program works;
let's look at what happend under the hood.

### The Build Environment

The first thing that you should notice is that the build artifacts are
placed in a local `.gerbil` directory and not the global user
`~/.gerbil`.

Now let's look at what's in there:
```shell
$ ls -lR .gerbil/
.gerbil/:
total 12
drwxr-xr-x 2 vyzo vyzo 4096 Sep 24 11:43 bin
drwxr-xr-x 5 vyzo vyzo 4096 Sep 24 11:42 lib
drwxr-xr-x 3 vyzo vyzo 4096 Sep 24 11:34 pkg

.gerbil/bin:
total 220
-rwxrwxr-x 1 vyzo vyzo 222312 Sep 24 11:43 scraper

.gerbil/lib:
total 12
drwxr-xr-x 3 vyzo vyzo 4096 Sep 24 11:34 clan
drwxr-xr-x 2 vyzo vyzo 4096 Sep 24 11:43 static
drwxr-xr-x 3 vyzo vyzo 4096 Sep 24 11:42 vyzo

.gerbil/lib/clan:
total 4
drwxr-xr-x 2 vyzo vyzo 4096 Sep 24 11:34 xml

.gerbil/lib/clan/xml:
total 212
-rwxrwxr-x 1 vyzo vyzo 47448 Sep 24 11:34 libxml__0.o1
-rwxrwxr-x 1 vyzo vyzo 18656 Sep 24 11:34 libxml__1.o1
-rwxrwxr-x 1 vyzo vyzo 92472 Sep 24 11:34 _libxml.o1
-rwxrwxr-x 1 vyzo vyzo 17800 Sep 24 11:34 _libxml__rt.o1
-rwxrwxr-x 1 vyzo vyzo 18160 Sep 24 11:34 libxml__rt.o1
-rwxrwxr-x 1 vyzo vyzo  1543 Sep 24 11:34 _libxml.ssi
-rw-r--r-- 1 vyzo vyzo  4072 Sep 24 11:34 libxml.ssi
-rw-r--r-- 1 vyzo vyzo  1832 Sep 24 11:34 libxml.ssxi.ss

.gerbil/lib/static:
total 48
-rwxrwxr-x 1 vyzo vyzo 12419 Sep 24 11:34 clan__xml___libxml.scm
-rwxrwxr-x 1 vyzo vyzo 21371 Sep 24 11:34 clan__xml__libxml.scm
-rwxrwxr-x 1 vyzo vyzo  2109 Sep 24 11:42 vyzo__scraper__lib.scm
-rwxrwxr-x 1 vyzo vyzo  2404 Sep 24 11:43 vyzo__scraper__main.scm

.gerbil/lib/vyzo:
total 4
drwxr-xr-x 2 vyzo vyzo 4096 Sep 24 11:42 scraper

.gerbil/lib/vyzo/scraper:
total 64
-rwxrwxr-x 1 vyzo vyzo 19008 Sep 24 11:42 lib__0.o1
-rwxrwxr-x 1 vyzo vyzo 18488 Sep 24 11:42 lib__rt.o1
-rw-r--r-- 1 vyzo vyzo   293 Sep 24 11:42 lib.ssi
-rw-r--r-- 1 vyzo vyzo   108 Sep 24 11:42 lib.ssxi.ss
-rw-r--r-- 1 vyzo vyzo  2404 Sep 24 11:43 main__0.scm
-rw-r--r-- 1 vyzo vyzo   297 Sep 24 11:43 main__rt.scm
-rw-r--r-- 1 vyzo vyzo   738 Sep 24 11:43 main.ssi
-rw-r--r-- 1 vyzo vyzo   424 Sep 24 11:43 main.ssxi.ss

.gerbil/pkg:
total 8
drwxr-xr-x 3 vyzo vyzo 4096 Sep 24 11:34 github.com
-rw-rw-r-- 1 vyzo vyzo 3599 Sep 24 11:34 TAGS

.gerbil/pkg/github.com:
total 4
drwxr-xr-x 3 vyzo vyzo 4096 Sep 24 11:34 mighty-gerbils

.gerbil/pkg/github.com/mighty-gerbils:
total 8
drwxrwxr-x 4 vyzo vyzo 4096 Sep 24 11:34 gerbil-libxml
-rw-rw-r-- 1 vyzo vyzo  131 Sep 24 11:34 gerbil-libxml.manifest

.gerbil/pkg/github.com/mighty-gerbils/gerbil-libxml:
total 64
-rw-rw-r-- 1 vyzo vyzo   362 Sep 24 11:34 build-deps
-rwxrwxr-x 1 vyzo vyzo   306 Sep 24 11:34 build.ss
-rw-rw-r-- 1 vyzo vyzo    16 Sep 24 11:34 gerbil.pkg
-rw-rw-r-- 1 vyzo vyzo 11358 Sep 24 11:34 LICENSE-APACHE-2.0.txt
-rw-rw-r-- 1 vyzo vyzo 26430 Sep 24 11:34 LICENSE-LGPL.txt
-rw-rw-r-- 1 vyzo vyzo   172 Sep 24 11:34 manifest.ss
-rw-rw-r-- 1 vyzo vyzo  3535 Sep 24 11:34 README.md
drwxrwxr-x 2 vyzo vyzo  4096 Sep 24 11:34 xml

.gerbil/pkg/github.com/mighty-gerbils/gerbil-libxml/xml:
total 28
-rw-rw-r-- 1 vyzo vyzo 12419 Sep 24 11:34 _libxml.scm
-rw-rw-r-- 1 vyzo vyzo  6351 Sep 24 11:34 libxml.ss
-rw-rw-r-- 1 vyzo vyzo  1543 Sep 24 11:34 _libxml.ssi
```

- `.gerbil/bin` contains the binary output.
- `.gerbil/lib` contains the library build artifacts.
- `.gerbil/pkg` contains the packages involved

The most important one here is the `.gerbil/pkg` directory, this is
where dependencies live.

### Version Manifests

You will notice a salient new file that appeared in our directory:
```shell
$ ll manifest.ss
-rw-rw-r-- 1 vyzo vyzo 205 Sep 24 11:43 manifest.ss

$ cat manifest.ss
(def version-manifest
     '(("scrape-it" . "unknown")
       ("Gerbil" . "0.17.0-309-g5ebf1095")
       ("Gambit" . "v4.9.5-40-g24201248")
       ("github.com/mighty-gerbils/gerbil-libxml" . "b08e5d8")))
```

This file provides exact versioning for all parts of the project
involved, getting information from `git`.  For `gerbil-libxml` you'll
notice that the version is a commit hash, as at the time of writing
there are not any _version tags_ in the package (see next section).

Note that the version of our project (`scrape-it`) is unknow; that's
because we have not initialized a git repository for our project.
Once we do that, it stops being unknown and it points to the current commit:
```shell
$ git init
Initialized empty Git repository in /home/vyzo/src/vyzo/scratch/test/scrape-it/.git/

$ git add .
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
	new file:   .gitignore
	new file:   Makefile
	new file:   build.ss
	new file:   gerbil.pkg
	new file:   scraper/lib.ss
	new file:   scraper/main.ss

$ git commit -m "initial commit"
[master (root-commit) 0ba7240] initial commit
 6 files changed, 83 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Makefile
 create mode 100755 build.ss
 create mode 100644 gerbil.pkg
 create mode 100644 scraper/lib.ss
 create mode 100644 scraper/main.ss

 $ gerbil clean
... clean current package
... remove /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/lib/vyzo/scraper/lib.ssi
... remove /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/lib/static/vyzo__scraper__lib.scm
... remove /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper
... remove /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/lib/static/vyzo__scraper__main.scm

$ gerbil build
... build in current directory
... compile scraper/lib
... compile scraper/main
... compile exe scraper/main -> /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper
/tmp/gxc.1695546027.0358357/clan__xml___libxml.scm:
/tmp/gxc.1695546027.0358357/clan__xml__libxml.scm:
/tmp/gxc.1695546027.0358357/vyzo__scraper__lib.scm:
/tmp/gxc.1695546027.0358357/vyzo__scraper__main.scm:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.scmx:
/tmp/gxc.1695546027.0358357/clan__xml___libxml.c:
/tmp/gxc.1695546027.0358357/clan__xml__libxml.c:
/tmp/gxc.1695546027.0358357/vyzo__scraper__lib.c:
/tmp/gxc.1695546027.0358357/vyzo__scraper__main.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper_.c:

$ cat manifest.ss
(def version-manifest
     '(("scrape-it" . "0ba7240")
       ("Gerbil" . "0.17.0-309-g5ebf1095")
       ("Gambit" . "v4.9.5-40-g24201248")
       ("github.com/mighty-gerbils/gerbil-libxml" . "b08e5d8")))
```

We can integrate the version manifest into our program's cli so that
when a user reports a bug or there is some failure in your production
environment, you can query the binary to find the exact version and
know exactly what code was used to compile it.

Here, we add a `-v/--version` flag to print the version and exit:
```shell
$ cat scraper/main.ss
;;; -*- Gerbil -*-
(import :std/error
        :std/sugar
        :std/getopt
        :gerbil/gambit
        ./lib)
(export main)

;; build manifest; generated during the build
;; defines version-manifest which you can use for exact versioning
(include "../manifest.ss")

(def (main . args)
  (call-with-getopt scraper-main args
    program: "scraper"
    help: "A simple web scraper"
    (flag 'version "-v" "--version" help: "display program version and exit")
    (optional-argument 'url help: "URL to scrape")))

(def* scraper-main
  ((opt)
   (scraper-main/options opt))
  ((cmd opt)
   (scraper-main/command cmd opt)))

;;; Implement this if your CLI doesn't have commands
(def (scraper-main/options opt)
  (when (hash-get opt 'version)
    (pretty-print version-manifest)
    (exit 0))
  (let (sxml (scrape (hash-ref opt 'url)))
    (pretty-print sxml)))

;;; Implement this if your CLI has commands
(def (scraper-main/command cmd opt)
  (error "Implement me!"))


$ gerbil build
... build in current directory
... compile scraper/main
... compile exe scraper/main -> /home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper
/tmp/gxc.1695546226.3194306/clan__xml___libxml.scm:
/tmp/gxc.1695546226.3194306/clan__xml__libxml.scm:
/tmp/gxc.1695546226.3194306/vyzo__scraper__lib.scm:
/tmp/gxc.1695546226.3194306/vyzo__scraper__main.scm:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.scmx:
/tmp/gxc.1695546226.3194306/clan__xml___libxml.c:
/tmp/gxc.1695546226.3194306/clan__xml__libxml.c:
/tmp/gxc.1695546226.3194306/vyzo__scraper__lib.c:
/tmp/gxc.1695546226.3194306/vyzo__scraper__main.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper.c:
/home/vyzo/src/vyzo/scratch/test/scrape-it/.gerbil/bin/scraper_.c:

```

And voila:
```shell
$ ./.gerbil/bin/scraper -v
(("scrape-it" . "0ba7240")
 ("Gerbil" . "0.17.0-309-g5ebf1095")
 ("Gambit" . "v4.9.5-40-g24201248")
 ("github.com/mighty-gerbils/gerbil-libxml" . "b08e5d8"))
```

### Semantic Versioning

As you've probably noticed, version information comes from `git`. The natural follow up question is "can we version packages".

The answer is "Yes, of course!". Gerbil uses tags for version and
implements _semantic versioning_ to select the correct version of your
packages when there differing versions specified.  You can request a
specific version of a package by simple appending `@<version-tag>` to
the package name when specifying a dependency. This will ensure that
the correct version of the code is checked out according to the
dependencies in the transitive package list.

The rules for version selection when there are different version of
the same package involved in the transitive dependency list are as
follows:
- Always select the latest semantic version, with tags of the form
  `vX[.Y[.Z]]` parsed as major, minor, and patch version
- The `master` and `main` branches are always considered versioned as
  higher than any semantic version tag.
- If the package version specifies two different branches or commit
  hashes, then it is considered a _hard_ conflict and the user has to
  intervene to resolve the issue.

Note that Gerbil's semantic versioning doesn't follow the strict
"different major versions are incompatible" rule. We considered this
and our long experience with developing production software has led us
to the conclusion that it simply doesn't work in practice -- see Go's
ugly required version appending once you are over v1 or the mess with
Rust.  What we advocate instead is for you to make a `v2` subpackage
within your package that implements forward functionality without
breaking the API of `v1` and so on for higher versions.

## Testing your package

So at this point you are naturally wondering how to run tests for your
package, given the build isolation properties of the tooling.

This is actually very simple: the `gerbil pkg env` command provides
you with the ability to run command with the local build GERBIL_PATH
set for you.

So in order to run your tests, all you have to do is:
```
$ gerbil pkg env gxtest ./...
```

## Where to go from here

See the [Gerbil Universal Binary and Tools](bach.md) page for more
information about the Gerbil tooling.
