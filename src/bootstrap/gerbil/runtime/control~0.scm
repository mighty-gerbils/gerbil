(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1768863410)
  (begin
    (define make-promise
      (lambda (_%thunk104126%_)
        (if (procedure? _%thunk104126%_)
            (let ((_%thunk104130%_ _%thunk104126%_))
              (__make-promise _%thunk104130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk104126%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk104114%_)
        (let ((_%thunk104117%_ _%thunk104114%_))
          (declare (not safe))
          (##make-delay-promise _%thunk104117%_))))
    (define make-atomic-promise
      (lambda (_%thunk104100%_)
        (if (procedure? _%thunk104100%_)
            (let ((_%thunk104104%_ _%thunk104100%_))
              (__make-atomic-promise _%thunk104104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk104100%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk104078%_)
        (let ((_%thunk104081%_ _%thunk104078%_))
          (let ((_%mx104090%_ (make-mutex 'promise))
                (_%inner104091%_ (__make-promise _%thunk104081%_)))
            (__make-promise
             (lambda ()
               (let ((_%once104094%_ (vector '0)))
                 (let ((__tmp104141
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp104142
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once104094%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp104142 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx104090%_))))
                       (__tmp104140
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner104091%_))))
                       (__tmp104139 (lambda () (mutex-unlock! _%mx104090%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp104141 __tmp104140 __tmp104139)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk104030%_)
        (if (procedure? _%thunk104030%_)
            (let ((_%thunk104034%_ _%thunk104030%_))
              (declare (not safe))
              (_%thunk104034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk104030%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk104044%_ _%param104045%_ _%val104046%_)
        (if (procedure? _%thunk104044%_)
            (let ((_%thunk104050%_ _%thunk104044%_))
              (declare (not safe))
              (##parameterize1 _%param104045%_ _%val104046%_ _%thunk104050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk104044%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk104060%_ _%param104061%_ _%val104062%_ . _%rest104063%_)
        (if (procedure? _%thunk104060%_)
            (let ((_%thunk104067%_ _%thunk104060%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk104067%_ _%rest104063%_))
               _%param104061%_
               _%val104062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk104060%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g104143_
        (let ((_g104144_ (let () (declare (not safe)) (##length _g104143_))))
          (cond ((let () (declare (not safe)) (##fx= _g104144_ 1))
                 (apply call-with-parameters__0 _g104143_))
                ((let () (declare (not safe)) (##fx= _g104144_ 3))
                 (apply call-with-parameters__1 _g104143_))
                ((let () (declare (not safe)) (##fx>= _g104144_ 3))
                 (apply call-with-parameters__2 _g104143_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g104143_))))))
    (define with-unwind-protect
      (lambda (_%K104005%_ _%fini104006%_)
        (if (procedure? _%K104005%_)
            (let ((_%K104010%_ _%K104005%_))
              (if (procedure? _%fini104006%_)
                  (let ((_%fini104020%_ _%fini104006%_))
                    (__with-unwind-protect _%K104010%_ _%fini104020%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini104006%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K104005%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K103979%_ _%fini103980%_)
        (let* ((_%K103983%_ _%K103979%_)
               (_%fini103992%_ _%fini103980%_)
               (_%once104001%_ (vector '0))
               (__tmp104145
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp104146
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once104001%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp104146 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp104145 _%K103983%_ _%fini103992%_))))
    (define keyword-dispatch
      (lambda (_%kwt103872%_ _%K103873%_ . _%all-args103874%_)
        (if _%kwt103872%_
            (if (vector? _%kwt103872%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt103872%_))
            '#!void)
        (if (procedure? _%K103873%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K103873%_))
        (let ((_%keys103876%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp103878%_ ((_%rest103880%_ _%all-args103874%_)
                             (_%args103881%_ '#f)
                             (_%tail103882%_ '#f))
            (let* ((_%rest103883103891%_ _%rest103880%_)
                   (_%else103885103899%_
                    (lambda ()
                      (if _%args103881%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail103882%_ '()))
                            (let ((__tmp104147
                                   (cons _%keys103876%_ _%args103881%_)))
                              (declare (not safe))
                              (##apply _%K103873%_ __tmp104147)))
                          (_%K103873%_ _%keys103876%_))))
                   (_%K103887103967%_
                    (lambda (_%hd-rest103902%_ _%hd103903%_)
                      (if (keyword? _%hd103903%_)
                          (let* ((_%hd-rest103905103912%_ _%hd-rest103902%_)
                                 (_%E103907103916%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest103905103912%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K103908103924%_
                                  (lambda (_%rest103919%_ _%val103920%_)
                                    (if _%kwt103872%_
                                        (let ((_%pos103922%_
                                               (let ((__tmp104149
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd103903%_)))
                                                     (__tmp104148
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt103872%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp104149
                                                  __tmp104148))))
                                          (if (eq? _%hd103903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt103872%_
                                                      _%pos103922%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K103873%_
                                                     _%hd103903%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys103876%_
                                                _%hd103903%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K103873%_
                                               _%hd103903%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys103876%_
                                       _%hd103903%_
                                       _%val103920%_))
                                    (_%lp103878%_
                                     _%rest103919%_
                                     _%args103881%_
                                     _%tail103882%_))))
                            (if (pair? _%hd-rest103905103912%_)
                                (let ((_%hd103909103927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest103905103912%_)))
                                      (_%tl103910103929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest103905103912%_))))
                                  (let* ((_%val103932%_ _%hd103909103927%_)
                                         (_%rest103934%_ _%tl103910103929%_))
                                    (_%K103908103924%_
                                     _%rest103934%_
                                     _%val103932%_)))
                                (_%E103907103916%_)))
                          (if (eq? _%hd103903%_ '#!key)
                              (let* ((_%hd-rest103936103943%_
                                      _%hd-rest103902%_)
                                     (_%E103938103947%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest103936103943%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K103939103953%_
                                      (lambda (_%rest103950%_ _%val103951%_)
                                        (if _%args103881%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail103882%_
                                                 _%hd-rest103902%_))
                                              (_%lp103878%_
                                               _%rest103950%_
                                               _%args103881%_
                                               _%hd-rest103902%_))
                                            (_%lp103878%_
                                             _%rest103950%_
                                             _%hd-rest103902%_
                                             _%hd-rest103902%_)))))
                                (if (pair? _%hd-rest103936103943%_)
                                    (let ((_%hd103940103956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest103936103943%_)))
                                          (_%tl103941103958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest103936103943%_))))
                                      (let* ((_%val103961%_ _%hd103940103956%_)
                                             (_%rest103963%_
                                              _%tl103941103958%_))
                                        (_%K103939103953%_
                                         _%rest103963%_
                                         _%val103961%_)))
                                    (_%E103938103947%_)))
                              (if (eq? _%hd103903%_ '#!rest)
                                  (if _%args103881%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail103882%_
                                           _%hd-rest103902%_))
                                        (let ((__tmp104150
                                               (cons _%keys103876%_
                                                     _%args103881%_)))
                                          (declare (not safe))
                                          (##apply _%K103873%_ __tmp104150)))
                                      (let ((__tmp104151
                                             (cons _%keys103876%_
                                                   _%hd-rest103902%_)))
                                        (declare (not safe))
                                        (##apply _%K103873%_ __tmp104151)))
                                  (if _%args103881%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail103882%_
                                           _%rest103880%_))
                                        (_%lp103878%_
                                         _%hd-rest103902%_
                                         _%args103881%_
                                         _%rest103880%_))
                                      (_%lp103878%_
                                       _%hd-rest103902%_
                                       _%rest103880%_
                                       _%rest103880%_))))))))
              (if (pair? _%rest103883103891%_)
                  (let ((_%hd103888103970%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103883103891%_)))
                        (_%tl103889103972%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103883103891%_))))
                    (let* ((_%hd103975%_ _%hd103888103970%_)
                           (_%hd-rest103977%_ _%tl103889103972%_))
                      (_%K103887103967%_ _%hd-rest103977%_ _%hd103975%_)))
                  (_%else103885103899%_)))))))
    (define keyword-rest
      (lambda (_%kwt103864%_ . _%drop103865%_)
        (let ((_%rest103867%_ '()))
          (let ((__tmp104152
                 (lambda (_%k103869%_ _%v103870%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k103869%_ _%drop103865%_))
                       '#!void
                       (set! _%rest103867%_
                             (cons _%k103869%_
                                   (cons _%v103870%_ _%rest103867%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt103864%_ __tmp104152))
          _%rest103867%_)))))
