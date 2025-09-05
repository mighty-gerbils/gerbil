(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1756721294)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-168-gd2cf28913"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value102305%_)
        (if (list? _%new-value102305%_)
            (let ((_%new-value102309%_ _%new-value102305%_))
              (__build-manifest-set! _%new-value102309%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value102305%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value102292%_)
        (let ((_%new-value102296%_ _%new-value102292%_))
          (set! __build-manifest _%new-value102296%_))))
    (define display-build-manifest__%
      (lambda (_%manifest102252%_ _%port102253%_)
        (if (list? _%manifest102252%_)
            (let ((_%manifest102257%_ _%manifest102252%_))
              (if (port? _%port102253%_)
                  (let ((_%port102267%_ _%port102253%_))
                    (__display-build-manifest__%
                     _%manifest102257%_
                     _%port102267%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port102253%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest102252%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest102281%_ __build-manifest)
               (_%port102283%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102281%_ _%port102283%_))))
    (define display-build-manifest__1
      (lambda (_%manifest102285%_)
        (let ((_%port102287%_ (current-output-port)))
          (display-build-manifest__% _%manifest102285%_ _%port102287%_))))
    (define display-build-manifest
      (lambda _g102320_
        (let ((_g102321_ (let () (declare (not safe)) (##length _g102320_))))
          (cond ((let () (declare (not safe)) (##fx= _g102321_ 0))
                 (apply display-build-manifest__0 _g102320_))
                ((let () (declare (not safe)) (##fx= _g102321_ 1))
                 (apply display-build-manifest__1 _g102320_))
                ((let () (declare (not safe)) (##fx= _g102321_ 2))
                 (apply display-build-manifest__% _g102320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g102320_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest102174%_ _%port102175%_)
        (let* ((_%manifest102178%_ _%manifest102174%_)
               (_%port102186%_ _%port102175%_))
          (let ((_%p102199%_
                 (lambda (_%g102194102196%_)
                   (display _%g102194102196%_ _%port102186%_)))
                (_%l102200%_
                 (let () (declare (not safe)) (##length _%manifest102178%_)))
                (_%i102201%_ '0))
            (let ((__tmp102322
                   (lambda (_%layer102203%_)
                     (if (zero? _%i102201%_)
                         '#!void
                         (if (= _%i102201%_ '1)
                             (_%p102199%_ '" on ")
                             (_%p102199%_ '", ")))
                     (let* ((_%layer102207102214%_ _%layer102203%_)
                            (_%E102209102218%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer102207102214%_
                                      '([name . version]))
                               '#!void))
                            (_%K102210102224%_
                             (lambda (_%version102221%_ _%name102222%_)
                               (_%p102199%_ _%name102222%_)
                               (_%p102199%_ '" ")
                               (_%p102199%_ _%version102221%_))))
                       (if (pair? _%layer102207102214%_)
                           (let ((_%hd102211102227%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer102207102214%_)))
                                 (_%tl102212102229%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer102207102214%_))))
                             (let* ((_%name102232%_ _%hd102211102227%_)
                                    (_%version102234%_ _%tl102212102229%_))
                               (_%K102210102224%_
                                _%version102234%_
                                _%name102232%_)))
                           (_%E102209102218%_)))
                     (set! _%i102201%_ (+ _%i102201%_ '1)))))
              (declare (not safe))
              (##for-each __tmp102322 _%manifest102178%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest102240%_ __build-manifest)
               (_%port102242%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102240%_ _%port102242%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest102244%_)
        (let ((_%port102246%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102244%_ _%port102246%_))))
    (define __display-build-manifest
      (lambda _g102323_
        (let ((_g102324_ (let () (declare (not safe)) (##length _g102323_))))
          (cond ((let () (declare (not safe)) (##fx= _g102324_ 0))
                 (apply __display-build-manifest__0 _g102323_))
                ((let () (declare (not safe)) (##fx= _g102324_ 1))
                 (apply __display-build-manifest__1 _g102323_))
                ((let () (declare (not safe)) (##fx= _g102324_ 2))
                 (apply __display-build-manifest__% _g102323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g102323_))))))
    (define build-manifest/layer
      (lambda (_%layer102169%_)
        (let ((_%l102171%_ (assoc _%layer102169%_ __build-manifest)))
          (if _%l102171%_ (cons _%l102171%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest102146%_)
        (if (list? _%manifest102146%_)
            (let ((_%manifest102150%_ _%manifest102146%_))
              (__build-manifest-string__% _%manifest102150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest102146%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest102164%_ __build-manifest))
          (__build-manifest-string__% _%manifest102164%_))))
    (define build-manifest-string
      (lambda _g102325_
        (let ((_g102326_ (let () (declare (not safe)) (##length _g102325_))))
          (cond ((let () (declare (not safe)) (##fx= _g102326_ 0))
                 (apply build-manifest-string__0 _g102325_))
                ((let () (declare (not safe)) (##fx= _g102326_ 1))
                 (apply build-manifest-string__% _g102325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g102325_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest102123%_)
        (let ((_%manifest102126%_ _%manifest102123%_))
          (call-with-output-string
           '()
           (lambda (_%p102135%_)
             (display-build-manifest__% _%manifest102126%_ _%p102135%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest102141%_ __build-manifest))
          (__build-manifest-string__% _%manifest102141%_))))
    (define __build-manifest-string
      (lambda _g102327_
        (let ((_g102328_ (let () (declare (not safe)) (##length _g102327_))))
          (cond ((let () (declare (not safe)) (##fx= _g102328_ 0))
                 (apply __build-manifest-string__0 _g102327_))
                ((let () (declare (not safe)) (##fx= _g102328_ 1))
                 (apply __build-manifest-string__% _g102327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g102327_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value102105%_)
        (if (string? _%new-value102105%_)
            (let ((_%new-value102109%_ _%new-value102105%_))
              (__gerbil-greeting-set! _%new-value102109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value102105%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value102091%_)
        (let ((_%new-value102095%_ _%new-value102091%_))
          (set! __gerbil-greeting _%new-value102095%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e102087%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e102087%_ _%$e102087%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e102083%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e102083%_ _%$e102083%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp102329
                             (let ((__tmp102330 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp102330 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp102329))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
