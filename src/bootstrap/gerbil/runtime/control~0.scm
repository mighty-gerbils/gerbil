(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1771178561)
  (begin
    (define __make-promise
      (lambda (_%thunk119564%_)
        (let ((_%thunk119567%_ _%thunk119564%_))
          (declare (not safe))
          (##make-delay-promise _%thunk119567%_))))
    (define make-promise
      (lambda (_%thunk119027%_)
        (if (procedure? _%thunk119027%_)
            (let ((_%thunk119031%_ _%thunk119027%_))
              (__make-promise _%thunk119031%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk119027%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk119508%_)
        (let ((_%thunk119511%_ _%thunk119508%_))
          (let ((_%mx119538%_ (make-mutex 'promise))
                (_%inner119539%_
                 (let* ((_%thunk119520%_ _%thunk119511%_)
                        (_%thunk119525%_ _%thunk119520%_))
                   (__make-promise _%thunk119525%_))))
            (let* ((_%thunk119548%_
                    (lambda ()
                      (let ((_%once119542%_ (vector '0)))
                        (let ((__tmp119655
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp119656
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once119542%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp119656 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx119538%_))))
                              (__tmp119654
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner119539%_))))
                              (__tmp119653
                               (lambda () (mutex-unlock! _%mx119538%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp119655
                           __tmp119654
                           __tmp119653)))))
                   (_%thunk119553%_ _%thunk119548%_))
              (__make-promise _%thunk119553%_))))))
    (define make-atomic-promise
      (lambda (_%thunk119161%_)
        (if (procedure? _%thunk119161%_)
            (let ((_%thunk119165%_ _%thunk119161%_))
              (__make-atomic-promise _%thunk119165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk119161%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk119460%_)
        (if (procedure? _%thunk119460%_)
            (let ((_%thunk119464%_ _%thunk119460%_))
              (declare (not safe))
              (_%thunk119464%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk119460%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk119474%_ _%param119475%_ _%val119476%_)
        (if (procedure? _%thunk119474%_)
            (let ((_%thunk119480%_ _%thunk119474%_))
              (declare (not safe))
              (##parameterize1 _%param119475%_ _%val119476%_ _%thunk119480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk119474%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk119490%_ _%param119491%_ _%val119492%_ . _%rest119493%_)
        (if (procedure? _%thunk119490%_)
            (let ((_%thunk119497%_ _%thunk119490%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk119497%_ _%rest119493%_))
               _%param119491%_
               _%val119492%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk119490%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g119657_
        (let ((_g119658_ (let () (declare (not safe)) (##length _g119657_))))
          (cond ((let () (declare (not safe)) (##fx= _g119658_ 1))
                 (apply call-with-parameters__0 _g119657_))
                ((let () (declare (not safe)) (##fx= _g119658_ 3))
                 (apply call-with-parameters__1 _g119657_))
                ((let () (declare (not safe)) (##fx>= _g119658_ 3))
                 (apply call-with-parameters__2 _g119657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g119657_))))))
    (define __with-unwind-protect
      (lambda (_%K119435%_ _%fini119436%_)
        (let* ((_%K119439%_ _%K119435%_)
               (_%fini119447%_ _%fini119436%_)
               (_%once119456%_ (vector '0))
               (__tmp119659
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp119660
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once119456%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp119660 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp119659 _%K119439%_ _%fini119447%_))))
    (define with-unwind-protect
      (lambda (_%K119295%_ _%fini119296%_)
        (if (procedure? _%K119295%_)
            (let ((_%K119300%_ _%K119295%_))
              (if (procedure? _%fini119296%_)
                  (let ((_%fini119310%_ _%fini119296%_))
                    (__with-unwind-protect _%K119300%_ _%fini119310%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini119296%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K119295%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt119328%_ _%K119329%_ . _%all-args119330%_)
        (if _%kwt119328%_
            (if (vector? _%kwt119328%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt119328%_))
            '#!void)
        (if (procedure? _%K119329%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K119329%_))
        (let ((_%keys119332%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp119334%_ ((_%rest119336%_ _%all-args119330%_)
                             (_%args119337%_ '#f)
                             (_%tail119338%_ '#f))
            (let* ((_%rest119339119347%_ _%rest119336%_)
                   (_%else119341119355%_
                    (lambda ()
                      (if _%args119337%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail119338%_ '()))
                            (let ((__tmp119661
                                   (cons _%keys119332%_ _%args119337%_)))
                              (declare (not safe))
                              (##apply _%K119329%_ __tmp119661)))
                          (_%K119329%_ _%keys119332%_))))
                   (_%K119343119423%_
                    (lambda (_%hd-rest119358%_ _%hd119359%_)
                      (if (keyword? _%hd119359%_)
                          (let* ((_%hd-rest119361119368%_ _%hd-rest119358%_)
                                 (_%E119363119372%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest119361119368%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K119364119380%_
                                  (lambda (_%rest119375%_ _%val119376%_)
                                    (if _%kwt119328%_
                                        (let ((_%pos119378%_
                                               (let ((__tmp119663
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd119359%_)))
                                                     (__tmp119662
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt119328%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp119663
                                                  __tmp119662))))
                                          (if (eq? _%hd119359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt119328%_
                                                      _%pos119378%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K119329%_
                                                     _%hd119359%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys119332%_
                                                _%hd119359%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K119329%_
                                               _%hd119359%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys119332%_
                                       _%hd119359%_
                                       _%val119376%_))
                                    (_%lp119334%_
                                     _%rest119375%_
                                     _%args119337%_
                                     _%tail119338%_))))
                            (if (pair? _%hd-rest119361119368%_)
                                (let ((_%hd119365119383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest119361119368%_)))
                                      (_%tl119366119385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest119361119368%_))))
                                  (let* ((_%val119388%_ _%hd119365119383%_)
                                         (_%rest119390%_ _%tl119366119385%_))
                                    (_%K119364119380%_
                                     _%rest119390%_
                                     _%val119388%_)))
                                (_%E119363119372%_)))
                          (if (eq? _%hd119359%_ '#!key)
                              (let* ((_%hd-rest119392119399%_
                                      _%hd-rest119358%_)
                                     (_%E119394119403%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest119392119399%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K119395119409%_
                                      (lambda (_%rest119406%_ _%val119407%_)
                                        (if _%args119337%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail119338%_
                                                 _%hd-rest119358%_))
                                              (_%lp119334%_
                                               _%rest119406%_
                                               _%args119337%_
                                               _%hd-rest119358%_))
                                            (_%lp119334%_
                                             _%rest119406%_
                                             _%hd-rest119358%_
                                             _%hd-rest119358%_)))))
                                (if (pair? _%hd-rest119392119399%_)
                                    (let ((_%hd119396119412%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest119392119399%_)))
                                          (_%tl119397119414%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest119392119399%_))))
                                      (let* ((_%val119417%_ _%hd119396119412%_)
                                             (_%rest119419%_
                                              _%tl119397119414%_))
                                        (_%K119395119409%_
                                         _%rest119419%_
                                         _%val119417%_)))
                                    (_%E119394119403%_)))
                              (if (eq? _%hd119359%_ '#!rest)
                                  (if _%args119337%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119338%_
                                           _%hd-rest119358%_))
                                        (let ((__tmp119664
                                               (cons _%keys119332%_
                                                     _%args119337%_)))
                                          (declare (not safe))
                                          (##apply _%K119329%_ __tmp119664)))
                                      (let ((__tmp119665
                                             (cons _%keys119332%_
                                                   _%hd-rest119358%_)))
                                        (declare (not safe))
                                        (##apply _%K119329%_ __tmp119665)))
                                  (if _%args119337%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119338%_
                                           _%rest119336%_))
                                        (_%lp119334%_
                                         _%hd-rest119358%_
                                         _%args119337%_
                                         _%rest119336%_))
                                      (_%lp119334%_
                                       _%hd-rest119358%_
                                       _%rest119336%_
                                       _%rest119336%_))))))))
              (if (pair? _%rest119339119347%_)
                  (let ((_%hd119344119426%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119339119347%_)))
                        (_%tl119345119428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119339119347%_))))
                    (let* ((_%hd119431%_ _%hd119344119426%_)
                           (_%hd-rest119433%_ _%tl119345119428%_))
                      (_%K119343119423%_ _%hd-rest119433%_ _%hd119431%_)))
                  (_%else119341119355%_)))))))
    (define keyword-rest
      (lambda (_%kwt119320%_ . _%drop119321%_)
        (let ((_%rest119323%_ '()))
          (let ((__tmp119666
                 (lambda (_%k119325%_ _%v119326%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k119325%_ _%drop119321%_))
                       '#!void
                       (set! _%rest119323%_
                             (cons _%k119325%_
                                   (cons _%v119326%_ _%rest119323%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt119320%_ __tmp119666))
          _%rest119323%_)))))
