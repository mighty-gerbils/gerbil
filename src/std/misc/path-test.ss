(export path-test)

(import
  :std/misc/path
  :std/sugar
  :std/test)

(def path-test
  (test-suite "test :std/misc/path"
    (test-case "path-default-extension"
      (check (path-default-extension "foo.ss" ".o") => "foo.ss")
      (check (path-default-extension "foo" ".o") => "foo.o")
      (check (path-default-extension "foo.ss" #f) => "foo.ss"))
    (test-case "path-force-extension"
      (check (path-force-extension "foo.ss" ".o") => "foo.o")
      (check (path-force-extension "foo" ".o") => "foo.o")
      (check (path-force-extension "foo.ss" #f) => "foo.ss")
      (check (path-force-extension "foo.ss" "") => "foo"))
    (test-case "path-force-extension"
      (check (path-extension-is? "foo.ss" ".ss") => #t)
      (check (path-extension-is? "foo" "") => #t)
      (check (path-extension-is? "foo.c" "") => #f) ;; Nope, extension is ".c"
      (check (path-extension-is? ".foo" ".foo") => #f) ;; Nope, initial "." doesn't count.
      (check (path-extension-is? "foo.b.c" ".b.c") => #f) ;; Nope, the extension is just ".c"
      (check (path-extension-is? "foo.ss" "") => #f))
    (test-case "subpath"
      (check (subpath "foo" "bar" "baz/quux" "myfile.ext") => "foo/bar/baz/quux/myfile.ext")
      (check (subpath "/home/user" ".gerbil" "lib" "static") => "/home/user/.gerbil/lib/static"))
    (test-case "subpath?"
      (check (subpath? "/foo" "/bar") => #f)
      (check (subpath? "/home/user/.gerbil/lib" "/home/user") => ".gerbil/lib")
      (check (subpath? "foo/bar/baz/quux" "foo/bar") => "baz/quux"))
    (test-case "path-absolute?"
      (check (path-absolute? "/foo") => #t)
      (check (path-absolute? "foo") => #f))
    (test-case "absolute-path?"
      (check (absolute-path? "/foo") => #t)
      (check (absolute-path? "foo") => #f)
      (check (absolute-path? 'foo) => #f)
      (check (absolute-path? 42) => #f)
      (check (absolute-path? #f) => #f)
      (check (absolute-path? #t) => #f))
    (test-case "get-absolute-path"
      (check (get-absolute-path "/abs") => "/abs")
      (check-exception (get-absolute-path "rel") true)
      (check-exception (get-absolute-path (lambda () "rel")) true)
      (check-exception (get-absolute-path (lambda () 'invalid)) true)
      (check (get-absolute-path current-directory) => (current-directory))
      (check (get-absolute-path #f) => (current-directory)))
    (test-case "ensure-absolute-path"
      (check (ensure-absolute-path "/foo" #f) => "/foo")
      (check (ensure-absolute-path "/foo" error) => "/foo")
      (check (ensure-absolute-path "foo" "/bar") => "/bar/foo")
      (check (ensure-absolute-path "foo" current-directory) => (subpath (current-directory) "foo"))
      (check (ensure-absolute-path "foo" #f) => (subpath (current-directory) "foo"))
      (check-exception (ensure-absolute-path "foo" "bar") true))
    (test-case "path-maybe-normalize"
      (check (path-maybe-normalize "/etc/.") => "/etc/")
      (check (path-maybe-normalize "/../../../does////../not/../exist/../etc") => "/etc"))
    (test-case "path-enough"
      (check (path-enough "/home/user/.gerbil/lib" "/home/user") => ".gerbil/lib")
      (check (path-enough "/etc" "/home/user") => "/etc")
      (check (path-enough "foo/bar/baz/quux" "foo/bar") => "baz/quux")
      (check (path-enough "foo/bar" "baz/quux") => "foo/bar"))
    (test-case "path-simplify-directory"
      (check (path-simplify-directory "/opt/local/bin/../stow/foo/bin/bar.sh")
             => "/opt/local/stow/foo/bin/"))
    #; ;; These tests are flaky if some path exists but is non-canonical
    (begin
      (test-case "path-normalized-directory"
        (check (path-normalized-directory "/etc/password") => "/etc/")
        (check (path-normalized-directory "/etc") => "/"))
      (test-case "path-parent"
        (check (path-parent "/home/user") => "/home/")
        (check (path-parent "/home/user/") => "/home/")
        (check (path-parent "/etc/X11") => "/etc/")
        (check (path-parent "/etc/X11/") => "/etc/")
        (check (path-parent "does/not/exist/") => "does/not/")
        (check (path-parent "does/not/exist") => "does/not/")))
    (test-case "path-simplify"
      (check (path-simplify-directory "/foo/./..///.../../bar/../baz////")
             => "/baz/"))))
