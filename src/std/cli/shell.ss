;; Support for Unix shells
;; TODO: If Windows shell support is needed, add it here, too.

(export #t)

(import
  :std/srfi/13 :std/stxutil :std/text/char-set)

(def (easy-shell-character? x)
  (or (char-ascii-alphanumeric? x) (and (string-index "%+,-./:=@_" x) #t)))

(def (needs-shell-escape? token)
  ;; maybe also accept ^ and ~ in non-start position?
  (not (string-every easy-shell-character? token)))

(def (escape-shell-token token)
  (if (needs-shell-escape? token)
    (call-with-output-string []
     (lambda (port)
       (def (p x) (display x port))
       (p #\")
       (string-for-each
        (lambda (c) (when (string-index "$`\\\"" c) (p #\\)) (p c))
        token)
       (p #\")))
    token))

(def (escape-shell-tokens tokens)
  (string-join (map escape-shell-token tokens) " "))

(def (->envvar . args)
  (call-with-output-string
   (lambda (p)
     (def alpha? #t)
     (string-for-each
      (lambda (c)
        (def caa? (char-ascii-alphanumeric? c))
        (when caa?
          (unless alpha? (write-char #\_ p))
          (write-char c p))
        (set! alpha? caa?))
      (string-upcase (as-string args))))))
