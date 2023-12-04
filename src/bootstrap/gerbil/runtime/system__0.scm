(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1701718632)
  (begin
    (define gerbil-version-string (lambda () '"v0.18-43-g9dc17ae7"))
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
        (let ((_$e6807_ (getenv '"GERBIL_PATH" '#f)))
          (if _$e6807_ _$e6807_ (path-expand '"~/.gerbil")))))
    (define gerbil-runtime-smp?
      (lambda ()
        (member '"--enable-smp"
                (let ((__tmp6813 (configure-command-string)))
                  (declare (not safe))
                  (string-split __tmp6813 '#\')))))))
