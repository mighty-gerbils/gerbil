(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1755903074)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-166-g158c9f36c"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value98829%_)
        (if (list? _%new-value98829%_)
            (let ((_%new-value98833%_ _%new-value98829%_))
              (__build-manifest-set! _%new-value98833%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value98829%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value98816%_)
        (let ((_%new-value98820%_ _%new-value98816%_))
          (set! __build-manifest _%new-value98820%_))))
    (define display-build-manifest__%
      (lambda (_%manifest98776%_ _%port98777%_)
        (if (list? _%manifest98776%_)
            (let ((_%manifest98781%_ _%manifest98776%_))
              (if (port? _%port98777%_)
                  (let ((_%port98791%_ _%port98777%_))
                    (__display-build-manifest__%
                     _%manifest98781%_
                     _%port98791%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port98777%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest98776%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest98805%_ __build-manifest)
               (_%port98807%_ (current-output-port)))
          (__display-build-manifest__% _%manifest98805%_ _%port98807%_))))
    (define display-build-manifest__1
      (lambda (_%manifest98809%_)
        (let ((_%port98811%_ (current-output-port)))
          (display-build-manifest__% _%manifest98809%_ _%port98811%_))))
    (define display-build-manifest
      (lambda _g98844_
        (let ((_g98845_ (let () (declare (not safe)) (##length _g98844_))))
          (cond ((let () (declare (not safe)) (##fx= _g98845_ 0))
                 (apply display-build-manifest__0 _g98844_))
                ((let () (declare (not safe)) (##fx= _g98845_ 1))
                 (apply display-build-manifest__1 _g98844_))
                ((let () (declare (not safe)) (##fx= _g98845_ 2))
                 (apply display-build-manifest__% _g98844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g98844_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest98698%_ _%port98699%_)
        (let* ((_%manifest98702%_ _%manifest98698%_)
               (_%port98710%_ _%port98699%_))
          (let ((_%p98723%_
                 (lambda (_%g9871898720%_)
                   (display _%g9871898720%_ _%port98710%_)))
                (_%l98724%_
                 (let () (declare (not safe)) (##length _%manifest98702%_)))
                (_%i98725%_ '0))
            (let ((__tmp98846
                   (lambda (_%layer98727%_)
                     (if (zero? _%i98725%_)
                         '#!void
                         (if (= _%i98725%_ '1)
                             (_%p98723%_ '" on ")
                             (_%p98723%_ '", ")))
                     (let* ((_%layer9873198738%_ _%layer98727%_)
                            (_%E9873398742%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9873198738%_
                                      '([name . version]))
                               '#!void))
                            (_%K9873498748%_
                             (lambda (_%version98745%_ _%name98746%_)
                               (_%p98723%_ _%name98746%_)
                               (_%p98723%_ '" ")
                               (_%p98723%_ _%version98745%_))))
                       (if (pair? _%layer9873198738%_)
                           (let ((_%hd9873598751%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9873198738%_)))
                                 (_%tl9873698753%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9873198738%_))))
                             (let* ((_%name98756%_ _%hd9873598751%_)
                                    (_%version98758%_ _%tl9873698753%_))
                               (_%K9873498748%_
                                _%version98758%_
                                _%name98756%_)))
                           (_%E9873398742%_)))
                     (set! _%i98725%_ (+ _%i98725%_ '1)))))
              (declare (not safe))
              (##for-each __tmp98846 _%manifest98702%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest98764%_ __build-manifest)
               (_%port98766%_ (current-output-port)))
          (__display-build-manifest__% _%manifest98764%_ _%port98766%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest98768%_)
        (let ((_%port98770%_ (current-output-port)))
          (__display-build-manifest__% _%manifest98768%_ _%port98770%_))))
    (define __display-build-manifest
      (lambda _g98847_
        (let ((_g98848_ (let () (declare (not safe)) (##length _g98847_))))
          (cond ((let () (declare (not safe)) (##fx= _g98848_ 0))
                 (apply __display-build-manifest__0 _g98847_))
                ((let () (declare (not safe)) (##fx= _g98848_ 1))
                 (apply __display-build-manifest__1 _g98847_))
                ((let () (declare (not safe)) (##fx= _g98848_ 2))
                 (apply __display-build-manifest__% _g98847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g98847_))))))
    (define build-manifest/layer
      (lambda (_%layer98693%_)
        (let ((_%l98695%_ (assoc _%layer98693%_ __build-manifest)))
          (if _%l98695%_ (cons _%l98695%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest98670%_)
        (if (list? _%manifest98670%_)
            (let ((_%manifest98674%_ _%manifest98670%_))
              (__build-manifest-string__% _%manifest98674%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest98670%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest98688%_ __build-manifest))
          (__build-manifest-string__% _%manifest98688%_))))
    (define build-manifest-string
      (lambda _g98849_
        (let ((_g98850_ (let () (declare (not safe)) (##length _g98849_))))
          (cond ((let () (declare (not safe)) (##fx= _g98850_ 0))
                 (apply build-manifest-string__0 _g98849_))
                ((let () (declare (not safe)) (##fx= _g98850_ 1))
                 (apply build-manifest-string__% _g98849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g98849_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest98647%_)
        (let ((_%manifest98650%_ _%manifest98647%_))
          (call-with-output-string
           '()
           (lambda (_%p98659%_)
             (display-build-manifest__% _%manifest98650%_ _%p98659%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest98665%_ __build-manifest))
          (__build-manifest-string__% _%manifest98665%_))))
    (define __build-manifest-string
      (lambda _g98851_
        (let ((_g98852_ (let () (declare (not safe)) (##length _g98851_))))
          (cond ((let () (declare (not safe)) (##fx= _g98852_ 0))
                 (apply __build-manifest-string__0 _g98851_))
                ((let () (declare (not safe)) (##fx= _g98852_ 1))
                 (apply __build-manifest-string__% _g98851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g98851_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value98629%_)
        (if (string? _%new-value98629%_)
            (let ((_%new-value98633%_ _%new-value98629%_))
              (__gerbil-greeting-set! _%new-value98633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value98629%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value98615%_)
        (let ((_%new-value98619%_ _%new-value98615%_))
          (set! __gerbil-greeting _%new-value98619%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e98611%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e98611%_ _%$e98611%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e98607%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e98607%_ _%$e98607%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp98853
                             (let ((__tmp98854 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp98854 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp98853))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
