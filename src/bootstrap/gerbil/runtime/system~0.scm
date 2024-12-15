(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1734225192)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-141-gefd451c95"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95420%_)
        (if (list? _%new-value95420%_)
            (let ((_%new-value95424%_ _%new-value95420%_))
              (__build-manifest-set! _%new-value95424%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95420%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95407%_)
        (let ((_%new-value95411%_ _%new-value95407%_))
          (set! __build-manifest _%new-value95411%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95367%_ _%port95368%_)
        (if (list? _%manifest95367%_)
            (let ((_%manifest95372%_ _%manifest95367%_))
              (if (port? _%port95368%_)
                  (let ((_%port95382%_ _%port95368%_))
                    (__display-build-manifest__%
                     _%manifest95372%_
                     _%port95382%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95368%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95367%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95396%_ __build-manifest)
               (_%port95398%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95396%_ _%port95398%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95400%_)
        (let ((_%port95402%_ (current-output-port)))
          (display-build-manifest__% _%manifest95400%_ _%port95402%_))))
    (define display-build-manifest
      (lambda _g95436_
        (let ((_g95435_ (let () (declare (not safe)) (##length _g95436_))))
          (cond ((let () (declare (not safe)) (##fx= _g95435_ 0))
                 (apply display-build-manifest__0 _g95436_))
                ((let () (declare (not safe)) (##fx= _g95435_ 1))
                 (apply display-build-manifest__1 _g95436_))
                ((let () (declare (not safe)) (##fx= _g95435_ 2))
                 (apply display-build-manifest__% _g95436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95436_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95289%_ _%port95290%_)
        (let* ((_%manifest95293%_ _%manifest95289%_)
               (_%port95301%_ _%port95290%_))
          (let ((_%p95314%_
                 (lambda (_%g9530995311%_)
                   (display _%g9530995311%_ _%port95301%_)))
                (_%l95315%_
                 (let () (declare (not safe)) (##length _%manifest95293%_)))
                (_%i95316%_ '0))
            (let ((__tmp95437
                   (lambda (_%layer95318%_)
                     (if (zero? _%i95316%_)
                         '#!void
                         (if (= _%i95316%_ '1)
                             (_%p95314%_ '" on ")
                             (_%p95314%_ '", ")))
                     (let* ((_%layer9532295329%_ _%layer95318%_)
                            (_%E9532495333%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9532295329%_
                                      '([name . version]))
                               '#!void))
                            (_%K9532595339%_
                             (lambda (_%version95336%_ _%name95337%_)
                               (_%p95314%_ _%name95337%_)
                               (_%p95314%_ '" ")
                               (_%p95314%_ _%version95336%_))))
                       (if (pair? _%layer9532295329%_)
                           (let ((_%hd9532695342%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9532295329%_)))
                                 (_%tl9532795344%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9532295329%_))))
                             (let* ((_%name95347%_ _%hd9532695342%_)
                                    (_%version95349%_ _%tl9532795344%_))
                               (_%K9532595339%_
                                _%version95349%_
                                _%name95347%_)))
                           (_%E9532495333%_)))
                     (set! _%i95316%_ (+ _%i95316%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95437 _%manifest95293%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95355%_ __build-manifest)
               (_%port95357%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95355%_ _%port95357%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95359%_)
        (let ((_%port95361%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95359%_ _%port95361%_))))
    (define __display-build-manifest
      (lambda _g95439_
        (let ((_g95438_ (let () (declare (not safe)) (##length _g95439_))))
          (cond ((let () (declare (not safe)) (##fx= _g95438_ 0))
                 (apply __display-build-manifest__0 _g95439_))
                ((let () (declare (not safe)) (##fx= _g95438_ 1))
                 (apply __display-build-manifest__1 _g95439_))
                ((let () (declare (not safe)) (##fx= _g95438_ 2))
                 (apply __display-build-manifest__% _g95439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95439_))))))
    (define build-manifest/layer
      (lambda (_%layer95284%_)
        (let ((_%l95286%_ (assoc _%layer95284%_ __build-manifest)))
          (if _%l95286%_ (cons _%l95286%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95261%_)
        (if (list? _%manifest95261%_)
            (let ((_%manifest95265%_ _%manifest95261%_))
              (__build-manifest-string__% _%manifest95265%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95261%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95279%_ __build-manifest))
          (__build-manifest-string__% _%manifest95279%_))))
    (define build-manifest-string
      (lambda _g95441_
        (let ((_g95440_ (let () (declare (not safe)) (##length _g95441_))))
          (cond ((let () (declare (not safe)) (##fx= _g95440_ 0))
                 (apply build-manifest-string__0 _g95441_))
                ((let () (declare (not safe)) (##fx= _g95440_ 1))
                 (apply build-manifest-string__% _g95441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95441_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95238%_)
        (let ((_%manifest95241%_ _%manifest95238%_))
          (call-with-output-string
           '()
           (lambda (_%p95250%_)
             (display-build-manifest__% _%manifest95241%_ _%p95250%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95256%_ __build-manifest))
          (__build-manifest-string__% _%manifest95256%_))))
    (define __build-manifest-string
      (lambda _g95443_
        (let ((_g95442_ (let () (declare (not safe)) (##length _g95443_))))
          (cond ((let () (declare (not safe)) (##fx= _g95442_ 0))
                 (apply __build-manifest-string__0 _g95443_))
                ((let () (declare (not safe)) (##fx= _g95442_ 1))
                 (apply __build-manifest-string__% _g95443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95443_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95220%_)
        (if (string? _%new-value95220%_)
            (let ((_%new-value95224%_ _%new-value95220%_))
              (__gerbil-greeting-set! _%new-value95224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95220%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95206%_)
        (let ((_%new-value95210%_ _%new-value95206%_))
          (set! __gerbil-greeting _%new-value95210%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95202%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95202%_ _%$e95202%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95198%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95198%_ _%$e95198%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95444
                             (let ((__tmp95445 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95445 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95444))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
