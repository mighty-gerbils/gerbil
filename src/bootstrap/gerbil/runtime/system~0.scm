(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1770342546)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-46-gddd4ba7f5"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value116682%_)
        (let ((_%new-value116685%_ _%new-value116682%_))
          (set! __build-manifest _%new-value116685%_))))
    (define build-manifest-set!
      (lambda (_%new-value116096%_)
        (if (list? _%new-value116096%_)
            (let ((_%new-value116101%_ _%new-value116096%_))
              (__build-manifest-set! _%new-value116101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value116096%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest116605%_ _%port116606%_)
        (let* ((_%manifest116609%_ _%manifest116605%_)
               (_%port116617%_ _%port116606%_))
          (let ((_%p116630%_
                 (lambda (_%g116625116627%_)
                   (display _%g116625116627%_ _%port116617%_)))
                (_%l116631%_
                 (let () (declare (not safe)) (##length _%manifest116609%_)))
                (_%i116632%_ '0))
            (let ((__tmp116799
                   (lambda (_%layer116634%_)
                     (if (zero? _%i116632%_)
                         '#!void
                         (if (= _%i116632%_ '1)
                             (_%p116630%_ '" on ")
                             (_%p116630%_ '", ")))
                     (let* ((_%layer116638116645%_ _%layer116634%_)
                            (_%E116640116649%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer116638116645%_
                                      '([name . version]))
                               '#!void))
                            (_%K116641116655%_
                             (lambda (_%version116652%_ _%name116653%_)
                               (_%p116630%_ _%name116653%_)
                               (_%p116630%_ '" ")
                               (_%p116630%_ _%version116652%_))))
                       (if (pair? _%layer116638116645%_)
                           (let ((_%hd116642116658%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer116638116645%_)))
                                 (_%tl116643116660%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer116638116645%_))))
                             (let* ((_%name116663%_ _%hd116642116658%_)
                                    (_%version116665%_ _%tl116643116660%_))
                               (_%K116641116655%_
                                _%version116665%_
                                _%name116663%_)))
                           (_%E116640116649%_)))
                     (set! _%i116632%_ (+ _%i116632%_ '1)))))
              (declare (not safe))
              (##for-each __tmp116799 _%manifest116609%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest116671%_ __build-manifest)
               (_%port116673%_ (current-output-port)))
          (__display-build-manifest__% _%manifest116671%_ _%port116673%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest116675%_)
        (let ((_%port116677%_ (current-output-port)))
          (__display-build-manifest__% _%manifest116675%_ _%port116677%_))))
    (define __display-build-manifest
      (lambda _g116800_
        (let ((_g116801_ (let () (declare (not safe)) (##length _g116800_))))
          (cond ((let () (declare (not safe)) (##fx= _g116801_ 0))
                 (apply __display-build-manifest__0 _g116800_))
                ((let () (declare (not safe)) (##fx= _g116801_ 1))
                 (apply __display-build-manifest__1 _g116800_))
                ((let () (declare (not safe)) (##fx= _g116801_ 2))
                 (apply __display-build-manifest__% _g116800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g116800_))))))
    (define display-build-manifest__%
      (lambda (_%manifest116232%_ _%port116233%_)
        (if (list? _%manifest116232%_)
            (let ((_%manifest116237%_ _%manifest116232%_))
              (if (port? _%port116233%_)
                  (let ((_%port116247%_ _%port116233%_))
                    (__display-build-manifest__%
                     _%manifest116237%_
                     _%port116247%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port116233%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest116232%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest116261%_ __build-manifest)
               (_%port116263%_ (current-output-port)))
          (__display-build-manifest__% _%manifest116261%_ _%port116263%_))))
    (define display-build-manifest__1
      (lambda (_%manifest116265%_)
        (let ((_%port116267%_ (current-output-port)))
          (display-build-manifest__% _%manifest116265%_ _%port116267%_))))
    (define display-build-manifest
      (lambda _g116802_
        (let ((_g116803_ (let () (declare (not safe)) (##length _g116802_))))
          (cond ((let () (declare (not safe)) (##fx= _g116803_ 0))
                 (apply display-build-manifest__0 _g116802_))
                ((let () (declare (not safe)) (##fx= _g116803_ 1))
                 (apply display-build-manifest__1 _g116802_))
                ((let () (declare (not safe)) (##fx= _g116803_ 2))
                 (apply display-build-manifest__% _g116802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g116802_))))))
    (define build-manifest/layer
      (lambda (_%layer116600%_)
        (let ((_%l116602%_ (assoc _%layer116600%_ __build-manifest)))
          (if _%l116602%_ (cons _%l116602%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest116577%_)
        (let ((_%manifest116580%_ _%manifest116577%_))
          (call-with-output-string
           '()
           (lambda (_%p116589%_)
             (display-build-manifest__% _%manifest116580%_ _%p116589%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest116595%_ __build-manifest))
          (__build-manifest-string__% _%manifest116595%_))))
    (define __build-manifest-string
      (lambda _g116804_
        (let ((_g116805_ (let () (declare (not safe)) (##length _g116804_))))
          (cond ((let () (declare (not safe)) (##fx= _g116805_ 0))
                 (apply __build-manifest-string__0 _g116804_))
                ((let () (declare (not safe)) (##fx= _g116805_ 1))
                 (apply __build-manifest-string__% _g116804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g116804_))))))
    (define build-manifest-string__%
      (lambda (_%manifest116393%_)
        (if (list? _%manifest116393%_)
            (let ((_%manifest116397%_ _%manifest116393%_))
              (__build-manifest-string__% _%manifest116397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest116393%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest116411%_ __build-manifest))
          (__build-manifest-string__% _%manifest116411%_))))
    (define build-manifest-string
      (lambda _g116806_
        (let ((_g116807_ (let () (declare (not safe)) (##length _g116806_))))
          (cond ((let () (declare (not safe)) (##fx= _g116807_ 0))
                 (apply build-manifest-string__0 _g116806_))
                ((let () (declare (not safe)) (##fx= _g116807_ 1))
                 (apply build-manifest-string__% _g116806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g116806_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value116561%_)
        (let ((_%new-value116564%_ _%new-value116561%_))
          (set! __gerbil-greeting _%new-value116564%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value116535%_)
        (if (string? _%new-value116535%_)
            (let ((_%new-value116540%_ _%new-value116535%_))
              (__gerbil-greeting-set! _%new-value116540%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value116535%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e116557%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e116557%_ _%$e116557%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e116553%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e116553%_ _%$e116553%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp116808
             (lambda ()
               (if (let ((__tmp116809
                          (let ((__tmp116810 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp116810 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp116809))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp116808)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
