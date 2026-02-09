(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770660763)
  (begin
    (define __make-promise
      (lambda (_%thunk118135%_)
        (let ((_%thunk118138%_ _%thunk118135%_))
          (declare (not safe))
          (##make-delay-promise _%thunk118138%_))))
    (define make-promise
      (lambda (_%thunk117598%_)
        (if (procedure? _%thunk117598%_)
            (let ((_%thunk117602%_ _%thunk117598%_))
              (__make-promise _%thunk117602%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk117598%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk118079%_)
        (let ((_%thunk118082%_ _%thunk118079%_))
          (let ((_%mx118109%_ (make-mutex 'promise))
                (_%inner118110%_
                 (let* ((_%thunk118091%_ _%thunk118082%_)
                        (_%thunk118096%_ _%thunk118091%_))
                   (__make-promise _%thunk118096%_))))
            (let* ((_%thunk118119%_
                    (lambda ()
                      (let ((_%once118113%_ (vector '0)))
                        (let ((__tmp118226
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp118227
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once118113%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp118227 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx118109%_))))
                              (__tmp118225
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner118110%_))))
                              (__tmp118224
                               (lambda () (mutex-unlock! _%mx118109%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp118226
                           __tmp118225
                           __tmp118224)))))
                   (_%thunk118124%_ _%thunk118119%_))
              (__make-promise _%thunk118124%_))))))
    (define make-atomic-promise
      (lambda (_%thunk117732%_)
        (if (procedure? _%thunk117732%_)
            (let ((_%thunk117736%_ _%thunk117732%_))
              (__make-atomic-promise _%thunk117736%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk117732%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk118031%_)
        (if (procedure? _%thunk118031%_)
            (let ((_%thunk118035%_ _%thunk118031%_))
              (declare (not safe))
              (_%thunk118035%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk118031%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk118045%_ _%param118046%_ _%val118047%_)
        (if (procedure? _%thunk118045%_)
            (let ((_%thunk118051%_ _%thunk118045%_))
              (declare (not safe))
              (##parameterize1 _%param118046%_ _%val118047%_ _%thunk118051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk118045%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk118061%_ _%param118062%_ _%val118063%_ . _%rest118064%_)
        (if (procedure? _%thunk118061%_)
            (let ((_%thunk118068%_ _%thunk118061%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk118068%_ _%rest118064%_))
               _%param118062%_
               _%val118063%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk118061%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g118228_
        (let ((_g118229_ (let () (declare (not safe)) (##length _g118228_))))
          (cond ((let () (declare (not safe)) (##fx= _g118229_ 1))
                 (apply call-with-parameters__0 _g118228_))
                ((let () (declare (not safe)) (##fx= _g118229_ 3))
                 (apply call-with-parameters__1 _g118228_))
                ((let () (declare (not safe)) (##fx>= _g118229_ 3))
                 (apply call-with-parameters__2 _g118228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g118228_))))))
    (define __with-unwind-protect
      (lambda (_%K118006%_ _%fini118007%_)
        (let* ((_%K118010%_ _%K118006%_)
               (_%fini118018%_ _%fini118007%_)
               (_%once118027%_ (vector '0))
               (__tmp118230
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp118231
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once118027%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp118231 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp118230 _%K118010%_ _%fini118018%_))))
    (define with-unwind-protect
      (lambda (_%K117866%_ _%fini117867%_)
        (if (procedure? _%K117866%_)
            (let ((_%K117871%_ _%K117866%_))
              (if (procedure? _%fini117867%_)
                  (let ((_%fini117881%_ _%fini117867%_))
                    (__with-unwind-protect _%K117871%_ _%fini117881%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini117867%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K117866%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt117899%_ _%K117900%_ . _%all-args117901%_)
        (if _%kwt117899%_
            (if (vector? _%kwt117899%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt117899%_))
            '#!void)
        (if (procedure? _%K117900%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K117900%_))
        (let ((_%keys117903%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp117905%_ ((_%rest117907%_ _%all-args117901%_)
                             (_%args117908%_ '#f)
                             (_%tail117909%_ '#f))
            (let* ((_%rest117910117918%_ _%rest117907%_)
                   (_%else117912117926%_
                    (lambda ()
                      (if _%args117908%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail117909%_ '()))
                            (let ((__tmp118232
                                   (cons _%keys117903%_ _%args117908%_)))
                              (declare (not safe))
                              (##apply _%K117900%_ __tmp118232)))
                          (_%K117900%_ _%keys117903%_))))
                   (_%K117914117994%_
                    (lambda (_%hd-rest117929%_ _%hd117930%_)
                      (if (keyword? _%hd117930%_)
                          (let* ((_%hd-rest117932117939%_ _%hd-rest117929%_)
                                 (_%E117934117943%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest117932117939%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K117935117951%_
                                  (lambda (_%rest117946%_ _%val117947%_)
                                    (if _%kwt117899%_
                                        (let ((_%pos117949%_
                                               (let ((__tmp118234
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd117930%_)))
                                                     (__tmp118233
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt117899%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp118234
                                                  __tmp118233))))
                                          (if (eq? _%hd117930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt117899%_
                                                      _%pos117949%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K117900%_
                                                     _%hd117930%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys117903%_
                                                _%hd117930%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K117900%_
                                               _%hd117930%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys117903%_
                                       _%hd117930%_
                                       _%val117947%_))
                                    (_%lp117905%_
                                     _%rest117946%_
                                     _%args117908%_
                                     _%tail117909%_))))
                            (if (pair? _%hd-rest117932117939%_)
                                (let ((_%hd117936117954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest117932117939%_)))
                                      (_%tl117937117956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest117932117939%_))))
                                  (let* ((_%val117959%_ _%hd117936117954%_)
                                         (_%rest117961%_ _%tl117937117956%_))
                                    (_%K117935117951%_
                                     _%rest117961%_
                                     _%val117959%_)))
                                (_%E117934117943%_)))
                          (if (eq? _%hd117930%_ '#!key)
                              (let* ((_%hd-rest117963117970%_
                                      _%hd-rest117929%_)
                                     (_%E117965117974%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest117963117970%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K117966117980%_
                                      (lambda (_%rest117977%_ _%val117978%_)
                                        (if _%args117908%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail117909%_
                                                 _%hd-rest117929%_))
                                              (_%lp117905%_
                                               _%rest117977%_
                                               _%args117908%_
                                               _%hd-rest117929%_))
                                            (_%lp117905%_
                                             _%rest117977%_
                                             _%hd-rest117929%_
                                             _%hd-rest117929%_)))))
                                (if (pair? _%hd-rest117963117970%_)
                                    (let ((_%hd117967117983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest117963117970%_)))
                                          (_%tl117968117985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest117963117970%_))))
                                      (let* ((_%val117988%_ _%hd117967117983%_)
                                             (_%rest117990%_
                                              _%tl117968117985%_))
                                        (_%K117966117980%_
                                         _%rest117990%_
                                         _%val117988%_)))
                                    (_%E117965117974%_)))
                              (if (eq? _%hd117930%_ '#!rest)
                                  (if _%args117908%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail117909%_
                                           _%hd-rest117929%_))
                                        (let ((__tmp118235
                                               (cons _%keys117903%_
                                                     _%args117908%_)))
                                          (declare (not safe))
                                          (##apply _%K117900%_ __tmp118235)))
                                      (let ((__tmp118236
                                             (cons _%keys117903%_
                                                   _%hd-rest117929%_)))
                                        (declare (not safe))
                                        (##apply _%K117900%_ __tmp118236)))
                                  (if _%args117908%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail117909%_
                                           _%rest117907%_))
                                        (_%lp117905%_
                                         _%hd-rest117929%_
                                         _%args117908%_
                                         _%rest117907%_))
                                      (_%lp117905%_
                                       _%hd-rest117929%_
                                       _%rest117907%_
                                       _%rest117907%_))))))))
              (if (pair? _%rest117910117918%_)
                  (let ((_%hd117915117997%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest117910117918%_)))
                        (_%tl117916117999%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest117910117918%_))))
                    (let* ((_%hd118002%_ _%hd117915117997%_)
                           (_%hd-rest118004%_ _%tl117916117999%_))
                      (_%K117914117994%_ _%hd-rest118004%_ _%hd118002%_)))
                  (_%else117912117926%_)))))))
    (define keyword-rest
      (lambda (_%kwt117891%_ . _%drop117892%_)
        (let ((_%rest117894%_ '()))
          (let ((__tmp118237
                 (lambda (_%k117896%_ _%v117897%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k117896%_ _%drop117892%_))
                       '#!void
                       (set! _%rest117894%_
                             (cons _%k117896%_
                                   (cons _%v117897%_ _%rest117894%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt117891%_ __tmp118237))
          _%rest117894%_)))))
