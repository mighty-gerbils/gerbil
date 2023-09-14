module.exports = {
  title: 'Gerbil Scheme',
  description: '',
  themeConfig: {
    nav: [
      { text: 'Home', link: '/' },
      { text: 'Guide', link: '/guide/' },
      { text: 'Tutorials', link: '/tutorials/' },
      { text: 'Reference', link: '/reference/' },
      { text: 'Gitter', link: 'https://gitter.im/gerbil-scheme/community' }
    ],
    sidebarDepth: 2,
      sidebar: {
          '/guide/': [
              {
                  title: 'Guide',
                  children: ['', 'intro', 'getting-started', 'emacs', 'shell', 'env-vars', 'package-manager', 'docker', 'nix', 'r7rs', 'macos']
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
		              'sugar',
		              { title: "Lists",
		                path: '/reference/std/misc/list',
		                children: [
			                'misc/list',
			                'misc/alist',
			                'misc/plist'
		                ]
		              },

		              'assert', 'errors', 'format', 'logger',
		              'sort', 'regexp', 'generic', 'interface',
		              'stdio', 'ref',  'iterators', 'coroutine',
		              'events', 'actor', 'requests', 'httpd',
		              'web', 'db', 'kvstore', 'sockets',
		              'net', 'protobuf', 'os', 'crypto',
		              'text', 'xml', 'parser', 'misc/', 'lazy', 'amb',
		              'getopt', 'stxparam', 'stxutil', 'foreign', 'make'
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
                      'ffi',
                      'bootstrap'
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
          ], '/reference/': [
              {
                  title: 'Gerbil Reference',
	              children:  [
		              '',
		              'gerbil/prelude/',
		              'gerbil/runtime/',
		              'gerbil/expander/',
		              'std/',
                      'dev/',
		              'srfi/'
	              ]
              }
          ]
      },
    // Assumes GitHub. Can also be a full GitLab url.
    repo: 'vyzo/gerbil',
    // Customising the header label
    // Defaults to "GitHub"/"GitLab"/"Bitbucket" depending on `themeConfig.repo`
    repoLabel: 'Contribute!',

    // Optional options for generating "Edit this page" link

    // if your docs are in a different repo from your main project:
    docsRepo: 'vyzo/gerbil',
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
  current_version: 'v0.12'
}
