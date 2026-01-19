(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1768864946)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-210-g50a8325b7"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value104406%_)
        (if (list? _%new-value104406%_)
            (let ((_%new-value104410%_ _%new-value104406%_))
              (__build-manifest-set! _%new-value104410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value104406%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value104393%_)
        (let ((_%new-value104397%_ _%new-value104393%_))
          (set! __build-manifest _%new-value104397%_))))
    (define display-build-manifest__%
      (lambda (_%manifest104353%_ _%port104354%_)
        (if (list? _%manifest104353%_)
            (let ((_%manifest104358%_ _%manifest104353%_))
              (if (port? _%port104354%_)
                  (let ((_%port104368%_ _%port104354%_))
                    (__display-build-manifest__%
                     _%manifest104358%_
                     _%port104368%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port104354%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest104353%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104382%_ __build-manifest)
               (_%port104384%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104382%_ _%port104384%_))))
    (define display-build-manifest__1
      (lambda (_%manifest104386%_)
        (let ((_%port104388%_ (current-output-port)))
          (display-build-manifest__% _%manifest104386%_ _%port104388%_))))
    (define display-build-manifest
      (lambda _g104421_
        (let ((_g104422_ (let () (declare (not safe)) (##length _g104421_))))
          (cond ((let () (declare (not safe)) (##fx= _g104422_ 0))
                 (apply display-build-manifest__0 _g104421_))
                ((let () (declare (not safe)) (##fx= _g104422_ 1))
                 (apply display-build-manifest__1 _g104421_))
                ((let () (declare (not safe)) (##fx= _g104422_ 2))
                 (apply display-build-manifest__% _g104421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g104421_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest104275%_ _%port104276%_)
        (let* ((_%manifest104279%_ _%manifest104275%_)
               (_%port104287%_ _%port104276%_))
          (let ((_%p104300%_
                 (lambda (_%g104295104297%_)
                   (display _%g104295104297%_ _%port104287%_)))
                (_%l104301%_
                 (let () (declare (not safe)) (##length _%manifest104279%_)))
                (_%i104302%_ '0))
            (let ((__tmp104423
                   (lambda (_%layer104304%_)
                     (if (zero? _%i104302%_)
                         '#!void
                         (if (= _%i104302%_ '1)
                             (_%p104300%_ '" on ")
                             (_%p104300%_ '", ")))
                     (let* ((_%layer104308104315%_ _%layer104304%_)
                            (_%E104310104319%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer104308104315%_
                                      '([name . version]))
                               '#!void))
                            (_%K104311104325%_
                             (lambda (_%version104322%_ _%name104323%_)
                               (_%p104300%_ _%name104323%_)
                               (_%p104300%_ '" ")
                               (_%p104300%_ _%version104322%_))))
                       (if (pair? _%layer104308104315%_)
                           (let ((_%hd104312104328%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer104308104315%_)))
                                 (_%tl104313104330%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer104308104315%_))))
                             (let* ((_%name104333%_ _%hd104312104328%_)
                                    (_%version104335%_ _%tl104313104330%_))
                               (_%K104311104325%_
                                _%version104335%_
                                _%name104333%_)))
                           (_%E104310104319%_)))
                     (set! _%i104302%_ (+ _%i104302%_ '1)))))
              (declare (not safe))
              (##for-each __tmp104423 _%manifest104279%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104341%_ __build-manifest)
               (_%port104343%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104341%_ _%port104343%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest104345%_)
        (let ((_%port104347%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104345%_ _%port104347%_))))
    (define __display-build-manifest
      (lambda _g104424_
        (let ((_g104425_ (let () (declare (not safe)) (##length _g104424_))))
          (cond ((let () (declare (not safe)) (##fx= _g104425_ 0))
                 (apply __display-build-manifest__0 _g104424_))
                ((let () (declare (not safe)) (##fx= _g104425_ 1))
                 (apply __display-build-manifest__1 _g104424_))
                ((let () (declare (not safe)) (##fx= _g104425_ 2))
                 (apply __display-build-manifest__% _g104424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g104424_))))))
    (define build-manifest/layer
      (lambda (_%layer104270%_)
        (let ((_%l104272%_ (assoc _%layer104270%_ __build-manifest)))
          (if _%l104272%_ (cons _%l104272%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest104247%_)
        (if (list? _%manifest104247%_)
            (let ((_%manifest104251%_ _%manifest104247%_))
              (__build-manifest-string__% _%manifest104251%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest104247%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest104265%_ __build-manifest))
          (__build-manifest-string__% _%manifest104265%_))))
    (define build-manifest-string
      (lambda _g104426_
        (let ((_g104427_ (let () (declare (not safe)) (##length _g104426_))))
          (cond ((let () (declare (not safe)) (##fx= _g104427_ 0))
                 (apply build-manifest-string__0 _g104426_))
                ((let () (declare (not safe)) (##fx= _g104427_ 1))
                 (apply build-manifest-string__% _g104426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g104426_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest104224%_)
        (let ((_%manifest104227%_ _%manifest104224%_))
          (call-with-output-string
           '()
           (lambda (_%p104236%_)
             (display-build-manifest__% _%manifest104227%_ _%p104236%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest104242%_ __build-manifest))
          (__build-manifest-string__% _%manifest104242%_))))
    (define __build-manifest-string
      (lambda _g104428_
        (let ((_g104429_ (let () (declare (not safe)) (##length _g104428_))))
          (cond ((let () (declare (not safe)) (##fx= _g104429_ 0))
                 (apply __build-manifest-string__0 _g104428_))
                ((let () (declare (not safe)) (##fx= _g104429_ 1))
                 (apply __build-manifest-string__% _g104428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g104428_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value104206%_)
        (if (string? _%new-value104206%_)
            (let ((_%new-value104210%_ _%new-value104206%_))
              (__gerbil-greeting-set! _%new-value104210%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value104206%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value104192%_)
        (let ((_%new-value104196%_ _%new-value104192%_))
          (set! __gerbil-greeting _%new-value104196%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e104188%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e104188%_ _%$e104188%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e104184%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e104184%_ _%$e104184%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp104430
             (lambda ()
               (if (let ((__tmp104431
                          (let ((__tmp104432 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp104432 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp104431))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp104430)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
