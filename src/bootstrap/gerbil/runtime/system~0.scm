(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1756142014)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-167-g53d85adb3"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value101161%_)
        (if (list? _%new-value101161%_)
            (let ((_%new-value101165%_ _%new-value101161%_))
              (__build-manifest-set! _%new-value101165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value101161%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value101148%_)
        (let ((_%new-value101152%_ _%new-value101148%_))
          (set! __build-manifest _%new-value101152%_))))
    (define display-build-manifest__%
      (lambda (_%manifest101108%_ _%port101109%_)
        (if (list? _%manifest101108%_)
            (let ((_%manifest101113%_ _%manifest101108%_))
              (if (port? _%port101109%_)
                  (let ((_%port101123%_ _%port101109%_))
                    (__display-build-manifest__%
                     _%manifest101113%_
                     _%port101123%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port101109%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest101108%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest101137%_ __build-manifest)
               (_%port101139%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101137%_ _%port101139%_))))
    (define display-build-manifest__1
      (lambda (_%manifest101141%_)
        (let ((_%port101143%_ (current-output-port)))
          (display-build-manifest__% _%manifest101141%_ _%port101143%_))))
    (define display-build-manifest
      (lambda _g101176_
        (let ((_g101177_ (let () (declare (not safe)) (##length _g101176_))))
          (cond ((let () (declare (not safe)) (##fx= _g101177_ 0))
                 (apply display-build-manifest__0 _g101176_))
                ((let () (declare (not safe)) (##fx= _g101177_ 1))
                 (apply display-build-manifest__1 _g101176_))
                ((let () (declare (not safe)) (##fx= _g101177_ 2))
                 (apply display-build-manifest__% _g101176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g101176_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest101030%_ _%port101031%_)
        (let* ((_%manifest101034%_ _%manifest101030%_)
               (_%port101042%_ _%port101031%_))
          (let ((_%p101055%_
                 (lambda (_%g101050101052%_)
                   (display _%g101050101052%_ _%port101042%_)))
                (_%l101056%_
                 (let () (declare (not safe)) (##length _%manifest101034%_)))
                (_%i101057%_ '0))
            (let ((__tmp101178
                   (lambda (_%layer101059%_)
                     (if (zero? _%i101057%_)
                         '#!void
                         (if (= _%i101057%_ '1)
                             (_%p101055%_ '" on ")
                             (_%p101055%_ '", ")))
                     (let* ((_%layer101063101070%_ _%layer101059%_)
                            (_%E101065101074%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer101063101070%_
                                      '([name . version]))
                               '#!void))
                            (_%K101066101080%_
                             (lambda (_%version101077%_ _%name101078%_)
                               (_%p101055%_ _%name101078%_)
                               (_%p101055%_ '" ")
                               (_%p101055%_ _%version101077%_))))
                       (if (pair? _%layer101063101070%_)
                           (let ((_%hd101067101083%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer101063101070%_)))
                                 (_%tl101068101085%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer101063101070%_))))
                             (let* ((_%name101088%_ _%hd101067101083%_)
                                    (_%version101090%_ _%tl101068101085%_))
                               (_%K101066101080%_
                                _%version101090%_
                                _%name101088%_)))
                           (_%E101065101074%_)))
                     (set! _%i101057%_ (+ _%i101057%_ '1)))))
              (declare (not safe))
              (##for-each __tmp101178 _%manifest101034%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest101096%_ __build-manifest)
               (_%port101098%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101096%_ _%port101098%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest101100%_)
        (let ((_%port101102%_ (current-output-port)))
          (__display-build-manifest__% _%manifest101100%_ _%port101102%_))))
    (define __display-build-manifest
      (lambda _g101179_
        (let ((_g101180_ (let () (declare (not safe)) (##length _g101179_))))
          (cond ((let () (declare (not safe)) (##fx= _g101180_ 0))
                 (apply __display-build-manifest__0 _g101179_))
                ((let () (declare (not safe)) (##fx= _g101180_ 1))
                 (apply __display-build-manifest__1 _g101179_))
                ((let () (declare (not safe)) (##fx= _g101180_ 2))
                 (apply __display-build-manifest__% _g101179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g101179_))))))
    (define build-manifest/layer
      (lambda (_%layer101025%_)
        (let ((_%l101027%_ (assoc _%layer101025%_ __build-manifest)))
          (if _%l101027%_ (cons _%l101027%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest101002%_)
        (if (list? _%manifest101002%_)
            (let ((_%manifest101006%_ _%manifest101002%_))
              (__build-manifest-string__% _%manifest101006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest101002%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest101020%_ __build-manifest))
          (__build-manifest-string__% _%manifest101020%_))))
    (define build-manifest-string
      (lambda _g101181_
        (let ((_g101182_ (let () (declare (not safe)) (##length _g101181_))))
          (cond ((let () (declare (not safe)) (##fx= _g101182_ 0))
                 (apply build-manifest-string__0 _g101181_))
                ((let () (declare (not safe)) (##fx= _g101182_ 1))
                 (apply build-manifest-string__% _g101181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g101181_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest100979%_)
        (let ((_%manifest100982%_ _%manifest100979%_))
          (call-with-output-string
           '()
           (lambda (_%p100991%_)
             (display-build-manifest__% _%manifest100982%_ _%p100991%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest100997%_ __build-manifest))
          (__build-manifest-string__% _%manifest100997%_))))
    (define __build-manifest-string
      (lambda _g101183_
        (let ((_g101184_ (let () (declare (not safe)) (##length _g101183_))))
          (cond ((let () (declare (not safe)) (##fx= _g101184_ 0))
                 (apply __build-manifest-string__0 _g101183_))
                ((let () (declare (not safe)) (##fx= _g101184_ 1))
                 (apply __build-manifest-string__% _g101183_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g101183_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value100961%_)
        (if (string? _%new-value100961%_)
            (let ((_%new-value100965%_ _%new-value100961%_))
              (__gerbil-greeting-set! _%new-value100965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value100961%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value100947%_)
        (let ((_%new-value100951%_ _%new-value100947%_))
          (set! __gerbil-greeting _%new-value100951%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e100943%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e100943%_ _%$e100943%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e100939%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e100939%_ _%$e100939%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp101185
                             (let ((__tmp101186 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp101186 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp101185))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
