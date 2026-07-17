(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1784471374)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-42-g4c335aa83"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value126737%_)
        (let ((_%new-value126740%_ _%new-value126737%_))
          (set! __build-manifest _%new-value126740%_))))
    (define build-manifest-set!
      (lambda (_%new-value126722%_)
        (if (list? _%new-value126722%_)
            (let ((_%new-value126727%_ _%new-value126722%_))
              (__build-manifest-set! _%new-value126727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value126722%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest126645%_ _%port126646%_)
        (let* ((_%manifest126649%_ _%manifest126645%_)
               (_%port126657%_ _%port126646%_))
          (let ((_%p126670%_
                 (lambda (_%$%g126665126667%_)
                   (display _%$%g126665126667%_ _%port126657%_)))
                (_%l126671%_
                 (let () (declare (not safe)) (##length _%manifest126649%_)))
                (_%i126672%_ '0))
            (let ((__tmp126854
                   (lambda (_%layer126674%_)
                     (if (zero? _%i126672%_)
                         '#!void
                         (if (= _%i126672%_ '1)
                             (_%p126670%_ '" on ")
                             (_%p126670%_ '", ")))
                     (let* ((_%$%layer126678126685%_ _%layer126674%_)
                            (_%$%E126680126689%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer126678126685%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K126681126695%_
                             (lambda (_%version126692%_ _%name126693%_)
                               (_%p126670%_ _%name126693%_)
                               (_%p126670%_ '" ")
                               (_%p126670%_ _%version126692%_))))
                       (if (pair? _%$%layer126678126685%_)
                           (let ((_%$%hd126682126698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer126678126685%_)))
                                 (_%$%tl126683126700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer126678126685%_))))
                             (let* ((_%name126703%_ _%$%hd126682126698%_)
                                    (_%version126705%_ _%$%tl126683126700%_))
                               (_%$%K126681126695%_
                                _%version126705%_
                                _%name126703%_)))
                           (_%$%E126680126689%_)))
                     (set! _%i126672%_ (+ _%i126672%_ '1)))))
              (declare (not safe))
              (##for-each __tmp126854 _%manifest126649%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest126711%_ __build-manifest)
               (_%port126713%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126711%_ _%port126713%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest126715%_)
        (let ((_%port126717%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126715%_ _%port126717%_))))
    (define __display-build-manifest
      (lambda _g126855_
        (let ((_g126856_ (let () (declare (not safe)) (##length _g126855_))))
          (cond ((let () (declare (not safe)) (##fx= _g126856_ 0))
                 (apply __display-build-manifest__0 _g126855_))
                ((let () (declare (not safe)) (##fx= _g126856_ 1))
                 (apply __display-build-manifest__1 _g126855_))
                ((let () (declare (not safe)) (##fx= _g126856_ 2))
                 (apply __display-build-manifest__% _g126855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g126855_))))))
    (define display-build-manifest__%
      (lambda (_%manifest126604%_ _%port126605%_)
        (if (list? _%manifest126604%_)
            (let ((_%manifest126609%_ _%manifest126604%_))
              (if (port? _%port126605%_)
                  (let ((_%port126619%_ _%port126605%_))
                    (__display-build-manifest__%
                     _%manifest126609%_
                     _%port126619%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port126605%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest126604%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest126633%_ __build-manifest)
               (_%port126635%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126633%_ _%port126635%_))))
    (define display-build-manifest__1
      (lambda (_%manifest126637%_)
        (let ((_%port126639%_ (current-output-port)))
          (display-build-manifest__% _%manifest126637%_ _%port126639%_))))
    (define display-build-manifest
      (lambda _g126857_
        (let ((_g126858_ (let () (declare (not safe)) (##length _g126857_))))
          (cond ((let () (declare (not safe)) (##fx= _g126858_ 0))
                 (apply display-build-manifest__0 _g126857_))
                ((let () (declare (not safe)) (##fx= _g126858_ 1))
                 (apply display-build-manifest__1 _g126857_))
                ((let () (declare (not safe)) (##fx= _g126858_ 2))
                 (apply display-build-manifest__% _g126857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g126857_))))))
    (define build-manifest/layer
      (lambda (_%layer126599%_)
        (let ((_%l126601%_ (assoc _%layer126599%_ __build-manifest)))
          (if _%l126601%_ (cons _%l126601%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest126543%_)
        (let ((_%manifest126546%_ _%manifest126543%_))
          (call-with-output-string
           '()
           (lambda (_%p126555%_)
             (let* ((_%manifest126557%_ _%manifest126546%_)
                    (_%port126560%_ _%p126555%_)
                    (_%manifest126565%_ _%manifest126557%_))
               (if (port? _%port126560%_)
                   (let ((_%port126580%_ _%port126560%_))
                     (__display-build-manifest__%
                      _%manifest126565%_
                      _%port126580%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port126560%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest126594%_ __build-manifest))
          (__build-manifest-string__% _%manifest126594%_))))
    (define __build-manifest-string
      (lambda _g126859_
        (let ((_g126860_ (let () (declare (not safe)) (##length _g126859_))))
          (cond ((let () (declare (not safe)) (##fx= _g126860_ 0))
                 (apply __build-manifest-string__0 _g126859_))
                ((let () (declare (not safe)) (##fx= _g126860_ 1))
                 (apply __build-manifest-string__% _g126859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g126859_))))))
    (define build-manifest-string__%
      (lambda (_%manifest126520%_)
        (if (list? _%manifest126520%_)
            (let ((_%manifest126524%_ _%manifest126520%_))
              (__build-manifest-string__% _%manifest126524%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest126520%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest126538%_ __build-manifest))
          (__build-manifest-string__% _%manifest126538%_))))
    (define build-manifest-string
      (lambda _g126861_
        (let ((_g126862_ (let () (declare (not safe)) (##length _g126861_))))
          (cond ((let () (declare (not safe)) (##fx= _g126862_ 0))
                 (apply build-manifest-string__0 _g126861_))
                ((let () (declare (not safe)) (##fx= _g126862_ 1))
                 (apply build-manifest-string__% _g126861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g126861_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest126502%_ gerbil-system-manifest)
               (_%manifest126507%_ _%manifest126502%_))
          (__build-manifest-string__% _%manifest126507%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value126487%_)
        (let ((_%new-value126490%_ _%new-value126487%_))
          (set! __gerbil-greeting _%new-value126490%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value126472%_)
        (if (string? _%new-value126472%_)
            (let ((_%new-value126477%_ _%new-value126472%_))
              (__gerbil-greeting-set! _%new-value126477%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value126472%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e126468%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e126468%_ _%$e126468%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e126464%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e126464%_ _%$e126464%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp126863
             (lambda ()
               (if (let ((__tmp126864
                          (let* ((_%str126433%_ (configure-command-string))
                                 (_%char126436%_ '#\')
                                 (_%str126441%_ _%str126433%_)
                                 (_%char126453%_ _%char126436%_))
                            (declare (not safe))
                            (__string-split _%str126441%_ _%char126453%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp126864))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp126863)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
