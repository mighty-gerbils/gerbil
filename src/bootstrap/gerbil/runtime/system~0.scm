(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1781119034)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-19-gbd246049"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value105189%_)
        (let ((_%new-value105192%_ _%new-value105189%_))
          (set! __build-manifest _%new-value105192%_))))
    (define build-manifest-set!
      (lambda (_%new-value105174%_)
        (if (list? _%new-value105174%_)
            (let ((_%new-value105179%_ _%new-value105174%_))
              (__build-manifest-set! _%new-value105179%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value105174%_)
              (void)))))
    (define __display-build-manifest
      (let ((_%$%opt-lambda105095105159%_
             (lambda (_%manifest105097%_ _%port105098%_)
               (let* ((_%manifest105101%_ _%manifest105097%_)
                      (_%port105109%_ _%port105098%_))
                 (let ((_%p105122%_
                        (lambda (_%$%g105117105119%_)
                          (display _%$%g105117105119%_ _%port105109%_)))
                       (_%l105123%_ (length _%manifest105101%_))
                       (_%i105124%_ '0))
                   (for-each
                    (lambda (_%layer105126%_)
                      (if (zero? _%i105124%_)
                          (void)
                          (if (= _%i105124%_ '1)
                              (_%p105122%_ '" on ")
                              (_%p105122%_ '", ")))
                      (let* ((_%$%layer105130105137%_ _%layer105126%_)
                             (_%$%E105132105141%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%layer105130105137%_
                                       '([name . version]))
                                (void)))
                             (_%$%K105133105147%_
                              (lambda (_%version105144%_ _%name105145%_)
                                (_%p105122%_ _%name105145%_)
                                (_%p105122%_ '" ")
                                (_%p105122%_ _%version105144%_))))
                        (if (pair? _%$%layer105130105137%_)
                            (let ((_%$%hd105134105150%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%layer105130105137%_)))
                                  (_%$%tl105135105152%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%layer105130105137%_))))
                              (let* ((_%name105155%_ _%$%hd105134105150%_)
                                     (_%version105157%_ _%$%tl105135105152%_))
                                (_%$%K105133105147%_
                                 _%version105157%_
                                 _%name105155%_)))
                            (_%$%E105132105141%_)))
                      (set! _%i105124%_ (+ _%i105124%_ '1)))
                    _%manifest105101%_))))))
        (lambda _g105202_
          (let ((_g105203_ (let () (declare (not safe)) (##length _g105202_))))
            (cond ((let () (declare (not safe)) (##fx= _g105203_ 0))
                   (apply (lambda ()
                            (let* ((_%manifest105163%_ __build-manifest)
                                   (_%port105165%_ (current-output-port)))
                              (_%$%opt-lambda105095105159%_
                               _%manifest105163%_
                               _%port105165%_)))
                          _g105202_))
                  ((let () (declare (not safe)) (##fx= _g105203_ 1))
                   (apply (lambda (_%manifest105167%_)
                            (let ((_%port105169%_ (current-output-port)))
                              (_%$%opt-lambda105095105159%_
                               _%manifest105167%_
                               _%port105169%_)))
                          _g105202_))
                  ((let () (declare (not safe)) (##fx= _g105203_ 2))
                   (apply _%$%opt-lambda105095105159%_ _g105202_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __display-build-manifest
                    _g105202_)))))))
    (define display-build-manifest
      (let ((_%$%opt-lambda105054105081%_
             (lambda (_%manifest105056%_ _%port105057%_)
               (if (list? _%manifest105056%_)
                   (let ((_%manifest105061%_ _%manifest105056%_))
                     (if (port? _%port105057%_)
                         (let ((_%port105071%_ _%port105057%_))
                           (__display-build-manifest
                            _%manifest105061%_
                            _%port105071%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                            'contract:
                            'port?
                            'value:
                            _%port105057%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/system.ss\"@18.31-18.39"
                      'contract:
                      'list?
                      'value:
                      _%manifest105056%_)
                     (void))))))
        (lambda _g105204_
          (let ((_g105205_ (let () (declare (not safe)) (##length _g105204_))))
            (cond ((let () (declare (not safe)) (##fx= _g105205_ 0))
                   (apply (lambda ()
                            (let* ((_%manifest105085%_ __build-manifest)
                                   (_%port105087%_ (current-output-port)))
                              (_%$%opt-lambda105054105081%_
                               _%manifest105085%_
                               _%port105087%_)))
                          _g105204_))
                  ((let () (declare (not safe)) (##fx= _g105205_ 1))
                   (apply (lambda (_%manifest105089%_)
                            (let ((_%port105091%_ (current-output-port)))
                              (_%$%opt-lambda105054105081%_
                               _%manifest105089%_
                               _%port105091%_)))
                          _g105204_))
                  ((let () (declare (not safe)) (##fx= _g105205_ 2))
                   (apply _%$%opt-lambda105054105081%_ _g105204_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    display-build-manifest
                    _g105204_)))))))
    (define build-manifest/layer
      (lambda (_%layer105051%_)
        (let ((_%l105053%_ (assoc _%layer105051%_ __build-manifest)))
          (if _%l105053%_ (cons _%l105053%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string
      (let ((_%$%opt-lambda104993105042%_
             (lambda (_%manifest104995%_)
               (let ((_%manifest104998%_ _%manifest104995%_))
                 (call-with-output-string
                  '()
                  (lambda (_%p105007%_)
                    (let* ((_%manifest105009%_ _%manifest104998%_)
                           (_%port105012%_ _%p105007%_))
                      (if (list? _%manifest105009%_)
                          (let ((_%manifest105017%_ _%manifest105009%_))
                            (if (port? _%port105012%_)
                                (let ((_%port105032%_ _%port105012%_))
                                  (__display-build-manifest
                                   _%manifest105017%_
                                   _%port105032%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/system
                                   'contract:
                                   'port?
                                   'value:
                                   _%port105012%_)
                                  (void))))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/system
                             'contract:
                             'list?
                             'value:
                             _%manifest105009%_)
                            (void))))))))))
        (lambda _g105206_
          (let ((_g105207_ (let () (declare (not safe)) (##length _g105206_))))
            (cond ((let () (declare (not safe)) (##fx= _g105207_ 0))
                   (apply (lambda ()
                            (let ((_%manifest105046%_ __build-manifest))
                              (_%$%opt-lambda104993105042%_
                               _%manifest105046%_)))
                          _g105206_))
                  ((let () (declare (not safe)) (##fx= _g105207_ 1))
                   (apply _%$%opt-lambda104993105042%_ _g105206_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __build-manifest-string
                    _g105206_)))))))
    (define build-manifest-string
      (let ((_%$%opt-lambda104970104986%_
             (lambda (_%manifest104972%_)
               (if (list? _%manifest104972%_)
                   (let ((_%manifest104976%_ _%manifest104972%_))
                     (__build-manifest-string _%manifest104976%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/system.ss\"@40.30-40.38"
                      'contract:
                      'list?
                      'value:
                      _%manifest104972%_)
                     (void))))))
        (lambda _g105208_
          (let ((_g105209_ (let () (declare (not safe)) (##length _g105208_))))
            (cond ((let () (declare (not safe)) (##fx= _g105209_ 0))
                   (apply (lambda ()
                            (let ((_%manifest104990%_ __build-manifest))
                              (_%$%opt-lambda104970104986%_
                               _%manifest104990%_)))
                          _g105208_))
                  ((let () (declare (not safe)) (##fx= _g105209_ 1))
                   (apply _%$%opt-lambda104970104986%_ _g105208_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    build-manifest-string
                    _g105208_)))))))
    (define gerbil-system-version-string
      (lambda ()
        (let ((_%manifest104954%_ gerbil-system-manifest))
          (if (list? _%manifest104954%_)
              (let ((_%manifest104959%_ _%manifest104954%_))
                (__build-manifest-string _%manifest104959%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/system
                 'contract:
                 'list?
                 'value:
                 _%manifest104954%_)
                (void))))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value104939%_)
        (let ((_%new-value104942%_ _%new-value104939%_))
          (set! __gerbil-greeting _%new-value104942%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value104924%_)
        (if (string? _%new-value104924%_)
            (let ((_%new-value104929%_ _%new-value104924%_))
              (__gerbil-greeting-set! _%new-value104929%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value104924%_)
              (void)))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e104920%_ (getenv '"GERBIL_HOME" '#f)))
          (if _%$e104920%_ _%$e104920%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e104916%_ (getenv '"GERBIL_PATH" '#f)))
          (if _%$e104916%_ _%$e104916%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (make-atomic-promise
       (lambda ()
         (if (member '"--enable-smp"
                     (let* ((_%str104885%_ (configure-command-string))
                            (_%char104888%_ '#\'))
                       (if (string? _%str104885%_)
                           (let ((_%str104893%_ _%str104885%_))
                             (if (char? _%char104888%_)
                                 (let ((_%char104905%_ _%char104888%_))
                                   (__string-split
                                    _%str104893%_
                                    _%char104905%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/system
                                    'contract:
                                    'char?
                                    'value:
                                    _%char104888%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/system
                              'contract:
                              'string?
                              'value:
                              _%str104885%_)
                             (void)))))
             '#t
             '#f))))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG (getenv '"GERBIL_DEBUG" '#f))))
