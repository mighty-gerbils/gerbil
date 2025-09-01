(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1756715351)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-168-gd2cf28913"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value102307%_)
        (if (list? _%new-value102307%_)
            (let ((_%new-value102311%_ _%new-value102307%_))
              (__build-manifest-set! _%new-value102311%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value102307%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value102294%_)
        (let ((_%new-value102298%_ _%new-value102294%_))
          (set! __build-manifest _%new-value102298%_))))
    (define display-build-manifest__%
      (lambda (_%manifest102254%_ _%port102255%_)
        (if (list? _%manifest102254%_)
            (let ((_%manifest102259%_ _%manifest102254%_))
              (if (port? _%port102255%_)
                  (let ((_%port102269%_ _%port102255%_))
                    (__display-build-manifest__%
                     _%manifest102259%_
                     _%port102269%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port102255%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest102254%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest102283%_ __build-manifest)
               (_%port102285%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102283%_ _%port102285%_))))
    (define display-build-manifest__1
      (lambda (_%manifest102287%_)
        (let ((_%port102289%_ (current-output-port)))
          (display-build-manifest__% _%manifest102287%_ _%port102289%_))))
    (define display-build-manifest
      (lambda _g102322_
        (let ((_g102323_ (let () (declare (not safe)) (##length _g102322_))))
          (cond ((let () (declare (not safe)) (##fx= _g102323_ 0))
                 (apply display-build-manifest__0 _g102322_))
                ((let () (declare (not safe)) (##fx= _g102323_ 1))
                 (apply display-build-manifest__1 _g102322_))
                ((let () (declare (not safe)) (##fx= _g102323_ 2))
                 (apply display-build-manifest__% _g102322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g102322_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest102176%_ _%port102177%_)
        (let* ((_%manifest102180%_ _%manifest102176%_)
               (_%port102188%_ _%port102177%_))
          (let ((_%p102201%_
                 (lambda (_%g102196102198%_)
                   (display _%g102196102198%_ _%port102188%_)))
                (_%l102202%_
                 (let () (declare (not safe)) (##length _%manifest102180%_)))
                (_%i102203%_ '0))
            (let ((__tmp102324
                   (lambda (_%layer102205%_)
                     (if (zero? _%i102203%_)
                         '#!void
                         (if (= _%i102203%_ '1)
                             (_%p102201%_ '" on ")
                             (_%p102201%_ '", ")))
                     (let* ((_%layer102209102216%_ _%layer102205%_)
                            (_%E102211102220%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer102209102216%_
                                      '([name . version]))
                               '#!void))
                            (_%K102212102226%_
                             (lambda (_%version102223%_ _%name102224%_)
                               (_%p102201%_ _%name102224%_)
                               (_%p102201%_ '" ")
                               (_%p102201%_ _%version102223%_))))
                       (if (pair? _%layer102209102216%_)
                           (let ((_%hd102213102229%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer102209102216%_)))
                                 (_%tl102214102231%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer102209102216%_))))
                             (let* ((_%name102234%_ _%hd102213102229%_)
                                    (_%version102236%_ _%tl102214102231%_))
                               (_%K102212102226%_
                                _%version102236%_
                                _%name102234%_)))
                           (_%E102211102220%_)))
                     (set! _%i102203%_ (+ _%i102203%_ '1)))))
              (declare (not safe))
              (##for-each __tmp102324 _%manifest102180%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest102242%_ __build-manifest)
               (_%port102244%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102242%_ _%port102244%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest102246%_)
        (let ((_%port102248%_ (current-output-port)))
          (__display-build-manifest__% _%manifest102246%_ _%port102248%_))))
    (define __display-build-manifest
      (lambda _g102325_
        (let ((_g102326_ (let () (declare (not safe)) (##length _g102325_))))
          (cond ((let () (declare (not safe)) (##fx= _g102326_ 0))
                 (apply __display-build-manifest__0 _g102325_))
                ((let () (declare (not safe)) (##fx= _g102326_ 1))
                 (apply __display-build-manifest__1 _g102325_))
                ((let () (declare (not safe)) (##fx= _g102326_ 2))
                 (apply __display-build-manifest__% _g102325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g102325_))))))
    (define build-manifest/layer
      (lambda (_%layer102171%_)
        (let ((_%l102173%_ (assoc _%layer102171%_ __build-manifest)))
          (if _%l102173%_ (cons _%l102173%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest102148%_)
        (if (list? _%manifest102148%_)
            (let ((_%manifest102152%_ _%manifest102148%_))
              (__build-manifest-string__% _%manifest102152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest102148%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest102166%_ __build-manifest))
          (__build-manifest-string__% _%manifest102166%_))))
    (define build-manifest-string
      (lambda _g102327_
        (let ((_g102328_ (let () (declare (not safe)) (##length _g102327_))))
          (cond ((let () (declare (not safe)) (##fx= _g102328_ 0))
                 (apply build-manifest-string__0 _g102327_))
                ((let () (declare (not safe)) (##fx= _g102328_ 1))
                 (apply build-manifest-string__% _g102327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g102327_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest102125%_)
        (let ((_%manifest102128%_ _%manifest102125%_))
          (call-with-output-string
           '()
           (lambda (_%p102137%_)
             (display-build-manifest__% _%manifest102128%_ _%p102137%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest102143%_ __build-manifest))
          (__build-manifest-string__% _%manifest102143%_))))
    (define __build-manifest-string
      (lambda _g102329_
        (let ((_g102330_ (let () (declare (not safe)) (##length _g102329_))))
          (cond ((let () (declare (not safe)) (##fx= _g102330_ 0))
                 (apply __build-manifest-string__0 _g102329_))
                ((let () (declare (not safe)) (##fx= _g102330_ 1))
                 (apply __build-manifest-string__% _g102329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g102329_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value102107%_)
        (if (string? _%new-value102107%_)
            (let ((_%new-value102111%_ _%new-value102107%_))
              (__gerbil-greeting-set! _%new-value102111%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value102107%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value102093%_)
        (let ((_%new-value102097%_ _%new-value102093%_))
          (set! __gerbil-greeting _%new-value102097%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e102089%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e102089%_ _%$e102089%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e102085%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e102085%_ _%$e102085%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp102331
                             (let ((__tmp102332 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp102332 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp102331))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
