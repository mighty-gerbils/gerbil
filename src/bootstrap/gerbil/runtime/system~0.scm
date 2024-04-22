(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1713631264)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-112-g13d6b30a3"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value94411%_)
        (if (list? _%new-value94411%_)
            (let ((_%new-value94415%_ _%new-value94411%_))
              (__build-manifest-set! _%new-value94415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value94411%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value94398%_)
        (let ((_%new-value94402%_ _%new-value94398%_))
          (set! __build-manifest _%new-value94402%_))))
    (define display-build-manifest__%
      (lambda (_%manifest94358%_ _%port94359%_)
        (if (list? _%manifest94358%_)
            (let ((_%manifest94363%_ _%manifest94358%_))
              (if (port? _%port94359%_)
                  (let ((_%port94373%_ _%port94359%_))
                    (__display-build-manifest__%
                     _%manifest94363%_
                     _%port94373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port94359%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest94358%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94387%_ __build-manifest)
               (_%port94389%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94387%_ _%port94389%_))))
    (define display-build-manifest__1
      (lambda (_%manifest94391%_)
        (let ((_%port94393%_ (current-output-port)))
          (display-build-manifest__% _%manifest94391%_ _%port94393%_))))
    (define display-build-manifest
      (lambda _g94427_
        (let ((_g94426_ (let () (declare (not safe)) (##length _g94427_))))
          (cond ((let () (declare (not safe)) (##fx= _g94426_ 0))
                 (apply display-build-manifest__0 _g94427_))
                ((let () (declare (not safe)) (##fx= _g94426_ 1))
                 (apply display-build-manifest__1 _g94427_))
                ((let () (declare (not safe)) (##fx= _g94426_ 2))
                 (apply display-build-manifest__% _g94427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g94427_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest94280%_ _%port94281%_)
        (let* ((_%manifest94284%_ _%manifest94280%_)
               (_%port94292%_ _%port94281%_))
          (let ((_%p94305%_
                 (lambda (_%g9430094302%_)
                   (display _%g9430094302%_ _%port94292%_)))
                (_%l94306%_
                 (let () (declare (not safe)) (##length _%manifest94284%_)))
                (_%i94307%_ '0))
            (let ((__tmp94428
                   (lambda (_%layer94309%_)
                     (if (zero? _%i94307%_)
                         '#!void
                         (if (= _%i94307%_ '1)
                             (_%p94305%_ '" on ")
                             (_%p94305%_ '", ")))
                     (let* ((_%layer9431394320%_ _%layer94309%_)
                            (_%E9431594324%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9431394320%_
                                      '([name . version]))
                               '#!void))
                            (_%K9431694330%_
                             (lambda (_%version94327%_ _%name94328%_)
                               (_%p94305%_ _%name94328%_)
                               (_%p94305%_ '" ")
                               (_%p94305%_ _%version94327%_))))
                       (if (pair? _%layer9431394320%_)
                           (let ((_%hd9431794333%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9431394320%_)))
                                 (_%tl9431894335%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9431394320%_))))
                             (let* ((_%name94338%_ _%hd9431794333%_)
                                    (_%version94340%_ _%tl9431894335%_))
                               (_%K9431694330%_
                                _%version94340%_
                                _%name94338%_)))
                           (_%E9431594324%_)))
                     (set! _%i94307%_ (+ _%i94307%_ '1)))))
              (declare (not safe))
              (##for-each __tmp94428 _%manifest94284%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94346%_ __build-manifest)
               (_%port94348%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94346%_ _%port94348%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest94350%_)
        (let ((_%port94352%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94350%_ _%port94352%_))))
    (define __display-build-manifest
      (lambda _g94430_
        (let ((_g94429_ (let () (declare (not safe)) (##length _g94430_))))
          (cond ((let () (declare (not safe)) (##fx= _g94429_ 0))
                 (apply __display-build-manifest__0 _g94430_))
                ((let () (declare (not safe)) (##fx= _g94429_ 1))
                 (apply __display-build-manifest__1 _g94430_))
                ((let () (declare (not safe)) (##fx= _g94429_ 2))
                 (apply __display-build-manifest__% _g94430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g94430_))))))
    (define build-manifest/layer
      (lambda (_%layer94275%_)
        (let ((_%l94277%_ (assoc _%layer94275%_ __build-manifest)))
          (if _%l94277%_ (cons _%l94277%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest94252%_)
        (if (list? _%manifest94252%_)
            (let ((_%manifest94256%_ _%manifest94252%_))
              (__build-manifest-string__% _%manifest94256%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest94252%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest94270%_ __build-manifest))
          (__build-manifest-string__% _%manifest94270%_))))
    (define build-manifest-string
      (lambda _g94432_
        (let ((_g94431_ (let () (declare (not safe)) (##length _g94432_))))
          (cond ((let () (declare (not safe)) (##fx= _g94431_ 0))
                 (apply build-manifest-string__0 _g94432_))
                ((let () (declare (not safe)) (##fx= _g94431_ 1))
                 (apply build-manifest-string__% _g94432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g94432_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest94229%_)
        (let ((_%manifest94232%_ _%manifest94229%_))
          (call-with-output-string
           '()
           (lambda (_%p94241%_)
             (display-build-manifest__% _%manifest94232%_ _%p94241%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest94247%_ __build-manifest))
          (__build-manifest-string__% _%manifest94247%_))))
    (define __build-manifest-string
      (lambda _g94434_
        (let ((_g94433_ (let () (declare (not safe)) (##length _g94434_))))
          (cond ((let () (declare (not safe)) (##fx= _g94433_ 0))
                 (apply __build-manifest-string__0 _g94434_))
                ((let () (declare (not safe)) (##fx= _g94433_ 1))
                 (apply __build-manifest-string__% _g94434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g94434_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value94211%_)
        (if (string? _%new-value94211%_)
            (let ((_%new-value94215%_ _%new-value94211%_))
              (__gerbil-greeting-set! _%new-value94215%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value94211%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value94197%_)
        (let ((_%new-value94201%_ _%new-value94197%_))
          (set! __gerbil-greeting _%new-value94201%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e94193%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e94193%_ _%$e94193%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e94189%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e94189%_ _%$e94189%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp94435
                             (let ((__tmp94436 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp94436 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp94435))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
