(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1713044314)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-104-g01eec2b8e"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value93005%_)
        (if (list? _%new-value93005%_)
            (let ((_%new-value93009%_ _%new-value93005%_))
              (__build-manifest-set! _%new-value93009%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value93005%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value92992%_)
        (let ((_%new-value92996%_ _%new-value92992%_))
          (set! __build-manifest _%new-value92996%_))))
    (define display-build-manifest__%
      (lambda (_%manifest92952%_ _%port92953%_)
        (if (list? _%manifest92952%_)
            (let ((_%manifest92957%_ _%manifest92952%_))
              (if (port? _%port92953%_)
                  (let ((_%port92967%_ _%port92953%_))
                    (__display-build-manifest__%
                     _%manifest92957%_
                     _%port92967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port92953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest92952%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92981%_ __build-manifest)
               (_%port92983%_ (current-output-port)))
          (__display-build-manifest__% _%manifest92981%_ _%port92983%_))))
    (define display-build-manifest__1
      (lambda (_%manifest92985%_)
        (let ((_%port92987%_ (current-output-port)))
          (display-build-manifest__% _%manifest92985%_ _%port92987%_))))
    (define display-build-manifest
      (lambda _g93021_
        (let ((_g93020_ (let () (declare (not safe)) (##length _g93021_))))
          (cond ((let () (declare (not safe)) (##fx= _g93020_ 0))
                 (apply display-build-manifest__0 _g93021_))
                ((let () (declare (not safe)) (##fx= _g93020_ 1))
                 (apply display-build-manifest__1 _g93021_))
                ((let () (declare (not safe)) (##fx= _g93020_ 2))
                 (apply display-build-manifest__% _g93021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g93021_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest92874%_ _%port92875%_)
        (let* ((_%manifest92878%_ _%manifest92874%_)
               (_%port92886%_ _%port92875%_))
          (let ((_%p92899%_
                 (lambda (_%g9289492896%_)
                   (display _%g9289492896%_ _%port92886%_)))
                (_%l92900%_
                 (let () (declare (not safe)) (##length _%manifest92878%_)))
                (_%i92901%_ '0))
            (let ((__tmp93022
                   (lambda (_%layer92903%_)
                     (if (zero? _%i92901%_)
                         '#!void
                         (if (= _%i92901%_ '1)
                             (_%p92899%_ '" on ")
                             (_%p92899%_ '", ")))
                     (let* ((_%layer9290792914%_ _%layer92903%_)
                            (_%E9290992918%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9290792914%_
                                      '([name . version]))
                               '#!void))
                            (_%K9291092924%_
                             (lambda (_%version92921%_ _%name92922%_)
                               (_%p92899%_ _%name92922%_)
                               (_%p92899%_ '" ")
                               (_%p92899%_ _%version92921%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%layer9290792914%_))
                           (let ((_%hd9291192927%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9290792914%_)))
                                 (_%tl9291292929%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9290792914%_))))
                             (let* ((_%name92932%_ _%hd9291192927%_)
                                    (_%version92934%_ _%tl9291292929%_))
                               (_%K9291092924%_
                                _%version92934%_
                                _%name92932%_)))
                           (_%E9290992918%_)))
                     (set! _%i92901%_ (+ _%i92901%_ '1)))))
              (declare (not safe))
              (##for-each __tmp93022 _%manifest92878%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest92940%_ __build-manifest)
               (_%port92942%_ (current-output-port)))
          (__display-build-manifest__% _%manifest92940%_ _%port92942%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest92944%_)
        (let ((_%port92946%_ (current-output-port)))
          (__display-build-manifest__% _%manifest92944%_ _%port92946%_))))
    (define __display-build-manifest
      (lambda _g93024_
        (let ((_g93023_ (let () (declare (not safe)) (##length _g93024_))))
          (cond ((let () (declare (not safe)) (##fx= _g93023_ 0))
                 (apply __display-build-manifest__0 _g93024_))
                ((let () (declare (not safe)) (##fx= _g93023_ 1))
                 (apply __display-build-manifest__1 _g93024_))
                ((let () (declare (not safe)) (##fx= _g93023_ 2))
                 (apply __display-build-manifest__% _g93024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g93024_))))))
    (define build-manifest/layer
      (lambda (_%layer92869%_)
        (let ((_%l92871%_ (assoc _%layer92869%_ __build-manifest)))
          (if _%l92871%_ (cons _%l92871%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest92846%_)
        (if (list? _%manifest92846%_)
            (let ((_%manifest92850%_ _%manifest92846%_))
              (__build-manifest-string__% _%manifest92850%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest92846%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest92864%_ __build-manifest))
          (__build-manifest-string__% _%manifest92864%_))))
    (define build-manifest-string
      (lambda _g93026_
        (let ((_g93025_ (let () (declare (not safe)) (##length _g93026_))))
          (cond ((let () (declare (not safe)) (##fx= _g93025_ 0))
                 (apply build-manifest-string__0 _g93026_))
                ((let () (declare (not safe)) (##fx= _g93025_ 1))
                 (apply build-manifest-string__% _g93026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g93026_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest92823%_)
        (let ((_%manifest92826%_ _%manifest92823%_))
          (call-with-output-string
           '()
           (lambda (_%p92835%_)
             (display-build-manifest__% _%manifest92826%_ _%p92835%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest92841%_ __build-manifest))
          (__build-manifest-string__% _%manifest92841%_))))
    (define __build-manifest-string
      (lambda _g93028_
        (let ((_g93027_ (let () (declare (not safe)) (##length _g93028_))))
          (cond ((let () (declare (not safe)) (##fx= _g93027_ 0))
                 (apply __build-manifest-string__0 _g93028_))
                ((let () (declare (not safe)) (##fx= _g93027_ 1))
                 (apply __build-manifest-string__% _g93028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g93028_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value92805%_)
        (if (string? _%new-value92805%_)
            (let ((_%new-value92809%_ _%new-value92805%_))
              (__gerbil-greeting-set! _%new-value92809%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value92805%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value92791%_)
        (let ((_%new-value92795%_ _%new-value92791%_))
          (set! __gerbil-greeting _%new-value92795%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e92787%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e92787%_ _%$e92787%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e92783%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e92783%_ _%$e92783%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp93029
                             (let ((__tmp93030 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp93030 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp93029))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
