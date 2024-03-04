(import :std/mime/struct :std/srfi/13)
(export #t (import: :std/mime/struct))

(def list-mime-types (cut hash->list mime-types))
(def list-mime-exensions (cut hash->list mime-extensions))

(def (get-mime-type name) (hash-get mime-types name))
(def (extension->mime-type ext) (hash-get mime-extensions ext))

(def (path-extension->mime-type-name path)
  (alet (ext (path-extension path))
    (let (ext (substring ext 1 (string-length ext)))
      (alet (mt (extension->mime-type ext))
        (&mime-type-name mt)))))

(define-mime-types
  "./mime.types"
  ("text/x-scheme"		"scm" "sps" "sls" "sld")
  ("text/x-scheme.gerbil"	"ss")
  ("application/vnd.ms-outlook"	"msg"))
