(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1781138347)
  (begin
    (define __make-promise
      (lambda (_%thunk120768%_)
        (let ((_%thunk120771%_ _%thunk120768%_))
          (declare (not safe))
          (##make-delay-promise _%thunk120771%_))))
    (define make-promise
      (lambda (_%thunk120754%_)
        (if (procedure? _%thunk120754%_)
            (let ((_%thunk120758%_ _%thunk120754%_))
              (__make-promise _%thunk120758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk120754%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk120698%_)
        (let ((_%thunk120701%_ _%thunk120698%_))
          (let ((_%mx120728%_ (make-mutex 'promise))
                (_%inner120729%_
                 (let* ((_%thunk120710%_ _%thunk120701%_)
                        (_%thunk120715%_ _%thunk120710%_))
                   (__make-promise _%thunk120715%_))))
            (let* ((_%thunk120738%_
                    (lambda ()
                      (let ((_%once120732%_ (vector '0)))
                        (let ((__tmp120859
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp120860
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once120732%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp120860 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx120728%_))))
                              (__tmp120858
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner120729%_))))
                              (__tmp120857
                               (lambda () (mutex-unlock! _%mx120728%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp120859
                           __tmp120858
                           __tmp120857)))))
                   (_%thunk120743%_ _%thunk120738%_))
              (__make-promise _%thunk120743%_))))))
    (define make-atomic-promise
      (lambda (_%thunk120684%_)
        (if (procedure? _%thunk120684%_)
            (let ((_%thunk120688%_ _%thunk120684%_))
              (__make-atomic-promise _%thunk120688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk120684%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk120636%_)
        (if (procedure? _%thunk120636%_)
            (let ((_%thunk120640%_ _%thunk120636%_))
              (declare (not safe))
              (_%thunk120640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk120636%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk120650%_ _%param120651%_ _%val120652%_)
        (if (procedure? _%thunk120650%_)
            (let ((_%thunk120656%_ _%thunk120650%_))
              (declare (not safe))
              (##parameterize1 _%param120651%_ _%val120652%_ _%thunk120656%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk120650%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk120666%_ _%param120667%_ _%val120668%_ . _%rest120669%_)
        (if (procedure? _%thunk120666%_)
            (let ((_%thunk120673%_ _%thunk120666%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk120673%_ _%rest120669%_))
               _%param120667%_
               _%val120668%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk120666%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g120861_
        (let ((_g120862_ (let () (declare (not safe)) (##length _g120861_))))
          (cond ((let () (declare (not safe)) (##fx= _g120862_ 1))
                 (apply call-with-parameters__0 _g120861_))
                ((let () (declare (not safe)) (##fx= _g120862_ 3))
                 (apply call-with-parameters__1 _g120861_))
                ((let () (declare (not safe)) (##fx>= _g120862_ 3))
                 (apply call-with-parameters__2 _g120861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g120861_))))))
    (define __with-unwind-protect
      (lambda (_%K120611%_ _%fini120612%_)
        (let* ((_%K120615%_ _%K120611%_)
               (_%fini120623%_ _%fini120612%_)
               (_%once120632%_ (vector '0))
               (__tmp120863
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp120864
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once120632%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp120864 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp120863 _%K120615%_ _%fini120623%_))))
    (define with-unwind-protect
      (lambda (_%K120586%_ _%fini120587%_)
        (if (procedure? _%K120586%_)
            (let ((_%K120591%_ _%K120586%_))
              (if (procedure? _%fini120587%_)
                  (let ((_%fini120601%_ _%fini120587%_))
                    (__with-unwind-protect _%K120591%_ _%fini120601%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini120587%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K120586%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt120479%_ _%K120480%_ . _%all-args120481%_)
        (if _%kwt120479%_
            (if (vector? _%kwt120479%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt120479%_))
            '#!void)
        (if (procedure? _%K120480%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K120480%_))
        (let ((_%keys120483%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp120485%_ ((_%rest120487%_ _%all-args120481%_)
                             (_%args120488%_ '#f)
                             (_%tail120489%_ '#f))
            (let* ((_%$%rest120490120498%_ _%rest120487%_)
                   (_%$%else120492120506%_
                    (lambda ()
                      (if _%args120488%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail120489%_ '()))
                            (let ((__tmp120865
                                   (cons _%keys120483%_ _%args120488%_)))
                              (declare (not safe))
                              (##apply _%K120480%_ __tmp120865)))
                          (_%K120480%_ _%keys120483%_))))
                   (_%$%K120494120574%_
                    (lambda (_%hd-rest120509%_ _%hd120510%_)
                      (if (keyword? _%hd120510%_)
                          (let* ((_%$%hd-rest120512120519%_ _%hd-rest120509%_)
                                 (_%$%E120514120523%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest120512120519%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K120515120531%_
                                  (lambda (_%rest120526%_ _%val120527%_)
                                    (if _%kwt120479%_
                                        (let ((_%pos120529%_
                                               (let ((__tmp120867
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd120510%_)))
                                                     (__tmp120866
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt120479%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp120867
                                                  __tmp120866))))
                                          (if (eq? _%hd120510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt120479%_
                                                      _%pos120529%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K120480%_
                                                     _%hd120510%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys120483%_
                                                _%hd120510%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K120480%_
                                               _%hd120510%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys120483%_
                                       _%hd120510%_
                                       _%val120527%_))
                                    (_%lp120485%_
                                     _%rest120526%_
                                     _%args120488%_
                                     _%tail120489%_))))
                            (if (pair? _%$%hd-rest120512120519%_)
                                (let ((_%$%hd120516120534%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest120512120519%_)))
                                      (_%$%tl120517120536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest120512120519%_))))
                                  (let* ((_%val120539%_ _%$%hd120516120534%_)
                                         (_%rest120541%_ _%$%tl120517120536%_))
                                    (_%$%K120515120531%_
                                     _%rest120541%_
                                     _%val120539%_)))
                                (_%$%E120514120523%_)))
                          (if (eq? _%hd120510%_ '#!key)
                              (let* ((_%$%hd-rest120543120550%_
                                      _%hd-rest120509%_)
                                     (_%$%E120545120554%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest120543120550%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K120546120560%_
                                      (lambda (_%rest120557%_ _%val120558%_)
                                        (if _%args120488%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail120489%_
                                                 _%hd-rest120509%_))
                                              (_%lp120485%_
                                               _%rest120557%_
                                               _%args120488%_
                                               _%hd-rest120509%_))
                                            (_%lp120485%_
                                             _%rest120557%_
                                             _%hd-rest120509%_
                                             _%hd-rest120509%_)))))
                                (if (pair? _%$%hd-rest120543120550%_)
                                    (let ((_%$%hd120547120563%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest120543120550%_)))
                                          (_%$%tl120548120565%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest120543120550%_))))
                                      (let* ((_%val120568%_
                                              _%$%hd120547120563%_)
                                             (_%rest120570%_
                                              _%$%tl120548120565%_))
                                        (_%$%K120546120560%_
                                         _%rest120570%_
                                         _%val120568%_)))
                                    (_%$%E120545120554%_)))
                              (if (eq? _%hd120510%_ '#!rest)
                                  (if _%args120488%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120489%_
                                           _%hd-rest120509%_))
                                        (let ((__tmp120868
                                               (cons _%keys120483%_
                                                     _%args120488%_)))
                                          (declare (not safe))
                                          (##apply _%K120480%_ __tmp120868)))
                                      (let ((__tmp120869
                                             (cons _%keys120483%_
                                                   _%hd-rest120509%_)))
                                        (declare (not safe))
                                        (##apply _%K120480%_ __tmp120869)))
                                  (if _%args120488%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120489%_
                                           _%rest120487%_))
                                        (_%lp120485%_
                                         _%hd-rest120509%_
                                         _%args120488%_
                                         _%rest120487%_))
                                      (_%lp120485%_
                                       _%hd-rest120509%_
                                       _%rest120487%_
                                       _%rest120487%_))))))))
              (if (pair? _%$%rest120490120498%_)
                  (let ((_%$%hd120495120577%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest120490120498%_)))
                        (_%$%tl120496120579%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest120490120498%_))))
                    (let* ((_%hd120582%_ _%$%hd120495120577%_)
                           (_%hd-rest120584%_ _%$%tl120496120579%_))
                      (_%$%K120494120574%_ _%hd-rest120584%_ _%hd120582%_)))
                  (_%$%else120492120506%_)))))))
    (define keyword-rest
      (lambda (_%kwt120471%_ . _%drop120472%_)
        (let ((_%rest120474%_ '()))
          (let ((__tmp120870
                 (lambda (_%k120476%_ _%v120477%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k120476%_ _%drop120472%_))
                       '#!void
                       (set! _%rest120474%_
                             (cons _%k120476%_
                                   (cons _%v120477%_ _%rest120474%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt120471%_ __tmp120870))
          _%rest120474%_)))))
