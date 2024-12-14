(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1734215268)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-139-gebe750b43"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value94626%_)
        (if (list? _%new-value94626%_)
            (let ((_%new-value94630%_ _%new-value94626%_))
              (__build-manifest-set! _%new-value94630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value94626%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value94613%_)
        (let ((_%new-value94617%_ _%new-value94613%_))
          (set! __build-manifest _%new-value94617%_))))
    (define display-build-manifest__%
      (lambda (_%manifest94573%_ _%port94574%_)
        (if (list? _%manifest94573%_)
            (let ((_%manifest94578%_ _%manifest94573%_))
              (if (port? _%port94574%_)
                  (let ((_%port94588%_ _%port94574%_))
                    (__display-build-manifest__%
                     _%manifest94578%_
                     _%port94588%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port94574%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest94573%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94602%_ __build-manifest)
               (_%port94604%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94602%_ _%port94604%_))))
    (define display-build-manifest__1
      (lambda (_%manifest94606%_)
        (let ((_%port94608%_ (current-output-port)))
          (display-build-manifest__% _%manifest94606%_ _%port94608%_))))
    (define display-build-manifest
      (lambda _g94642_
        (let ((_g94641_ (let () (declare (not safe)) (##length _g94642_))))
          (cond ((let () (declare (not safe)) (##fx= _g94641_ 0))
                 (apply display-build-manifest__0 _g94642_))
                ((let () (declare (not safe)) (##fx= _g94641_ 1))
                 (apply display-build-manifest__1 _g94642_))
                ((let () (declare (not safe)) (##fx= _g94641_ 2))
                 (apply display-build-manifest__% _g94642_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g94642_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest94495%_ _%port94496%_)
        (let* ((_%manifest94499%_ _%manifest94495%_)
               (_%port94507%_ _%port94496%_))
          (let ((_%p94520%_
                 (lambda (_%g9451594517%_)
                   (display _%g9451594517%_ _%port94507%_)))
                (_%l94521%_
                 (let () (declare (not safe)) (##length _%manifest94499%_)))
                (_%i94522%_ '0))
            (let ((__tmp94643
                   (lambda (_%layer94524%_)
                     (if (zero? _%i94522%_)
                         '#!void
                         (if (= _%i94522%_ '1)
                             (_%p94520%_ '" on ")
                             (_%p94520%_ '", ")))
                     (let* ((_%layer9452894535%_ _%layer94524%_)
                            (_%E9453094539%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9452894535%_
                                      '([name . version]))
                               '#!void))
                            (_%K9453194545%_
                             (lambda (_%version94542%_ _%name94543%_)
                               (_%p94520%_ _%name94543%_)
                               (_%p94520%_ '" ")
                               (_%p94520%_ _%version94542%_))))
                       (if (pair? _%layer9452894535%_)
                           (let ((_%hd9453294548%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9452894535%_)))
                                 (_%tl9453394550%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9452894535%_))))
                             (let* ((_%name94553%_ _%hd9453294548%_)
                                    (_%version94555%_ _%tl9453394550%_))
                               (_%K9453194545%_
                                _%version94555%_
                                _%name94553%_)))
                           (_%E9453094539%_)))
                     (set! _%i94522%_ (+ _%i94522%_ '1)))))
              (declare (not safe))
              (##for-each __tmp94643 _%manifest94499%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest94561%_ __build-manifest)
               (_%port94563%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94561%_ _%port94563%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest94565%_)
        (let ((_%port94567%_ (current-output-port)))
          (__display-build-manifest__% _%manifest94565%_ _%port94567%_))))
    (define __display-build-manifest
      (lambda _g94645_
        (let ((_g94644_ (let () (declare (not safe)) (##length _g94645_))))
          (cond ((let () (declare (not safe)) (##fx= _g94644_ 0))
                 (apply __display-build-manifest__0 _g94645_))
                ((let () (declare (not safe)) (##fx= _g94644_ 1))
                 (apply __display-build-manifest__1 _g94645_))
                ((let () (declare (not safe)) (##fx= _g94644_ 2))
                 (apply __display-build-manifest__% _g94645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g94645_))))))
    (define build-manifest/layer
      (lambda (_%layer94490%_)
        (let ((_%l94492%_ (assoc _%layer94490%_ __build-manifest)))
          (if _%l94492%_ (cons _%l94492%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest94467%_)
        (if (list? _%manifest94467%_)
            (let ((_%manifest94471%_ _%manifest94467%_))
              (__build-manifest-string__% _%manifest94471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest94467%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest94485%_ __build-manifest))
          (__build-manifest-string__% _%manifest94485%_))))
    (define build-manifest-string
      (lambda _g94647_
        (let ((_g94646_ (let () (declare (not safe)) (##length _g94647_))))
          (cond ((let () (declare (not safe)) (##fx= _g94646_ 0))
                 (apply build-manifest-string__0 _g94647_))
                ((let () (declare (not safe)) (##fx= _g94646_ 1))
                 (apply build-manifest-string__% _g94647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g94647_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest94444%_)
        (let ((_%manifest94447%_ _%manifest94444%_))
          (call-with-output-string
           '()
           (lambda (_%p94456%_)
             (display-build-manifest__% _%manifest94447%_ _%p94456%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest94462%_ __build-manifest))
          (__build-manifest-string__% _%manifest94462%_))))
    (define __build-manifest-string
      (lambda _g94649_
        (let ((_g94648_ (let () (declare (not safe)) (##length _g94649_))))
          (cond ((let () (declare (not safe)) (##fx= _g94648_ 0))
                 (apply __build-manifest-string__0 _g94649_))
                ((let () (declare (not safe)) (##fx= _g94648_ 1))
                 (apply __build-manifest-string__% _g94649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g94649_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value94426%_)
        (if (string? _%new-value94426%_)
            (let ((_%new-value94430%_ _%new-value94426%_))
              (__gerbil-greeting-set! _%new-value94430%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value94426%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value94412%_)
        (let ((_%new-value94416%_ _%new-value94412%_))
          (set! __gerbil-greeting _%new-value94416%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e94408%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e94408%_ _%$e94408%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e94404%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e94404%_ _%$e94404%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp94650
                             (let ((__tmp94651 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp94651 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp94650))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
