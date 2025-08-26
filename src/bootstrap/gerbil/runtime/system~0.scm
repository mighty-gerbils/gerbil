(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1756224514)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-174-ga658a5d99"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value101890%_)
        (if (list? _%new-value101890%_)
            (let ((_%new-value101894%_ _%new-value101890%_))
              (__build-manifest-set! _%new-value101894%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value101890%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value101877%_)
        (let ((_%new-value101881%_ _%new-value101877%_))
          (set! __build-manifest _%new-value101881%_))))
    (define display-build-manifest__%
      (lambda (_%manifest101837%_ _%port101838%_)
        (if (list? _%manifest101837%_)
            (let ((_%manifest101842%_ _%manifest101837%_))
              (if (port? _%port101838%_)
                  (let ((_%port101852%_ _%port101838%_))
                    (__display-build-manifest__%
                     _%manifest101842%_
                     _%port101852%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port101838%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest101837%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest101866%_ __build-manifest)
               (_%port101868%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101866%_ _%port101868%_))))
    (define display-build-manifest__1
      (lambda (_%manifest101870%_)
        (let ((_%port101872%_ (current-output-port)))
          (display-build-manifest__% _%manifest101870%_ _%port101872%_))))
    (define display-build-manifest
      (lambda _g101905_
        (let ((_g101906_ (let () (declare (not safe)) (##length _g101905_))))
          (cond ((let () (declare (not safe)) (##fx= _g101906_ 0))
                 (apply display-build-manifest__0 _g101905_))
                ((let () (declare (not safe)) (##fx= _g101906_ 1))
                 (apply display-build-manifest__1 _g101905_))
                ((let () (declare (not safe)) (##fx= _g101906_ 2))
                 (apply display-build-manifest__% _g101905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g101905_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest101759%_ _%port101760%_)
        (let* ((_%manifest101763%_ _%manifest101759%_)
               (_%port101771%_ _%port101760%_))
          (let ((_%p101784%_
                 (lambda (_%g101779101781%_)
                   (display _%g101779101781%_ _%port101771%_)))
                (_%l101785%_
                 (let () (declare (not safe)) (##length _%manifest101763%_)))
                (_%i101786%_ '0))
            (let ((__tmp101907
                   (lambda (_%layer101788%_)
                     (if (zero? _%i101786%_)
                         '#!void
                         (if (= _%i101786%_ '1)
                             (_%p101784%_ '" on ")
                             (_%p101784%_ '", ")))
                     (let* ((_%layer101792101799%_ _%layer101788%_)
                            (_%E101794101803%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer101792101799%_
                                      '([name . version]))
                               '#!void))
                            (_%K101795101809%_
                             (lambda (_%version101806%_ _%name101807%_)
                               (_%p101784%_ _%name101807%_)
                               (_%p101784%_ '" ")
                               (_%p101784%_ _%version101806%_))))
                       (if (pair? _%layer101792101799%_)
                           (let ((_%hd101796101812%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer101792101799%_)))
                                 (_%tl101797101814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer101792101799%_))))
                             (let* ((_%name101817%_ _%hd101796101812%_)
                                    (_%version101819%_ _%tl101797101814%_))
                               (_%K101795101809%_
                                _%version101819%_
                                _%name101817%_)))
                           (_%E101794101803%_)))
                     (set! _%i101786%_ (+ _%i101786%_ '1)))))
              (declare (not safe))
              (##for-each __tmp101907 _%manifest101763%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest101825%_ __build-manifest)
               (_%port101827%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101825%_ _%port101827%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest101829%_)
        (let ((_%port101831%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101829%_ _%port101831%_))))
    (define __display-build-manifest
      (lambda _g101908_
        (let ((_g101909_ (let () (declare (not safe)) (##length _g101908_))))
          (cond ((let () (declare (not safe)) (##fx= _g101909_ 0))
                 (apply __display-build-manifest__0 _g101908_))
                ((let () (declare (not safe)) (##fx= _g101909_ 1))
                 (apply __display-build-manifest__1 _g101908_))
                ((let () (declare (not safe)) (##fx= _g101909_ 2))
                 (apply __display-build-manifest__% _g101908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g101908_))))))
    (define build-manifest/layer
      (lambda (_%layer101754%_)
        (let ((_%l101756%_ (assoc _%layer101754%_ __build-manifest)))
          (if _%l101756%_ (cons _%l101756%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest101731%_)
        (if (list? _%manifest101731%_)
            (let ((_%manifest101735%_ _%manifest101731%_))
              (__build-manifest-string__% _%manifest101735%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest101731%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest101749%_ __build-manifest))
          (__build-manifest-string__% _%manifest101749%_))))
    (define build-manifest-string
      (lambda _g101910_
        (let ((_g101911_ (let () (declare (not safe)) (##length _g101910_))))
          (cond ((let () (declare (not safe)) (##fx= _g101911_ 0))
                 (apply build-manifest-string__0 _g101910_))
                ((let () (declare (not safe)) (##fx= _g101911_ 1))
                 (apply build-manifest-string__% _g101910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g101910_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest101708%_)
        (let ((_%manifest101711%_ _%manifest101708%_))
          (call-with-output-string
           '()
           (lambda (_%p101720%_)
             (display-build-manifest__% _%manifest101711%_ _%p101720%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest101726%_ __build-manifest))
          (__build-manifest-string__% _%manifest101726%_))))
    (define __build-manifest-string
      (lambda _g101912_
        (let ((_g101913_ (let () (declare (not safe)) (##length _g101912_))))
          (cond ((let () (declare (not safe)) (##fx= _g101913_ 0))
                 (apply __build-manifest-string__0 _g101912_))
                ((let () (declare (not safe)) (##fx= _g101913_ 1))
                 (apply __build-manifest-string__% _g101912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g101912_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value101690%_)
        (if (string? _%new-value101690%_)
            (let ((_%new-value101694%_ _%new-value101690%_))
              (__gerbil-greeting-set! _%new-value101694%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value101690%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value101676%_)
        (let ((_%new-value101680%_ _%new-value101676%_))
          (set! __gerbil-greeting _%new-value101680%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e101672%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e101672%_ _%$e101672%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e101668%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e101668%_ _%$e101668%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp101914
                             (let ((__tmp101915 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp101915 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp101914))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
