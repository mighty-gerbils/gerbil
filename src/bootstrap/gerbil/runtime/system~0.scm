(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1771036668)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-114-g96ac8334a"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value303274%_)
        (let ((_%new-value303277%_ _%new-value303274%_))
          (set! __build-manifest _%new-value303277%_))))
    (define build-manifest-set!
      (lambda (_%new-value302608%_)
        (if (list? _%new-value302608%_)
            (let ((_%new-value302613%_ _%new-value302608%_))
              (__build-manifest-set! _%new-value302613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value302608%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest303197%_ _%port303198%_)
        (let* ((_%manifest303201%_ _%manifest303197%_)
               (_%port303209%_ _%port303198%_))
          (let ((_%p303222%_
                 (lambda (_%g303217303219%_)
                   (display _%g303217303219%_ _%port303209%_)))
                (_%l303223%_
                 (let () (declare (not safe)) (##length _%manifest303201%_)))
                (_%i303224%_ '0))
            (let ((__tmp303391
                   (lambda (_%layer303226%_)
                     (if (zero? _%i303224%_)
                         '#!void
                         (if (= _%i303224%_ '1)
                             (_%p303222%_ '" on ")
                             (_%p303222%_ '", ")))
                     (let* ((_%layer303230303237%_ _%layer303226%_)
                            (_%E303232303241%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer303230303237%_
                                      '([name . version]))
                               '#!void))
                            (_%K303233303247%_
                             (lambda (_%version303244%_ _%name303245%_)
                               (_%p303222%_ _%name303245%_)
                               (_%p303222%_ '" ")
                               (_%p303222%_ _%version303244%_))))
                       (if (pair? _%layer303230303237%_)
                           (let ((_%hd303234303250%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer303230303237%_)))
                                 (_%tl303235303252%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer303230303237%_))))
                             (let* ((_%name303255%_ _%hd303234303250%_)
                                    (_%version303257%_ _%tl303235303252%_))
                               (_%K303233303247%_
                                _%version303257%_
                                _%name303255%_)))
                           (_%E303232303241%_)))
                     (set! _%i303224%_ (+ _%i303224%_ '1)))))
              (declare (not safe))
              (##for-each __tmp303391 _%manifest303201%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest303263%_ __build-manifest)
               (_%port303265%_ (current-output-port)))
          (__display-build-manifest__% _%manifest303263%_ _%port303265%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest303267%_)
        (let ((_%port303269%_ (current-output-port)))
          (__display-build-manifest__% _%manifest303267%_ _%port303269%_))))
    (define __display-build-manifest
      (lambda _g303392_
        (let ((_g303393_ (let () (declare (not safe)) (##length _g303392_))))
          (cond ((let () (declare (not safe)) (##fx= _g303393_ 0))
                 (apply __display-build-manifest__0 _g303392_))
                ((let () (declare (not safe)) (##fx= _g303393_ 1))
                 (apply __display-build-manifest__1 _g303392_))
                ((let () (declare (not safe)) (##fx= _g303393_ 2))
                 (apply __display-build-manifest__% _g303392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g303392_))))))
    (define display-build-manifest__%
      (lambda (_%manifest302744%_ _%port302745%_)
        (if (list? _%manifest302744%_)
            (let ((_%manifest302749%_ _%manifest302744%_))
              (if (port? _%port302745%_)
                  (let ((_%port302759%_ _%port302745%_))
                    (__display-build-manifest__%
                     _%manifest302749%_
                     _%port302759%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port302745%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest302744%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest302773%_ __build-manifest)
               (_%port302775%_ (current-output-port)))
          (__display-build-manifest__% _%manifest302773%_ _%port302775%_))))
    (define display-build-manifest__1
      (lambda (_%manifest302777%_)
        (let ((_%port302779%_ (current-output-port)))
          (display-build-manifest__% _%manifest302777%_ _%port302779%_))))
    (define display-build-manifest
      (lambda _g303394_
        (let ((_g303395_ (let () (declare (not safe)) (##length _g303394_))))
          (cond ((let () (declare (not safe)) (##fx= _g303395_ 0))
                 (apply display-build-manifest__0 _g303394_))
                ((let () (declare (not safe)) (##fx= _g303395_ 1))
                 (apply display-build-manifest__1 _g303394_))
                ((let () (declare (not safe)) (##fx= _g303395_ 2))
                 (apply display-build-manifest__% _g303394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g303394_))))))
    (define build-manifest/layer
      (lambda (_%layer303192%_)
        (let ((_%l303194%_ (assoc _%layer303192%_ __build-manifest)))
          (if _%l303194%_ (cons _%l303194%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest303136%_)
        (let ((_%manifest303139%_ _%manifest303136%_))
          (call-with-output-string
           '()
           (lambda (_%p303148%_)
             (let* ((_%manifest303150%_ _%manifest303139%_)
                    (_%port303153%_ _%p303148%_)
                    (_%manifest303158%_ _%manifest303150%_))
               (if (port? _%port303153%_)
                   (let ((_%port303173%_ _%port303153%_))
                     (__display-build-manifest__%
                      _%manifest303158%_
                      _%port303173%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port303153%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest303187%_ __build-manifest))
          (__build-manifest-string__% _%manifest303187%_))))
    (define __build-manifest-string
      (lambda _g303396_
        (let ((_g303397_ (let () (declare (not safe)) (##length _g303396_))))
          (cond ((let () (declare (not safe)) (##fx= _g303397_ 0))
                 (apply __build-manifest-string__0 _g303396_))
                ((let () (declare (not safe)) (##fx= _g303397_ 1))
                 (apply __build-manifest-string__% _g303396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g303396_))))))
    (define build-manifest-string__%
      (lambda (_%manifest302905%_)
        (if (list? _%manifest302905%_)
            (let ((_%manifest302909%_ _%manifest302905%_))
              (__build-manifest-string__% _%manifest302909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest302905%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest302923%_ __build-manifest))
          (__build-manifest-string__% _%manifest302923%_))))
    (define build-manifest-string
      (lambda _g303398_
        (let ((_g303399_ (let () (declare (not safe)) (##length _g303398_))))
          (cond ((let () (declare (not safe)) (##fx= _g303399_ 0))
                 (apply build-manifest-string__0 _g303398_))
                ((let () (declare (not safe)) (##fx= _g303399_ 1))
                 (apply build-manifest-string__% _g303398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g303398_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest303118%_ gerbil-system-manifest)
               (_%manifest303123%_ _%manifest303118%_))
          (__build-manifest-string__% _%manifest303123%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value303103%_)
        (let ((_%new-value303106%_ _%new-value303103%_))
          (set! __gerbil-greeting _%new-value303106%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value303047%_)
        (if (string? _%new-value303047%_)
            (let ((_%new-value303052%_ _%new-value303047%_))
              (__gerbil-greeting-set! _%new-value303052%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value303047%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e303099%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e303099%_ _%$e303099%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e303095%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e303095%_ _%$e303095%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp303400
             (lambda ()
               (if (let ((__tmp303401
                          (let* ((_%str303064%_ (configure-command-string))
                                 (_%char303067%_ '#\')
                                 (_%str303072%_ _%str303064%_)
                                 (_%char303084%_ _%char303067%_))
                            (declare (not safe))
                            (__string-split _%str303072%_ _%char303084%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp303401))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp303400)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
