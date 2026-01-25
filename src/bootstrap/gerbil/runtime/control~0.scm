(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1769382893)
  (begin
    (define make-promise
      (lambda (_%thunk104478%_)
        (if (procedure? _%thunk104478%_)
            (let ((_%thunk104482%_ _%thunk104478%_))
              (__make-promise _%thunk104482%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk104478%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk104466%_)
        (let ((_%thunk104469%_ _%thunk104466%_))
          (declare (not safe))
          (##make-delay-promise _%thunk104469%_))))
    (define make-atomic-promise
      (lambda (_%thunk104452%_)
        (if (procedure? _%thunk104452%_)
            (let ((_%thunk104456%_ _%thunk104452%_))
              (__make-atomic-promise _%thunk104456%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk104452%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk104430%_)
        (let ((_%thunk104433%_ _%thunk104430%_))
          (let ((_%mx104442%_ (make-mutex 'promise))
                (_%inner104443%_ (__make-promise _%thunk104433%_)))
            (__make-promise
             (lambda ()
               (let ((_%once104446%_ (vector '0)))
                 (let ((__tmp104493
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp104494
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once104446%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp104494 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx104442%_))))
                       (__tmp104492
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner104443%_))))
                       (__tmp104491 (lambda () (mutex-unlock! _%mx104442%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp104493 __tmp104492 __tmp104491)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk104382%_)
        (if (procedure? _%thunk104382%_)
            (let ((_%thunk104386%_ _%thunk104382%_))
              (declare (not safe))
              (_%thunk104386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk104382%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk104396%_ _%param104397%_ _%val104398%_)
        (if (procedure? _%thunk104396%_)
            (let ((_%thunk104402%_ _%thunk104396%_))
              (declare (not safe))
              (##parameterize1 _%param104397%_ _%val104398%_ _%thunk104402%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk104396%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk104412%_ _%param104413%_ _%val104414%_ . _%rest104415%_)
        (if (procedure? _%thunk104412%_)
            (let ((_%thunk104419%_ _%thunk104412%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk104419%_ _%rest104415%_))
               _%param104413%_
               _%val104414%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk104412%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g104495_
        (let ((_g104496_ (let () (declare (not safe)) (##length _g104495_))))
          (cond ((let () (declare (not safe)) (##fx= _g104496_ 1))
                 (apply call-with-parameters__0 _g104495_))
                ((let () (declare (not safe)) (##fx= _g104496_ 3))
                 (apply call-with-parameters__1 _g104495_))
                ((let () (declare (not safe)) (##fx>= _g104496_ 3))
                 (apply call-with-parameters__2 _g104495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g104495_))))))
    (define with-unwind-protect
      (lambda (_%K104357%_ _%fini104358%_)
        (if (procedure? _%K104357%_)
            (let ((_%K104362%_ _%K104357%_))
              (if (procedure? _%fini104358%_)
                  (let ((_%fini104372%_ _%fini104358%_))
                    (__with-unwind-protect _%K104362%_ _%fini104372%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini104358%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K104357%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K104331%_ _%fini104332%_)
        (let* ((_%K104335%_ _%K104331%_)
               (_%fini104344%_ _%fini104332%_)
               (_%once104353%_ (vector '0))
               (__tmp104497
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp104498
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once104353%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp104498 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp104497 _%K104335%_ _%fini104344%_))))
    (define keyword-dispatch
      (lambda (_%kwt104224%_ _%K104225%_ . _%all-args104226%_)
        (if _%kwt104224%_
            (if (vector? _%kwt104224%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt104224%_))
            '#!void)
        (if (procedure? _%K104225%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K104225%_))
        (let ((_%keys104228%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp104230%_ ((_%rest104232%_ _%all-args104226%_)
                             (_%args104233%_ '#f)
                             (_%tail104234%_ '#f))
            (let* ((_%rest104235104243%_ _%rest104232%_)
                   (_%else104237104251%_
                    (lambda ()
                      (if _%args104233%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail104234%_ '()))
                            (let ((__tmp104499
                                   (cons _%keys104228%_ _%args104233%_)))
                              (declare (not safe))
                              (##apply _%K104225%_ __tmp104499)))
                          (_%K104225%_ _%keys104228%_))))
                   (_%K104239104319%_
                    (lambda (_%hd-rest104254%_ _%hd104255%_)
                      (if (keyword? _%hd104255%_)
                          (let* ((_%hd-rest104257104264%_ _%hd-rest104254%_)
                                 (_%E104259104268%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest104257104264%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K104260104276%_
                                  (lambda (_%rest104271%_ _%val104272%_)
                                    (if _%kwt104224%_
                                        (let ((_%pos104274%_
                                               (let ((__tmp104501
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd104255%_)))
                                                     (__tmp104500
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt104224%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp104501
                                                  __tmp104500))))
                                          (if (eq? _%hd104255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt104224%_
                                                      _%pos104274%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K104225%_
                                                     _%hd104255%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys104228%_
                                                _%hd104255%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K104225%_
                                               _%hd104255%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys104228%_
                                       _%hd104255%_
                                       _%val104272%_))
                                    (_%lp104230%_
                                     _%rest104271%_
                                     _%args104233%_
                                     _%tail104234%_))))
                            (if (pair? _%hd-rest104257104264%_)
                                (let ((_%hd104261104279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest104257104264%_)))
                                      (_%tl104262104281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest104257104264%_))))
                                  (let* ((_%val104284%_ _%hd104261104279%_)
                                         (_%rest104286%_ _%tl104262104281%_))
                                    (_%K104260104276%_
                                     _%rest104286%_
                                     _%val104284%_)))
                                (_%E104259104268%_)))
                          (if (eq? _%hd104255%_ '#!key)
                              (let* ((_%hd-rest104288104295%_
                                      _%hd-rest104254%_)
                                     (_%E104290104299%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest104288104295%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K104291104305%_
                                      (lambda (_%rest104302%_ _%val104303%_)
                                        (if _%args104233%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail104234%_
                                                 _%hd-rest104254%_))
                                              (_%lp104230%_
                                               _%rest104302%_
                                               _%args104233%_
                                               _%hd-rest104254%_))
                                            (_%lp104230%_
                                             _%rest104302%_
                                             _%hd-rest104254%_
                                             _%hd-rest104254%_)))))
                                (if (pair? _%hd-rest104288104295%_)
                                    (let ((_%hd104292104308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest104288104295%_)))
                                          (_%tl104293104310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest104288104295%_))))
                                      (let* ((_%val104313%_ _%hd104292104308%_)
                                             (_%rest104315%_
                                              _%tl104293104310%_))
                                        (_%K104291104305%_
                                         _%rest104315%_
                                         _%val104313%_)))
                                    (_%E104290104299%_)))
                              (if (eq? _%hd104255%_ '#!rest)
                                  (if _%args104233%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104234%_
                                           _%hd-rest104254%_))
                                        (let ((__tmp104502
                                               (cons _%keys104228%_
                                                     _%args104233%_)))
                                          (declare (not safe))
                                          (##apply _%K104225%_ __tmp104502)))
                                      (let ((__tmp104503
                                             (cons _%keys104228%_
                                                   _%hd-rest104254%_)))
                                        (declare (not safe))
                                        (##apply _%K104225%_ __tmp104503)))
                                  (if _%args104233%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104234%_
                                           _%rest104232%_))
                                        (_%lp104230%_
                                         _%hd-rest104254%_
                                         _%args104233%_
                                         _%rest104232%_))
                                      (_%lp104230%_
                                       _%hd-rest104254%_
                                       _%rest104232%_
                                       _%rest104232%_))))))))
              (if (pair? _%rest104235104243%_)
                  (let ((_%hd104240104322%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104235104243%_)))
                        (_%tl104241104324%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104235104243%_))))
                    (let* ((_%hd104327%_ _%hd104240104322%_)
                           (_%hd-rest104329%_ _%tl104241104324%_))
                      (_%K104239104319%_ _%hd-rest104329%_ _%hd104327%_)))
                  (_%else104237104251%_)))))))
    (define keyword-rest
      (lambda (_%kwt104216%_ . _%drop104217%_)
        (let ((_%rest104219%_ '()))
          (let ((__tmp104504
                 (lambda (_%k104221%_ _%v104222%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k104221%_ _%drop104217%_))
                       '#!void
                       (set! _%rest104219%_
                             (cons _%k104221%_
                                   (cons _%v104222%_ _%rest104219%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt104216%_ __tmp104504))
          _%rest104219%_)))))
