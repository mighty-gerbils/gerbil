(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1768865821)
  (begin
    (define make-promise
      (lambda (_%thunk104153%_)
        (if (procedure? _%thunk104153%_)
            (let ((_%thunk104157%_ _%thunk104153%_))
              (__make-promise _%thunk104157%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk104153%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk104141%_)
        (let ((_%thunk104144%_ _%thunk104141%_))
          (declare (not safe))
          (##make-delay-promise _%thunk104144%_))))
    (define make-atomic-promise
      (lambda (_%thunk104127%_)
        (if (procedure? _%thunk104127%_)
            (let ((_%thunk104131%_ _%thunk104127%_))
              (__make-atomic-promise _%thunk104131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk104127%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk104105%_)
        (let ((_%thunk104108%_ _%thunk104105%_))
          (let ((_%mx104117%_ (make-mutex 'promise))
                (_%inner104118%_ (__make-promise _%thunk104108%_)))
            (__make-promise
             (lambda ()
               (let ((_%once104121%_ (vector '0)))
                 (let ((__tmp104168
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp104169
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once104121%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp104169 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx104117%_))))
                       (__tmp104167
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner104118%_))))
                       (__tmp104166 (lambda () (mutex-unlock! _%mx104117%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp104168 __tmp104167 __tmp104166)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk104057%_)
        (if (procedure? _%thunk104057%_)
            (let ((_%thunk104061%_ _%thunk104057%_))
              (declare (not safe))
              (_%thunk104061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk104057%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk104071%_ _%param104072%_ _%val104073%_)
        (if (procedure? _%thunk104071%_)
            (let ((_%thunk104077%_ _%thunk104071%_))
              (declare (not safe))
              (##parameterize1 _%param104072%_ _%val104073%_ _%thunk104077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk104071%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk104087%_ _%param104088%_ _%val104089%_ . _%rest104090%_)
        (if (procedure? _%thunk104087%_)
            (let ((_%thunk104094%_ _%thunk104087%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk104094%_ _%rest104090%_))
               _%param104088%_
               _%val104089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk104087%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g104170_
        (let ((_g104171_ (let () (declare (not safe)) (##length _g104170_))))
          (cond ((let () (declare (not safe)) (##fx= _g104171_ 1))
                 (apply call-with-parameters__0 _g104170_))
                ((let () (declare (not safe)) (##fx= _g104171_ 3))
                 (apply call-with-parameters__1 _g104170_))
                ((let () (declare (not safe)) (##fx>= _g104171_ 3))
                 (apply call-with-parameters__2 _g104170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g104170_))))))
    (define with-unwind-protect
      (lambda (_%K104032%_ _%fini104033%_)
        (if (procedure? _%K104032%_)
            (let ((_%K104037%_ _%K104032%_))
              (if (procedure? _%fini104033%_)
                  (let ((_%fini104047%_ _%fini104033%_))
                    (__with-unwind-protect _%K104037%_ _%fini104047%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini104033%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K104032%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K104006%_ _%fini104007%_)
        (let* ((_%K104010%_ _%K104006%_)
               (_%fini104019%_ _%fini104007%_)
               (_%once104028%_ (vector '0))
               (__tmp104172
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp104173
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once104028%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp104173 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp104172 _%K104010%_ _%fini104019%_))))
    (define keyword-dispatch
      (lambda (_%kwt103899%_ _%K103900%_ . _%all-args103901%_)
        (if _%kwt103899%_
            (if (vector? _%kwt103899%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt103899%_))
            '#!void)
        (if (procedure? _%K103900%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K103900%_))
        (let ((_%keys103903%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp103905%_ ((_%rest103907%_ _%all-args103901%_)
                             (_%args103908%_ '#f)
                             (_%tail103909%_ '#f))
            (let* ((_%rest103910103918%_ _%rest103907%_)
                   (_%else103912103926%_
                    (lambda ()
                      (if _%args103908%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail103909%_ '()))
                            (let ((__tmp104174
                                   (cons _%keys103903%_ _%args103908%_)))
                              (declare (not safe))
                              (##apply _%K103900%_ __tmp104174)))
                          (_%K103900%_ _%keys103903%_))))
                   (_%K103914103994%_
                    (lambda (_%hd-rest103929%_ _%hd103930%_)
                      (if (keyword? _%hd103930%_)
                          (let* ((_%hd-rest103932103939%_ _%hd-rest103929%_)
                                 (_%E103934103943%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest103932103939%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K103935103951%_
                                  (lambda (_%rest103946%_ _%val103947%_)
                                    (if _%kwt103899%_
                                        (let ((_%pos103949%_
                                               (let ((__tmp104176
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd103930%_)))
                                                     (__tmp104175
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt103899%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp104176
                                                  __tmp104175))))
                                          (if (eq? _%hd103930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt103899%_
                                                      _%pos103949%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K103900%_
                                                     _%hd103930%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys103903%_
                                                _%hd103930%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K103900%_
                                               _%hd103930%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys103903%_
                                       _%hd103930%_
                                       _%val103947%_))
                                    (_%lp103905%_
                                     _%rest103946%_
                                     _%args103908%_
                                     _%tail103909%_))))
                            (if (pair? _%hd-rest103932103939%_)
                                (let ((_%hd103936103954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest103932103939%_)))
                                      (_%tl103937103956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest103932103939%_))))
                                  (let* ((_%val103959%_ _%hd103936103954%_)
                                         (_%rest103961%_ _%tl103937103956%_))
                                    (_%K103935103951%_
                                     _%rest103961%_
                                     _%val103959%_)))
                                (_%E103934103943%_)))
                          (if (eq? _%hd103930%_ '#!key)
                              (let* ((_%hd-rest103963103970%_
                                      _%hd-rest103929%_)
                                     (_%E103965103974%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest103963103970%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K103966103980%_
                                      (lambda (_%rest103977%_ _%val103978%_)
                                        (if _%args103908%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail103909%_
                                                 _%hd-rest103929%_))
                                              (_%lp103905%_
                                               _%rest103977%_
                                               _%args103908%_
                                               _%hd-rest103929%_))
                                            (_%lp103905%_
                                             _%rest103977%_
                                             _%hd-rest103929%_
                                             _%hd-rest103929%_)))))
                                (if (pair? _%hd-rest103963103970%_)
                                    (let ((_%hd103967103983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest103963103970%_)))
                                          (_%tl103968103985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest103963103970%_))))
                                      (let* ((_%val103988%_ _%hd103967103983%_)
                                             (_%rest103990%_
                                              _%tl103968103985%_))
                                        (_%K103966103980%_
                                         _%rest103990%_
                                         _%val103988%_)))
                                    (_%E103965103974%_)))
                              (if (eq? _%hd103930%_ '#!rest)
                                  (if _%args103908%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail103909%_
                                           _%hd-rest103929%_))
                                        (let ((__tmp104177
                                               (cons _%keys103903%_
                                                     _%args103908%_)))
                                          (declare (not safe))
                                          (##apply _%K103900%_ __tmp104177)))
                                      (let ((__tmp104178
                                             (cons _%keys103903%_
                                                   _%hd-rest103929%_)))
                                        (declare (not safe))
                                        (##apply _%K103900%_ __tmp104178)))
                                  (if _%args103908%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail103909%_
                                           _%rest103907%_))
                                        (_%lp103905%_
                                         _%hd-rest103929%_
                                         _%args103908%_
                                         _%rest103907%_))
                                      (_%lp103905%_
                                       _%hd-rest103929%_
                                       _%rest103907%_
                                       _%rest103907%_))))))))
              (if (pair? _%rest103910103918%_)
                  (let ((_%hd103915103997%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103910103918%_)))
                        (_%tl103916103999%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103910103918%_))))
                    (let* ((_%hd104002%_ _%hd103915103997%_)
                           (_%hd-rest104004%_ _%tl103916103999%_))
                      (_%K103914103994%_ _%hd-rest104004%_ _%hd104002%_)))
                  (_%else103912103926%_)))))))
    (define keyword-rest
      (lambda (_%kwt103891%_ . _%drop103892%_)
        (let ((_%rest103894%_ '()))
          (let ((__tmp104179
                 (lambda (_%k103896%_ _%v103897%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k103896%_ _%drop103892%_))
                       '#!void
                       (set! _%rest103894%_
                             (cons _%k103896%_
                                   (cons _%v103897%_ _%rest103894%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt103891%_ __tmp104179))
          _%rest103894%_)))))
