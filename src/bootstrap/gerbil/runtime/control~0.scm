(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1784471374)
  (begin
    (define __make-promise
      (lambda (_%thunk125830%_)
        (let ((_%thunk125833%_ _%thunk125830%_))
          (declare (not safe))
          (##make-delay-promise _%thunk125833%_))))
    (define make-promise
      (lambda (_%thunk125816%_)
        (if (procedure? _%thunk125816%_)
            (let ((_%thunk125820%_ _%thunk125816%_))
              (__make-promise _%thunk125820%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk125816%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk125760%_)
        (let ((_%thunk125763%_ _%thunk125760%_))
          (let ((_%mx125790%_ (make-mutex 'promise))
                (_%inner125791%_
                 (let* ((_%thunk125772%_ _%thunk125763%_)
                        (_%thunk125777%_ _%thunk125772%_))
                   (__make-promise _%thunk125777%_))))
            (let* ((_%thunk125800%_
                    (lambda ()
                      (let ((_%once125794%_ (vector '0)))
                        (let ((__tmp125921
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp125922
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once125794%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp125922 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx125790%_))))
                              (__tmp125920
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner125791%_))))
                              (__tmp125919
                               (lambda () (mutex-unlock! _%mx125790%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp125921
                           __tmp125920
                           __tmp125919)))))
                   (_%thunk125805%_ _%thunk125800%_))
              (__make-promise _%thunk125805%_))))))
    (define make-atomic-promise
      (lambda (_%thunk125746%_)
        (if (procedure? _%thunk125746%_)
            (let ((_%thunk125750%_ _%thunk125746%_))
              (__make-atomic-promise _%thunk125750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk125746%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk125698%_)
        (if (procedure? _%thunk125698%_)
            (let ((_%thunk125702%_ _%thunk125698%_))
              (declare (not safe))
              (_%thunk125702%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk125698%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk125712%_ _%param125713%_ _%val125714%_)
        (if (procedure? _%thunk125712%_)
            (let ((_%thunk125718%_ _%thunk125712%_))
              (declare (not safe))
              (##parameterize1 _%param125713%_ _%val125714%_ _%thunk125718%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk125712%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk125728%_ _%param125729%_ _%val125730%_ . _%rest125731%_)
        (if (procedure? _%thunk125728%_)
            (let ((_%thunk125735%_ _%thunk125728%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk125735%_ _%rest125731%_))
               _%param125729%_
               _%val125730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk125728%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g125923_
        (let ((_g125924_ (let () (declare (not safe)) (##length _g125923_))))
          (cond ((let () (declare (not safe)) (##fx= _g125924_ 1))
                 (apply call-with-parameters__0 _g125923_))
                ((let () (declare (not safe)) (##fx= _g125924_ 3))
                 (apply call-with-parameters__1 _g125923_))
                ((let () (declare (not safe)) (##fx>= _g125924_ 3))
                 (apply call-with-parameters__2 _g125923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g125923_))))))
    (define __with-unwind-protect
      (lambda (_%K125673%_ _%fini125674%_)
        (let* ((_%K125677%_ _%K125673%_)
               (_%fini125685%_ _%fini125674%_)
               (_%once125694%_ (vector '0))
               (__tmp125925
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp125926
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once125694%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp125926 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp125925 _%K125677%_ _%fini125685%_))))
    (define with-unwind-protect
      (lambda (_%K125648%_ _%fini125649%_)
        (if (procedure? _%K125648%_)
            (let ((_%K125653%_ _%K125648%_))
              (if (procedure? _%fini125649%_)
                  (let ((_%fini125663%_ _%fini125649%_))
                    (__with-unwind-protect _%K125653%_ _%fini125663%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini125649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K125648%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt125541%_ _%K125542%_ . _%all-args125543%_)
        (if _%kwt125541%_
            (if (vector? _%kwt125541%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt125541%_))
            '#!void)
        (if (procedure? _%K125542%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K125542%_))
        (let ((_%keys125545%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp125547%_ ((_%rest125549%_ _%all-args125543%_)
                             (_%args125550%_ '#f)
                             (_%tail125551%_ '#f))
            (let* ((_%$%rest125552125560%_ _%rest125549%_)
                   (_%$%else125554125568%_
                    (lambda ()
                      (if _%args125550%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail125551%_ '()))
                            (let ((__tmp125927
                                   (cons _%keys125545%_ _%args125550%_)))
                              (declare (not safe))
                              (##apply _%K125542%_ __tmp125927)))
                          (_%K125542%_ _%keys125545%_))))
                   (_%$%K125556125636%_
                    (lambda (_%hd-rest125571%_ _%hd125572%_)
                      (if (keyword? _%hd125572%_)
                          (let* ((_%$%hd-rest125574125581%_ _%hd-rest125571%_)
                                 (_%$%E125576125585%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest125574125581%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K125577125593%_
                                  (lambda (_%rest125588%_ _%val125589%_)
                                    (if _%kwt125541%_
                                        (let ((_%pos125591%_
                                               (let ((__tmp125929
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd125572%_)))
                                                     (__tmp125928
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt125541%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp125929
                                                  __tmp125928))))
                                          (if (eq? _%hd125572%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt125541%_
                                                      _%pos125591%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K125542%_
                                                     _%hd125572%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys125545%_
                                                _%hd125572%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K125542%_
                                               _%hd125572%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys125545%_
                                       _%hd125572%_
                                       _%val125589%_))
                                    (_%lp125547%_
                                     _%rest125588%_
                                     _%args125550%_
                                     _%tail125551%_))))
                            (if (pair? _%$%hd-rest125574125581%_)
                                (let ((_%$%hd125578125596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest125574125581%_)))
                                      (_%$%tl125579125598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest125574125581%_))))
                                  (let* ((_%val125601%_ _%$%hd125578125596%_)
                                         (_%rest125603%_ _%$%tl125579125598%_))
                                    (_%$%K125577125593%_
                                     _%rest125603%_
                                     _%val125601%_)))
                                (_%$%E125576125585%_)))
                          (if (eq? _%hd125572%_ '#!key)
                              (let* ((_%$%hd-rest125605125612%_
                                      _%hd-rest125571%_)
                                     (_%$%E125607125616%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest125605125612%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K125608125622%_
                                      (lambda (_%rest125619%_ _%val125620%_)
                                        (if _%args125550%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail125551%_
                                                 _%hd-rest125571%_))
                                              (_%lp125547%_
                                               _%rest125619%_
                                               _%args125550%_
                                               _%hd-rest125571%_))
                                            (_%lp125547%_
                                             _%rest125619%_
                                             _%hd-rest125571%_
                                             _%hd-rest125571%_)))))
                                (if (pair? _%$%hd-rest125605125612%_)
                                    (let ((_%$%hd125609125625%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest125605125612%_)))
                                          (_%$%tl125610125627%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest125605125612%_))))
                                      (let* ((_%val125630%_
                                              _%$%hd125609125625%_)
                                             (_%rest125632%_
                                              _%$%tl125610125627%_))
                                        (_%$%K125608125622%_
                                         _%rest125632%_
                                         _%val125630%_)))
                                    (_%$%E125607125616%_)))
                              (if (eq? _%hd125572%_ '#!rest)
                                  (if _%args125550%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail125551%_
                                           _%hd-rest125571%_))
                                        (let ((__tmp125930
                                               (cons _%keys125545%_
                                                     _%args125550%_)))
                                          (declare (not safe))
                                          (##apply _%K125542%_ __tmp125930)))
                                      (let ((__tmp125931
                                             (cons _%keys125545%_
                                                   _%hd-rest125571%_)))
                                        (declare (not safe))
                                        (##apply _%K125542%_ __tmp125931)))
                                  (if _%args125550%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail125551%_
                                           _%rest125549%_))
                                        (_%lp125547%_
                                         _%hd-rest125571%_
                                         _%args125550%_
                                         _%rest125549%_))
                                      (_%lp125547%_
                                       _%hd-rest125571%_
                                       _%rest125549%_
                                       _%rest125549%_))))))))
              (if (pair? _%$%rest125552125560%_)
                  (let ((_%$%hd125557125639%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest125552125560%_)))
                        (_%$%tl125558125641%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest125552125560%_))))
                    (let* ((_%hd125644%_ _%$%hd125557125639%_)
                           (_%hd-rest125646%_ _%$%tl125558125641%_))
                      (_%$%K125556125636%_ _%hd-rest125646%_ _%hd125644%_)))
                  (_%$%else125554125568%_)))))))
    (define keyword-rest
      (lambda (_%kwt125533%_ . _%drop125534%_)
        (let ((_%rest125536%_ '()))
          (let ((__tmp125932
                 (lambda (_%k125538%_ _%v125539%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k125538%_ _%drop125534%_))
                       '#!void
                       (set! _%rest125536%_
                             (cons _%k125538%_
                                   (cons _%v125539%_ _%rest125536%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt125533%_ __tmp125932))
          _%rest125536%_)))))
