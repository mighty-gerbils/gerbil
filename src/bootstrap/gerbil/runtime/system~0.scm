(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1783878474)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-38-g681915595"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value123939%_)
        (let ((_%new-value123942%_ _%new-value123939%_))
          (set! __build-manifest _%new-value123942%_))))
    (define build-manifest-set!
      (lambda (_%new-value123924%_)
        (if (list? _%new-value123924%_)
            (let ((_%new-value123929%_ _%new-value123924%_))
              (__build-manifest-set! _%new-value123929%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value123924%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest123847%_ _%port123848%_)
        (let* ((_%manifest123851%_ _%manifest123847%_)
               (_%port123859%_ _%port123848%_))
          (let ((_%p123872%_
                 (lambda (_%$%g123867123869%_)
                   (display _%$%g123867123869%_ _%port123859%_)))
                (_%l123873%_
                 (let () (declare (not safe)) (##length _%manifest123851%_)))
                (_%i123874%_ '0))
            (let ((__tmp124056
                   (lambda (_%layer123876%_)
                     (if (zero? _%i123874%_)
                         '#!void
                         (if (= _%i123874%_ '1)
                             (_%p123872%_ '" on ")
                             (_%p123872%_ '", ")))
                     (let* ((_%$%layer123880123887%_ _%layer123876%_)
                            (_%$%E123882123891%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer123880123887%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K123883123897%_
                             (lambda (_%version123894%_ _%name123895%_)
                               (_%p123872%_ _%name123895%_)
                               (_%p123872%_ '" ")
                               (_%p123872%_ _%version123894%_))))
                       (if (pair? _%$%layer123880123887%_)
                           (let ((_%$%hd123884123900%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer123880123887%_)))
                                 (_%$%tl123885123902%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer123880123887%_))))
                             (let* ((_%name123905%_ _%$%hd123884123900%_)
                                    (_%version123907%_ _%$%tl123885123902%_))
                               (_%$%K123883123897%_
                                _%version123907%_
                                _%name123905%_)))
                           (_%$%E123882123891%_)))
                     (set! _%i123874%_ (+ _%i123874%_ '1)))))
              (declare (not safe))
              (##for-each __tmp124056 _%manifest123851%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest123913%_ __build-manifest)
               (_%port123915%_ (current-output-port)))
          (__display-build-manifest__% _%manifest123913%_ _%port123915%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest123917%_)
        (let ((_%port123919%_ (current-output-port)))
          (__display-build-manifest__% _%manifest123917%_ _%port123919%_))))
    (define __display-build-manifest
      (lambda _g124057_
        (let ((_g124058_ (let () (declare (not safe)) (##length _g124057_))))
          (cond ((let () (declare (not safe)) (##fx= _g124058_ 0))
                 (apply __display-build-manifest__0 _g124057_))
                ((let () (declare (not safe)) (##fx= _g124058_ 1))
                 (apply __display-build-manifest__1 _g124057_))
                ((let () (declare (not safe)) (##fx= _g124058_ 2))
                 (apply __display-build-manifest__% _g124057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g124057_))))))
    (define display-build-manifest__%
      (lambda (_%manifest123806%_ _%port123807%_)
        (if (list? _%manifest123806%_)
            (let ((_%manifest123811%_ _%manifest123806%_))
              (if (port? _%port123807%_)
                  (let ((_%port123821%_ _%port123807%_))
                    (__display-build-manifest__%
                     _%manifest123811%_
                     _%port123821%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port123807%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest123806%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest123835%_ __build-manifest)
               (_%port123837%_ (current-output-port)))
          (__display-build-manifest__% _%manifest123835%_ _%port123837%_))))
    (define display-build-manifest__1
      (lambda (_%manifest123839%_)
        (let ((_%port123841%_ (current-output-port)))
          (display-build-manifest__% _%manifest123839%_ _%port123841%_))))
    (define display-build-manifest
      (lambda _g124059_
        (let ((_g124060_ (let () (declare (not safe)) (##length _g124059_))))
          (cond ((let () (declare (not safe)) (##fx= _g124060_ 0))
                 (apply display-build-manifest__0 _g124059_))
                ((let () (declare (not safe)) (##fx= _g124060_ 1))
                 (apply display-build-manifest__1 _g124059_))
                ((let () (declare (not safe)) (##fx= _g124060_ 2))
                 (apply display-build-manifest__% _g124059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g124059_))))))
    (define build-manifest/layer
      (lambda (_%layer123801%_)
        (let ((_%l123803%_ (assoc _%layer123801%_ __build-manifest)))
          (if _%l123803%_ (cons _%l123803%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest123745%_)
        (let ((_%manifest123748%_ _%manifest123745%_))
          (call-with-output-string
           '()
           (lambda (_%p123757%_)
             (let* ((_%manifest123759%_ _%manifest123748%_)
                    (_%port123762%_ _%p123757%_)
                    (_%manifest123767%_ _%manifest123759%_))
               (if (port? _%port123762%_)
                   (let ((_%port123782%_ _%port123762%_))
                     (__display-build-manifest__%
                      _%manifest123767%_
                      _%port123782%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port123762%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest123796%_ __build-manifest))
          (__build-manifest-string__% _%manifest123796%_))))
    (define __build-manifest-string
      (lambda _g124061_
        (let ((_g124062_ (let () (declare (not safe)) (##length _g124061_))))
          (cond ((let () (declare (not safe)) (##fx= _g124062_ 0))
                 (apply __build-manifest-string__0 _g124061_))
                ((let () (declare (not safe)) (##fx= _g124062_ 1))
                 (apply __build-manifest-string__% _g124061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g124061_))))))
    (define build-manifest-string__%
      (lambda (_%manifest123722%_)
        (if (list? _%manifest123722%_)
            (let ((_%manifest123726%_ _%manifest123722%_))
              (__build-manifest-string__% _%manifest123726%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest123722%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest123740%_ __build-manifest))
          (__build-manifest-string__% _%manifest123740%_))))
    (define build-manifest-string
      (lambda _g124063_
        (let ((_g124064_ (let () (declare (not safe)) (##length _g124063_))))
          (cond ((let () (declare (not safe)) (##fx= _g124064_ 0))
                 (apply build-manifest-string__0 _g124063_))
                ((let () (declare (not safe)) (##fx= _g124064_ 1))
                 (apply build-manifest-string__% _g124063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g124063_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest123704%_ gerbil-system-manifest)
               (_%manifest123709%_ _%manifest123704%_))
          (__build-manifest-string__% _%manifest123709%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value123689%_)
        (let ((_%new-value123692%_ _%new-value123689%_))
          (set! __gerbil-greeting _%new-value123692%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value123674%_)
        (if (string? _%new-value123674%_)
            (let ((_%new-value123679%_ _%new-value123674%_))
              (__gerbil-greeting-set! _%new-value123679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value123674%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e123670%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e123670%_ _%$e123670%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e123666%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e123666%_ _%$e123666%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp124065
             (lambda ()
               (if (let ((__tmp124066
                          (let* ((_%str123635%_ (configure-command-string))
                                 (_%char123638%_ '#\')
                                 (_%str123643%_ _%str123635%_)
                                 (_%char123655%_ _%char123638%_))
                            (declare (not safe))
                            (__string-split _%str123643%_ _%char123655%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp124066))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp124065)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
