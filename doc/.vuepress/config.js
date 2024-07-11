module.exports = {
  title: 'Gerbil Scheme',
  description: '',
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide/' },
      { text: 'Tutorials', link: '/tutorials/' },
      { text: 'Reference', link: '/reference/' },
      { text: 'Gitter', link: 'https://gitter.im/gerbil-scheme/community' },
      { text: 'Matrix', link: 'https://matrix.to/#/#gerbil-scheme-core:gitter.im' },
      { text: 'Mailing List', link: 'https://groups.google.com/a/hackzen.org/g/gerbil-users' }
    ],
    sidebarDepth: 2,
      sidebar: {
          '/guide/': [
              {
                  title: 'Guide',
                  children: ['', 'intro', 'getting-started', 'eval', 'ffi', 'emacs', 'shell', 'env-vars', 'package-manager', 'docker', 'macos', 'nix', 'r7rs', 'hacking-on-the-stdlib']
              }
          ],
          '/tutorials/': [
              {
                  title: 'Tutorials',
                  children: ['', 'languages', 'kvstore', 'proxy', 'httpd', 'ensemble']
              }
          ], '/reference/gerbil/runtime/': [
	          { title: "Gerbil Runtime",
	            children:
	            [
		            '', 'special-objects', 'lists', 'hash-tables', 'numerics', 'symbols',
		            'strings',  'MOP','control-flow', 'exception-objects', 'misc-procedures',
		            'syntax-objects', 'system-information', 'thread-primitives'
	            ]
	          },
		      { title: "< Back to Reference", path: '/reference/'}

          ], '/reference/gerbil/prelude/': [
	          { title: "Gerbil Prelude",
	            children: [ '', 'core-expander-syntax', 'macros', 'runtime-bindings']
	          },
	          { title: "< Back to Reference", path: '/reference/'}
          ], '/reference/gerbil/expander/': [
	          { title: "Gerbil Expander",
	            children: [ '', 'syntax-errors', 'syntax-objects', 'identifiers', 'utilities' ]
	          },
	          { title: "< Back to Reference", path: '/reference/'}
          ], '/reference/std/': [
              {
                  title: 'Standard Library',
                  children: [
                      '',
                      'sugar',
                      'source',
                      'stxparam',
                      'stxutil',
                      'assert',
                      'errors',
                      'getopt',
                      'make',
                      'test',
                      'debug',
                      'format',
                      'logger',
                      'generic',
                      'ref',
                      'iterators',
                      'coroutine',
                      'events',
                      'amb',
                      'lazy',
                      'sort',
                      'regexp',
                      'web',
                      'foreign',
                      'interface',
                      'contract',
                      'stdio',
                      'actor',
                      'crypto',
                      'protobuf',
                      'parser',
                      'values',
		      'mime/',
		      {
			  title: "Markup Languages",
			  path: "/reference/std/markup/",
			  children: [
			      "markup/sxml/",
			      "markup/sxml/xml",
			      "markup/sxml/html/",
			      "markup/sxml/tal/"
			  ]
		      },

                      { title: "Networking Libraries",
                        path: "/reference/std/net/",
                        children: [
                            "net/",
                            "net/request",
                            "net/json-rpc",
                            "net/websocket",
                            "net/socks",
                            "net/httpd",
                            "net/ssl",
                            "net/uri",
                            "net/address",
                            "net/sasl",
                            "net/repl",
                            "net/s3"
                        ]
                      },

                      { title: "Operating System Libraries",
                        path: "/reference/std/os/",
                        children: [
                            "os/",
                            "os/error",
                            "os/fd",
                            "os/fdio",
                            "os/fcntl",
                            "os/flock",
                            "os/socket",
                            "os/pipe",
                            "os/signal",
                            "os/signal-handler",
                            "os/signalfd",
                            "os/inotify",
                            "os/epoll",
                            "os/kqueue",
                            "os/hostname",
                            "os/temporaries"
                        ]
                      },

                      { title: "Unix Command Line Interface",
                        path: "/reference/std/cli/",
                        children: [
                            "cli/",
                            "cli/getopt",
                            "cli/shell",
                            "cli/print-exit",
                            "cli/multicall",
                        ]
                      },

                      { title: "Databases and Key-Value Stores",
                        path: "/reference/std/db/",
                        children: [
                            "db/",
                            "db/conpool",
                            "db/dbi",
                            "db/postgresql",
                            "db/sqlite",
                        ]
                      },

                      { title: "Text Parser Libraries",
                        path: "/reference/std/parser/",
                        children: [
                            "parser/",
                            "parser/ll1"
                        ]
                      },

                      { title: "Text Encoding and Decoding Libraries",
                        path: "/reference/std/text/",
                        children: [
                            "text/",
                            "text/base58",
                            "text/base64",
                            "text/char-set",
                            "text/csv",
                            "text/hex",
                            "text/json",
                            "text/utf16",
                            "text/utf32",
                            "text/utf8",
                            "text/zlib"
                        ]
                      },

                      { title: "Miscellaneous Libraries",
		                path: '/reference/std/misc/',
		                children: [
                            'misc/',
                            'misc/alist',
                            'misc/atom',
                            'misc/barrier',
                            'misc/bytes',
                            'misc/channel',
                            'misc/completion',
                            'misc/decimal',
                            'misc/evector',
                            'misc/deque',
                            'misc/func',
                            'misc/hash',
                            'misc/list',
                            'misc/list-builder',
                            'misc/lru',
                            'misc/number',
                            'misc/path',
                            'misc/plist',
                            'misc/ports',
                            'misc/pqueue',
                            'misc/prime',
                            'misc/process',
                            'misc/queue',
                            'misc/rbtree',
                            'misc/repr',
                            'misc/rwlock',
                            'misc/shared',
                            'misc/shuffle',
                            'misc/string',
                            'misc/sync',
                            'misc/template',
                            'misc/text',
                            'misc/threads',
                            'misc/timeout',
                            'misc/uuid',
                            'misc/vector',
                            'misc/walist',
		                ]
		              }
	              ]
              },

	          { title: "< Back to Reference", path: '/reference/'}
          ], '/reference/srfi/': [
              {
                  title: "SRFI Support in Gerbil",
                  children: [
                      '',
                  ]
              },
              { title: "< Back to Reference", path: '/reference/'}
          ], '/reference/dev/': [
              {
                  title: 'Developing Software with Gerbil',
                  children: [
                      'bach',
                      'build',
                      'test',
                      'debug',
                      'profiler',
                      'optimizing',
                      'bootstrap',
                      'release'
                  ]
              },
              { title: "< Back to Reference", path: '/reference/'}
          ], '/reference/': [
              {
                  title: 'Gerbil Reference',
	              children:  [
		              '',
		              'gerbil/prelude/',
		              'gerbil/runtime/',
		              'gerbil/expander/',
		              'std/',
                      'srfi/',
		              'dev/'
	              ]
              }
          ]
      },
    // Assumes GitHub. Can also be a full GitLab url.
    repo: 'mighty-gerbils/gerbil',
    // Customising the header label
    // Defaults to "GitHub"/"GitLab"/"Bitbucket" depending on `themeConfig.repo`
    repoLabel: 'Contribute!',

    // Optional options for generating "Edit this page" link

    // if your docs are in a different repo from your main project:
    docsRepo: 'mighty-gerbils/gerbil',
    // if your docs are not at the root of the repo:
    docsDir: 'doc',
    // if your docs are in a specific branch (defaults to 'master'):
    docsBranch: 'master',
    // defaults to false, set to true to enable
    editLinks: true,
    // custom text for edit link. Defaults to "Edit this page"
    editLinkText: 'Help us improve this page!',
  },
  module: {
    rules: [
      {
        test: /\.svg$/,
        loader: 'vue-svg-loader',
      },
    ],
  },
  markdown: {
      slugify: function(str) {
          if (!/^[a-zA-Z][\-0-9a-zA-Z]$/.test(str) // not basic dash + alphanum
              || /^-/.test(str) // or starts with dash
              || /-$/.test(str) // or ends with dash
              || /--/.test(str) // or has multiple dashes in a row
             ) {
              return str
                  .replace(/^\-\-+/g, 'dashes-')
                  .replace(/\-\-+$/g, '-dashes')
                  .replace(/\-\-+/g, '-dashes-')
                  .replace(/^\-/g, 'dash-')
                  .replace(/\-$/g, '-dash')
                  .replace(/([a-zA-Z0-9])\->([a-zA-Z0-9])/g, '$1-to-$2')
                  .replace(/([a-zA-Z0-9])<\-([a-zA-Z0-9])/g, '$1-from-$2')
                  .replace(/\$/g, '-dollar-')
                  .replace(/\//g, '-slash-')
                  .replace(/:/g, '-colon-')
                  .replace(/~/g, '-tilde-')
                  .replace(/=/g, '-eq-')
                  .replace(/@/g, '-at-')
                  .replace(/!/g, '-bang-')
                  .replace(/\+/g, '-plus-')
                  .replace(/</g, '-lt-')
                  .replace(/>/g, '-gt-')
                  .replace(/\?/g, '-qm-')
                  .replace(/\*/g, '-star-')
                  .replace(/\-{2,}/g, '-')
                  .replace(/^\-+|\-+$/g, '')
                  .replace(/[^-a-zA-Z0-9]/g, '_')
                  .replace(/\_{2,}/g, '_')
                  .replace(/^(\d)/, '_$1')
                  .toLowerCase();
          }
          return str.toLowerCase(); // Good as is
      }
  },
  current_version: 'v0.12'
}
