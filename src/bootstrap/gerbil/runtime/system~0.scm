(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1771025393)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-108-gd63203aeb"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value119862%_)
        (let ((_%new-value119865%_ _%new-value119862%_))
          (set! __build-manifest _%new-value119865%_))))
    (define build-manifest-set!
      (lambda (_%new-value119196%_)
        (if (list? _%new-value119196%_)
            (let ((_%new-value119201%_ _%new-value119196%_))
              (__build-manifest-set! _%new-value119201%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value119196%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest119785%_ _%port119786%_)
        (let* ((_%manifest119789%_ _%manifest119785%_)
               (_%port119797%_ _%port119786%_))
          (let ((_%p119810%_
                 (lambda (_%g119805119807%_)
                   (display _%g119805119807%_ _%port119797%_)))
                (_%l119811%_
                 (let () (declare (not safe)) (##length _%manifest119789%_)))
                (_%i119812%_ '0))
            (let ((__tmp119979
                   (lambda (_%layer119814%_)
                     (if (zero? _%i119812%_)
                         '#!void
                         (if (= _%i119812%_ '1)
                             (_%p119810%_ '" on ")
                             (_%p119810%_ '", ")))
                     (let* ((_%layer119818119825%_ _%layer119814%_)
                            (_%E119820119829%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer119818119825%_
                                      '([name . version]))
                               '#!void))
                            (_%K119821119835%_
                             (lambda (_%version119832%_ _%name119833%_)
                               (_%p119810%_ _%name119833%_)
                               (_%p119810%_ '" ")
                               (_%p119810%_ _%version119832%_))))
                       (if (pair? _%layer119818119825%_)
                           (let ((_%hd119822119838%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer119818119825%_)))
                                 (_%tl119823119840%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer119818119825%_))))
                             (let* ((_%name119843%_ _%hd119822119838%_)
                                    (_%version119845%_ _%tl119823119840%_))
                               (_%K119821119835%_
                                _%version119845%_
                                _%name119843%_)))
                           (_%E119820119829%_)))
                     (set! _%i119812%_ (+ _%i119812%_ '1)))))
              (declare (not safe))
              (##for-each __tmp119979 _%manifest119789%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest119851%_ __build-manifest)
               (_%port119853%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119851%_ _%port119853%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest119855%_)
        (let ((_%port119857%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119855%_ _%port119857%_))))
    (define __display-build-manifest
      (lambda _g119980_
        (let ((_g119981_ (let () (declare (not safe)) (##length _g119980_))))
          (cond ((let () (declare (not safe)) (##fx= _g119981_ 0))
                 (apply __display-build-manifest__0 _g119980_))
                ((let () (declare (not safe)) (##fx= _g119981_ 1))
                 (apply __display-build-manifest__1 _g119980_))
                ((let () (declare (not safe)) (##fx= _g119981_ 2))
                 (apply __display-build-manifest__% _g119980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g119980_))))))
    (define display-build-manifest__%
      (lambda (_%manifest119332%_ _%port119333%_)
        (if (list? _%manifest119332%_)
            (let ((_%manifest119337%_ _%manifest119332%_))
              (if (port? _%port119333%_)
                  (let ((_%port119347%_ _%port119333%_))
                    (__display-build-manifest__%
                     _%manifest119337%_
                     _%port119347%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port119333%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest119332%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest119361%_ __build-manifest)
               (_%port119363%_ (current-output-port)))
          (__display-build-manifest__% _%manifest119361%_ _%port119363%_))))
    (define display-build-manifest__1
      (lambda (_%manifest119365%_)
        (let ((_%port119367%_ (current-output-port)))
          (display-build-manifest__% _%manifest119365%_ _%port119367%_))))
    (define display-build-manifest
      (lambda _g119982_
        (let ((_g119983_ (let () (declare (not safe)) (##length _g119982_))))
          (cond ((let () (declare (not safe)) (##fx= _g119983_ 0))
                 (apply display-build-manifest__0 _g119982_))
                ((let () (declare (not safe)) (##fx= _g119983_ 1))
                 (apply display-build-manifest__1 _g119982_))
                ((let () (declare (not safe)) (##fx= _g119983_ 2))
                 (apply display-build-manifest__% _g119982_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g119982_))))))
    (define build-manifest/layer
      (lambda (_%layer119780%_)
        (let ((_%l119782%_ (assoc _%layer119780%_ __build-manifest)))
          (if _%l119782%_ (cons _%l119782%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest119724%_)
        (let ((_%manifest119727%_ _%manifest119724%_))
          (call-with-output-string
           '()
           (lambda (_%p119736%_)
             (let* ((_%manifest119738%_ _%manifest119727%_)
                    (_%port119741%_ _%p119736%_)
                    (_%manifest119746%_ _%manifest119738%_))
               (if (port? _%port119741%_)
                   (let ((_%port119761%_ _%port119741%_))
                     (__display-build-manifest__%
                      _%manifest119746%_
                      _%port119761%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port119741%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest119775%_ __build-manifest))
          (__build-manifest-string__% _%manifest119775%_))))
    (define __build-manifest-string
      (lambda _g119984_
        (let ((_g119985_ (let () (declare (not safe)) (##length _g119984_))))
          (cond ((let () (declare (not safe)) (##fx= _g119985_ 0))
                 (apply __build-manifest-string__0 _g119984_))
                ((let () (declare (not safe)) (##fx= _g119985_ 1))
                 (apply __build-manifest-string__% _g119984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g119984_))))))
    (define build-manifest-string__%
      (lambda (_%manifest119493%_)
        (if (list? _%manifest119493%_)
            (let ((_%manifest119497%_ _%manifest119493%_))
              (__build-manifest-string__% _%manifest119497%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest119493%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest119511%_ __build-manifest))
          (__build-manifest-string__% _%manifest119511%_))))
    (define build-manifest-string
      (lambda _g119986_
        (let ((_g119987_ (let () (declare (not safe)) (##length _g119986_))))
          (cond ((let () (declare (not safe)) (##fx= _g119987_ 0))
                 (apply build-manifest-string__0 _g119986_))
                ((let () (declare (not safe)) (##fx= _g119987_ 1))
                 (apply build-manifest-string__% _g119986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g119986_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest119706%_ gerbil-system-manifest)
               (_%manifest119711%_ _%manifest119706%_))
          (__build-manifest-string__% _%manifest119711%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value119691%_)
        (let ((_%new-value119694%_ _%new-value119691%_))
          (set! __gerbil-greeting _%new-value119694%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value119635%_)
        (if (string? _%new-value119635%_)
            (let ((_%new-value119640%_ _%new-value119635%_))
              (__gerbil-greeting-set! _%new-value119640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value119635%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e119687%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e119687%_ _%$e119687%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e119683%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e119683%_ _%$e119683%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp119988
             (lambda ()
               (if (let ((__tmp119989
                          (let* ((_%str119652%_ (configure-command-string))
                                 (_%char119655%_ '#\')
                                 (_%str119660%_ _%str119652%_)
                                 (_%char119672%_ _%char119655%_))
                            (declare (not safe))
                            (__string-split _%str119660%_ _%char119672%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp119989))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp119988)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
