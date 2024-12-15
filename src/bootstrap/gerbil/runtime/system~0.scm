(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1734278443)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-142-g06d5b4ffd"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95416%_)
        (if (list? _%new-value95416%_)
            (let ((_%new-value95420%_ _%new-value95416%_))
              (__build-manifest-set! _%new-value95420%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95416%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95403%_)
        (let ((_%new-value95407%_ _%new-value95403%_))
          (set! __build-manifest _%new-value95407%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95363%_ _%port95364%_)
        (if (list? _%manifest95363%_)
            (let ((_%manifest95368%_ _%manifest95363%_))
              (if (port? _%port95364%_)
                  (let ((_%port95378%_ _%port95364%_))
                    (__display-build-manifest__%
                     _%manifest95368%_
                     _%port95378%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95364%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95363%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95392%_ __build-manifest)
               (_%port95394%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95392%_ _%port95394%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95396%_)
        (let ((_%port95398%_ (current-output-port)))
          (display-build-manifest__% _%manifest95396%_ _%port95398%_))))
    (define display-build-manifest
      (lambda _g95432_
        (let ((_g95431_ (let () (declare (not safe)) (##length _g95432_))))
          (cond ((let () (declare (not safe)) (##fx= _g95431_ 0))
                 (apply display-build-manifest__0 _g95432_))
                ((let () (declare (not safe)) (##fx= _g95431_ 1))
                 (apply display-build-manifest__1 _g95432_))
                ((let () (declare (not safe)) (##fx= _g95431_ 2))
                 (apply display-build-manifest__% _g95432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95432_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95285%_ _%port95286%_)
        (let* ((_%manifest95289%_ _%manifest95285%_)
               (_%port95297%_ _%port95286%_))
          (let ((_%p95310%_
                 (lambda (_%g9530595307%_)
                   (display _%g9530595307%_ _%port95297%_)))
                (_%l95311%_
                 (let () (declare (not safe)) (##length _%manifest95289%_)))
                (_%i95312%_ '0))
            (let ((__tmp95433
                   (lambda (_%layer95314%_)
                     (if (zero? _%i95312%_)
                         '#!void
                         (if (= _%i95312%_ '1)
                             (_%p95310%_ '" on ")
                             (_%p95310%_ '", ")))
                     (let* ((_%layer9531895325%_ _%layer95314%_)
                            (_%E9532095329%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9531895325%_
                                      '([name . version]))
                               '#!void))
                            (_%K9532195335%_
                             (lambda (_%version95332%_ _%name95333%_)
                               (_%p95310%_ _%name95333%_)
                               (_%p95310%_ '" ")
                               (_%p95310%_ _%version95332%_))))
                       (if (pair? _%layer9531895325%_)
                           (let ((_%hd9532295338%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9531895325%_)))
                                 (_%tl9532395340%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9531895325%_))))
                             (let* ((_%name95343%_ _%hd9532295338%_)
                                    (_%version95345%_ _%tl9532395340%_))
                               (_%K9532195335%_
                                _%version95345%_
                                _%name95343%_)))
                           (_%E9532095329%_)))
                     (set! _%i95312%_ (+ _%i95312%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95433 _%manifest95289%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95351%_ __build-manifest)
               (_%port95353%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95351%_ _%port95353%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95355%_)
        (let ((_%port95357%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95355%_ _%port95357%_))))
    (define __display-build-manifest
      (lambda _g95435_
        (let ((_g95434_ (let () (declare (not safe)) (##length _g95435_))))
          (cond ((let () (declare (not safe)) (##fx= _g95434_ 0))
                 (apply __display-build-manifest__0 _g95435_))
                ((let () (declare (not safe)) (##fx= _g95434_ 1))
                 (apply __display-build-manifest__1 _g95435_))
                ((let () (declare (not safe)) (##fx= _g95434_ 2))
                 (apply __display-build-manifest__% _g95435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95435_))))))
    (define build-manifest/layer
      (lambda (_%layer95280%_)
        (let ((_%l95282%_ (assoc _%layer95280%_ __build-manifest)))
          (if _%l95282%_ (cons _%l95282%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95257%_)
        (if (list? _%manifest95257%_)
            (let ((_%manifest95261%_ _%manifest95257%_))
              (__build-manifest-string__% _%manifest95261%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95257%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95275%_ __build-manifest))
          (__build-manifest-string__% _%manifest95275%_))))
    (define build-manifest-string
      (lambda _g95437_
        (let ((_g95436_ (let () (declare (not safe)) (##length _g95437_))))
          (cond ((let () (declare (not safe)) (##fx= _g95436_ 0))
                 (apply build-manifest-string__0 _g95437_))
                ((let () (declare (not safe)) (##fx= _g95436_ 1))
                 (apply build-manifest-string__% _g95437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95437_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95234%_)
        (let ((_%manifest95237%_ _%manifest95234%_))
          (call-with-output-string
           '()
           (lambda (_%p95246%_)
             (display-build-manifest__% _%manifest95237%_ _%p95246%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95252%_ __build-manifest))
          (__build-manifest-string__% _%manifest95252%_))))
    (define __build-manifest-string
      (lambda _g95439_
        (let ((_g95438_ (let () (declare (not safe)) (##length _g95439_))))
          (cond ((let () (declare (not safe)) (##fx= _g95438_ 0))
                 (apply __build-manifest-string__0 _g95439_))
                ((let () (declare (not safe)) (##fx= _g95438_ 1))
                 (apply __build-manifest-string__% _g95439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95439_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95216%_)
        (if (string? _%new-value95216%_)
            (let ((_%new-value95220%_ _%new-value95216%_))
              (__gerbil-greeting-set! _%new-value95220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95216%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95202%_)
        (let ((_%new-value95206%_ _%new-value95202%_))
          (set! __gerbil-greeting _%new-value95206%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95198%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95198%_ _%$e95198%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95194%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95194%_ _%$e95194%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95440
                             (let ((__tmp95441 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95441 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95440))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
