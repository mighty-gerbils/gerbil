(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1734357960)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-149-g3e12631ff"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95509%_)
        (if (list? _%new-value95509%_)
            (let ((_%new-value95513%_ _%new-value95509%_))
              (__build-manifest-set! _%new-value95513%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95509%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95496%_)
        (let ((_%new-value95500%_ _%new-value95496%_))
          (set! __build-manifest _%new-value95500%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95456%_ _%port95457%_)
        (if (list? _%manifest95456%_)
            (let ((_%manifest95461%_ _%manifest95456%_))
              (if (port? _%port95457%_)
                  (let ((_%port95471%_ _%port95457%_))
                    (__display-build-manifest__%
                     _%manifest95461%_
                     _%port95471%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95457%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95456%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95485%_ __build-manifest)
               (_%port95487%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95485%_ _%port95487%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95489%_)
        (let ((_%port95491%_ (current-output-port)))
          (display-build-manifest__% _%manifest95489%_ _%port95491%_))))
    (define display-build-manifest
      (lambda _g95525_
        (let ((_g95524_ (let () (declare (not safe)) (##length _g95525_))))
          (cond ((let () (declare (not safe)) (##fx= _g95524_ 0))
                 (apply display-build-manifest__0 _g95525_))
                ((let () (declare (not safe)) (##fx= _g95524_ 1))
                 (apply display-build-manifest__1 _g95525_))
                ((let () (declare (not safe)) (##fx= _g95524_ 2))
                 (apply display-build-manifest__% _g95525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95525_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95378%_ _%port95379%_)
        (let* ((_%manifest95382%_ _%manifest95378%_)
               (_%port95390%_ _%port95379%_))
          (let ((_%p95403%_
                 (lambda (_%g9539895400%_)
                   (display _%g9539895400%_ _%port95390%_)))
                (_%l95404%_
                 (let () (declare (not safe)) (##length _%manifest95382%_)))
                (_%i95405%_ '0))
            (let ((__tmp95526
                   (lambda (_%layer95407%_)
                     (if (zero? _%i95405%_)
                         '#!void
                         (if (= _%i95405%_ '1)
                             (_%p95403%_ '" on ")
                             (_%p95403%_ '", ")))
                     (let* ((_%layer9541195418%_ _%layer95407%_)
                            (_%E9541395422%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9541195418%_
                                      '([name . version]))
                               '#!void))
                            (_%K9541495428%_
                             (lambda (_%version95425%_ _%name95426%_)
                               (_%p95403%_ _%name95426%_)
                               (_%p95403%_ '" ")
                               (_%p95403%_ _%version95425%_))))
                       (if (pair? _%layer9541195418%_)
                           (let ((_%hd9541595431%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9541195418%_)))
                                 (_%tl9541695433%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9541195418%_))))
                             (let* ((_%name95436%_ _%hd9541595431%_)
                                    (_%version95438%_ _%tl9541695433%_))
                               (_%K9541495428%_
                                _%version95438%_
                                _%name95436%_)))
                           (_%E9541395422%_)))
                     (set! _%i95405%_ (+ _%i95405%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95526 _%manifest95382%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95444%_ __build-manifest)
               (_%port95446%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95444%_ _%port95446%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95448%_)
        (let ((_%port95450%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95448%_ _%port95450%_))))
    (define __display-build-manifest
      (lambda _g95528_
        (let ((_g95527_ (let () (declare (not safe)) (##length _g95528_))))
          (cond ((let () (declare (not safe)) (##fx= _g95527_ 0))
                 (apply __display-build-manifest__0 _g95528_))
                ((let () (declare (not safe)) (##fx= _g95527_ 1))
                 (apply __display-build-manifest__1 _g95528_))
                ((let () (declare (not safe)) (##fx= _g95527_ 2))
                 (apply __display-build-manifest__% _g95528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95528_))))))
    (define build-manifest/layer
      (lambda (_%layer95373%_)
        (let ((_%l95375%_ (assoc _%layer95373%_ __build-manifest)))
          (if _%l95375%_ (cons _%l95375%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95350%_)
        (if (list? _%manifest95350%_)
            (let ((_%manifest95354%_ _%manifest95350%_))
              (__build-manifest-string__% _%manifest95354%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95350%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95368%_ __build-manifest))
          (__build-manifest-string__% _%manifest95368%_))))
    (define build-manifest-string
      (lambda _g95530_
        (let ((_g95529_ (let () (declare (not safe)) (##length _g95530_))))
          (cond ((let () (declare (not safe)) (##fx= _g95529_ 0))
                 (apply build-manifest-string__0 _g95530_))
                ((let () (declare (not safe)) (##fx= _g95529_ 1))
                 (apply build-manifest-string__% _g95530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95530_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95327%_)
        (let ((_%manifest95330%_ _%manifest95327%_))
          (call-with-output-string
           '()
           (lambda (_%p95339%_)
             (display-build-manifest__% _%manifest95330%_ _%p95339%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95345%_ __build-manifest))
          (__build-manifest-string__% _%manifest95345%_))))
    (define __build-manifest-string
      (lambda _g95532_
        (let ((_g95531_ (let () (declare (not safe)) (##length _g95532_))))
          (cond ((let () (declare (not safe)) (##fx= _g95531_ 0))
                 (apply __build-manifest-string__0 _g95532_))
                ((let () (declare (not safe)) (##fx= _g95531_ 1))
                 (apply __build-manifest-string__% _g95532_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95532_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95309%_)
        (if (string? _%new-value95309%_)
            (let ((_%new-value95313%_ _%new-value95309%_))
              (__gerbil-greeting-set! _%new-value95313%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95309%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95295%_)
        (let ((_%new-value95299%_ _%new-value95295%_))
          (set! __gerbil-greeting _%new-value95299%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95291%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95291%_ _%$e95291%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95287%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95287%_ _%$e95287%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95533
                             (let ((__tmp95534 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95534 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95533))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
