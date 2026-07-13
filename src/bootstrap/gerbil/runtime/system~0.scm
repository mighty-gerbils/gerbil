(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1783939345)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-125-g312ef264"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value124119%_)
        (let ((_%new-value124122%_ _%new-value124119%_))
          (set! __build-manifest _%new-value124122%_))))
    (define build-manifest-set!
      (lambda (_%new-value124104%_)
        (if (list? _%new-value124104%_)
            (let ((_%new-value124109%_ _%new-value124104%_))
              (__build-manifest-set! _%new-value124109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value124104%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest124027%_ _%port124028%_)
        (let* ((_%manifest124031%_ _%manifest124027%_)
               (_%port124039%_ _%port124028%_))
          (let ((_%p124052%_
                 (lambda (_%$%g124047124049%_)
                   (display _%$%g124047124049%_ _%port124039%_)))
                (_%l124053%_
                 (let () (declare (not safe)) (##length _%manifest124031%_)))
                (_%i124054%_ '0))
            (let ((__tmp124236
                   (lambda (_%layer124056%_)
                     (if (zero? _%i124054%_)
                         '#!void
                         (if (= _%i124054%_ '1)
                             (_%p124052%_ '" on ")
                             (_%p124052%_ '", ")))
                     (let* ((_%$%layer124060124067%_ _%layer124056%_)
                            (_%$%E124062124071%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer124060124067%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K124063124077%_
                             (lambda (_%version124074%_ _%name124075%_)
                               (_%p124052%_ _%name124075%_)
                               (_%p124052%_ '" ")
                               (_%p124052%_ _%version124074%_))))
                       (if (pair? _%$%layer124060124067%_)
                           (let ((_%$%hd124064124080%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer124060124067%_)))
                                 (_%$%tl124065124082%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer124060124067%_))))
                             (let* ((_%name124085%_ _%$%hd124064124080%_)
                                    (_%version124087%_ _%$%tl124065124082%_))
                               (_%$%K124063124077%_
                                _%version124087%_
                                _%name124085%_)))
                           (_%$%E124062124071%_)))
                     (set! _%i124054%_ (+ _%i124054%_ '1)))))
              (declare (not safe))
              (##for-each __tmp124236 _%manifest124031%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest124093%_ __build-manifest)
               (_%port124095%_ (current-output-port)))
          (__display-build-manifest__% _%manifest124093%_ _%port124095%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest124097%_)
        (let ((_%port124099%_ (current-output-port)))
          (__display-build-manifest__% _%manifest124097%_ _%port124099%_))))
    (define __display-build-manifest
      (lambda _g124237_
        (let ((_g124238_ (let () (declare (not safe)) (##length _g124237_))))
          (cond ((let () (declare (not safe)) (##fx= _g124238_ 0))
                 (apply __display-build-manifest__0 _g124237_))
                ((let () (declare (not safe)) (##fx= _g124238_ 1))
                 (apply __display-build-manifest__1 _g124237_))
                ((let () (declare (not safe)) (##fx= _g124238_ 2))
                 (apply __display-build-manifest__% _g124237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g124237_))))))
    (define display-build-manifest__%
      (lambda (_%manifest123986%_ _%port123987%_)
        (if (list? _%manifest123986%_)
            (let ((_%manifest123991%_ _%manifest123986%_))
              (if (port? _%port123987%_)
                  (let ((_%port124001%_ _%port123987%_))
                    (__display-build-manifest__%
                     _%manifest123991%_
                     _%port124001%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port123987%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest123986%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest124015%_ __build-manifest)
               (_%port124017%_ (current-output-port)))
          (__display-build-manifest__% _%manifest124015%_ _%port124017%_))))
    (define display-build-manifest__1
      (lambda (_%manifest124019%_)
        (let ((_%port124021%_ (current-output-port)))
          (display-build-manifest__% _%manifest124019%_ _%port124021%_))))
    (define display-build-manifest
      (lambda _g124239_
        (let ((_g124240_ (let () (declare (not safe)) (##length _g124239_))))
          (cond ((let () (declare (not safe)) (##fx= _g124240_ 0))
                 (apply display-build-manifest__0 _g124239_))
                ((let () (declare (not safe)) (##fx= _g124240_ 1))
                 (apply display-build-manifest__1 _g124239_))
                ((let () (declare (not safe)) (##fx= _g124240_ 2))
                 (apply display-build-manifest__% _g124239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g124239_))))))
    (define build-manifest/layer
      (lambda (_%layer123981%_)
        (let ((_%l123983%_ (assoc _%layer123981%_ __build-manifest)))
          (if _%l123983%_ (cons _%l123983%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest123925%_)
        (let ((_%manifest123928%_ _%manifest123925%_))
          (call-with-output-string
           '()
           (lambda (_%p123937%_)
             (let* ((_%manifest123939%_ _%manifest123928%_)
                    (_%port123942%_ _%p123937%_)
                    (_%manifest123947%_ _%manifest123939%_))
               (if (port? _%port123942%_)
                   (let ((_%port123962%_ _%port123942%_))
                     (__display-build-manifest__%
                      _%manifest123947%_
                      _%port123962%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port123942%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest123976%_ __build-manifest))
          (__build-manifest-string__% _%manifest123976%_))))
    (define __build-manifest-string
      (lambda _g124241_
        (let ((_g124242_ (let () (declare (not safe)) (##length _g124241_))))
          (cond ((let () (declare (not safe)) (##fx= _g124242_ 0))
                 (apply __build-manifest-string__0 _g124241_))
                ((let () (declare (not safe)) (##fx= _g124242_ 1))
                 (apply __build-manifest-string__% _g124241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g124241_))))))
    (define build-manifest-string__%
      (lambda (_%manifest123902%_)
        (if (list? _%manifest123902%_)
            (let ((_%manifest123906%_ _%manifest123902%_))
              (__build-manifest-string__% _%manifest123906%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest123902%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest123920%_ __build-manifest))
          (__build-manifest-string__% _%manifest123920%_))))
    (define build-manifest-string
      (lambda _g124243_
        (let ((_g124244_ (let () (declare (not safe)) (##length _g124243_))))
          (cond ((let () (declare (not safe)) (##fx= _g124244_ 0))
                 (apply build-manifest-string__0 _g124243_))
                ((let () (declare (not safe)) (##fx= _g124244_ 1))
                 (apply build-manifest-string__% _g124243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g124243_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest123884%_ gerbil-system-manifest)
               (_%manifest123889%_ _%manifest123884%_))
          (__build-manifest-string__% _%manifest123889%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value123869%_)
        (let ((_%new-value123872%_ _%new-value123869%_))
          (set! __gerbil-greeting _%new-value123872%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value123854%_)
        (if (string? _%new-value123854%_)
            (let ((_%new-value123859%_ _%new-value123854%_))
              (__gerbil-greeting-set! _%new-value123859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value123854%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e123850%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e123850%_ _%$e123850%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e123846%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e123846%_ _%$e123846%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp124245
             (lambda ()
               (if (let ((__tmp124246
                          (let* ((_%str123815%_ (configure-command-string))
                                 (_%char123818%_ '#\')
                                 (_%str123823%_ _%str123815%_)
                                 (_%char123835%_ _%char123818%_))
                            (declare (not safe))
                            (__string-split _%str123823%_ _%char123835%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp124246))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp124245)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
