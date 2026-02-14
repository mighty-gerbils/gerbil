(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1771093446)
  (begin
    (define __make-promise
      (lambda (_%thunk119545%_)
        (let ((_%thunk119548%_ _%thunk119545%_))
          (declare (not safe))
          (##make-delay-promise _%thunk119548%_))))
    (define make-promise
      (lambda (_%thunk119008%_)
        (if (procedure? _%thunk119008%_)
            (let ((_%thunk119012%_ _%thunk119008%_))
              (__make-promise _%thunk119012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk119008%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk119489%_)
        (let ((_%thunk119492%_ _%thunk119489%_))
          (let ((_%mx119519%_ (make-mutex 'promise))
                (_%inner119520%_
                 (let* ((_%thunk119501%_ _%thunk119492%_)
                        (_%thunk119506%_ _%thunk119501%_))
                   (__make-promise _%thunk119506%_))))
            (let* ((_%thunk119529%_
                    (lambda ()
                      (let ((_%once119523%_ (vector '0)))
                        (let ((__tmp119636
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp119637
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once119523%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp119637 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx119519%_))))
                              (__tmp119635
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner119520%_))))
                              (__tmp119634
                               (lambda () (mutex-unlock! _%mx119519%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp119636
                           __tmp119635
                           __tmp119634)))))
                   (_%thunk119534%_ _%thunk119529%_))
              (__make-promise _%thunk119534%_))))))
    (define make-atomic-promise
      (lambda (_%thunk119142%_)
        (if (procedure? _%thunk119142%_)
            (let ((_%thunk119146%_ _%thunk119142%_))
              (__make-atomic-promise _%thunk119146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk119142%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk119441%_)
        (if (procedure? _%thunk119441%_)
            (let ((_%thunk119445%_ _%thunk119441%_))
              (declare (not safe))
              (_%thunk119445%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk119441%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk119455%_ _%param119456%_ _%val119457%_)
        (if (procedure? _%thunk119455%_)
            (let ((_%thunk119461%_ _%thunk119455%_))
              (declare (not safe))
              (##parameterize1 _%param119456%_ _%val119457%_ _%thunk119461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk119455%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk119471%_ _%param119472%_ _%val119473%_ . _%rest119474%_)
        (if (procedure? _%thunk119471%_)
            (let ((_%thunk119478%_ _%thunk119471%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk119478%_ _%rest119474%_))
               _%param119472%_
               _%val119473%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk119471%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g119638_
        (let ((_g119639_ (let () (declare (not safe)) (##length _g119638_))))
          (cond ((let () (declare (not safe)) (##fx= _g119639_ 1))
                 (apply call-with-parameters__0 _g119638_))
                ((let () (declare (not safe)) (##fx= _g119639_ 3))
                 (apply call-with-parameters__1 _g119638_))
                ((let () (declare (not safe)) (##fx>= _g119639_ 3))
                 (apply call-with-parameters__2 _g119638_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g119638_))))))
    (define __with-unwind-protect
      (lambda (_%K119416%_ _%fini119417%_)
        (let* ((_%K119420%_ _%K119416%_)
               (_%fini119428%_ _%fini119417%_)
               (_%once119437%_ (vector '0))
               (__tmp119640
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp119641
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once119437%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp119641 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp119640 _%K119420%_ _%fini119428%_))))
    (define with-unwind-protect
      (lambda (_%K119276%_ _%fini119277%_)
        (if (procedure? _%K119276%_)
            (let ((_%K119281%_ _%K119276%_))
              (if (procedure? _%fini119277%_)
                  (let ((_%fini119291%_ _%fini119277%_))
                    (__with-unwind-protect _%K119281%_ _%fini119291%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini119277%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K119276%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt119309%_ _%K119310%_ . _%all-args119311%_)
        (if _%kwt119309%_
            (if (vector? _%kwt119309%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt119309%_))
            '#!void)
        (if (procedure? _%K119310%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K119310%_))
        (let ((_%keys119313%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp119315%_ ((_%rest119317%_ _%all-args119311%_)
                             (_%args119318%_ '#f)
                             (_%tail119319%_ '#f))
            (let* ((_%rest119320119328%_ _%rest119317%_)
                   (_%else119322119336%_
                    (lambda ()
                      (if _%args119318%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail119319%_ '()))
                            (let ((__tmp119642
                                   (cons _%keys119313%_ _%args119318%_)))
                              (declare (not safe))
                              (##apply _%K119310%_ __tmp119642)))
                          (_%K119310%_ _%keys119313%_))))
                   (_%K119324119404%_
                    (lambda (_%hd-rest119339%_ _%hd119340%_)
                      (if (keyword? _%hd119340%_)
                          (let* ((_%hd-rest119342119349%_ _%hd-rest119339%_)
                                 (_%E119344119353%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest119342119349%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K119345119361%_
                                  (lambda (_%rest119356%_ _%val119357%_)
                                    (if _%kwt119309%_
                                        (let ((_%pos119359%_
                                               (let ((__tmp119644
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd119340%_)))
                                                     (__tmp119643
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt119309%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp119644
                                                  __tmp119643))))
                                          (if (eq? _%hd119340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt119309%_
                                                      _%pos119359%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K119310%_
                                                     _%hd119340%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys119313%_
                                                _%hd119340%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K119310%_
                                               _%hd119340%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys119313%_
                                       _%hd119340%_
                                       _%val119357%_))
                                    (_%lp119315%_
                                     _%rest119356%_
                                     _%args119318%_
                                     _%tail119319%_))))
                            (if (pair? _%hd-rest119342119349%_)
                                (let ((_%hd119346119364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest119342119349%_)))
                                      (_%tl119347119366%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest119342119349%_))))
                                  (let* ((_%val119369%_ _%hd119346119364%_)
                                         (_%rest119371%_ _%tl119347119366%_))
                                    (_%K119345119361%_
                                     _%rest119371%_
                                     _%val119369%_)))
                                (_%E119344119353%_)))
                          (if (eq? _%hd119340%_ '#!key)
                              (let* ((_%hd-rest119373119380%_
                                      _%hd-rest119339%_)
                                     (_%E119375119384%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest119373119380%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K119376119390%_
                                      (lambda (_%rest119387%_ _%val119388%_)
                                        (if _%args119318%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail119319%_
                                                 _%hd-rest119339%_))
                                              (_%lp119315%_
                                               _%rest119387%_
                                               _%args119318%_
                                               _%hd-rest119339%_))
                                            (_%lp119315%_
                                             _%rest119387%_
                                             _%hd-rest119339%_
                                             _%hd-rest119339%_)))))
                                (if (pair? _%hd-rest119373119380%_)
                                    (let ((_%hd119377119393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest119373119380%_)))
                                          (_%tl119378119395%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest119373119380%_))))
                                      (let* ((_%val119398%_ _%hd119377119393%_)
                                             (_%rest119400%_
                                              _%tl119378119395%_))
                                        (_%K119376119390%_
                                         _%rest119400%_
                                         _%val119398%_)))
                                    (_%E119375119384%_)))
                              (if (eq? _%hd119340%_ '#!rest)
                                  (if _%args119318%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119319%_
                                           _%hd-rest119339%_))
                                        (let ((__tmp119645
                                               (cons _%keys119313%_
                                                     _%args119318%_)))
                                          (declare (not safe))
                                          (##apply _%K119310%_ __tmp119645)))
                                      (let ((__tmp119646
                                             (cons _%keys119313%_
                                                   _%hd-rest119339%_)))
                                        (declare (not safe))
                                        (##apply _%K119310%_ __tmp119646)))
                                  (if _%args119318%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail119319%_
                                           _%rest119317%_))
                                        (_%lp119315%_
                                         _%hd-rest119339%_
                                         _%args119318%_
                                         _%rest119317%_))
                                      (_%lp119315%_
                                       _%hd-rest119339%_
                                       _%rest119317%_
                                       _%rest119317%_))))))))
              (if (pair? _%rest119320119328%_)
                  (let ((_%hd119325119407%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest119320119328%_)))
                        (_%tl119326119409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest119320119328%_))))
                    (let* ((_%hd119412%_ _%hd119325119407%_)
                           (_%hd-rest119414%_ _%tl119326119409%_))
                      (_%K119324119404%_ _%hd-rest119414%_ _%hd119412%_)))
                  (_%else119322119336%_)))))))
    (define keyword-rest
      (lambda (_%kwt119301%_ . _%drop119302%_)
        (let ((_%rest119304%_ '()))
          (let ((__tmp119647
                 (lambda (_%k119306%_ _%v119307%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k119306%_ _%drop119302%_))
                       '#!void
                       (set! _%rest119304%_
                             (cons _%k119306%_
                                   (cons _%v119307%_ _%rest119304%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt119301%_ __tmp119647))
          _%rest119304%_)))))
