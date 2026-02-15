(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1771178561)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-126-gba73f20ca"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value120471%_)
        (let ((_%new-value120474%_ _%new-value120471%_))
          (set! __build-manifest _%new-value120474%_))))
    (define build-manifest-set!
      (lambda (_%new-value119805%_)
        (if (list? _%new-value119805%_)
            (let ((_%new-value119810%_ _%new-value119805%_))
              (__build-manifest-set! _%new-value119810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value119805%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest120394%_ _%port120395%_)
        (let* ((_%manifest120398%_ _%manifest120394%_)
               (_%port120406%_ _%port120395%_))
          (let ((_%p120419%_
                 (lambda (_%g120414120416%_)
                   (display _%g120414120416%_ _%port120406%_)))
                (_%l120420%_
                 (let () (declare (not safe)) (##length _%manifest120398%_)))
                (_%i120421%_ '0))
            (let ((__tmp120588
                   (lambda (_%layer120423%_)
                     (if (zero? _%i120421%_)
                         '#!void
                         (if (= _%i120421%_ '1)
                             (_%p120419%_ '" on ")
                             (_%p120419%_ '", ")))
                     (let* ((_%layer120427120434%_ _%layer120423%_)
                            (_%E120429120438%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer120427120434%_
                                      '([name . version]))
                               '#!void))
                            (_%K120430120444%_
                             (lambda (_%version120441%_ _%name120442%_)
                               (_%p120419%_ _%name120442%_)
                               (_%p120419%_ '" ")
                               (_%p120419%_ _%version120441%_))))
                       (if (pair? _%layer120427120434%_)
                           (let ((_%hd120431120447%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer120427120434%_)))
                                 (_%tl120432120449%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer120427120434%_))))
                             (let* ((_%name120452%_ _%hd120431120447%_)
                                    (_%version120454%_ _%tl120432120449%_))
                               (_%K120430120444%_
                                _%version120454%_
                                _%name120452%_)))
                           (_%E120429120438%_)))
                     (set! _%i120421%_ (+ _%i120421%_ '1)))))
              (declare (not safe))
              (##for-each __tmp120588 _%manifest120398%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest120460%_ __build-manifest)
               (_%port120462%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120460%_ _%port120462%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest120464%_)
        (let ((_%port120466%_ (current-output-port)))
          (__display-build-manifest__% _%manifest120464%_ _%port120466%_))))
    (define __display-build-manifest
      (lambda _g120589_
        (let ((_g120590_ (let () (declare (not safe)) (##length _g120589_))))
          (cond ((let () (declare (not safe)) (##fx= _g120590_ 0))
                 (apply __display-build-manifest__0 _g120589_))
                ((let () (declare (not safe)) (##fx= _g120590_ 1))
                 (apply __display-build-manifest__1 _g120589_))
                ((let () (declare (not safe)) (##fx= _g120590_ 2))
                 (apply __display-build-manifest__% _g120589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g120589_))))))
    (define display-build-manifest__%
      (lambda (_%manifest119941%_ _%port119942%_)
        (if (list? _%manifest119941%_)
            (let ((_%manifest119946%_ _%manifest119941%_))
              (if (port? _%port119942%_)
                  (let ((_%port119956%_ _%port119942%_))
                    (__display-build-manifest__%
                     _%manifest119946%_
                     _%port119956%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port119942%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest119941%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest119970%_ __build-manifest)
               (_%port119972%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119970%_ _%port119972%_))))
    (define display-build-manifest__1
      (lambda (_%manifest119974%_)
        (let ((_%port119976%_ (current-output-port)))
          (display-build-manifest__% _%manifest119974%_ _%port119976%_))))
    (define display-build-manifest
      (lambda _g120591_
        (let ((_g120592_ (let () (declare (not safe)) (##length _g120591_))))
          (cond ((let () (declare (not safe)) (##fx= _g120592_ 0))
                 (apply display-build-manifest__0 _g120591_))
                ((let () (declare (not safe)) (##fx= _g120592_ 1))
                 (apply display-build-manifest__1 _g120591_))
                ((let () (declare (not safe)) (##fx= _g120592_ 2))
                 (apply display-build-manifest__% _g120591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g120591_))))))
    (define build-manifest/layer
      (lambda (_%layer120389%_)
        (let ((_%l120391%_ (assoc _%layer120389%_ __build-manifest)))
          (if _%l120391%_ (cons _%l120391%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest120333%_)
        (let ((_%manifest120336%_ _%manifest120333%_))
          (call-with-output-string
           '()
           (lambda (_%p120345%_)
             (let* ((_%manifest120347%_ _%manifest120336%_)
                    (_%port120350%_ _%p120345%_)
                    (_%manifest120355%_ _%manifest120347%_))
               (if (port? _%port120350%_)
                   (let ((_%port120370%_ _%port120350%_))
                     (__display-build-manifest__%
                      _%manifest120355%_
                      _%port120370%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port120350%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest120384%_ __build-manifest))
          (__build-manifest-string__% _%manifest120384%_))))
    (define __build-manifest-string
      (lambda _g120593_
        (let ((_g120594_ (let () (declare (not safe)) (##length _g120593_))))
          (cond ((let () (declare (not safe)) (##fx= _g120594_ 0))
                 (apply __build-manifest-string__0 _g120593_))
                ((let () (declare (not safe)) (##fx= _g120594_ 1))
                 (apply __build-manifest-string__% _g120593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g120593_))))))
    (define build-manifest-string__%
      (lambda (_%manifest120102%_)
        (if (list? _%manifest120102%_)
            (let ((_%manifest120106%_ _%manifest120102%_))
              (__build-manifest-string__% _%manifest120106%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest120102%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest120120%_ __build-manifest))
          (__build-manifest-string__% _%manifest120120%_))))
    (define build-manifest-string
      (lambda _g120595_
        (let ((_g120596_ (let () (declare (not safe)) (##length _g120595_))))
          (cond ((let () (declare (not safe)) (##fx= _g120596_ 0))
                 (apply build-manifest-string__0 _g120595_))
                ((let () (declare (not safe)) (##fx= _g120596_ 1))
                 (apply build-manifest-string__% _g120595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g120595_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest120315%_ gerbil-system-manifest)
               (_%manifest120320%_ _%manifest120315%_))
          (__build-manifest-string__% _%manifest120320%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value120300%_)
        (let ((_%new-value120303%_ _%new-value120300%_))
          (set! __gerbil-greeting _%new-value120303%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value120244%_)
        (if (string? _%new-value120244%_)
            (let ((_%new-value120249%_ _%new-value120244%_))
              (__gerbil-greeting-set! _%new-value120249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value120244%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e120296%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e120296%_ _%$e120296%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e120292%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e120292%_ _%$e120292%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp120597
             (lambda ()
               (if (let ((__tmp120598
                          (let* ((_%str120261%_ (configure-command-string))
                                 (_%char120264%_ '#\')
                                 (_%str120269%_ _%str120261%_)
                                 (_%char120281%_ _%char120264%_))
                            (declare (not safe))
                            (__string-split _%str120269%_ _%char120281%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp120598))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp120597)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
