# Contributing to Gerbil

Gerbil is a growing open source project, your contributions are welcome and appreciated!

## Getting Started

To get started contributing to Gerbil, follow the [Installation
Guide](https://cons.io/guide/#installation) to acquire the source code, install
dependencies, and compile the system. You'll need [git](https://git-scm.com/).

You may also install Gerbil from your package manager of choice, but the source code and
dependencies to modify and later test changes are still required.

Gerbil development is manged using [GitHub](https://github.com/mighty-gerbils/gerbil)
and pull requests (or "PRs") are the primary way to submit changes. Start by forking the
repository, make your changes, then [submit a pull
request.](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork)

If you don't wish to
use GitHub, patches may be accepted via the
[gerbil-users](https://groups.google.com/a/hackzen.org/g/gerbil-users) mailing list as
well.

### Branching

When working directly on the `mighty-gerbils/gerbil` repo (or others in the
`mighty-gerbils` namespace), please follow the following conventions for naming
branches:

- use a `doc-` prefix for documentation changes (ex. `doc-contributing`)
- use a `feat-` prefix for new features (ex. `feat-lsp`)
- use a `bug-` prefix for bug fixes (ex. `bug-compile-error-on-uninitialized-value`
- use a `core-` prefix for core compiler changes (ex. `core-union-types`)

## Contributing Documentation

Documentation work is a fantastic way to get started with contributing to Gerbil! If you
don't know where to start, there may be [issues marked with the `documentation`
label](https://github.com/mighty-gerbils/gerbil/issues?q=is%3Aissue+is%3Aopen+doc+label%3Adocumentation)
that could be a good place to look. As of now, there are many areas of the Gerbil
codebase that do not have adequate documentation. The Gerbil Core team is actively
working to improve this, but help is always appreciated.

Documentation generally lives on the projects main site, [cons.io](https://cons.io).

Code documentation is stored in the [`doc/`
folder](https://github.com/mighty-gerbils/gerbil/tree/master/doc) as markdown. If you're
unfamiliar with Markdown, the [Markdown Guide](https://www.markdownguide.org/) is a
helpful reference. We use [VuePress](https://vuepress.vuejs.org/) to process the
markdown into HTML, follow [their guide](https://vuepress.vuejs.org/guide/#how-it-works)
for additional information. Of most interest is likely the [Markdown
Extensions](https://vuepress.vuejs.org/guide/markdown.html) section.

### Organization of Gerbil Documentation

Gerbil's documentation has 3 main sections, [Guide](https://cons.io/guide/),
[Tutorials](https://cons.io/tutorials/), and [Reference](https://cons.io/reference/).

#### Guides

Guides are stored under `doc/guide` and should cover topics that a reader will want to
follow to achieve some goal.

Examples of this are the [Installation Guide](https://cons.io/guide/#installation),
[Getting Started with Gerbil
Development](https://cons.io/guide/getting-started.html#install-gerbil), and [Gerbil on
MacOS](https://cons.io/guide/macos.html#install-dependencies).

#### Tutorials

Tutorials are stored under `doc/tutorials` and focus on providing learning-oriented
examples that hackers new to Gerbil can use to get familiar with the ins-and-outs of the
language and standard library.

Some examples include the [Key-Value Store
Server](https://cons.io/tutorials/kvstore.html) and [Web programming with the Gerbil
HTTP server](https://cons.io/tutorials/httpd.html).


#### Reference

Reference documentation is stored in in `doc/reference` and further subdivided into
`dev/`, `gerbil/`, `srfi/`, and `std/`. Reference material contains descriptions of
systems, functions, and syntax used within the Gerbil language.

The `dev` folder contains reference material for use in the development process using
Gerbil. It includes topics such as
[Testing](https://cons.io/reference/dev/test.html#running-tests-with-gxtest) and
[Debugging](https://cons.io/reference/dev/debug.html) Gerbil code.

`gerbil/` contains documentation on the core Gerbil language. This includes the core
prelude, runtime, and expander.

`srfi/` largely provides an index for supported [Scheme Requests for
Implementation](https://srfi.schemers.org/) or "SRFIs" that are implemented or
re-exported by Gerbil.

Finally, `std/` contains references for the Gerbil Standard Library. This folder's
substructure mirrors the module structure of the standard library closely. Most new
modules, syntax, and functions should be documented here.

### Previewing Changes

To preview changes, a JavaScript runtime is necessary. [NodeJS](https://nodejs.org/) is
a good place to start, but other options *may* work.

Preview changes to `doc/` with the following commands, run from within `doc/`:

```shell
npm install
npm run dev
```

This will setup the dependencies and run a development server on port `8080`. Access it
at <http://localhost:8080>.

### Style Guide

We don't quite yet have a fixed style for Gerbil docs (other than for
procedures; shown below), but please try to remain consistent with other docs in
a similar category.

#### Procedures

Procedure reference declarations in documentation should adhere to the grammar
below. Note that it has some key differences from standard procedure syntax,
either for:

- consistency
- declaring information that can't yet be captured by procedure syntax

```scheme
<procedure-signature> [<procedure-signature> ...]

procedure-signature:
  (procedure-name [<argument> ...] [. <rest-argument>]) [=> <return-type>]

argument:
  <positional-argument>
  <keyword-argument>

positional-argument:
  <identifier>
  (<identifier> : <type>)
  (<identifier> := <default>)
  (<identifier> : <type> := <default>)

keyword-argument:
  <external-identifier>: <internal-identifier>
  <external-identifier>: (<internal-identifier> : <type>)
  <external-identifier>: (<internal-identifier> := <default>)
  <external-identifier>: (<internal-identifier> : <type> := <default>)

rest-argument:
  <identifier>
  (<identifier> <list-type>)

return-type:
  <type>
  (values <type> ...)

type:
  Type
  (or Type ...) ; May be any of these types
```

> Note: `<list-type>` has the same expansion as `<type>`, except that it is
> implied to be the type of each item within the list, rather than the list as a
> whole.

Here are some examples:

```scheme
; cons
(cons obj (l : :list)) => :list
(cons obj1 obj2) => :pair


; proc-a
(def (proc-a x: (x 10))
  (cond
   ((number? x) "A number")
   ((string? x) "A string")
   (else (error "Unexpected argument type!"))

(proc-a x: (x : (or :number :string) := 10)) => :string


; proc-b
(def (proc-b x)
  (values "blue"
          42
          (if (positive? x) #t '())

(proc-b (x : :number)) => (values :string :integer (or :boolean :list))
```

## Contributing to the Standard Library

Gerbil aims to have an extensive "batteries included" standard library. That being said,
not every new feature/module may get included. If there are questions, please reach out
in the [Matrix room](https://matrix.to/#/#gerbil-scheme-core:gitter.im) or [mailing
list](https://groups.google.com/a/hackzen.org/g/gerbil-users) for guidance or feedback.
Most often, if a module or package is decided to not be included in the stdlib, it will
be added to the [directory](https://github.com/mighty-gerbils/gerbil-directory) instead.
Do not let this discourage from making contributions! The Gerbil ecosystem benefits
greatly from community library support!

**Contributions to the standard library should always be accompanied with corresponding
documentation.** Pull requests that do not include documentation may not be approved and
merged.

### Organization of the Standard Library

The standard library is located under `src/std`.

The `:std/make` build tool is used to compile the standard library, therefore new
modules must be included in the top level
[`build-spec.ss`](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/build-spec.ss)
for the stdlib, located at `src/std/build-spec.ss`.

Modules that provide types and an interface generally follow the following convention:

Source files for the module are stored in a folder with the intended name for the
module. A file is created at the same level as the folder with the same name with the
`.ss` suffix. This file is responsible for importing and re-exporting the API and/or
interfaces of the module.

Interfaces that are exported by a module are defined in a `interface.ss` file.

Public API symbols are defined in an `api.ss`.

Other source files may exist in this folder at the authors discretion, but should
generally not be imported by other modules.

An example of this structure can be observed with the S3 module:

- Module reexport: [`s3.ss`](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/net/s3.ss)
- API: [`api.ss`](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/net/s3/api.ss)
- Interface: [`interface.ss`](https://github.com/mighty-gerbils/gerbil/blob/master/src/std/net/s3/interface.ss)

### Testing

New code should be tested to the best extent possible. Tests for a particular file
should live next to that file with a `-test` suffix applied to the name. If a test
covers an entire module, the module name with the `-test` suffix should be used instead.

For example, tests covering the `:std/net/websocket` module live in
`src/std/net/websocket/websocket-test.ss` and the tests for
`src/std/net/websocket/socket.ss` live in `src/std/net/websocket/socket-test.ss`.

#### Executing Test on the Standard Library

Executing tests on the standard library is slightly different than in other modules, as
it is not possible use a local tree directly. The process is documented in the [Hacking
on the Standard Library](https://cons.io/reference/dev/test.html) guide.

To execute all tests before submitting a pr, run `make check` from the root of the
repository. Alternatively, `./build.sh env gerbil test ./...` may be used.

## Style Guide

Gerbil code generally uses 2-space indents, though the syntax is very flexible. There is
no formalized style guide (yet), but do try to follow the style of other code in the
project whenever possible.

## Contributing to Gerbil Core

Gerbil's bootstrapping process is documented
[here.](https://cons.io/reference/dev/bootstrap.html) Contributions to the core are
welcome, but may be subject to more scrutiny than other changes: it's the heart of
Gerbil after all.

Changes to the core prelude, runtime, compiler, or expander require rebootstrapping. The
process (and a lot of context and background) is documented in [The Gerbil
Bootstrap](https://cons.io/reference/dev/bootstrap.html#recompiling-the-bootstrap).

Gerbil's core lives in `src/gerbil`.
