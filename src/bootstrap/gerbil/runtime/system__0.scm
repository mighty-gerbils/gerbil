(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1695292370)
  (begin
    (define gerbil-version-string (lambda () '"0.17.0-275-g687a8b69"))
    (define gerbil-system-version-string
      (lambda ()
        (string-append
         '"Gerbil "
         (let () (declare (not safe)) (gerbil-version-string))
         '" on Gambit "
         (let () (declare (not safe)) (system-version-string)))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-greeting
      (let () (declare (not safe)) (gerbil-system-version-string)))
    (set! gerbil-greeting gerbil-greeting)
    (define gerbil-home
      (lambda ()
        (let ((__tmp7899 (let () (declare (not safe)) (path-expand '"~~"))))
          (declare (not safe))
          (getenv '"GERBIL_HOME" __tmp7899))))
    (define gerbil-runtime-smp?
      (lambda ()
        (let ((__tmp7900
               (let ((__tmp7901
                      (let ()
                        (declare (not safe))
                        (configure-command-string))))
                 (declare (not safe))
                 (string-split __tmp7901 '#\'))))
          (declare (not safe))
          (member '"--enable-smp" __tmp7900))))))
