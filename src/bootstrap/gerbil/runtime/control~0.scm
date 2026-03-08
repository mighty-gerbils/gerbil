(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1773009260)
  (begin
    (define __make-promise
      (lambda (_%thunk120168%_)
        (let ((_%thunk120171%_ _%thunk120168%_))
          (declare (not safe))
          (##make-delay-promise _%thunk120171%_))))
    (define make-promise
      (lambda (_%thunk119631%_)
        (if (procedure? _%thunk119631%_)
            (let ((_%thunk119635%_ _%thunk119631%_))
              (__make-promise _%thunk119635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk119631%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk120112%_)
        (let ((_%thunk120115%_ _%thunk120112%_))
          (let ((_%mx120142%_ (make-mutex 'promise))
                (_%inner120143%_
                 (let* ((_%thunk120124%_ _%thunk120115%_)
                        (_%thunk120129%_ _%thunk120124%_))
                   (__make-promise _%thunk120129%_))))
            (let* ((_%thunk120152%_
                    (lambda ()
                      (let ((_%once120146%_ (vector '0)))
                        (let ((__tmp120259
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp120260
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once120146%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp120260 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx120142%_))))
                              (__tmp120258
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner120143%_))))
                              (__tmp120257
                               (lambda () (mutex-unlock! _%mx120142%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp120259
                           __tmp120258
                           __tmp120257)))))
                   (_%thunk120157%_ _%thunk120152%_))
              (__make-promise _%thunk120157%_))))))
    (define make-atomic-promise
      (lambda (_%thunk119765%_)
        (if (procedure? _%thunk119765%_)
            (let ((_%thunk119769%_ _%thunk119765%_))
              (__make-atomic-promise _%thunk119769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk119765%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk120064%_)
        (if (procedure? _%thunk120064%_)
            (let ((_%thunk120068%_ _%thunk120064%_))
              (declare (not safe))
              (_%thunk120068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk120064%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk120078%_ _%param120079%_ _%val120080%_)
        (if (procedure? _%thunk120078%_)
            (let ((_%thunk120084%_ _%thunk120078%_))
              (declare (not safe))
              (##parameterize1 _%param120079%_ _%val120080%_ _%thunk120084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk120078%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk120094%_ _%param120095%_ _%val120096%_ . _%rest120097%_)
        (if (procedure? _%thunk120094%_)
            (let ((_%thunk120101%_ _%thunk120094%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk120101%_ _%rest120097%_))
               _%param120095%_
               _%val120096%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk120094%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g120261_
        (let ((_g120262_ (let () (declare (not safe)) (##length _g120261_))))
          (cond ((let () (declare (not safe)) (##fx= _g120262_ 1))
                 (apply call-with-parameters__0 _g120261_))
                ((let () (declare (not safe)) (##fx= _g120262_ 3))
                 (apply call-with-parameters__1 _g120261_))
                ((let () (declare (not safe)) (##fx>= _g120262_ 3))
                 (apply call-with-parameters__2 _g120261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g120261_))))))
    (define __with-unwind-protect
      (lambda (_%K120039%_ _%fini120040%_)
        (let* ((_%K120043%_ _%K120039%_)
               (_%fini120051%_ _%fini120040%_)
               (_%once120060%_ (vector '0))
               (__tmp120263
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp120264
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once120060%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp120264 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp120263 _%K120043%_ _%fini120051%_))))
    (define with-unwind-protect
      (lambda (_%K119899%_ _%fini119900%_)
        (if (procedure? _%K119899%_)
            (let ((_%K119904%_ _%K119899%_))
              (if (procedure? _%fini119900%_)
                  (let ((_%fini119914%_ _%fini119900%_))
                    (__with-unwind-protect _%K119904%_ _%fini119914%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini119900%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K119899%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt119932%_ _%K119933%_ . _%all-args119934%_)
        (if _%kwt119932%_
            (if (vector? _%kwt119932%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt119932%_))
            '#!void)
        (if (procedure? _%K119933%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K119933%_))
        (let ((_%keys119936%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp119938%_ ((_%rest119940%_ _%all-args119934%_)
                             (_%args119941%_ '#f)
                             (_%tail119942%_ '#f))
            (let* ((_%rest119943119951%_ _%rest119940%_)
                   (_%else119945119959%_
                    (lambda ()
                      (if _%args119941%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail119942%_ '()))
                            (let ((__tmp120265
                                   (cons _%keys119936%_ _%args119941%_)))
                              (declare (not safe))
                              (##apply _%K119933%_ __tmp120265)))
                          (_%K119933%_ _%keys119936%_))))
                   (_%K119947120027%_
                    (lambda (_%hd-rest119962%_ _%hd119963%_)
                      (if (keyword? _%hd119963%_)
                          (let* ((_%hd-rest119965119972%_ _%hd-rest119962%_)
                                 (_%E119967119976%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest119965119972%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K119968119984%_
                                  (lambda (_%rest119979%_ _%val119980%_)
                                    (if _%kwt119932%_
                                        (let ((_%pos119982%_
                                               (let ((__tmp120267
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd119963%_)))
                                                     (__tmp120266
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt119932%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp120267
                                                  __tmp120266))))
                                          (if (eq? _%hd119963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt119932%_
                                                      _%pos119982%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K119933%_
                                                     _%hd119963%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys119936%_
                                                _%hd119963%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K119933%_
                                               _%hd119963%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys119936%_
                                       _%hd119963%_
                                       _%val119980%_))
                                    (_%lp119938%_
                                     _%rest119979%_
                                     _%args119941%_
                                     _%tail119942%_))))
                            (if (pair? _%hd-rest119965119972%_)
                                (let ((_%hd119969119987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest119965119972%_)))
                                      (_%tl119970119989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest119965119972%_))))
                                  (let* ((_%val119992%_ _%hd119969119987%_)
                                         (_%rest119994%_ _%tl119970119989%_))
                                    (_%K119968119984%_
                                     _%rest119994%_
                                     _%val119992%_)))
                                (_%E119967119976%_)))
                          (if (eq? _%hd119963%_ '#!key)
                              (let* ((_%hd-rest119996120003%_
                                      _%hd-rest119962%_)
                                     (_%E119998120007%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest119996120003%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K119999120013%_
                                      (lambda (_%rest120010%_ _%val120011%_)
                                        (if _%args119941%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail119942%_
                                                 _%hd-rest119962%_))
                                              (_%lp119938%_
                                               _%rest120010%_
                                               _%args119941%_
                                               _%hd-rest119962%_))
                                            (_%lp119938%_
                                             _%rest120010%_
                                             _%hd-rest119962%_
                                             _%hd-rest119962%_)))))
                                (if (pair? _%hd-rest119996120003%_)
                                    (let ((_%hd120000120016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest119996120003%_)))
                                          (_%tl120001120018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest119996120003%_))))
                                      (let* ((_%val120021%_ _%hd120000120016%_)
                                             (_%rest120023%_
                                              _%tl120001120018%_))
                                        (_%K119999120013%_
                                         _%rest120023%_
                                         _%val120021%_)))
                                    (_%E119998120007%_)))
                              (if (eq? _%hd119963%_ '#!rest)
                                  (if _%args119941%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119942%_
                                           _%hd-rest119962%_))
                                        (let ((__tmp120268
                                               (cons _%keys119936%_
                                                     _%args119941%_)))
                                          (declare (not safe))
                                          (##apply _%K119933%_ __tmp120268)))
                                      (let ((__tmp120269
                                             (cons _%keys119936%_
                                                   _%hd-rest119962%_)))
                                        (declare (not safe))
                                        (##apply _%K119933%_ __tmp120269)))
                                  (if _%args119941%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119942%_
                                           _%rest119940%_))
                                        (_%lp119938%_
                                         _%hd-rest119962%_
                                         _%args119941%_
                                         _%rest119940%_))
                                      (_%lp119938%_
                                       _%hd-rest119962%_
                                       _%rest119940%_
                                       _%rest119940%_))))))))
              (if (pair? _%rest119943119951%_)
                  (let ((_%hd119948120030%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119943119951%_)))
                        (_%tl119949120032%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119943119951%_))))
                    (let* ((_%hd120035%_ _%hd119948120030%_)
                           (_%hd-rest120037%_ _%tl119949120032%_))
                      (_%K119947120027%_ _%hd-rest120037%_ _%hd120035%_)))
                  (_%else119945119959%_)))))))
    (define keyword-rest
      (lambda (_%kwt119924%_ . _%drop119925%_)
        (let ((_%rest119927%_ '()))
          (let ((__tmp120270
                 (lambda (_%k119929%_ _%v119930%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k119929%_ _%drop119925%_))
                       '#!void
                       (set! _%rest119927%_
                             (cons _%k119929%_
                                   (cons _%v119930%_ _%rest119927%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt119924%_ __tmp120270))
          _%rest119927%_)))))
