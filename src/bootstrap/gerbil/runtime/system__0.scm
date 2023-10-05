(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1696542232)
  (begin
    (define gerbil-version-string (lambda () '"0.17.0-343-g2bef30f6"))
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
        (let ((_$e6420_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e6420_ _$e6420_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp8515 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp8515 '#\')))))))
