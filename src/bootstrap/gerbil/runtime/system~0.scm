(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770405370)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-49-g73b4678cd"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value117880%_)
        (let ((_%new-value117883%_ _%new-value117880%_))
          (set! __build-manifest _%new-value117883%_))))
    (define build-manifest-set!
      (lambda (_%new-value117214%_)
        (if (list? _%new-value117214%_)
            (let ((_%new-value117219%_ _%new-value117214%_))
              (__build-manifest-set! _%new-value117219%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value117214%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest117803%_ _%port117804%_)
        (let* ((_%manifest117807%_ _%manifest117803%_)
               (_%port117815%_ _%port117804%_))
          (let ((_%p117828%_
                 (lambda (_%g117823117825%_)
                   (display _%g117823117825%_ _%port117815%_)))
                (_%l117829%_
                 (let () (declare (not safe)) (##length _%manifest117807%_)))
                (_%i117830%_ '0))
            (let ((__tmp117997
                   (lambda (_%layer117832%_)
                     (if (zero? _%i117830%_)
                         '#!void
                         (if (= _%i117830%_ '1)
                             (_%p117828%_ '" on ")
                             (_%p117828%_ '", ")))
                     (let* ((_%layer117836117843%_ _%layer117832%_)
                            (_%E117838117847%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer117836117843%_
                                      '([name . version]))
                               '#!void))
                            (_%K117839117853%_
                             (lambda (_%version117850%_ _%name117851%_)
                               (_%p117828%_ _%name117851%_)
                               (_%p117828%_ '" ")
                               (_%p117828%_ _%version117850%_))))
                       (if (pair? _%layer117836117843%_)
                           (let ((_%hd117840117856%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer117836117843%_)))
                                 (_%tl117841117858%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer117836117843%_))))
                             (let* ((_%name117861%_ _%hd117840117856%_)
                                    (_%version117863%_ _%tl117841117858%_))
                               (_%K117839117853%_
                                _%version117863%_
                                _%name117861%_)))
                           (_%E117838117847%_)))
                     (set! _%i117830%_ (+ _%i117830%_ '1)))))
              (declare (not safe))
              (##for-each __tmp117997 _%manifest117807%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117869%_ __build-manifest)
               (_%port117871%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117869%_ _%port117871%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest117873%_)
        (let ((_%port117875%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117873%_ _%port117875%_))))
    (define __display-build-manifest
      (lambda _g117998_
        (let ((_g117999_ (let () (declare (not safe)) (##length _g117998_))))
          (cond ((let () (declare (not safe)) (##fx= _g117999_ 0))
                 (apply __display-build-manifest__0 _g117998_))
                ((let () (declare (not safe)) (##fx= _g117999_ 1))
                 (apply __display-build-manifest__1 _g117998_))
                ((let () (declare (not safe)) (##fx= _g117999_ 2))
                 (apply __display-build-manifest__% _g117998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g117998_))))))
    (define display-build-manifest__%
      (lambda (_%manifest117350%_ _%port117351%_)
        (if (list? _%manifest117350%_)
            (let ((_%manifest117355%_ _%manifest117350%_))
              (if (port? _%port117351%_)
                  (let ((_%port117365%_ _%port117351%_))
                    (__display-build-manifest__%
                     _%manifest117355%_
                     _%port117365%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port117351%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest117350%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117379%_ __build-manifest)
               (_%port117381%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117379%_ _%port117381%_))))
    (define display-build-manifest__1
      (lambda (_%manifest117383%_)
        (let ((_%port117385%_ (current-output-port)))
          (display-build-manifest__% _%manifest117383%_ _%port117385%_))))
    (define display-build-manifest
      (lambda _g118000_
        (let ((_g118001_ (let () (declare (not safe)) (##length _g118000_))))
          (cond ((let () (declare (not safe)) (##fx= _g118001_ 0))
                 (apply display-build-manifest__0 _g118000_))
                ((let () (declare (not safe)) (##fx= _g118001_ 1))
                 (apply display-build-manifest__1 _g118000_))
                ((let () (declare (not safe)) (##fx= _g118001_ 2))
                 (apply display-build-manifest__% _g118000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g118000_))))))
    (define build-manifest/layer
      (lambda (_%layer117798%_)
        (let ((_%l117800%_ (assoc _%layer117798%_ __build-manifest)))
          (if _%l117800%_ (cons _%l117800%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest117742%_)
        (let ((_%manifest117745%_ _%manifest117742%_))
          (call-with-output-string
           '()
           (lambda (_%p117754%_)
             (let* ((_%manifest117756%_ _%manifest117745%_)
                    (_%port117759%_ _%p117754%_)
                    (_%manifest117764%_ _%manifest117756%_))
               (if (port? _%port117759%_)
                   (let ((_%port117779%_ _%port117759%_))
                     (__display-build-manifest__%
                      _%manifest117764%_
                      _%port117779%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port117759%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest117793%_ __build-manifest))
          (__build-manifest-string__% _%manifest117793%_))))
    (define __build-manifest-string
      (lambda _g118002_
        (let ((_g118003_ (let () (declare (not safe)) (##length _g118002_))))
          (cond ((let () (declare (not safe)) (##fx= _g118003_ 0))
                 (apply __build-manifest-string__0 _g118002_))
                ((let () (declare (not safe)) (##fx= _g118003_ 1))
                 (apply __build-manifest-string__% _g118002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g118002_))))))
    (define build-manifest-string__%
      (lambda (_%manifest117511%_)
        (if (list? _%manifest117511%_)
            (let ((_%manifest117515%_ _%manifest117511%_))
              (__build-manifest-string__% _%manifest117515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest117511%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest117529%_ __build-manifest))
          (__build-manifest-string__% _%manifest117529%_))))
    (define build-manifest-string
      (lambda _g118004_
        (let ((_g118005_ (let () (declare (not safe)) (##length _g118004_))))
          (cond ((let () (declare (not safe)) (##fx= _g118005_ 0))
                 (apply build-manifest-string__0 _g118004_))
                ((let () (declare (not safe)) (##fx= _g118005_ 1))
                 (apply build-manifest-string__% _g118004_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g118004_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest117724%_ gerbil-system-manifest)
               (_%manifest117729%_ _%manifest117724%_))
          (__build-manifest-string__% _%manifest117729%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value117709%_)
        (let ((_%new-value117712%_ _%new-value117709%_))
          (set! __gerbil-greeting _%new-value117712%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value117653%_)
        (if (string? _%new-value117653%_)
            (let ((_%new-value117658%_ _%new-value117653%_))
              (__gerbil-greeting-set! _%new-value117658%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value117653%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e117705%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e117705%_ _%$e117705%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e117701%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e117701%_ _%$e117701%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp118006
             (lambda ()
               (if (let ((__tmp118007
                          (let* ((_%str117670%_ (configure-command-string))
                                 (_%char117673%_ '#\')
                                 (_%str117678%_ _%str117670%_)
                                 (_%char117690%_ _%char117673%_))
                            (declare (not safe))
                            (__string-split _%str117678%_ _%char117690%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp118007))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp118006)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
