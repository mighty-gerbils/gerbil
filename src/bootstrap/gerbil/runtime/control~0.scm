(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1771037606)
  (begin
    (define __make-promise
      (lambda (_%thunk128552%_)
        (let ((_%thunk128555%_ _%thunk128552%_))
          (declare (not safe))
          (##make-delay-promise _%thunk128555%_))))
    (define make-promise
      (lambda (_%thunk128015%_)
        (if (procedure? _%thunk128015%_)
            (let ((_%thunk128019%_ _%thunk128015%_))
              (__make-promise _%thunk128019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk128015%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk128496%_)
        (let ((_%thunk128499%_ _%thunk128496%_))
          (let ((_%mx128526%_ (make-mutex 'promise))
                (_%inner128527%_
                 (let* ((_%thunk128508%_ _%thunk128499%_)
                        (_%thunk128513%_ _%thunk128508%_))
                   (__make-promise _%thunk128513%_))))
            (let* ((_%thunk128536%_
                    (lambda ()
                      (let ((_%once128530%_ (vector '0)))
                        (let ((__tmp128643
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp128644
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once128530%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp128644 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx128526%_))))
                              (__tmp128642
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner128527%_))))
                              (__tmp128641
                               (lambda () (mutex-unlock! _%mx128526%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp128643
                           __tmp128642
                           __tmp128641)))))
                   (_%thunk128541%_ _%thunk128536%_))
              (__make-promise _%thunk128541%_))))))
    (define make-atomic-promise
      (lambda (_%thunk128149%_)
        (if (procedure? _%thunk128149%_)
            (let ((_%thunk128153%_ _%thunk128149%_))
              (__make-atomic-promise _%thunk128153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk128149%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk128448%_)
        (if (procedure? _%thunk128448%_)
            (let ((_%thunk128452%_ _%thunk128448%_))
              (declare (not safe))
              (_%thunk128452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk128448%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk128462%_ _%param128463%_ _%val128464%_)
        (if (procedure? _%thunk128462%_)
            (let ((_%thunk128468%_ _%thunk128462%_))
              (declare (not safe))
              (##parameterize1 _%param128463%_ _%val128464%_ _%thunk128468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk128462%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk128478%_ _%param128479%_ _%val128480%_ . _%rest128481%_)
        (if (procedure? _%thunk128478%_)
            (let ((_%thunk128485%_ _%thunk128478%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk128485%_ _%rest128481%_))
               _%param128479%_
               _%val128480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk128478%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g128645_
        (let ((_g128646_ (let () (declare (not safe)) (##length _g128645_))))
          (cond ((let () (declare (not safe)) (##fx= _g128646_ 1))
                 (apply call-with-parameters__0 _g128645_))
                ((let () (declare (not safe)) (##fx= _g128646_ 3))
                 (apply call-with-parameters__1 _g128645_))
                ((let () (declare (not safe)) (##fx>= _g128646_ 3))
                 (apply call-with-parameters__2 _g128645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g128645_))))))
    (define __with-unwind-protect
      (lambda (_%K128423%_ _%fini128424%_)
        (let* ((_%K128427%_ _%K128423%_)
               (_%fini128435%_ _%fini128424%_)
               (_%once128444%_ (vector '0))
               (__tmp128647
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp128648
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once128444%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp128648 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp128647 _%K128427%_ _%fini128435%_))))
    (define with-unwind-protect
      (lambda (_%K128283%_ _%fini128284%_)
        (if (procedure? _%K128283%_)
            (let ((_%K128288%_ _%K128283%_))
              (if (procedure? _%fini128284%_)
                  (let ((_%fini128298%_ _%fini128284%_))
                    (__with-unwind-protect _%K128288%_ _%fini128298%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini128284%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K128283%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt128316%_ _%K128317%_ . _%all-args128318%_)
        (if _%kwt128316%_
            (if (vector? _%kwt128316%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt128316%_))
            '#!void)
        (if (procedure? _%K128317%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K128317%_))
        (let ((_%keys128320%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp128322%_ ((_%rest128324%_ _%all-args128318%_)
                             (_%args128325%_ '#f)
                             (_%tail128326%_ '#f))
            (let* ((_%rest128327128335%_ _%rest128324%_)
                   (_%else128329128343%_
                    (lambda ()
                      (if _%args128325%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail128326%_ '()))
                            (let ((__tmp128649
                                   (cons _%keys128320%_ _%args128325%_)))
                              (declare (not safe))
                              (##apply _%K128317%_ __tmp128649)))
                          (_%K128317%_ _%keys128320%_))))
                   (_%K128331128411%_
                    (lambda (_%hd-rest128346%_ _%hd128347%_)
                      (if (keyword? _%hd128347%_)
                          (let* ((_%hd-rest128349128356%_ _%hd-rest128346%_)
                                 (_%E128351128360%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest128349128356%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K128352128368%_
                                  (lambda (_%rest128363%_ _%val128364%_)
                                    (if _%kwt128316%_
                                        (let ((_%pos128366%_
                                               (let ((__tmp128651
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd128347%_)))
                                                     (__tmp128650
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt128316%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp128651
                                                  __tmp128650))))
                                          (if (eq? _%hd128347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt128316%_
                                                      _%pos128366%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K128317%_
                                                     _%hd128347%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys128320%_
                                                _%hd128347%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K128317%_
                                               _%hd128347%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys128320%_
                                       _%hd128347%_
                                       _%val128364%_))
                                    (_%lp128322%_
                                     _%rest128363%_
                                     _%args128325%_
                                     _%tail128326%_))))
                            (if (pair? _%hd-rest128349128356%_)
                                (let ((_%hd128353128371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest128349128356%_)))
                                      (_%tl128354128373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest128349128356%_))))
                                  (let* ((_%val128376%_ _%hd128353128371%_)
                                         (_%rest128378%_ _%tl128354128373%_))
                                    (_%K128352128368%_
                                     _%rest128378%_
                                     _%val128376%_)))
                                (_%E128351128360%_)))
                          (if (eq? _%hd128347%_ '#!key)
                              (let* ((_%hd-rest128380128387%_
                                      _%hd-rest128346%_)
                                     (_%E128382128391%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest128380128387%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K128383128397%_
                                      (lambda (_%rest128394%_ _%val128395%_)
                                        (if _%args128325%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail128326%_
                                                 _%hd-rest128346%_))
                                              (_%lp128322%_
                                               _%rest128394%_
                                               _%args128325%_
                                               _%hd-rest128346%_))
                                            (_%lp128322%_
                                             _%rest128394%_
                                             _%hd-rest128346%_
                                             _%hd-rest128346%_)))))
                                (if (pair? _%hd-rest128380128387%_)
                                    (let ((_%hd128384128400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest128380128387%_)))
                                          (_%tl128385128402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest128380128387%_))))
                                      (let* ((_%val128405%_ _%hd128384128400%_)
                                             (_%rest128407%_
                                              _%tl128385128402%_))
                                        (_%K128383128397%_
                                         _%rest128407%_
                                         _%val128405%_)))
                                    (_%E128382128391%_)))
                              (if (eq? _%hd128347%_ '#!rest)
                                  (if _%args128325%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail128326%_
                                           _%hd-rest128346%_))
                                        (let ((__tmp128652
                                               (cons _%keys128320%_
                                                     _%args128325%_)))
                                          (declare (not safe))
                                          (##apply _%K128317%_ __tmp128652)))
                                      (let ((__tmp128653
                                             (cons _%keys128320%_
                                                   _%hd-rest128346%_)))
                                        (declare (not safe))
                                        (##apply _%K128317%_ __tmp128653)))
                                  (if _%args128325%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail128326%_
                                           _%rest128324%_))
                                        (_%lp128322%_
                                         _%hd-rest128346%_
                                         _%args128325%_
                                         _%rest128324%_))
                                      (_%lp128322%_
                                       _%hd-rest128346%_
                                       _%rest128324%_
                                       _%rest128324%_))))))))
              (if (pair? _%rest128327128335%_)
                  (let ((_%hd128332128414%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest128327128335%_)))
                        (_%tl128333128416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest128327128335%_))))
                    (let* ((_%hd128419%_ _%hd128332128414%_)
                           (_%hd-rest128421%_ _%tl128333128416%_))
                      (_%K128331128411%_ _%hd-rest128421%_ _%hd128419%_)))
                  (_%else128329128343%_)))))))
    (define keyword-rest
      (lambda (_%kwt128308%_ . _%drop128309%_)
        (let ((_%rest128311%_ '()))
          (let ((__tmp128654
                 (lambda (_%k128313%_ _%v128314%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k128313%_ _%drop128309%_))
                       '#!void
                       (set! _%rest128311%_
                             (cons _%k128313%_
                                   (cons _%v128314%_ _%rest128311%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt128308%_ __tmp128654))
          _%rest128311%_)))))
