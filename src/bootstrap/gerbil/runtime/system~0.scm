(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1769384626)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-75-g545b1a42a"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value104769%_)
        (if (list? _%new-value104769%_)
            (let ((_%new-value104773%_ _%new-value104769%_))
              (__build-manifest-set! _%new-value104773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value104769%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value104756%_)
        (let ((_%new-value104760%_ _%new-value104756%_))
          (set! __build-manifest _%new-value104760%_))))
    (define display-build-manifest__%
      (lambda (_%manifest104716%_ _%port104717%_)
        (if (list? _%manifest104716%_)
            (let ((_%manifest104721%_ _%manifest104716%_))
              (if (port? _%port104717%_)
                  (let ((_%port104731%_ _%port104717%_))
                    (__display-build-manifest__%
                     _%manifest104721%_
                     _%port104731%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port104717%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest104716%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104745%_ __build-manifest)
               (_%port104747%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104745%_ _%port104747%_))))
    (define display-build-manifest__1
      (lambda (_%manifest104749%_)
        (let ((_%port104751%_ (current-output-port)))
          (display-build-manifest__% _%manifest104749%_ _%port104751%_))))
    (define display-build-manifest
      (lambda _g104784_
        (let ((_g104785_ (let () (declare (not safe)) (##length _g104784_))))
          (cond ((let () (declare (not safe)) (##fx= _g104785_ 0))
                 (apply display-build-manifest__0 _g104784_))
                ((let () (declare (not safe)) (##fx= _g104785_ 1))
                 (apply display-build-manifest__1 _g104784_))
                ((let () (declare (not safe)) (##fx= _g104785_ 2))
                 (apply display-build-manifest__% _g104784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g104784_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest104638%_ _%port104639%_)
        (let* ((_%manifest104642%_ _%manifest104638%_)
               (_%port104650%_ _%port104639%_))
          (let ((_%p104663%_
                 (lambda (_%g104658104660%_)
                   (display _%g104658104660%_ _%port104650%_)))
                (_%l104664%_
                 (let () (declare (not safe)) (##length _%manifest104642%_)))
                (_%i104665%_ '0))
            (let ((__tmp104786
                   (lambda (_%layer104667%_)
                     (if (zero? _%i104665%_)
                         '#!void
                         (if (= _%i104665%_ '1)
                             (_%p104663%_ '" on ")
                             (_%p104663%_ '", ")))
                     (let* ((_%layer104671104678%_ _%layer104667%_)
                            (_%E104673104682%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer104671104678%_
                                      '([name . version]))
                               '#!void))
                            (_%K104674104688%_
                             (lambda (_%version104685%_ _%name104686%_)
                               (_%p104663%_ _%name104686%_)
                               (_%p104663%_ '" ")
                               (_%p104663%_ _%version104685%_))))
                       (if (pair? _%layer104671104678%_)
                           (let ((_%hd104675104691%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer104671104678%_)))
                                 (_%tl104676104693%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer104671104678%_))))
                             (let* ((_%name104696%_ _%hd104675104691%_)
                                    (_%version104698%_ _%tl104676104693%_))
                               (_%K104674104688%_
                                _%version104698%_
                                _%name104696%_)))
                           (_%E104673104682%_)))
                     (set! _%i104665%_ (+ _%i104665%_ '1)))))
              (declare (not safe))
              (##for-each __tmp104786 _%manifest104642%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104704%_ __build-manifest)
               (_%port104706%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104704%_ _%port104706%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest104708%_)
        (let ((_%port104710%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104708%_ _%port104710%_))))
    (define __display-build-manifest
      (lambda _g104787_
        (let ((_g104788_ (let () (declare (not safe)) (##length _g104787_))))
          (cond ((let () (declare (not safe)) (##fx= _g104788_ 0))
                 (apply __display-build-manifest__0 _g104787_))
                ((let () (declare (not safe)) (##fx= _g104788_ 1))
                 (apply __display-build-manifest__1 _g104787_))
                ((let () (declare (not safe)) (##fx= _g104788_ 2))
                 (apply __display-build-manifest__% _g104787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g104787_))))))
    (define build-manifest/layer
      (lambda (_%layer104633%_)
        (let ((_%l104635%_ (assoc _%layer104633%_ __build-manifest)))
          (if _%l104635%_ (cons _%l104635%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest104610%_)
        (if (list? _%manifest104610%_)
            (let ((_%manifest104614%_ _%manifest104610%_))
              (__build-manifest-string__% _%manifest104614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest104610%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest104628%_ __build-manifest))
          (__build-manifest-string__% _%manifest104628%_))))
    (define build-manifest-string
      (lambda _g104789_
        (let ((_g104790_ (let () (declare (not safe)) (##length _g104789_))))
          (cond ((let () (declare (not safe)) (##fx= _g104790_ 0))
                 (apply build-manifest-string__0 _g104789_))
                ((let () (declare (not safe)) (##fx= _g104790_ 1))
                 (apply build-manifest-string__% _g104789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g104789_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest104587%_)
        (let ((_%manifest104590%_ _%manifest104587%_))
          (call-with-output-string
           '()
           (lambda (_%p104599%_)
             (display-build-manifest__% _%manifest104590%_ _%p104599%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest104605%_ __build-manifest))
          (__build-manifest-string__% _%manifest104605%_))))
    (define __build-manifest-string
      (lambda _g104791_
        (let ((_g104792_ (let () (declare (not safe)) (##length _g104791_))))
          (cond ((let () (declare (not safe)) (##fx= _g104792_ 0))
                 (apply __build-manifest-string__0 _g104791_))
                ((let () (declare (not safe)) (##fx= _g104792_ 1))
                 (apply __build-manifest-string__% _g104791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g104791_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value104569%_)
        (if (string? _%new-value104569%_)
            (let ((_%new-value104573%_ _%new-value104569%_))
              (__gerbil-greeting-set! _%new-value104573%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value104569%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value104555%_)
        (let ((_%new-value104559%_ _%new-value104555%_))
          (set! __gerbil-greeting _%new-value104559%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e104551%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e104551%_ _%$e104551%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e104547%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e104547%_ _%$e104547%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp104793
             (lambda ()
               (if (let ((__tmp104794
                          (let ((__tmp104795 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp104795 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp104794))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp104793)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
