(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1779289635)
  (begin
    (define __make-promise
      (lambda (_%thunk120625%_)
        (let ((_%thunk120628%_ _%thunk120625%_))
          (declare (not safe))
          (##make-delay-promise _%thunk120628%_))))
    (define make-promise
      (lambda (_%thunk120088%_)
        (if (procedure? _%thunk120088%_)
            (let ((_%thunk120092%_ _%thunk120088%_))
              (__make-promise _%thunk120092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk120088%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk120569%_)
        (let ((_%thunk120572%_ _%thunk120569%_))
          (let ((_%mx120599%_ (make-mutex 'promise))
                (_%inner120600%_
                 (let* ((_%thunk120581%_ _%thunk120572%_)
                        (_%thunk120586%_ _%thunk120581%_))
                   (__make-promise _%thunk120586%_))))
            (let* ((_%thunk120609%_
                    (lambda ()
                      (let ((_%once120603%_ (vector '0)))
                        (let ((__tmp120716
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp120717
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once120603%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp120717 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx120599%_))))
                              (__tmp120715
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner120600%_))))
                              (__tmp120714
                               (lambda () (mutex-unlock! _%mx120599%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp120716
                           __tmp120715
                           __tmp120714)))))
                   (_%thunk120614%_ _%thunk120609%_))
              (__make-promise _%thunk120614%_))))))
    (define make-atomic-promise
      (lambda (_%thunk120222%_)
        (if (procedure? _%thunk120222%_)
            (let ((_%thunk120226%_ _%thunk120222%_))
              (__make-atomic-promise _%thunk120226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk120222%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk120521%_)
        (if (procedure? _%thunk120521%_)
            (let ((_%thunk120525%_ _%thunk120521%_))
              (declare (not safe))
              (_%thunk120525%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk120521%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk120535%_ _%param120536%_ _%val120537%_)
        (if (procedure? _%thunk120535%_)
            (let ((_%thunk120541%_ _%thunk120535%_))
              (declare (not safe))
              (##parameterize1 _%param120536%_ _%val120537%_ _%thunk120541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk120535%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk120551%_ _%param120552%_ _%val120553%_ . _%rest120554%_)
        (if (procedure? _%thunk120551%_)
            (let ((_%thunk120558%_ _%thunk120551%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk120558%_ _%rest120554%_))
               _%param120552%_
               _%val120553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk120551%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g120718_
        (let ((_g120719_ (let () (declare (not safe)) (##length _g120718_))))
          (cond ((let () (declare (not safe)) (##fx= _g120719_ 1))
                 (apply call-with-parameters__0 _g120718_))
                ((let () (declare (not safe)) (##fx= _g120719_ 3))
                 (apply call-with-parameters__1 _g120718_))
                ((let () (declare (not safe)) (##fx>= _g120719_ 3))
                 (apply call-with-parameters__2 _g120718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g120718_))))))
    (define __with-unwind-protect
      (lambda (_%K120496%_ _%fini120497%_)
        (let* ((_%K120500%_ _%K120496%_)
               (_%fini120508%_ _%fini120497%_)
               (_%once120517%_ (vector '0))
               (__tmp120720
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp120721
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once120517%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp120721 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp120720 _%K120500%_ _%fini120508%_))))
    (define with-unwind-protect
      (lambda (_%K120356%_ _%fini120357%_)
        (if (procedure? _%K120356%_)
            (let ((_%K120361%_ _%K120356%_))
              (if (procedure? _%fini120357%_)
                  (let ((_%fini120371%_ _%fini120357%_))
                    (__with-unwind-protect _%K120361%_ _%fini120371%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini120357%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K120356%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt120389%_ _%K120390%_ . _%all-args120391%_)
        (if _%kwt120389%_
            (if (vector? _%kwt120389%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt120389%_))
            '#!void)
        (if (procedure? _%K120390%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K120390%_))
        (let ((_%keys120393%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp120395%_ ((_%rest120397%_ _%all-args120391%_)
                             (_%args120398%_ '#f)
                             (_%tail120399%_ '#f))
            (let* ((_%rest120400120408%_ _%rest120397%_)
                   (_%else120402120416%_
                    (lambda ()
                      (if _%args120398%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail120399%_ '()))
                            (let ((__tmp120722
                                   (cons _%keys120393%_ _%args120398%_)))
                              (declare (not safe))
                              (##apply _%K120390%_ __tmp120722)))
                          (_%K120390%_ _%keys120393%_))))
                   (_%K120404120484%_
                    (lambda (_%hd-rest120419%_ _%hd120420%_)
                      (if (keyword? _%hd120420%_)
                          (let* ((_%hd-rest120422120429%_ _%hd-rest120419%_)
                                 (_%E120424120433%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest120422120429%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K120425120441%_
                                  (lambda (_%rest120436%_ _%val120437%_)
                                    (if _%kwt120389%_
                                        (let ((_%pos120439%_
                                               (let ((__tmp120724
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd120420%_)))
                                                     (__tmp120723
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt120389%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp120724
                                                  __tmp120723))))
                                          (if (eq? _%hd120420%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt120389%_
                                                      _%pos120439%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K120390%_
                                                     _%hd120420%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys120393%_
                                                _%hd120420%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K120390%_
                                               _%hd120420%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys120393%_
                                       _%hd120420%_
                                       _%val120437%_))
                                    (_%lp120395%_
                                     _%rest120436%_
                                     _%args120398%_
                                     _%tail120399%_))))
                            (if (pair? _%hd-rest120422120429%_)
                                (let ((_%hd120426120444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest120422120429%_)))
                                      (_%tl120427120446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest120422120429%_))))
                                  (let* ((_%val120449%_ _%hd120426120444%_)
                                         (_%rest120451%_ _%tl120427120446%_))
                                    (_%K120425120441%_
                                     _%rest120451%_
                                     _%val120449%_)))
                                (_%E120424120433%_)))
                          (if (eq? _%hd120420%_ '#!key)
                              (let* ((_%hd-rest120453120460%_
                                      _%hd-rest120419%_)
                                     (_%E120455120464%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest120453120460%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K120456120470%_
                                      (lambda (_%rest120467%_ _%val120468%_)
                                        (if _%args120398%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail120399%_
                                                 _%hd-rest120419%_))
                                              (_%lp120395%_
                                               _%rest120467%_
                                               _%args120398%_
                                               _%hd-rest120419%_))
                                            (_%lp120395%_
                                             _%rest120467%_
                                             _%hd-rest120419%_
                                             _%hd-rest120419%_)))))
                                (if (pair? _%hd-rest120453120460%_)
                                    (let ((_%hd120457120473%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest120453120460%_)))
                                          (_%tl120458120475%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest120453120460%_))))
                                      (let* ((_%val120478%_ _%hd120457120473%_)
                                             (_%rest120480%_
                                              _%tl120458120475%_))
                                        (_%K120456120470%_
                                         _%rest120480%_
                                         _%val120478%_)))
                                    (_%E120455120464%_)))
                              (if (eq? _%hd120420%_ '#!rest)
                                  (if _%args120398%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120399%_
                                           _%hd-rest120419%_))
                                        (let ((__tmp120725
                                               (cons _%keys120393%_
                                                     _%args120398%_)))
                                          (declare (not safe))
                                          (##apply _%K120390%_ __tmp120725)))
                                      (let ((__tmp120726
                                             (cons _%keys120393%_
                                                   _%hd-rest120419%_)))
                                        (declare (not safe))
                                        (##apply _%K120390%_ __tmp120726)))
                                  (if _%args120398%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail120399%_
                                           _%rest120397%_))
                                        (_%lp120395%_
                                         _%hd-rest120419%_
                                         _%args120398%_
                                         _%rest120397%_))
                                      (_%lp120395%_
                                       _%hd-rest120419%_
                                       _%rest120397%_
                                       _%rest120397%_))))))))
              (if (pair? _%rest120400120408%_)
                  (let ((_%hd120405120487%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest120400120408%_)))
                        (_%tl120406120489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest120400120408%_))))
                    (let* ((_%hd120492%_ _%hd120405120487%_)
                           (_%hd-rest120494%_ _%tl120406120489%_))
                      (_%K120404120484%_ _%hd-rest120494%_ _%hd120492%_)))
                  (_%else120402120416%_)))))))
    (define keyword-rest
      (lambda (_%kwt120381%_ . _%drop120382%_)
        (let ((_%rest120384%_ '()))
          (let ((__tmp120727
                 (lambda (_%k120386%_ _%v120387%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k120386%_ _%drop120382%_))
                       '#!void
                       (set! _%rest120384%_
                             (cons _%k120386%_
                                   (cons _%v120387%_ _%rest120384%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt120381%_ __tmp120727))
          _%rest120384%_)))))
