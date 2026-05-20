(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1779274767)
  (begin
    (define __make-promise
      (lambda (_%thunk120178%_)
        (let ((_%thunk120181%_ _%thunk120178%_))
          (declare (not safe))
          (##make-delay-promise _%thunk120181%_))))
    (define make-promise
      (lambda (_%thunk119641%_)
        (if (procedure? _%thunk119641%_)
            (let ((_%thunk119645%_ _%thunk119641%_))
              (__make-promise _%thunk119645%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk119641%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk120122%_)
        (let ((_%thunk120125%_ _%thunk120122%_))
          (let ((_%mx120152%_ (make-mutex 'promise))
                (_%inner120153%_
                 (let* ((_%thunk120134%_ _%thunk120125%_)
                        (_%thunk120139%_ _%thunk120134%_))
                   (__make-promise _%thunk120139%_))))
            (let* ((_%thunk120162%_
                    (lambda ()
                      (let ((_%once120156%_ (vector '0)))
                        (let ((__tmp120269
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp120270
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once120156%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp120270 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx120152%_))))
                              (__tmp120268
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner120153%_))))
                              (__tmp120267
                               (lambda () (mutex-unlock! _%mx120152%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp120269
                           __tmp120268
                           __tmp120267)))))
                   (_%thunk120167%_ _%thunk120162%_))
              (__make-promise _%thunk120167%_))))))
    (define make-atomic-promise
      (lambda (_%thunk119775%_)
        (if (procedure? _%thunk119775%_)
            (let ((_%thunk119779%_ _%thunk119775%_))
              (__make-atomic-promise _%thunk119779%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk119775%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk120074%_)
        (if (procedure? _%thunk120074%_)
            (let ((_%thunk120078%_ _%thunk120074%_))
              (declare (not safe))
              (_%thunk120078%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk120074%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk120088%_ _%param120089%_ _%val120090%_)
        (if (procedure? _%thunk120088%_)
            (let ((_%thunk120094%_ _%thunk120088%_))
              (declare (not safe))
              (##parameterize1 _%param120089%_ _%val120090%_ _%thunk120094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk120088%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk120104%_ _%param120105%_ _%val120106%_ . _%rest120107%_)
        (if (procedure? _%thunk120104%_)
            (let ((_%thunk120111%_ _%thunk120104%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk120111%_ _%rest120107%_))
               _%param120105%_
               _%val120106%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk120104%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g120271_
        (let ((_g120272_ (let () (declare (not safe)) (##length _g120271_))))
          (cond ((let () (declare (not safe)) (##fx= _g120272_ 1))
                 (apply call-with-parameters__0 _g120271_))
                ((let () (declare (not safe)) (##fx= _g120272_ 3))
                 (apply call-with-parameters__1 _g120271_))
                ((let () (declare (not safe)) (##fx>= _g120272_ 3))
                 (apply call-with-parameters__2 _g120271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g120271_))))))
    (define __with-unwind-protect
      (lambda (_%K120049%_ _%fini120050%_)
        (let* ((_%K120053%_ _%K120049%_)
               (_%fini120061%_ _%fini120050%_)
               (_%once120070%_ (vector '0))
               (__tmp120273
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp120274
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once120070%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp120274 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp120273 _%K120053%_ _%fini120061%_))))
    (define with-unwind-protect
      (lambda (_%K119909%_ _%fini119910%_)
        (if (procedure? _%K119909%_)
            (let ((_%K119914%_ _%K119909%_))
              (if (procedure? _%fini119910%_)
                  (let ((_%fini119924%_ _%fini119910%_))
                    (__with-unwind-protect _%K119914%_ _%fini119924%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini119910%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K119909%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt119942%_ _%K119943%_ . _%all-args119944%_)
        (if _%kwt119942%_
            (if (vector? _%kwt119942%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt119942%_))
            '#!void)
        (if (procedure? _%K119943%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K119943%_))
        (let ((_%keys119946%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp119948%_ ((_%rest119950%_ _%all-args119944%_)
                             (_%args119951%_ '#f)
                             (_%tail119952%_ '#f))
            (let* ((_%rest119953119961%_ _%rest119950%_)
                   (_%else119955119969%_
                    (lambda ()
                      (if _%args119951%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail119952%_ '()))
                            (let ((__tmp120275
                                   (cons _%keys119946%_ _%args119951%_)))
                              (declare (not safe))
                              (##apply _%K119943%_ __tmp120275)))
                          (_%K119943%_ _%keys119946%_))))
                   (_%K119957120037%_
                    (lambda (_%hd-rest119972%_ _%hd119973%_)
                      (if (keyword? _%hd119973%_)
                          (let* ((_%hd-rest119975119982%_ _%hd-rest119972%_)
                                 (_%E119977119986%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest119975119982%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K119978119994%_
                                  (lambda (_%rest119989%_ _%val119990%_)
                                    (if _%kwt119942%_
                                        (let ((_%pos119992%_
                                               (let ((__tmp120277
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd119973%_)))
                                                     (__tmp120276
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt119942%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp120277
                                                  __tmp120276))))
                                          (if (eq? _%hd119973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt119942%_
                                                      _%pos119992%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K119943%_
                                                     _%hd119973%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys119946%_
                                                _%hd119973%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K119943%_
                                               _%hd119973%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys119946%_
                                       _%hd119973%_
                                       _%val119990%_))
                                    (_%lp119948%_
                                     _%rest119989%_
                                     _%args119951%_
                                     _%tail119952%_))))
                            (if (pair? _%hd-rest119975119982%_)
                                (let ((_%hd119979119997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest119975119982%_)))
                                      (_%tl119980119999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest119975119982%_))))
                                  (let* ((_%val120002%_ _%hd119979119997%_)
                                         (_%rest120004%_ _%tl119980119999%_))
                                    (_%K119978119994%_
                                     _%rest120004%_
                                     _%val120002%_)))
                                (_%E119977119986%_)))
                          (if (eq? _%hd119973%_ '#!key)
                              (let* ((_%hd-rest120006120013%_
                                      _%hd-rest119972%_)
                                     (_%E120008120017%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest120006120013%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K120009120023%_
                                      (lambda (_%rest120020%_ _%val120021%_)
                                        (if _%args119951%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail119952%_
                                                 _%hd-rest119972%_))
                                              (_%lp119948%_
                                               _%rest120020%_
                                               _%args119951%_
                                               _%hd-rest119972%_))
                                            (_%lp119948%_
                                             _%rest120020%_
                                             _%hd-rest119972%_
                                             _%hd-rest119972%_)))))
                                (if (pair? _%hd-rest120006120013%_)
                                    (let ((_%hd120010120026%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest120006120013%_)))
                                          (_%tl120011120028%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest120006120013%_))))
                                      (let* ((_%val120031%_ _%hd120010120026%_)
                                             (_%rest120033%_
                                              _%tl120011120028%_))
                                        (_%K120009120023%_
                                         _%rest120033%_
                                         _%val120031%_)))
                                    (_%E120008120017%_)))
                              (if (eq? _%hd119973%_ '#!rest)
                                  (if _%args119951%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119952%_
                                           _%hd-rest119972%_))
                                        (let ((__tmp120278
                                               (cons _%keys119946%_
                                                     _%args119951%_)))
                                          (declare (not safe))
                                          (##apply _%K119943%_ __tmp120278)))
                                      (let ((__tmp120279
                                             (cons _%keys119946%_
                                                   _%hd-rest119972%_)))
                                        (declare (not safe))
                                        (##apply _%K119943%_ __tmp120279)))
                                  (if _%args119951%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119952%_
                                           _%rest119950%_))
                                        (_%lp119948%_
                                         _%hd-rest119972%_
                                         _%args119951%_
                                         _%rest119950%_))
                                      (_%lp119948%_
                                       _%hd-rest119972%_
                                       _%rest119950%_
                                       _%rest119950%_))))))))
              (if (pair? _%rest119953119961%_)
                  (let ((_%hd119958120040%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119953119961%_)))
                        (_%tl119959120042%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119953119961%_))))
                    (let* ((_%hd120045%_ _%hd119958120040%_)
                           (_%hd-rest120047%_ _%tl119959120042%_))
                      (_%K119957120037%_ _%hd-rest120047%_ _%hd120045%_)))
                  (_%else119955119969%_)))))))
    (define keyword-rest
      (lambda (_%kwt119934%_ . _%drop119935%_)
        (let ((_%rest119937%_ '()))
          (let ((__tmp120280
                 (lambda (_%k119939%_ _%v119940%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k119939%_ _%drop119935%_))
                       '#!void
                       (set! _%rest119937%_
                             (cons _%k119939%_
                                   (cons _%v119940%_ _%rest119937%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt119934%_ __tmp120280))
          _%rest119937%_)))))
