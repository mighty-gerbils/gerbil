(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770513293)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-58-g7cf44d135"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value117972%_)
        (let ((_%new-value117975%_ _%new-value117972%_))
          (set! __build-manifest _%new-value117975%_))))
    (define build-manifest-set!
      (lambda (_%new-value117306%_)
        (if (list? _%new-value117306%_)
            (let ((_%new-value117311%_ _%new-value117306%_))
              (__build-manifest-set! _%new-value117311%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value117306%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest117895%_ _%port117896%_)
        (let* ((_%manifest117899%_ _%manifest117895%_)
               (_%port117907%_ _%port117896%_))
          (let ((_%p117920%_
                 (lambda (_%g117915117917%_)
                   (display _%g117915117917%_ _%port117907%_)))
                (_%l117921%_
                 (let () (declare (not safe)) (##length _%manifest117899%_)))
                (_%i117922%_ '0))
            (let ((__tmp118089
                   (lambda (_%layer117924%_)
                     (if (zero? _%i117922%_)
                         '#!void
                         (if (= _%i117922%_ '1)
                             (_%p117920%_ '" on ")
                             (_%p117920%_ '", ")))
                     (let* ((_%layer117928117935%_ _%layer117924%_)
                            (_%E117930117939%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer117928117935%_
                                      '([name . version]))
                               '#!void))
                            (_%K117931117945%_
                             (lambda (_%version117942%_ _%name117943%_)
                               (_%p117920%_ _%name117943%_)
                               (_%p117920%_ '" ")
                               (_%p117920%_ _%version117942%_))))
                       (if (pair? _%layer117928117935%_)
                           (let ((_%hd117932117948%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer117928117935%_)))
                                 (_%tl117933117950%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer117928117935%_))))
                             (let* ((_%name117953%_ _%hd117932117948%_)
                                    (_%version117955%_ _%tl117933117950%_))
                               (_%K117931117945%_
                                _%version117955%_
                                _%name117953%_)))
                           (_%E117930117939%_)))
                     (set! _%i117922%_ (+ _%i117922%_ '1)))))
              (declare (not safe))
              (##for-each __tmp118089 _%manifest117899%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117961%_ __build-manifest)
               (_%port117963%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117961%_ _%port117963%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest117965%_)
        (let ((_%port117967%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117965%_ _%port117967%_))))
    (define __display-build-manifest
      (lambda _g118090_
        (let ((_g118091_ (let () (declare (not safe)) (##length _g118090_))))
          (cond ((let () (declare (not safe)) (##fx= _g118091_ 0))
                 (apply __display-build-manifest__0 _g118090_))
                ((let () (declare (not safe)) (##fx= _g118091_ 1))
                 (apply __display-build-manifest__1 _g118090_))
                ((let () (declare (not safe)) (##fx= _g118091_ 2))
                 (apply __display-build-manifest__% _g118090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g118090_))))))
    (define display-build-manifest__%
      (lambda (_%manifest117442%_ _%port117443%_)
        (if (list? _%manifest117442%_)
            (let ((_%manifest117447%_ _%manifest117442%_))
              (if (port? _%port117443%_)
                  (let ((_%port117457%_ _%port117443%_))
                    (__display-build-manifest__%
                     _%manifest117447%_
                     _%port117457%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port117443%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest117442%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117471%_ __build-manifest)
               (_%port117473%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117471%_ _%port117473%_))))
    (define display-build-manifest__1
      (lambda (_%manifest117475%_)
        (let ((_%port117477%_ (current-output-port)))
          (display-build-manifest__% _%manifest117475%_ _%port117477%_))))
    (define display-build-manifest
      (lambda _g118092_
        (let ((_g118093_ (let () (declare (not safe)) (##length _g118092_))))
          (cond ((let () (declare (not safe)) (##fx= _g118093_ 0))
                 (apply display-build-manifest__0 _g118092_))
                ((let () (declare (not safe)) (##fx= _g118093_ 1))
                 (apply display-build-manifest__1 _g118092_))
                ((let () (declare (not safe)) (##fx= _g118093_ 2))
                 (apply display-build-manifest__% _g118092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g118092_))))))
    (define build-manifest/layer
      (lambda (_%layer117890%_)
        (let ((_%l117892%_ (assoc _%layer117890%_ __build-manifest)))
          (if _%l117892%_ (cons _%l117892%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest117834%_)
        (let ((_%manifest117837%_ _%manifest117834%_))
          (call-with-output-string
           '()
           (lambda (_%p117846%_)
             (let* ((_%manifest117848%_ _%manifest117837%_)
                    (_%port117851%_ _%p117846%_)
                    (_%manifest117856%_ _%manifest117848%_))
               (if (port? _%port117851%_)
                   (let ((_%port117871%_ _%port117851%_))
                     (__display-build-manifest__%
                      _%manifest117856%_
                      _%port117871%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port117851%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest117885%_ __build-manifest))
          (__build-manifest-string__% _%manifest117885%_))))
    (define __build-manifest-string
      (lambda _g118094_
        (let ((_g118095_ (let () (declare (not safe)) (##length _g118094_))))
          (cond ((let () (declare (not safe)) (##fx= _g118095_ 0))
                 (apply __build-manifest-string__0 _g118094_))
                ((let () (declare (not safe)) (##fx= _g118095_ 1))
                 (apply __build-manifest-string__% _g118094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g118094_))))))
    (define build-manifest-string__%
      (lambda (_%manifest117603%_)
        (if (list? _%manifest117603%_)
            (let ((_%manifest117607%_ _%manifest117603%_))
              (__build-manifest-string__% _%manifest117607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest117603%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest117621%_ __build-manifest))
          (__build-manifest-string__% _%manifest117621%_))))
    (define build-manifest-string
      (lambda _g118096_
        (let ((_g118097_ (let () (declare (not safe)) (##length _g118096_))))
          (cond ((let () (declare (not safe)) (##fx= _g118097_ 0))
                 (apply build-manifest-string__0 _g118096_))
                ((let () (declare (not safe)) (##fx= _g118097_ 1))
                 (apply build-manifest-string__% _g118096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g118096_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest117816%_ gerbil-system-manifest)
               (_%manifest117821%_ _%manifest117816%_))
          (__build-manifest-string__% _%manifest117821%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value117801%_)
        (let ((_%new-value117804%_ _%new-value117801%_))
          (set! __gerbil-greeting _%new-value117804%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value117745%_)
        (if (string? _%new-value117745%_)
            (let ((_%new-value117750%_ _%new-value117745%_))
              (__gerbil-greeting-set! _%new-value117750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value117745%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e117797%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e117797%_ _%$e117797%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e117793%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e117793%_ _%$e117793%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp118098
             (lambda ()
               (if (let ((__tmp118099
                          (let* ((_%str117762%_ (configure-command-string))
                                 (_%char117765%_ '#\')
                                 (_%str117770%_ _%str117762%_)
                                 (_%char117782%_ _%char117765%_))
                            (declare (not safe))
                            (__string-split _%str117770%_ _%char117782%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp118099))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp118098)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
