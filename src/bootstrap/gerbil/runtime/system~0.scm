(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1769382893)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-75-g545b1a42a"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value104731%_)
        (if (list? _%new-value104731%_)
            (let ((_%new-value104735%_ _%new-value104731%_))
              (__build-manifest-set! _%new-value104735%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value104731%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value104718%_)
        (let ((_%new-value104722%_ _%new-value104718%_))
          (set! __build-manifest _%new-value104722%_))))
    (define display-build-manifest__%
      (lambda (_%manifest104678%_ _%port104679%_)
        (if (list? _%manifest104678%_)
            (let ((_%manifest104683%_ _%manifest104678%_))
              (if (port? _%port104679%_)
                  (let ((_%port104693%_ _%port104679%_))
                    (__display-build-manifest__%
                     _%manifest104683%_
                     _%port104693%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port104679%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest104678%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104707%_ __build-manifest)
               (_%port104709%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104707%_ _%port104709%_))))
    (define display-build-manifest__1
      (lambda (_%manifest104711%_)
        (let ((_%port104713%_ (current-output-port)))
          (display-build-manifest__% _%manifest104711%_ _%port104713%_))))
    (define display-build-manifest
      (lambda _g104746_
        (let ((_g104747_ (let () (declare (not safe)) (##length _g104746_))))
          (cond ((let () (declare (not safe)) (##fx= _g104747_ 0))
                 (apply display-build-manifest__0 _g104746_))
                ((let () (declare (not safe)) (##fx= _g104747_ 1))
                 (apply display-build-manifest__1 _g104746_))
                ((let () (declare (not safe)) (##fx= _g104747_ 2))
                 (apply display-build-manifest__% _g104746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g104746_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest104600%_ _%port104601%_)
        (let* ((_%manifest104604%_ _%manifest104600%_)
               (_%port104612%_ _%port104601%_))
          (let ((_%p104625%_
                 (lambda (_%g104620104622%_)
                   (display _%g104620104622%_ _%port104612%_)))
                (_%l104626%_
                 (let () (declare (not safe)) (##length _%manifest104604%_)))
                (_%i104627%_ '0))
            (let ((__tmp104748
                   (lambda (_%layer104629%_)
                     (if (zero? _%i104627%_)
                         '#!void
                         (if (= _%i104627%_ '1)
                             (_%p104625%_ '" on ")
                             (_%p104625%_ '", ")))
                     (let* ((_%layer104633104640%_ _%layer104629%_)
                            (_%E104635104644%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer104633104640%_
                                      '([name . version]))
                               '#!void))
                            (_%K104636104650%_
                             (lambda (_%version104647%_ _%name104648%_)
                               (_%p104625%_ _%name104648%_)
                               (_%p104625%_ '" ")
                               (_%p104625%_ _%version104647%_))))
                       (if (pair? _%layer104633104640%_)
                           (let ((_%hd104637104653%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer104633104640%_)))
                                 (_%tl104638104655%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer104633104640%_))))
                             (let* ((_%name104658%_ _%hd104637104653%_)
                                    (_%version104660%_ _%tl104638104655%_))
                               (_%K104636104650%_
                                _%version104660%_
                                _%name104658%_)))
                           (_%E104635104644%_)))
                     (set! _%i104627%_ (+ _%i104627%_ '1)))))
              (declare (not safe))
              (##for-each __tmp104748 _%manifest104604%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest104666%_ __build-manifest)
               (_%port104668%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104666%_ _%port104668%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest104670%_)
        (let ((_%port104672%_ (current-output-port)))
          (__display-build-manifest__% _%manifest104670%_ _%port104672%_))))
    (define __display-build-manifest
      (lambda _g104749_
        (let ((_g104750_ (let () (declare (not safe)) (##length _g104749_))))
          (cond ((let () (declare (not safe)) (##fx= _g104750_ 0))
                 (apply __display-build-manifest__0 _g104749_))
                ((let () (declare (not safe)) (##fx= _g104750_ 1))
                 (apply __display-build-manifest__1 _g104749_))
                ((let () (declare (not safe)) (##fx= _g104750_ 2))
                 (apply __display-build-manifest__% _g104749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g104749_))))))
    (define build-manifest/layer
      (lambda (_%layer104595%_)
        (let ((_%l104597%_ (assoc _%layer104595%_ __build-manifest)))
          (if _%l104597%_ (cons _%l104597%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest104572%_)
        (if (list? _%manifest104572%_)
            (let ((_%manifest104576%_ _%manifest104572%_))
              (__build-manifest-string__% _%manifest104576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest104572%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest104590%_ __build-manifest))
          (__build-manifest-string__% _%manifest104590%_))))
    (define build-manifest-string
      (lambda _g104751_
        (let ((_g104752_ (let () (declare (not safe)) (##length _g104751_))))
          (cond ((let () (declare (not safe)) (##fx= _g104752_ 0))
                 (apply build-manifest-string__0 _g104751_))
                ((let () (declare (not safe)) (##fx= _g104752_ 1))
                 (apply build-manifest-string__% _g104751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g104751_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest104549%_)
        (let ((_%manifest104552%_ _%manifest104549%_))
          (call-with-output-string
           '()
           (lambda (_%p104561%_)
             (display-build-manifest__% _%manifest104552%_ _%p104561%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest104567%_ __build-manifest))
          (__build-manifest-string__% _%manifest104567%_))))
    (define __build-manifest-string
      (lambda _g104753_
        (let ((_g104754_ (let () (declare (not safe)) (##length _g104753_))))
          (cond ((let () (declare (not safe)) (##fx= _g104754_ 0))
                 (apply __build-manifest-string__0 _g104753_))
                ((let () (declare (not safe)) (##fx= _g104754_ 1))
                 (apply __build-manifest-string__% _g104753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g104753_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value104531%_)
        (if (string? _%new-value104531%_)
            (let ((_%new-value104535%_ _%new-value104531%_))
              (__gerbil-greeting-set! _%new-value104535%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value104531%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value104517%_)
        (let ((_%new-value104521%_ _%new-value104517%_))
          (set! __gerbil-greeting _%new-value104521%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e104513%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e104513%_ _%$e104513%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e104509%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e104509%_ _%$e104509%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp104755
             (lambda ()
               (if (let ((__tmp104756
                          (let ((__tmp104757 (configure-command-string)))
                            (declare (not safe))
                            (__string-split __tmp104757 '#\'))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp104756))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp104755)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
