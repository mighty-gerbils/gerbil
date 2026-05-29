(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1779967240)
  (begin
    (define __make-promise
      (lambda (_%thunk120672%_)
        (let ((_%thunk120675%_ _%thunk120672%_))
          (declare (not safe))
          (##make-delay-promise _%thunk120675%_))))
    (define make-promise
      (lambda (_%thunk120658%_)
        (if (procedure? _%thunk120658%_)
            (let ((_%thunk120662%_ _%thunk120658%_))
              (__make-promise _%thunk120662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk120658%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk120602%_)
        (let ((_%thunk120605%_ _%thunk120602%_))
          (let ((_%mx120632%_ (make-mutex 'promise))
                (_%inner120633%_
                 (let* ((_%thunk120614%_ _%thunk120605%_)
                        (_%thunk120619%_ _%thunk120614%_))
                   (__make-promise _%thunk120619%_))))
            (let* ((_%thunk120642%_
                    (lambda ()
                      (let ((_%once120636%_ (vector '0)))
                        (let ((__tmp120763
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp120764
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once120636%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp120764 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx120632%_))))
                              (__tmp120762
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner120633%_))))
                              (__tmp120761
                               (lambda () (mutex-unlock! _%mx120632%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp120763
                           __tmp120762
                           __tmp120761)))))
                   (_%thunk120647%_ _%thunk120642%_))
              (__make-promise _%thunk120647%_))))))
    (define make-atomic-promise
      (lambda (_%thunk120588%_)
        (if (procedure? _%thunk120588%_)
            (let ((_%thunk120592%_ _%thunk120588%_))
              (__make-atomic-promise _%thunk120592%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk120588%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk120540%_)
        (if (procedure? _%thunk120540%_)
            (let ((_%thunk120544%_ _%thunk120540%_))
              (declare (not safe))
              (_%thunk120544%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk120540%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk120554%_ _%param120555%_ _%val120556%_)
        (if (procedure? _%thunk120554%_)
            (let ((_%thunk120560%_ _%thunk120554%_))
              (declare (not safe))
              (##parameterize1 _%param120555%_ _%val120556%_ _%thunk120560%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk120554%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk120570%_ _%param120571%_ _%val120572%_ . _%rest120573%_)
        (if (procedure? _%thunk120570%_)
            (let ((_%thunk120577%_ _%thunk120570%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk120577%_ _%rest120573%_))
               _%param120571%_
               _%val120572%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk120570%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g120765_
        (let ((_g120766_ (let () (declare (not safe)) (##length _g120765_))))
          (cond ((let () (declare (not safe)) (##fx= _g120766_ 1))
                 (apply call-with-parameters__0 _g120765_))
                ((let () (declare (not safe)) (##fx= _g120766_ 3))
                 (apply call-with-parameters__1 _g120765_))
                ((let () (declare (not safe)) (##fx>= _g120766_ 3))
                 (apply call-with-parameters__2 _g120765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g120765_))))))
    (define __with-unwind-protect
      (lambda (_%K120515%_ _%fini120516%_)
        (let* ((_%K120519%_ _%K120515%_)
               (_%fini120527%_ _%fini120516%_)
               (_%once120536%_ (vector '0))
               (__tmp120767
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp120768
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once120536%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp120768 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp120767 _%K120519%_ _%fini120527%_))))
    (define with-unwind-protect
      (lambda (_%K120490%_ _%fini120491%_)
        (if (procedure? _%K120490%_)
            (let ((_%K120495%_ _%K120490%_))
              (if (procedure? _%fini120491%_)
                  (let ((_%fini120505%_ _%fini120491%_))
                    (__with-unwind-protect _%K120495%_ _%fini120505%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini120491%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K120490%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt120383%_ _%K120384%_ . _%all-args120385%_)
        (if _%kwt120383%_
            (if (vector? _%kwt120383%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt120383%_))
            '#!void)
        (if (procedure? _%K120384%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K120384%_))
        (let ((_%keys120387%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp120389%_ ((_%rest120391%_ _%all-args120385%_)
                             (_%args120392%_ '#f)
                             (_%tail120393%_ '#f))
            (let* ((_%rest120394120402%_ _%rest120391%_)
                   (_%else120396120410%_
                    (lambda ()
                      (if _%args120392%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail120393%_ '()))
                            (let ((__tmp120769
                                   (cons _%keys120387%_ _%args120392%_)))
                              (declare (not safe))
                              (##apply _%K120384%_ __tmp120769)))
                          (_%K120384%_ _%keys120387%_))))
                   (_%K120398120478%_
                    (lambda (_%hd-rest120413%_ _%hd120414%_)
                      (if (keyword? _%hd120414%_)
                          (let* ((_%hd-rest120416120423%_ _%hd-rest120413%_)
                                 (_%E120418120427%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest120416120423%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K120419120435%_
                                  (lambda (_%rest120430%_ _%val120431%_)
                                    (if _%kwt120383%_
                                        (let ((_%pos120433%_
                                               (let ((__tmp120771
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd120414%_)))
                                                     (__tmp120770
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt120383%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp120771
                                                  __tmp120770))))
                                          (if (eq? _%hd120414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt120383%_
                                                      _%pos120433%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K120384%_
                                                     _%hd120414%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys120387%_
                                                _%hd120414%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K120384%_
                                               _%hd120414%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys120387%_
                                       _%hd120414%_
                                       _%val120431%_))
                                    (_%lp120389%_
                                     _%rest120430%_
                                     _%args120392%_
                                     _%tail120393%_))))
                            (if (pair? _%hd-rest120416120423%_)
                                (let ((_%hd120420120438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest120416120423%_)))
                                      (_%tl120421120440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest120416120423%_))))
                                  (let* ((_%val120443%_ _%hd120420120438%_)
                                         (_%rest120445%_ _%tl120421120440%_))
                                    (_%K120419120435%_
                                     _%rest120445%_
                                     _%val120443%_)))
                                (_%E120418120427%_)))
                          (if (eq? _%hd120414%_ '#!key)
                              (let* ((_%hd-rest120447120454%_
                                      _%hd-rest120413%_)
                                     (_%E120449120458%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest120447120454%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K120450120464%_
                                      (lambda (_%rest120461%_ _%val120462%_)
                                        (if _%args120392%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail120393%_
                                                 _%hd-rest120413%_))
                                              (_%lp120389%_
                                               _%rest120461%_
                                               _%args120392%_
                                               _%hd-rest120413%_))
                                            (_%lp120389%_
                                             _%rest120461%_
                                             _%hd-rest120413%_
                                             _%hd-rest120413%_)))))
                                (if (pair? _%hd-rest120447120454%_)
                                    (let ((_%hd120451120467%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest120447120454%_)))
                                          (_%tl120452120469%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest120447120454%_))))
                                      (let* ((_%val120472%_ _%hd120451120467%_)
                                             (_%rest120474%_
                                              _%tl120452120469%_))
                                        (_%K120450120464%_
                                         _%rest120474%_
                                         _%val120472%_)))
                                    (_%E120449120458%_)))
                              (if (eq? _%hd120414%_ '#!rest)
                                  (if _%args120392%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120393%_
                                           _%hd-rest120413%_))
                                        (let ((__tmp120772
                                               (cons _%keys120387%_
                                                     _%args120392%_)))
                                          (declare (not safe))
                                          (##apply _%K120384%_ __tmp120772)))
                                      (let ((__tmp120773
                                             (cons _%keys120387%_
                                                   _%hd-rest120413%_)))
                                        (declare (not safe))
                                        (##apply _%K120384%_ __tmp120773)))
                                  (if _%args120392%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120393%_
                                           _%rest120391%_))
                                        (_%lp120389%_
                                         _%hd-rest120413%_
                                         _%args120392%_
                                         _%rest120391%_))
                                      (_%lp120389%_
                                       _%hd-rest120413%_
                                       _%rest120391%_
                                       _%rest120391%_))))))))
              (if (pair? _%rest120394120402%_)
                  (let ((_%hd120399120481%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest120394120402%_)))
                        (_%tl120400120483%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest120394120402%_))))
                    (let* ((_%hd120486%_ _%hd120399120481%_)
                           (_%hd-rest120488%_ _%tl120400120483%_))
                      (_%K120398120478%_ _%hd-rest120488%_ _%hd120486%_)))
                  (_%else120396120410%_)))))))
    (define keyword-rest
      (lambda (_%kwt120375%_ . _%drop120376%_)
        (let ((_%rest120378%_ '()))
          (let ((__tmp120774
                 (lambda (_%k120380%_ _%v120381%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k120380%_ _%drop120376%_))
                       '#!void
                       (set! _%rest120378%_
                             (cons _%k120380%_
                                   (cons _%v120381%_ _%rest120378%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt120375%_ __tmp120774))
          _%rest120378%_)))))
