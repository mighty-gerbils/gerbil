(import ./build-config ./make)

(include "build-spec.ss")

(def (build srcdir libdir)
  (make build-spec
    srcdir: srcdir libdir: libdir optimize: #t
    static: #t debug: 'src prefix: "std"))
