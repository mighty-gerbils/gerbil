(export
  path-default-extension
  path-force-extension)

(def (path-default-extension path ext)
  (if (and ext (string-empty? (path-extension path)))
    (string-append path ext)
    path))

(def (path-force-extension path ext)
  (if ext
    (string-append (path-strip-extension path) ext)
    path))
