module.exports = {
    title: 'Gerbil Scheme',
    description: '',
    themeConfig: {
        nav: [
          { text: 'Home', link: '/' },
          { text: 'Guide', link: '/guide/' },
          { text: 'Tutorials', link: '/tutorials/' },
          { text: 'StdLib', link: '/stdlib/' },
        ],
        sidebarDepth: 2,
        sidebar: {
          '/guide/': [
            {
              collapsable: false,
              title: 'Guide',
              children: ['', 'intro', 'getting-started', 'shell', 'package-manager', 'ffi', 'build', 'profiler', 'bootstrap', 'nix', 'r7rs', 'srfi', 'core-prelude']
            }
          ],
          '/tutorials/': [
             {
               collapsable: false,
               title: 'Tutorials',
               children: ['', 'languages', 'kvstore', 'proxy', 'httpd']
             }
          ],
          '/stdlib/': [
            {
              collapsable: false,
              title: 'Standard Library Reference',
              children:  ['', 'sugar', 'format', 'sort', 'regexp', 'getopt', 'generic', 'iterators', 'coroutine', 'events', 'actor', 'db', 'requests', 'httpd', 'web', 'xml', 'sockets', 'os', 'crypto',  'debug', 'errors', 'logger', 'misc', 'text', 'net', 'parser', 'lazy', 'stxparam', 'srfi', 'test', 'make']
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
      current_version: 'v0.12'
  }
