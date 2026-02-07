(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770505711)
  (begin
    (define __make-promise
      (lambda (_%thunk116981%_)
        (let ((_%thunk116984%_ _%thunk116981%_))
          (declare (not safe))
          (##make-delay-promise _%thunk116984%_))))
    (define make-promise
      (lambda (_%thunk116444%_)
        (if (procedure? _%thunk116444%_)
            (let ((_%thunk116448%_ _%thunk116444%_))
              (__make-promise _%thunk116448%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk116444%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk116925%_)
        (let ((_%thunk116928%_ _%thunk116925%_))
          (let ((_%mx116955%_ (make-mutex 'promise))
                (_%inner116956%_
                 (let* ((_%thunk116937%_ _%thunk116928%_)
                        (_%thunk116942%_ _%thunk116937%_))
                   (__make-promise _%thunk116942%_))))
            (let* ((_%thunk116965%_
                    (lambda ()
                      (let ((_%once116959%_ (vector '0)))
                        (let ((__tmp117072
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp117073
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once116959%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp117073 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx116955%_))))
                              (__tmp117071
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner116956%_))))
                              (__tmp117070
                               (lambda () (mutex-unlock! _%mx116955%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp117072
                           __tmp117071
                           __tmp117070)))))
                   (_%thunk116970%_ _%thunk116965%_))
              (__make-promise _%thunk116970%_))))))
    (define make-atomic-promise
      (lambda (_%thunk116578%_)
        (if (procedure? _%thunk116578%_)
            (let ((_%thunk116582%_ _%thunk116578%_))
              (__make-atomic-promise _%thunk116582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk116578%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk116877%_)
        (if (procedure? _%thunk116877%_)
            (let ((_%thunk116881%_ _%thunk116877%_))
              (declare (not safe))
              (_%thunk116881%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk116877%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk116891%_ _%param116892%_ _%val116893%_)
        (if (procedure? _%thunk116891%_)
            (let ((_%thunk116897%_ _%thunk116891%_))
              (declare (not safe))
              (##parameterize1 _%param116892%_ _%val116893%_ _%thunk116897%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk116891%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk116907%_ _%param116908%_ _%val116909%_ . _%rest116910%_)
        (if (procedure? _%thunk116907%_)
            (let ((_%thunk116914%_ _%thunk116907%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk116914%_ _%rest116910%_))
               _%param116908%_
               _%val116909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk116907%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g117074_
        (let ((_g117075_ (let () (declare (not safe)) (##length _g117074_))))
          (cond ((let () (declare (not safe)) (##fx= _g117075_ 1))
                 (apply call-with-parameters__0 _g117074_))
                ((let () (declare (not safe)) (##fx= _g117075_ 3))
                 (apply call-with-parameters__1 _g117074_))
                ((let () (declare (not safe)) (##fx>= _g117075_ 3))
                 (apply call-with-parameters__2 _g117074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g117074_))))))
    (define __with-unwind-protect
      (lambda (_%K116852%_ _%fini116853%_)
        (let* ((_%K116856%_ _%K116852%_)
               (_%fini116864%_ _%fini116853%_)
               (_%once116873%_ (vector '0))
               (__tmp117076
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp117077
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once116873%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp117077 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp117076 _%K116856%_ _%fini116864%_))))
    (define with-unwind-protect
      (lambda (_%K116712%_ _%fini116713%_)
        (if (procedure? _%K116712%_)
            (let ((_%K116717%_ _%K116712%_))
              (if (procedure? _%fini116713%_)
                  (let ((_%fini116727%_ _%fini116713%_))
                    (__with-unwind-protect _%K116717%_ _%fini116727%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini116713%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K116712%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt116745%_ _%K116746%_ . _%all-args116747%_)
        (if _%kwt116745%_
            (if (vector? _%kwt116745%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt116745%_))
            '#!void)
        (if (procedure? _%K116746%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K116746%_))
        (let ((_%keys116749%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp116751%_ ((_%rest116753%_ _%all-args116747%_)
                             (_%args116754%_ '#f)
                             (_%tail116755%_ '#f))
            (let* ((_%rest116756116764%_ _%rest116753%_)
                   (_%else116758116772%_
                    (lambda ()
                      (if _%args116754%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail116755%_ '()))
                            (let ((__tmp117078
                                   (cons _%keys116749%_ _%args116754%_)))
                              (declare (not safe))
                              (##apply _%K116746%_ __tmp117078)))
                          (_%K116746%_ _%keys116749%_))))
                   (_%K116760116840%_
                    (lambda (_%hd-rest116775%_ _%hd116776%_)
                      (if (keyword? _%hd116776%_)
                          (let* ((_%hd-rest116778116785%_ _%hd-rest116775%_)
                                 (_%E116780116789%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest116778116785%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K116781116797%_
                                  (lambda (_%rest116792%_ _%val116793%_)
                                    (if _%kwt116745%_
                                        (let ((_%pos116795%_
                                               (let ((__tmp117080
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd116776%_)))
                                                     (__tmp117079
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt116745%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp117080
                                                  __tmp117079))))
                                          (if (eq? _%hd116776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt116745%_
                                                      _%pos116795%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K116746%_
                                                     _%hd116776%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys116749%_
                                                _%hd116776%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K116746%_
                                               _%hd116776%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys116749%_
                                       _%hd116776%_
                                       _%val116793%_))
                                    (_%lp116751%_
                                     _%rest116792%_
                                     _%args116754%_
                                     _%tail116755%_))))
                            (if (pair? _%hd-rest116778116785%_)
                                (let ((_%hd116782116800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest116778116785%_)))
                                      (_%tl116783116802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest116778116785%_))))
                                  (let* ((_%val116805%_ _%hd116782116800%_)
                                         (_%rest116807%_ _%tl116783116802%_))
                                    (_%K116781116797%_
                                     _%rest116807%_
                                     _%val116805%_)))
                                (_%E116780116789%_)))
                          (if (eq? _%hd116776%_ '#!key)
                              (let* ((_%hd-rest116809116816%_
                                      _%hd-rest116775%_)
                                     (_%E116811116820%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest116809116816%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K116812116826%_
                                      (lambda (_%rest116823%_ _%val116824%_)
                                        (if _%args116754%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail116755%_
                                                 _%hd-rest116775%_))
                                              (_%lp116751%_
                                               _%rest116823%_
                                               _%args116754%_
                                               _%hd-rest116775%_))
                                            (_%lp116751%_
                                             _%rest116823%_
                                             _%hd-rest116775%_
                                             _%hd-rest116775%_)))))
                                (if (pair? _%hd-rest116809116816%_)
                                    (let ((_%hd116813116829%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest116809116816%_)))
                                          (_%tl116814116831%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest116809116816%_))))
                                      (let* ((_%val116834%_ _%hd116813116829%_)
                                             (_%rest116836%_
                                              _%tl116814116831%_))
                                        (_%K116812116826%_
                                         _%rest116836%_
                                         _%val116834%_)))
                                    (_%E116811116820%_)))
                              (if (eq? _%hd116776%_ '#!rest)
                                  (if _%args116754%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116755%_
                                           _%hd-rest116775%_))
                                        (let ((__tmp117081
                                               (cons _%keys116749%_
                                                     _%args116754%_)))
                                          (declare (not safe))
                                          (##apply _%K116746%_ __tmp117081)))
                                      (let ((__tmp117082
                                             (cons _%keys116749%_
                                                   _%hd-rest116775%_)))
                                        (declare (not safe))
                                        (##apply _%K116746%_ __tmp117082)))
                                  (if _%args116754%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116755%_
                                           _%rest116753%_))
                                        (_%lp116751%_
                                         _%hd-rest116775%_
                                         _%args116754%_
                                         _%rest116753%_))
                                      (_%lp116751%_
                                       _%hd-rest116775%_
                                       _%rest116753%_
                                       _%rest116753%_))))))))
              (if (pair? _%rest116756116764%_)
                  (let ((_%hd116761116843%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116756116764%_)))
                        (_%tl116762116845%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116756116764%_))))
                    (let* ((_%hd116848%_ _%hd116761116843%_)
                           (_%hd-rest116850%_ _%tl116762116845%_))
                      (_%K116760116840%_ _%hd-rest116850%_ _%hd116848%_)))
                  (_%else116758116772%_)))))))
    (define keyword-rest
      (lambda (_%kwt116737%_ . _%drop116738%_)
        (let ((_%rest116740%_ '()))
          (let ((__tmp117083
                 (lambda (_%k116742%_ _%v116743%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k116742%_ _%drop116738%_))
                       '#!void
                       (set! _%rest116740%_
                             (cons _%k116742%_
                                   (cons _%v116743%_ _%rest116740%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt116737%_ __tmp117083))
          _%rest116740%_)))))
