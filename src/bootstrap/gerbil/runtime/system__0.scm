(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1695206877)
  (begin
    (define gerbil-version-string (lambda () '"0.17.0-264-g8e4f54c8"))
    (define gerbil-system-version-string
      (lambda ()
        (string-append
         '"Gerbil "
         (gerbil-version-string)
         '" on Gambit "
         (system-version-string))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-greeting (gerbil-system-version-string))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-home
      (lambda () (getenv '"GERBIL_HOME" (path-expand '"~~"))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (string-split (configure-command-string) '#\'))))))
