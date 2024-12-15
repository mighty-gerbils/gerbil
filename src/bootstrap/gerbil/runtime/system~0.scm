(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1734280444)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.1-148-g874883af9"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define build-manifest-set!
      (lambda (_%new-value95410%_)
        (if (list? _%new-value95410%_)
            (let ((_%new-value95414%_ _%new-value95410%_))
              (__build-manifest-set! _%new-value95414%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value95410%_)
              '#!void))))
    (define __build-manifest-set!
      (lambda (_%new-value95397%_)
        (let ((_%new-value95401%_ _%new-value95397%_))
          (set! __build-manifest _%new-value95401%_))))
    (define display-build-manifest__%
      (lambda (_%manifest95357%_ _%port95358%_)
        (if (list? _%manifest95357%_)
            (let ((_%manifest95362%_ _%manifest95357%_))
              (if (port? _%port95358%_)
                  (let ((_%port95372%_ _%port95358%_))
                    (__display-build-manifest__%
                     _%manifest95362%_
                     _%port95372%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port95358%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest95357%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95386%_ __build-manifest)
               (_%port95388%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95386%_ _%port95388%_))))
    (define display-build-manifest__1
      (lambda (_%manifest95390%_)
        (let ((_%port95392%_ (current-output-port)))
          (display-build-manifest__% _%manifest95390%_ _%port95392%_))))
    (define display-build-manifest
      (lambda _g95426_
        (let ((_g95425_ (let () (declare (not safe)) (##length _g95426_))))
          (cond ((let () (declare (not safe)) (##fx= _g95425_ 0))
                 (apply display-build-manifest__0 _g95426_))
                ((let () (declare (not safe)) (##fx= _g95425_ 1))
                 (apply display-build-manifest__1 _g95426_))
                ((let () (declare (not safe)) (##fx= _g95425_ 2))
                 (apply display-build-manifest__% _g95426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g95426_))))))
    (define __display-build-manifest__%
      (lambda (_%manifest95279%_ _%port95280%_)
        (let* ((_%manifest95283%_ _%manifest95279%_)
               (_%port95291%_ _%port95280%_))
          (let ((_%p95304%_
                 (lambda (_%g9529995301%_)
                   (display _%g9529995301%_ _%port95291%_)))
                (_%l95305%_
                 (let () (declare (not safe)) (##length _%manifest95283%_)))
                (_%i95306%_ '0))
            (let ((__tmp95427
                   (lambda (_%layer95308%_)
                     (if (zero? _%i95306%_)
                         '#!void
                         (if (= _%i95306%_ '1)
                             (_%p95304%_ '" on ")
                             (_%p95304%_ '", ")))
                     (let* ((_%layer9531295319%_ _%layer95308%_)
                            (_%E9531495323%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%layer9531295319%_
                                      '([name . version]))
                               '#!void))
                            (_%K9531595329%_
                             (lambda (_%version95326%_ _%name95327%_)
                               (_%p95304%_ _%name95327%_)
                               (_%p95304%_ '" ")
                               (_%p95304%_ _%version95326%_))))
                       (if (pair? _%layer9531295319%_)
                           (let ((_%hd9531695332%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%layer9531295319%_)))
                                 (_%tl9531795334%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%layer9531295319%_))))
                             (let* ((_%name95337%_ _%hd9531695332%_)
                                    (_%version95339%_ _%tl9531795334%_))
                               (_%K9531595329%_
                                _%version95339%_
                                _%name95337%_)))
                           (_%E9531495323%_)))
                     (set! _%i95306%_ (+ _%i95306%_ '1)))))
              (declare (not safe))
              (##for-each __tmp95427 _%manifest95283%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest95345%_ __build-manifest)
               (_%port95347%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95345%_ _%port95347%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest95349%_)
        (let ((_%port95351%_ (current-output-port)))
          (__display-build-manifest__% _%manifest95349%_ _%port95351%_))))
    (define __display-build-manifest
      (lambda _g95429_
        (let ((_g95428_ (let () (declare (not safe)) (##length _g95429_))))
          (cond ((let () (declare (not safe)) (##fx= _g95428_ 0))
                 (apply __display-build-manifest__0 _g95429_))
                ((let () (declare (not safe)) (##fx= _g95428_ 1))
                 (apply __display-build-manifest__1 _g95429_))
                ((let () (declare (not safe)) (##fx= _g95428_ 2))
                 (apply __display-build-manifest__% _g95429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g95429_))))))
    (define build-manifest/layer
      (lambda (_%layer95274%_)
        (let ((_%l95276%_ (assoc _%layer95274%_ __build-manifest)))
          (if _%l95276%_ (cons _%l95276%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define build-manifest-string__%
      (lambda (_%manifest95251%_)
        (if (list? _%manifest95251%_)
            (let ((_%manifest95255%_ _%manifest95251%_))
              (__build-manifest-string__% _%manifest95255%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest95251%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest95269%_ __build-manifest))
          (__build-manifest-string__% _%manifest95269%_))))
    (define build-manifest-string
      (lambda _g95431_
        (let ((_g95430_ (let () (declare (not safe)) (##length _g95431_))))
          (cond ((let () (declare (not safe)) (##fx= _g95430_ 0))
                 (apply build-manifest-string__0 _g95431_))
                ((let () (declare (not safe)) (##fx= _g95430_ 1))
                 (apply build-manifest-string__% _g95431_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g95431_))))))
    (define __build-manifest-string__%
      (lambda (_%manifest95228%_)
        (let ((_%manifest95231%_ _%manifest95228%_))
          (call-with-output-string
           '()
           (lambda (_%p95240%_)
             (display-build-manifest__% _%manifest95231%_ _%p95240%_))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest95246%_ __build-manifest))
          (__build-manifest-string__% _%manifest95246%_))))
    (define __build-manifest-string
      (lambda _g95433_
        (let ((_g95432_ (let () (declare (not safe)) (##length _g95433_))))
          (cond ((let () (declare (not safe)) (##fx= _g95432_ 0))
                 (apply __build-manifest-string__0 _g95433_))
                ((let () (declare (not safe)) (##fx= _g95432_ 1))
                 (apply __build-manifest-string__% _g95433_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g95433_))))))
    (define gerbil-system-version-string
      (lambda () (__build-manifest-string__% gerbil-system-manifest)))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define gerbil-greeting-set!
      (lambda (_%new-value95210%_)
        (if (string? _%new-value95210%_)
            (let ((_%new-value95214%_ _%new-value95210%_))
              (__gerbil-greeting-set! _%new-value95214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value95210%_)
              '#!void))))
    (define __gerbil-greeting-set!
      (lambda (_%new-value95196%_)
        (let ((_%new-value95200%_ _%new-value95196%_))
          (set! __gerbil-greeting _%new-value95200%_))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e95192%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e95192%_ _%$e95192%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e95188%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e95188%_ _%$e95188%_ (path-expand '"~/.gerbil")))))
    (define __smp? '#!void)
    (define gerbil-runtime-smp?
      (lambda ()
        (if (eq? __smp? '#!void)
            (set! __smp?
                  (if (let ((__tmp95434
                             (let ((__tmp95435 (configure-command-string)))
                               (declare (not safe))
                               (__string-split __tmp95435 '#\'))))
                        (declare (not safe))
                        (##member '"--enable-smp" __tmp95434))
                      '#t
                      '#f))
            '#!void)
        __smp?))))
