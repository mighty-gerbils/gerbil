(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770505711)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-55-gae45ea407"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value117888%_)
        (let ((_%new-value117891%_ _%new-value117888%_))
          (set! __build-manifest _%new-value117891%_))))
    (define build-manifest-set!
      (lambda (_%new-value117222%_)
        (if (list? _%new-value117222%_)
            (let ((_%new-value117227%_ _%new-value117222%_))
              (__build-manifest-set! _%new-value117227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value117222%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest117811%_ _%port117812%_)
        (let* ((_%manifest117815%_ _%manifest117811%_)
               (_%port117823%_ _%port117812%_))
          (let ((_%p117836%_
                 (lambda (_%g117831117833%_)
                   (display _%g117831117833%_ _%port117823%_)))
                (_%l117837%_
                 (let () (declare (not safe)) (##length _%manifest117815%_)))
                (_%i117838%_ '0))
            (let ((__tmp118005
                   (lambda (_%layer117840%_)
                     (if (zero? _%i117838%_)
                         '#!void
                         (if (= _%i117838%_ '1)
                             (_%p117836%_ '" on ")
                             (_%p117836%_ '", ")))
                     (let* ((_%layer117844117851%_ _%layer117840%_)
                            (_%E117846117855%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer117844117851%_
                                      '([name . version]))
                               '#!void))
                            (_%K117847117861%_
                             (lambda (_%version117858%_ _%name117859%_)
                               (_%p117836%_ _%name117859%_)
                               (_%p117836%_ '" ")
                               (_%p117836%_ _%version117858%_))))
                       (if (pair? _%layer117844117851%_)
                           (let ((_%hd117848117864%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer117844117851%_)))
                                 (_%tl117849117866%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer117844117851%_))))
                             (let* ((_%name117869%_ _%hd117848117864%_)
                                    (_%version117871%_ _%tl117849117866%_))
                               (_%K117847117861%_
                                _%version117871%_
                                _%name117869%_)))
                           (_%E117846117855%_)))
                     (set! _%i117838%_ (+ _%i117838%_ '1)))))
              (declare (not safe))
              (##for-each __tmp118005 _%manifest117815%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117877%_ __build-manifest)
               (_%port117879%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117877%_ _%port117879%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest117881%_)
        (let ((_%port117883%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117881%_ _%port117883%_))))
    (define __display-build-manifest
      (lambda _g118006_
        (let ((_g118007_ (let () (declare (not safe)) (##length _g118006_))))
          (cond ((let () (declare (not safe)) (##fx= _g118007_ 0))
                 (apply __display-build-manifest__0 _g118006_))
                ((let () (declare (not safe)) (##fx= _g118007_ 1))
                 (apply __display-build-manifest__1 _g118006_))
                ((let () (declare (not safe)) (##fx= _g118007_ 2))
                 (apply __display-build-manifest__% _g118006_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g118006_))))))
    (define display-build-manifest__%
      (lambda (_%manifest117358%_ _%port117359%_)
        (if (list? _%manifest117358%_)
            (let ((_%manifest117363%_ _%manifest117358%_))
              (if (port? _%port117359%_)
                  (let ((_%port117373%_ _%port117359%_))
                    (__display-build-manifest__%
                     _%manifest117363%_
                     _%port117373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port117359%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest117358%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest117387%_ __build-manifest)
               (_%port117389%_ (current-output-port)))
          (__display-build-manifest__% _%manifest117387%_ _%port117389%_))))
    (define display-build-manifest__1
      (lambda (_%manifest117391%_)
        (let ((_%port117393%_ (current-output-port)))
          (display-build-manifest__% _%manifest117391%_ _%port117393%_))))
    (define display-build-manifest
      (lambda _g118008_
        (let ((_g118009_ (let () (declare (not safe)) (##length _g118008_))))
          (cond ((let () (declare (not safe)) (##fx= _g118009_ 0))
                 (apply display-build-manifest__0 _g118008_))
                ((let () (declare (not safe)) (##fx= _g118009_ 1))
                 (apply display-build-manifest__1 _g118008_))
                ((let () (declare (not safe)) (##fx= _g118009_ 2))
                 (apply display-build-manifest__% _g118008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g118008_))))))
    (define build-manifest/layer
      (lambda (_%layer117806%_)
        (let ((_%l117808%_ (assoc _%layer117806%_ __build-manifest)))
          (if _%l117808%_ (cons _%l117808%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest117750%_)
        (let ((_%manifest117753%_ _%manifest117750%_))
          (call-with-output-string
           '()
           (lambda (_%p117762%_)
             (let* ((_%manifest117764%_ _%manifest117753%_)
                    (_%port117767%_ _%p117762%_)
                    (_%manifest117772%_ _%manifest117764%_))
               (if (port? _%port117767%_)
                   (let ((_%port117787%_ _%port117767%_))
                     (__display-build-manifest__%
                      _%manifest117772%_
                      _%port117787%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port117767%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest117801%_ __build-manifest))
          (__build-manifest-string__% _%manifest117801%_))))
    (define __build-manifest-string
      (lambda _g118010_
        (let ((_g118011_ (let () (declare (not safe)) (##length _g118010_))))
          (cond ((let () (declare (not safe)) (##fx= _g118011_ 0))
                 (apply __build-manifest-string__0 _g118010_))
                ((let () (declare (not safe)) (##fx= _g118011_ 1))
                 (apply __build-manifest-string__% _g118010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g118010_))))))
    (define build-manifest-string__%
      (lambda (_%manifest117519%_)
        (if (list? _%manifest117519%_)
            (let ((_%manifest117523%_ _%manifest117519%_))
              (__build-manifest-string__% _%manifest117523%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest117519%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest117537%_ __build-manifest))
          (__build-manifest-string__% _%manifest117537%_))))
    (define build-manifest-string
      (lambda _g118012_
        (let ((_g118013_ (let () (declare (not safe)) (##length _g118012_))))
          (cond ((let () (declare (not safe)) (##fx= _g118013_ 0))
                 (apply build-manifest-string__0 _g118012_))
                ((let () (declare (not safe)) (##fx= _g118013_ 1))
                 (apply build-manifest-string__% _g118012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g118012_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest117732%_ gerbil-system-manifest)
               (_%manifest117737%_ _%manifest117732%_))
          (__build-manifest-string__% _%manifest117737%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value117717%_)
        (let ((_%new-value117720%_ _%new-value117717%_))
          (set! __gerbil-greeting _%new-value117720%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value117661%_)
        (if (string? _%new-value117661%_)
            (let ((_%new-value117666%_ _%new-value117661%_))
              (__gerbil-greeting-set! _%new-value117666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value117661%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e117713%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e117713%_ _%$e117713%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e117709%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e117709%_ _%$e117709%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp118014
             (lambda ()
               (if (let ((__tmp118015
                          (let* ((_%str117678%_ (configure-command-string))
                                 (_%char117681%_ '#\')
                                 (_%str117686%_ _%str117678%_)
                                 (_%char117698%_ _%char117681%_))
                            (declare (not safe))
                            (__string-split _%str117686%_ _%char117698%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp118015))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp118014)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
