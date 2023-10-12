(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1697117311)
  (begin
    (define gerbil-version-string (lambda () '"v0.18-rc1-10-g630d6fc3"))
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
    (define gerbil-path
      (lambda ()
        (let ((_$e6464_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e6464_ _$e6464_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8559 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8559 '#\')))))))
