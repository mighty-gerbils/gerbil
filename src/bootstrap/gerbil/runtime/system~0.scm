(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1742222162)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-148-g620dec614"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95438%_)
        (if (list? _%new-value95438%_)
            (let ((_%new-value95442%_ _%new-value95438%_))
              (__build-manifest-set! _%new-value95442%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95438%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95425%_)
        (let ((_%new-value95429%_ _%new-value95425%_))
          (set! __build-manifest _%new-value95429%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95385%_ _%port95386%_)
        (if (list? _%manifest95385%_)
            (let ((_%manifest95390%_ _%manifest95385%_))
              (if (port? _%port95386%_)
                  (let ((_%port95400%_ _%port95386%_))
                    (__display-build-manifest__%
                     _%manifest95390%_
                     _%port95400%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95386%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95385%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95414%_ __build-manifest)
               (_%port95416%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95414%_ _%port95416%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95418%_)
        (let ((_%port95420%_ (current-output-port)))
          (display-build-manifest__% _%manifest95418%_ _%port95420%_))))
    (define display-build-manifest
      (lambda _g95454_
        (let ((_g95453_ (let () (declare (not safe)) (##length _g95454_))))
          (cond ((let () (declare (not safe)) (##fx= _g95453_ 0))
                 (apply display-build-manifest__0 _g95454_))
                ((let () (declare (not safe)) (##fx= _g95453_ 1))
                 (apply display-build-manifest__1 _g95454_))
                ((let () (declare (not safe)) (##fx= _g95453_ 2))
                 (apply display-build-manifest__% _g95454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95454_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95307%_ _%port95308%_)
        (let* ((_%manifest95311%_ _%manifest95307%_)
               (_%port95319%_ _%port95308%_))
          (let ((_%p95332%_
                 (lambda (_%g9532795329%_)
                   (display _%g9532795329%_ _%port95319%_)))
                (_%l95333%_
                 (let () (declare (not safe)) (##length _%manifest95311%_)))
                (_%i95334%_ '0))
            (let ((__tmp95455
                   (lambda (_%layer95336%_)
                     (if (zero? _%i95334%_)
                         '#!void
                         (if (= _%i95334%_ '1)
                             (_%p95332%_ '" on ")
                             (_%p95332%_ '", ")))
                     (let* ((_%layer9534095347%_ _%layer95336%_)
                            (_%E9534295351%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9534095347%_
                                      '([name . version]))
                               '#!void))
                            (_%K9534395357%_
                             (lambda (_%version95354%_ _%name95355%_)
                               (_%p95332%_ _%name95355%_)
                               (_%p95332%_ '" ")
                               (_%p95332%_ _%version95354%_))))
                       (if (pair? _%layer9534095347%_)
                           (let ((_%hd9534495360%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9534095347%_)))
                                 (_%tl9534595362%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9534095347%_))))
                             (let* ((_%name95365%_ _%hd9534495360%_)
                                    (_%version95367%_ _%tl9534595362%_))
                               (_%K9534395357%_
                                _%version95367%_
                                _%name95365%_)))
                           (_%E9534295351%_)))
                     (set! _%i95334%_ (+ _%i95334%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95455 _%manifest95311%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95373%_ __build-manifest)
               (_%port95375%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95373%_ _%port95375%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95377%_)
        (let ((_%port95379%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95377%_ _%port95379%_))))
    (define __display-build-manifest
      (lambda _g95457_
        (let ((_g95456_ (let () (declare (not safe)) (##length _g95457_))))
          (cond ((let () (declare (not safe)) (##fx= _g95456_ 0))
                 (apply __display-build-manifest__0 _g95457_))
                ((let () (declare (not safe)) (##fx= _g95456_ 1))
                 (apply __display-build-manifest__1 _g95457_))
                ((let () (declare (not safe)) (##fx= _g95456_ 2))
                 (apply __display-build-manifest__% _g95457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95457_))))))
    (define build-manifest/layer
      (lambda (_%layer95302%_)
        (let ((_%l95304%_ (assoc _%layer95302%_ __build-manifest)))
          (if _%l95304%_ (cons _%l95304%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95279%_)
        (if (list? _%manifest95279%_)
            (let ((_%manifest95283%_ _%manifest95279%_))
              (__build-manifest-string__% _%manifest95283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95279%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95297%_ __build-manifest))
          (__build-manifest-string__% _%manifest95297%_))))
    (define build-manifest-string
      (lambda _g95459_
        (let ((_g95458_ (let () (declare (not safe)) (##length _g95459_))))
          (cond ((let () (declare (not safe)) (##fx= _g95458_ 0))
                 (apply build-manifest-string__0 _g95459_))
                ((let () (declare (not safe)) (##fx= _g95458_ 1))
                 (apply build-manifest-string__% _g95459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95459_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95256%_)
        (let ((_%manifest95259%_ _%manifest95256%_))
          (call-with-output-string
           '()
           (lambda (_%p95268%_)
             (display-build-manifest__% _%manifest95259%_ _%p95268%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95274%_ __build-manifest))
          (__build-manifest-string__% _%manifest95274%_))))
    (define __build-manifest-string
      (lambda _g95461_
        (let ((_g95460_ (let () (declare (not safe)) (##length _g95461_))))
          (cond ((let () (declare (not safe)) (##fx= _g95460_ 0))
                 (apply __build-manifest-string__0 _g95461_))
                ((let () (declare (not safe)) (##fx= _g95460_ 1))
                 (apply __build-manifest-string__% _g95461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95461_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95238%_)
        (if (string? _%new-value95238%_)
            (let ((_%new-value95242%_ _%new-value95238%_))
              (__gerbil-greeting-set! _%new-value95242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95238%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95224%_)
        (let ((_%new-value95228%_ _%new-value95224%_))
          (set! __gerbil-greeting _%new-value95228%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95220%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95220%_ _%$e95220%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95216%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95216%_ _%$e95216%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95462
                             (let ((__tmp95463 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95463 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95462))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
