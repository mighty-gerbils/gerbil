(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1695377590)
  (begin
    (define gerbil-version-string (lambda () '"0.17.0-281-g7dacb159"))
    (define gerbil-system-version-string
      (lambda ()
        (string-append
         '"Gerbil "
         (let () (declare (not safe)) (gerbil-version-string))
         '" on Gambit "
         (system-version-string))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-home
      (lambda () (getenv '"GERBIL_HOME" (path-expand '"~~"))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8499 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8499 '#\')))))))
