(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1742237311)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-155-g9cef19187"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95457%_)
        (if (list? _%new-value95457%_)
            (let ((_%new-value95461%_ _%new-value95457%_))
              (__build-manifest-set! _%new-value95461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95457%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95444%_)
        (let ((_%new-value95448%_ _%new-value95444%_))
          (set! __build-manifest _%new-value95448%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95404%_ _%port95405%_)
        (if (list? _%manifest95404%_)
            (let ((_%manifest95409%_ _%manifest95404%_))
              (if (port? _%port95405%_)
                  (let ((_%port95419%_ _%port95405%_))
                    (__display-build-manifest__%
                     _%manifest95409%_
                     _%port95419%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95405%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95404%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95433%_ __build-manifest)
               (_%port95435%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95433%_ _%port95435%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95437%_)
        (let ((_%port95439%_ (current-output-port)))
          (display-build-manifest__% _%manifest95437%_ _%port95439%_))))
    (define display-build-manifest
      (lambda _g95473_
        (let ((_g95472_ (let () (declare (not safe)) (##length _g95473_))))
          (cond ((let () (declare (not safe)) (##fx= _g95472_ 0))
                 (apply display-build-manifest__0 _g95473_))
                ((let () (declare (not safe)) (##fx= _g95472_ 1))
                 (apply display-build-manifest__1 _g95473_))
                ((let () (declare (not safe)) (##fx= _g95472_ 2))
                 (apply display-build-manifest__% _g95473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95473_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95326%_ _%port95327%_)
        (let* ((_%manifest95330%_ _%manifest95326%_)
               (_%port95338%_ _%port95327%_))
          (let ((_%p95351%_
                 (lambda (_%g9534695348%_)
                   (display _%g9534695348%_ _%port95338%_)))
                (_%l95352%_
                 (let () (declare (not safe)) (##length _%manifest95330%_)))
                (_%i95353%_ '0))
            (let ((__tmp95474
                   (lambda (_%layer95355%_)
                     (if (zero? _%i95353%_)
                         '#!void
                         (if (= _%i95353%_ '1)
                             (_%p95351%_ '" on ")
                             (_%p95351%_ '", ")))
                     (let* ((_%layer9535995366%_ _%layer95355%_)
                            (_%E9536195370%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9535995366%_
                                      '([name . version]))
                               '#!void))
                            (_%K9536295376%_
                             (lambda (_%version95373%_ _%name95374%_)
                               (_%p95351%_ _%name95374%_)
                               (_%p95351%_ '" ")
                               (_%p95351%_ _%version95373%_))))
                       (if (pair? _%layer9535995366%_)
                           (let ((_%hd9536395379%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9535995366%_)))
                                 (_%tl9536495381%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9535995366%_))))
                             (let* ((_%name95384%_ _%hd9536395379%_)
                                    (_%version95386%_ _%tl9536495381%_))
                               (_%K9536295376%_
                                _%version95386%_
                                _%name95384%_)))
                           (_%E9536195370%_)))
                     (set! _%i95353%_ (+ _%i95353%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95474 _%manifest95330%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95392%_ __build-manifest)
               (_%port95394%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95392%_ _%port95394%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95396%_)
        (let ((_%port95398%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95396%_ _%port95398%_))))
    (define __display-build-manifest
      (lambda _g95476_
        (let ((_g95475_ (let () (declare (not safe)) (##length _g95476_))))
          (cond ((let () (declare (not safe)) (##fx= _g95475_ 0))
                 (apply __display-build-manifest__0 _g95476_))
                ((let () (declare (not safe)) (##fx= _g95475_ 1))
                 (apply __display-build-manifest__1 _g95476_))
                ((let () (declare (not safe)) (##fx= _g95475_ 2))
                 (apply __display-build-manifest__% _g95476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95476_))))))
    (define build-manifest/layer
      (lambda (_%layer95321%_)
        (let ((_%l95323%_ (assoc _%layer95321%_ __build-manifest)))
          (if _%l95323%_ (cons _%l95323%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95298%_)
        (if (list? _%manifest95298%_)
            (let ((_%manifest95302%_ _%manifest95298%_))
              (__build-manifest-string__% _%manifest95302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95298%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95316%_ __build-manifest))
          (__build-manifest-string__% _%manifest95316%_))))
    (define build-manifest-string
      (lambda _g95478_
        (let ((_g95477_ (let () (declare (not safe)) (##length _g95478_))))
          (cond ((let () (declare (not safe)) (##fx= _g95477_ 0))
                 (apply build-manifest-string__0 _g95478_))
                ((let () (declare (not safe)) (##fx= _g95477_ 1))
                 (apply build-manifest-string__% _g95478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95478_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95275%_)
        (let ((_%manifest95278%_ _%manifest95275%_))
          (call-with-output-string
           '()
           (lambda (_%p95287%_)
             (display-build-manifest__% _%manifest95278%_ _%p95287%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95293%_ __build-manifest))
          (__build-manifest-string__% _%manifest95293%_))))
    (define __build-manifest-string
      (lambda _g95480_
        (let ((_g95479_ (let () (declare (not safe)) (##length _g95480_))))
          (cond ((let () (declare (not safe)) (##fx= _g95479_ 0))
                 (apply __build-manifest-string__0 _g95480_))
                ((let () (declare (not safe)) (##fx= _g95479_ 1))
                 (apply __build-manifest-string__% _g95480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95480_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95257%_)
        (if (string? _%new-value95257%_)
            (let ((_%new-value95261%_ _%new-value95257%_))
              (__gerbil-greeting-set! _%new-value95261%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95257%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95243%_)
        (let ((_%new-value95247%_ _%new-value95243%_))
          (set! __gerbil-greeting _%new-value95247%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95239%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95239%_ _%$e95239%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95235%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95235%_ _%$e95235%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95481
                             (let ((__tmp95482 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95482 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95481))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
