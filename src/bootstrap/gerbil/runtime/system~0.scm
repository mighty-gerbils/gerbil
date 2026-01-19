(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1768863410)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-210-g50a8325b7"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value104379%_)
        (if (list? _%new-value104379%_)
            (let ((_%new-value104383%_ _%new-value104379%_))
              (__build-manifest-set! _%new-value104383%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value104379%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value104366%_)
        (let ((_%new-value104370%_ _%new-value104366%_))
          (set! __build-manifest _%new-value104370%_))))
    (define display-build-manifest__%
      (lambda (_%manifest104326%_ _%port104327%_)
        (if (list? _%manifest104326%_)
            (let ((_%manifest104331%_ _%manifest104326%_))
              (if (port? _%port104327%_)
                  (let ((_%port104341%_ _%port104327%_))
                    (__display-build-manifest__%
                     _%manifest104331%_
                     _%port104341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port104327%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest104326%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104355%_ __build-manifest)
               (_%port104357%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104355%_ _%port104357%_))))
    (define display-build-manifest__1
      (lambda (_%manifest104359%_)
        (let ((_%port104361%_ (current-output-port)))
          (display-build-manifest__% _%manifest104359%_ _%port104361%_))))
    (define display-build-manifest
      (lambda _g104394_
        (let ((_g104395_ (let () (declare (not safe)) (##length _g104394_))))
          (cond ((let () (declare (not safe)) (##fx= _g104395_ 0))
                 (apply display-build-manifest__0 _g104394_))
                ((let () (declare (not safe)) (##fx= _g104395_ 1))
                 (apply display-build-manifest__1 _g104394_))
                ((let () (declare (not safe)) (##fx= _g104395_ 2))
                 (apply display-build-manifest__% _g104394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g104394_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest104248%_ _%port104249%_)
        (let* ((_%manifest104252%_ _%manifest104248%_)
               (_%port104260%_ _%port104249%_))
          (let ((_%p104273%_
                 (lambda (_%g104268104270%_)
                   (display _%g104268104270%_ _%port104260%_)))
                (_%l104274%_
                 (let () (declare (not safe)) (##length _%manifest104252%_)))
                (_%i104275%_ '0))
            (let ((__tmp104396
                   (lambda (_%layer104277%_)
                     (if (zero? _%i104275%_)
                         '#!void
                         (if (= _%i104275%_ '1)
                             (_%p104273%_ '" on ")
                             (_%p104273%_ '", ")))
                     (let* ((_%layer104281104288%_ _%layer104277%_)
                            (_%E104283104292%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer104281104288%_
                                      '([name . version]))
                               '#!void))
                            (_%K104284104298%_
                             (lambda (_%version104295%_ _%name104296%_)
                               (_%p104273%_ _%name104296%_)
                               (_%p104273%_ '" ")
                               (_%p104273%_ _%version104295%_))))
                       (if (pair? _%layer104281104288%_)
                           (let ((_%hd104285104301%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer104281104288%_)))
                                 (_%tl104286104303%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer104281104288%_))))
                             (let* ((_%name104306%_ _%hd104285104301%_)
                                    (_%version104308%_ _%tl104286104303%_))
                               (_%K104284104298%_
                                _%version104308%_
                                _%name104306%_)))
                           (_%E104283104292%_)))
                     (set! _%i104275%_ (+ _%i104275%_ '1)))))
              (declare (not safe))
              (##for-each __tmp104396 _%manifest104252%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104314%_ __build-manifest)
               (_%port104316%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104314%_ _%port104316%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest104318%_)
        (let ((_%port104320%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104318%_ _%port104320%_))))
    (define __display-build-manifest
      (lambda _g104397_
        (let ((_g104398_ (let () (declare (not safe)) (##length _g104397_))))
          (cond ((let () (declare (not safe)) (##fx= _g104398_ 0))
                 (apply __display-build-manifest__0 _g104397_))
                ((let () (declare (not safe)) (##fx= _g104398_ 1))
                 (apply __display-build-manifest__1 _g104397_))
                ((let () (declare (not safe)) (##fx= _g104398_ 2))
                 (apply __display-build-manifest__% _g104397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g104397_))))))
    (define build-manifest/layer
      (lambda (_%layer104243%_)
        (let ((_%l104245%_ (assoc _%layer104243%_ __build-manifest)))
          (if _%l104245%_ (cons _%l104245%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest104220%_)
        (if (list? _%manifest104220%_)
            (let ((_%manifest104224%_ _%manifest104220%_))
              (__build-manifest-string__% _%manifest104224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest104220%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest104238%_ __build-manifest))
          (__build-manifest-string__% _%manifest104238%_))))
    (define build-manifest-string
      (lambda _g104399_
        (let ((_g104400_ (let () (declare (not safe)) (##length _g104399_))))
          (cond ((let () (declare (not safe)) (##fx= _g104400_ 0))
                 (apply build-manifest-string__0 _g104399_))
                ((let () (declare (not safe)) (##fx= _g104400_ 1))
                 (apply build-manifest-string__% _g104399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g104399_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest104197%_)
        (let ((_%manifest104200%_ _%manifest104197%_))
          (call-with-output-string
           '()
           (lambda (_%p104209%_)
             (display-build-manifest__% _%manifest104200%_ _%p104209%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest104215%_ __build-manifest))
          (__build-manifest-string__% _%manifest104215%_))))
    (define __build-manifest-string
      (lambda _g104401_
        (let ((_g104402_ (let () (declare (not safe)) (##length _g104401_))))
          (cond ((let () (declare (not safe)) (##fx= _g104402_ 0))
                 (apply __build-manifest-string__0 _g104401_))
                ((let () (declare (not safe)) (##fx= _g104402_ 1))
                 (apply __build-manifest-string__% _g104401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g104401_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value104179%_)
        (if (string? _%new-value104179%_)
            (let ((_%new-value104183%_ _%new-value104179%_))
              (__gerbil-greeting-set! _%new-value104183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value104179%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value104165%_)
        (let ((_%new-value104169%_ _%new-value104165%_))
          (set! __gerbil-greeting _%new-value104169%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e104161%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e104161%_ _%$e104161%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e104157%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e104157%_ _%$e104157%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp104403
             (lambda ()
               (if (let ((__tmp104404
                          (let ((__tmp104405 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp104405 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp104404))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp104403)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
