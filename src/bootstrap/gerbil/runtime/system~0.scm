(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1771092625)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-118-ge60df6c7f"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value120452%_)
        (let ((_%new-value120455%_ _%new-value120452%_))
          (set! __build-manifest _%new-value120455%_))))
    (define build-manifest-set!
      (lambda (_%new-value119786%_)
        (if (list? _%new-value119786%_)
            (let ((_%new-value119791%_ _%new-value119786%_))
              (__build-manifest-set! _%new-value119791%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value119786%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest120375%_ _%port120376%_)
        (let* ((_%manifest120379%_ _%manifest120375%_)
               (_%port120387%_ _%port120376%_))
          (let ((_%p120400%_
                 (lambda (_%g120395120397%_)
                   (display _%g120395120397%_ _%port120387%_)))
                (_%l120401%_
                 (let () (declare (not safe)) (##length _%manifest120379%_)))
                (_%i120402%_ '0))
            (let ((__tmp120569
                   (lambda (_%layer120404%_)
                     (if (zero? _%i120402%_)
                         '#!void
                         (if (= _%i120402%_ '1)
                             (_%p120400%_ '" on ")
                             (_%p120400%_ '", ")))
                     (let* ((_%layer120408120415%_ _%layer120404%_)
                            (_%E120410120419%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer120408120415%_
                                      '([name . version]))
                               '#!void))
                            (_%K120411120425%_
                             (lambda (_%version120422%_ _%name120423%_)
                               (_%p120400%_ _%name120423%_)
                               (_%p120400%_ '" ")
                               (_%p120400%_ _%version120422%_))))
                       (if (pair? _%layer120408120415%_)
                           (let ((_%hd120412120428%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer120408120415%_)))
                                 (_%tl120413120430%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer120408120415%_))))
                             (let* ((_%name120433%_ _%hd120412120428%_)
                                    (_%version120435%_ _%tl120413120430%_))
                               (_%K120411120425%_
                                _%version120435%_
                                _%name120433%_)))
                           (_%E120410120419%_)))
                     (set! _%i120402%_ (+ _%i120402%_ '1)))))
              (declare (not safe))
              (##for-each __tmp120569 _%manifest120379%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest120441%_ __build-manifest)
               (_%port120443%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120441%_ _%port120443%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest120445%_)
        (let ((_%port120447%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120445%_ _%port120447%_))))
    (define __display-build-manifest
      (lambda _g120570_
        (let ((_g120571_ (let () (declare (not safe)) (##length _g120570_))))
          (cond ((let () (declare (not safe)) (##fx= _g120571_ 0))
                 (apply __display-build-manifest__0 _g120570_))
                ((let () (declare (not safe)) (##fx= _g120571_ 1))
                 (apply __display-build-manifest__1 _g120570_))
                ((let () (declare (not safe)) (##fx= _g120571_ 2))
                 (apply __display-build-manifest__% _g120570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g120570_))))))
    (define display-build-manifest__%
      (lambda (_%manifest119922%_ _%port119923%_)
        (if (list? _%manifest119922%_)
            (let ((_%manifest119927%_ _%manifest119922%_))
              (if (port? _%port119923%_)
                  (let ((_%port119937%_ _%port119923%_))
                    (__display-build-manifest__%
                     _%manifest119927%_
                     _%port119937%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port119923%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest119922%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest119951%_ __build-manifest)
               (_%port119953%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119951%_ _%port119953%_))))
    (define display-build-manifest__1
      (lambda (_%manifest119955%_)
        (let ((_%port119957%_ (current-output-port)))
          (display-build-manifest__% _%manifest119955%_ _%port119957%_))))
    (define display-build-manifest
      (lambda _g120572_
        (let ((_g120573_ (let () (declare (not safe)) (##length _g120572_))))
          (cond ((let () (declare (not safe)) (##fx= _g120573_ 0))
                 (apply display-build-manifest__0 _g120572_))
                ((let () (declare (not safe)) (##fx= _g120573_ 1))
                 (apply display-build-manifest__1 _g120572_))
                ((let () (declare (not safe)) (##fx= _g120573_ 2))
                 (apply display-build-manifest__% _g120572_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g120572_))))))
    (define build-manifest/layer
      (lambda (_%layer120370%_)
        (let ((_%l120372%_ (assoc _%layer120370%_ __build-manifest)))
          (if _%l120372%_ (cons _%l120372%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest120314%_)
        (let ((_%manifest120317%_ _%manifest120314%_))
          (call-with-output-string
           '()
           (lambda (_%p120326%_)
             (let* ((_%manifest120328%_ _%manifest120317%_)
                    (_%port120331%_ _%p120326%_)
                    (_%manifest120336%_ _%manifest120328%_))
               (if (port? _%port120331%_)
                   (let ((_%port120351%_ _%port120331%_))
                     (__display-build-manifest__%
                      _%manifest120336%_
                      _%port120351%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port120331%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest120365%_ __build-manifest))
          (__build-manifest-string__% _%manifest120365%_))))
    (define __build-manifest-string
      (lambda _g120574_
        (let ((_g120575_ (let () (declare (not safe)) (##length _g120574_))))
          (cond ((let () (declare (not safe)) (##fx= _g120575_ 0))
                 (apply __build-manifest-string__0 _g120574_))
                ((let () (declare (not safe)) (##fx= _g120575_ 1))
                 (apply __build-manifest-string__% _g120574_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g120574_))))))
    (define build-manifest-string__%
      (lambda (_%manifest120083%_)
        (if (list? _%manifest120083%_)
            (let ((_%manifest120087%_ _%manifest120083%_))
              (__build-manifest-string__% _%manifest120087%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest120083%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest120101%_ __build-manifest))
          (__build-manifest-string__% _%manifest120101%_))))
    (define build-manifest-string
      (lambda _g120576_
        (let ((_g120577_ (let () (declare (not safe)) (##length _g120576_))))
          (cond ((let () (declare (not safe)) (##fx= _g120577_ 0))
                 (apply build-manifest-string__0 _g120576_))
                ((let () (declare (not safe)) (##fx= _g120577_ 1))
                 (apply build-manifest-string__% _g120576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g120576_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest120296%_ gerbil-system-manifest)
               (_%manifest120301%_ _%manifest120296%_))
          (__build-manifest-string__% _%manifest120301%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value120281%_)
        (let ((_%new-value120284%_ _%new-value120281%_))
          (set! __gerbil-greeting _%new-value120284%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value120225%_)
        (if (string? _%new-value120225%_)
            (let ((_%new-value120230%_ _%new-value120225%_))
              (__gerbil-greeting-set! _%new-value120230%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value120225%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e120277%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e120277%_ _%$e120277%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e120273%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e120273%_ _%$e120273%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp120578
             (lambda ()
               (if (let ((__tmp120579
                          (let* ((_%str120242%_ (configure-command-string))
                                 (_%char120245%_ '#\')
                                 (_%str120250%_ _%str120242%_)
                                 (_%char120262%_ _%char120245%_))
                            (declare (not safe))
                            (__string-split _%str120250%_ _%char120262%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp120579))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp120578)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
