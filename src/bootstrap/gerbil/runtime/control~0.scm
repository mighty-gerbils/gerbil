(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1771025393)
  (begin
    (define __make-promise
      (lambda (_%thunk118955%_)
        (let ((_%thunk118958%_ _%thunk118955%_))
          (declare (not safe))
          (##make-delay-promise _%thunk118958%_))))
    (define make-promise
      (lambda (_%thunk118418%_)
        (if (procedure? _%thunk118418%_)
            (let ((_%thunk118422%_ _%thunk118418%_))
              (__make-promise _%thunk118422%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk118418%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk118899%_)
        (let ((_%thunk118902%_ _%thunk118899%_))
          (let ((_%mx118929%_ (make-mutex 'promise))
                (_%inner118930%_
                 (let* ((_%thunk118911%_ _%thunk118902%_)
                        (_%thunk118916%_ _%thunk118911%_))
                   (__make-promise _%thunk118916%_))))
            (let* ((_%thunk118939%_
                    (lambda ()
                      (let ((_%once118933%_ (vector '0)))
                        (let ((__tmp119046
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp119047
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once118933%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp119047 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx118929%_))))
                              (__tmp119045
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner118930%_))))
                              (__tmp119044
                               (lambda () (mutex-unlock! _%mx118929%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp119046
                           __tmp119045
                           __tmp119044)))))
                   (_%thunk118944%_ _%thunk118939%_))
              (__make-promise _%thunk118944%_))))))
    (define make-atomic-promise
      (lambda (_%thunk118552%_)
        (if (procedure? _%thunk118552%_)
            (let ((_%thunk118556%_ _%thunk118552%_))
              (__make-atomic-promise _%thunk118556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk118552%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk118851%_)
        (if (procedure? _%thunk118851%_)
            (let ((_%thunk118855%_ _%thunk118851%_))
              (declare (not safe))
              (_%thunk118855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk118851%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk118865%_ _%param118866%_ _%val118867%_)
        (if (procedure? _%thunk118865%_)
            (let ((_%thunk118871%_ _%thunk118865%_))
              (declare (not safe))
              (##parameterize1 _%param118866%_ _%val118867%_ _%thunk118871%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk118865%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk118881%_ _%param118882%_ _%val118883%_ . _%rest118884%_)
        (if (procedure? _%thunk118881%_)
            (let ((_%thunk118888%_ _%thunk118881%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk118888%_ _%rest118884%_))
               _%param118882%_
               _%val118883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk118881%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g119048_
        (let ((_g119049_ (let () (declare (not safe)) (##length _g119048_))))
          (cond ((let () (declare (not safe)) (##fx= _g119049_ 1))
                 (apply call-with-parameters__0 _g119048_))
                ((let () (declare (not safe)) (##fx= _g119049_ 3))
                 (apply call-with-parameters__1 _g119048_))
                ((let () (declare (not safe)) (##fx>= _g119049_ 3))
                 (apply call-with-parameters__2 _g119048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g119048_))))))
    (define __with-unwind-protect
      (lambda (_%K118826%_ _%fini118827%_)
        (let* ((_%K118830%_ _%K118826%_)
               (_%fini118838%_ _%fini118827%_)
               (_%once118847%_ (vector '0))
               (__tmp119050
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp119051
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once118847%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp119051 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp119050 _%K118830%_ _%fini118838%_))))
    (define with-unwind-protect
      (lambda (_%K118686%_ _%fini118687%_)
        (if (procedure? _%K118686%_)
            (let ((_%K118691%_ _%K118686%_))
              (if (procedure? _%fini118687%_)
                  (let ((_%fini118701%_ _%fini118687%_))
                    (__with-unwind-protect _%K118691%_ _%fini118701%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini118687%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K118686%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt118719%_ _%K118720%_ . _%all-args118721%_)
        (if _%kwt118719%_
            (if (vector? _%kwt118719%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt118719%_))
            '#!void)
        (if (procedure? _%K118720%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K118720%_))
        (let ((_%keys118723%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp118725%_ ((_%rest118727%_ _%all-args118721%_)
                             (_%args118728%_ '#f)
                             (_%tail118729%_ '#f))
            (let* ((_%rest118730118738%_ _%rest118727%_)
                   (_%else118732118746%_
                    (lambda ()
                      (if _%args118728%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail118729%_ '()))
                            (let ((__tmp119052
                                   (cons _%keys118723%_ _%args118728%_)))
                              (declare (not safe))
                              (##apply _%K118720%_ __tmp119052)))
                          (_%K118720%_ _%keys118723%_))))
                   (_%K118734118814%_
                    (lambda (_%hd-rest118749%_ _%hd118750%_)
                      (if (keyword? _%hd118750%_)
                          (let* ((_%hd-rest118752118759%_ _%hd-rest118749%_)
                                 (_%E118754118763%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest118752118759%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K118755118771%_
                                  (lambda (_%rest118766%_ _%val118767%_)
                                    (if _%kwt118719%_
                                        (let ((_%pos118769%_
                                               (let ((__tmp119054
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd118750%_)))
                                                     (__tmp119053
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt118719%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp119054
                                                  __tmp119053))))
                                          (if (eq? _%hd118750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt118719%_
                                                      _%pos118769%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K118720%_
                                                     _%hd118750%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys118723%_
                                                _%hd118750%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K118720%_
                                               _%hd118750%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys118723%_
                                       _%hd118750%_
                                       _%val118767%_))
                                    (_%lp118725%_
                                     _%rest118766%_
                                     _%args118728%_
                                     _%tail118729%_))))
                            (if (pair? _%hd-rest118752118759%_)
                                (let ((_%hd118756118774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest118752118759%_)))
                                      (_%tl118757118776%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest118752118759%_))))
                                  (let* ((_%val118779%_ _%hd118756118774%_)
                                         (_%rest118781%_ _%tl118757118776%_))
                                    (_%K118755118771%_
                                     _%rest118781%_
                                     _%val118779%_)))
                                (_%E118754118763%_)))
                          (if (eq? _%hd118750%_ '#!key)
                              (let* ((_%hd-rest118783118790%_
                                      _%hd-rest118749%_)
                                     (_%E118785118794%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest118783118790%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K118786118800%_
                                      (lambda (_%rest118797%_ _%val118798%_)
                                        (if _%args118728%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail118729%_
                                                 _%hd-rest118749%_))
                                              (_%lp118725%_
                                               _%rest118797%_
                                               _%args118728%_
                                               _%hd-rest118749%_))
                                            (_%lp118725%_
                                             _%rest118797%_
                                             _%hd-rest118749%_
                                             _%hd-rest118749%_)))))
                                (if (pair? _%hd-rest118783118790%_)
                                    (let ((_%hd118787118803%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest118783118790%_)))
                                          (_%tl118788118805%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest118783118790%_))))
                                      (let* ((_%val118808%_ _%hd118787118803%_)
                                             (_%rest118810%_
                                              _%tl118788118805%_))
                                        (_%K118786118800%_
                                         _%rest118810%_
                                         _%val118808%_)))
                                    (_%E118785118794%_)))
                              (if (eq? _%hd118750%_ '#!rest)
                                  (if _%args118728%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail118729%_
                                           _%hd-rest118749%_))
                                        (let ((__tmp119055
                                               (cons _%keys118723%_
                                                     _%args118728%_)))
                                          (declare (not safe))
                                          (##apply _%K118720%_ __tmp119055)))
                                      (let ((__tmp119056
                                             (cons _%keys118723%_
                                                   _%hd-rest118749%_)))
                                        (declare (not safe))
                                        (##apply _%K118720%_ __tmp119056)))
                                  (if _%args118728%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail118729%_
                                           _%rest118727%_))
                                        (_%lp118725%_
                                         _%hd-rest118749%_
                                         _%args118728%_
                                         _%rest118727%_))
                                      (_%lp118725%_
                                       _%hd-rest118749%_
                                       _%rest118727%_
                                       _%rest118727%_))))))))
              (if (pair? _%rest118730118738%_)
                  (let ((_%hd118735118817%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest118730118738%_)))
                        (_%tl118736118819%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest118730118738%_))))
                    (let* ((_%hd118822%_ _%hd118735118817%_)
                           (_%hd-rest118824%_ _%tl118736118819%_))
                      (_%K118734118814%_ _%hd-rest118824%_ _%hd118822%_)))
                  (_%else118732118746%_)))))))
    (define keyword-rest
      (lambda (_%kwt118711%_ . _%drop118712%_)
        (let ((_%rest118714%_ '()))
          (let ((__tmp119057
                 (lambda (_%k118716%_ _%v118717%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k118716%_ _%drop118712%_))
                       '#!void
                       (set! _%rest118714%_
                             (cons _%k118716%_
                                   (cons _%v118717%_ _%rest118714%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt118711%_ __tmp119057))
          _%rest118714%_)))))
