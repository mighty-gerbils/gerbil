(export path-test)

(import
  :std/string/path
  :std/test)

(def path-test
  (test-suite "test :std/misc/path"
    (test-case "path-default-extension"
      (check-function path-default-extension
        "foo.ss" ".o" => "foo.ss"
        "foo" ".o" => "foo.o"
        "foo.ss" #f => "foo.ss"))
    (test-case "path-force-extension"
      (check-function path-force-extension
        "foo.ss" ".o" => "foo.o"
        "foo" ".o" => "foo.o"
        "foo.ss" #f => "foo.ss"
        "foo.ss" "" => "foo"))
    (test-case "path-force-extension"
      (check-function path-extension-is?
        "foo.ss" ".ss" => #t
        "foo" "" => #t
        "foo.c" "" => #f ;; Nope, extension is ".c"
        ".foo" ".foo" => #f ;; Nope, initial "." doesn't count.
        "foo.b.c" ".b.c" => #f ;; Nope, the extension is just ".c"
        "foo.ss" "" => #f))
    (test-case "subpath"
      (check-function subpath
        "foo" "bar" "baz/quux" "myfile.ext" => "foo/bar/baz/quux/myfile.ext"
        "/home/user" ".gerbil" "lib" "static" => "/home/user/.gerbil/lib/static"))
    (test-case "subpath?"
      (check-function subpath?
       "/foo" "/bar" => #f
       "/home/user/.gerbil/lib" "/home/user" => ".gerbil/lib"
       "foo/bar/baz/quux" "foo/bar" => "baz/quux"
       "/foo/bar" "/foo" => "bar"
       "/foo" "/foo/bar" => #f

       ;; Simple cases
       "foo/bar"         "foo"             => "bar"
       "foo/bar/baz"     "foo"             => "bar/baz"
       "foo/bar/baz"     "foo/bar"         => "baz"

       ;; Slashes at the boundary don't matter, empty return case
       "foo"             "foo"             => ""
       "foo/"            "foo"             => ""
       "foo"             "foo/"            => ""
       "foo////"         "foo//"           => ""
       "foo////"         "foo////"         => ""

       ;; Boundary slashes are consumed.
       "foo//bar"        "foo"             => "bar"
       "foo////bar"      "foo"             => "bar"
       "foo////bar"      "foo/"            => "bar"
       "foo////bar"      "foo////"         => "bar"
       "foo/bar"         "foo/"            => "bar"
       "foo/bar"         "foo////"         => "bar"

       ;; Separator counts may differ inside the matched base prefix and up to the boundary
       "foo//bar"        "foo/bar"         => ""
       "foo/bar"         "foo//bar"        => ""
       "foo//bar/baz"    "foo/bar"         => "baz"
       "foo/bar/baz"     "foo//bar"        => "baz"
       "foo///bar/baz"   "foo/bar"         => "baz"
       "foo/bar/baz"     "foo///bar"       => "baz"
       "foo/bar//baz"    "foo//bar"        => "baz"
       "foo//bar/baz"    "foo/bar"         => "baz"
       "foo//bar//baz"   "foo//bar"        => "baz"
       "foo////bar//baz" "foo//bar"        => "baz"
       "foo/bar//baz"    "foo/bar"         => "baz"

       ;; But separators inside the returned suffix are preserved.
       "foo/bar//baz"    "foo"             => "bar//baz"
       "foo/bar///baz"   "foo"             => "bar///baz"
       "foo//bar//baz"   "foo"             => "bar//baz"
       "foo//bar//baz"   "foo//bar"        => "baz"

       ;; Prefix is not enough: must stop at a component boundary.
       "foobar"          "foo"             => #f
       "foo-bar"         "foo"             => #f
       "foo.bar"         "foo"             => #f
       "foo_bar"         "foo"             => #f
       "foo"             "foobar"          => #f
       "foo"             "foo/bar"         => #f
       "foo/bar"         "foo/bar/baz"     => #f
       "foo/bar"         "foo/baz"         => #f
       "foo/baz"         "foo/bar"         => #f

       ;; Empty relative path policy. If "" should not be a valid base, change
       ;; these expectations and the implementation together.
       ""                ""                => ""
       "foo"             ""                => "foo"
       "foo/bar"         ""                => "foo/bar"
       ""                "foo"             => #f

       ;; Absolute paths.
       "/"               "/"               => ""
       "////"            "/"               => ""
       "/"               "////"            => ""
       "/foo"            "/"               => "foo"
       "/foo/bar"        "/"               => "foo/bar"
       "/foo/bar"        "/foo"            => "bar"
       "/foo/bar/baz"    "/foo/bar"        => "baz"

       ;; Absolute paths with inconsistent separator counts.
       "//foo"           "/"               => "foo"
       "////foo"         "/"               => "foo"
       "/foo//bar"       "/foo"            => "bar"
       "/foo////bar"     "/foo/"           => "bar"
       "/foo//bar"       "/foo/bar"        => ""
       "/foo/bar"        "/foo//bar"       => ""
       "/foo//bar/baz"   "/foo/bar"        => "baz"
       "/foo/bar/baz"    "/foo//bar"       => "baz"
       "/foo/bar//baz"   "/foo"            => "bar//baz"

       ;; Absolute prefix failures.
       "/foobar"         "/foo"            => #f
       "/foo-bar"        "/foo"            => #f
       "/foo"            "/foobar"         => #f
       "/foo"            "/foo/bar"        => #f
       "/foo/bar"        "/foo/baz"        => #f

       ;; Absolute/relative mismatch.
       "/foo"            "foo"             => #f
       "foo"             "/foo"            => #f
       "/foo/bar"        "foo"             => #f
       "foo/bar"         "/foo"            => #f
       "/"               ""                => #f
       ""                "/"               => #f

       ;; Dot is not canonicalized away.
       "foo/./bar"       "foo"             => "./bar"
       "/foo/./bar"      "/foo"            => "./bar"

       ;; Dot-dot is dangerous: these succeed lexically, but are not safe
       ;; containment checks after pathname normalization.
       "foo/../bar"              "foo"     => "../bar"
       "foo/sub/../../bar"       "foo"     => "sub/../../bar"
       "/safe/../etc/passwd"     "/safe"   => "../etc/passwd"
       "/safe/sub/../../etc"     "/safe"   => "sub/../../etc"))
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
