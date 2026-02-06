(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770405370)
  (begin
    (define __make-promise
      (lambda (_%thunk116973%_)
        (let ((_%thunk116976%_ _%thunk116973%_))
          (declare (not safe))
          (##make-delay-promise _%thunk116976%_))))
    (define make-promise
      (lambda (_%thunk116436%_)
        (if (procedure? _%thunk116436%_)
            (let ((_%thunk116440%_ _%thunk116436%_))
              (__make-promise _%thunk116440%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk116436%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk116917%_)
        (let ((_%thunk116920%_ _%thunk116917%_))
          (let ((_%mx116947%_ (make-mutex 'promise))
                (_%inner116948%_
                 (let* ((_%thunk116929%_ _%thunk116920%_)
                        (_%thunk116934%_ _%thunk116929%_))
                   (__make-promise _%thunk116934%_))))
            (let* ((_%thunk116957%_
                    (lambda ()
                      (let ((_%once116951%_ (vector '0)))
                        (let ((__tmp117064
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp117065
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once116951%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp117065 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx116947%_))))
                              (__tmp117063
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner116948%_))))
                              (__tmp117062
                               (lambda () (mutex-unlock! _%mx116947%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp117064
                           __tmp117063
                           __tmp117062)))))
                   (_%thunk116962%_ _%thunk116957%_))
              (__make-promise _%thunk116962%_))))))
    (define make-atomic-promise
      (lambda (_%thunk116570%_)
        (if (procedure? _%thunk116570%_)
            (let ((_%thunk116574%_ _%thunk116570%_))
              (__make-atomic-promise _%thunk116574%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk116570%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk116869%_)
        (if (procedure? _%thunk116869%_)
            (let ((_%thunk116873%_ _%thunk116869%_))
              (declare (not safe))
              (_%thunk116873%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk116869%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk116883%_ _%param116884%_ _%val116885%_)
        (if (procedure? _%thunk116883%_)
            (let ((_%thunk116889%_ _%thunk116883%_))
              (declare (not safe))
              (##parameterize1 _%param116884%_ _%val116885%_ _%thunk116889%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk116883%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk116899%_ _%param116900%_ _%val116901%_ . _%rest116902%_)
        (if (procedure? _%thunk116899%_)
            (let ((_%thunk116906%_ _%thunk116899%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk116906%_ _%rest116902%_))
               _%param116900%_
               _%val116901%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk116899%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g117066_
        (let ((_g117067_ (let () (declare (not safe)) (##length _g117066_))))
          (cond ((let () (declare (not safe)) (##fx= _g117067_ 1))
                 (apply call-with-parameters__0 _g117066_))
                ((let () (declare (not safe)) (##fx= _g117067_ 3))
                 (apply call-with-parameters__1 _g117066_))
                ((let () (declare (not safe)) (##fx>= _g117067_ 3))
                 (apply call-with-parameters__2 _g117066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g117066_))))))
    (define __with-unwind-protect
      (lambda (_%K116844%_ _%fini116845%_)
        (let* ((_%K116848%_ _%K116844%_)
               (_%fini116856%_ _%fini116845%_)
               (_%once116865%_ (vector '0))
               (__tmp117068
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp117069
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once116865%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp117069 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp117068 _%K116848%_ _%fini116856%_))))
    (define with-unwind-protect
      (lambda (_%K116704%_ _%fini116705%_)
        (if (procedure? _%K116704%_)
            (let ((_%K116709%_ _%K116704%_))
              (if (procedure? _%fini116705%_)
                  (let ((_%fini116719%_ _%fini116705%_))
                    (__with-unwind-protect _%K116709%_ _%fini116719%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini116705%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K116704%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt116737%_ _%K116738%_ . _%all-args116739%_)
        (if _%kwt116737%_
            (if (vector? _%kwt116737%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt116737%_))
            '#!void)
        (if (procedure? _%K116738%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K116738%_))
        (let ((_%keys116741%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp116743%_ ((_%rest116745%_ _%all-args116739%_)
                             (_%args116746%_ '#f)
                             (_%tail116747%_ '#f))
            (let* ((_%rest116748116756%_ _%rest116745%_)
                   (_%else116750116764%_
                    (lambda ()
                      (if _%args116746%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail116747%_ '()))
                            (let ((__tmp117070
                                   (cons _%keys116741%_ _%args116746%_)))
                              (declare (not safe))
                              (##apply _%K116738%_ __tmp117070)))
                          (_%K116738%_ _%keys116741%_))))
                   (_%K116752116832%_
                    (lambda (_%hd-rest116767%_ _%hd116768%_)
                      (if (keyword? _%hd116768%_)
                          (let* ((_%hd-rest116770116777%_ _%hd-rest116767%_)
                                 (_%E116772116781%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest116770116777%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K116773116789%_
                                  (lambda (_%rest116784%_ _%val116785%_)
                                    (if _%kwt116737%_
                                        (let ((_%pos116787%_
                                               (let ((__tmp117072
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd116768%_)))
                                                     (__tmp117071
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt116737%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp117072
                                                  __tmp117071))))
                                          (if (eq? _%hd116768%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt116737%_
                                                      _%pos116787%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K116738%_
                                                     _%hd116768%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys116741%_
                                                _%hd116768%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K116738%_
                                               _%hd116768%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys116741%_
                                       _%hd116768%_
                                       _%val116785%_))
                                    (_%lp116743%_
                                     _%rest116784%_
                                     _%args116746%_
                                     _%tail116747%_))))
                            (if (pair? _%hd-rest116770116777%_)
                                (let ((_%hd116774116792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest116770116777%_)))
                                      (_%tl116775116794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest116770116777%_))))
                                  (let* ((_%val116797%_ _%hd116774116792%_)
                                         (_%rest116799%_ _%tl116775116794%_))
                                    (_%K116773116789%_
                                     _%rest116799%_
                                     _%val116797%_)))
                                (_%E116772116781%_)))
                          (if (eq? _%hd116768%_ '#!key)
                              (let* ((_%hd-rest116801116808%_
                                      _%hd-rest116767%_)
                                     (_%E116803116812%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest116801116808%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K116804116818%_
                                      (lambda (_%rest116815%_ _%val116816%_)
                                        (if _%args116746%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail116747%_
                                                 _%hd-rest116767%_))
                                              (_%lp116743%_
                                               _%rest116815%_
                                               _%args116746%_
                                               _%hd-rest116767%_))
                                            (_%lp116743%_
                                             _%rest116815%_
                                             _%hd-rest116767%_
                                             _%hd-rest116767%_)))))
                                (if (pair? _%hd-rest116801116808%_)
                                    (let ((_%hd116805116821%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest116801116808%_)))
                                          (_%tl116806116823%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest116801116808%_))))
                                      (let* ((_%val116826%_ _%hd116805116821%_)
                                             (_%rest116828%_
                                              _%tl116806116823%_))
                                        (_%K116804116818%_
                                         _%rest116828%_
                                         _%val116826%_)))
                                    (_%E116803116812%_)))
                              (if (eq? _%hd116768%_ '#!rest)
                                  (if _%args116746%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116747%_
                                           _%hd-rest116767%_))
                                        (let ((__tmp117073
                                               (cons _%keys116741%_
                                                     _%args116746%_)))
                                          (declare (not safe))
                                          (##apply _%K116738%_ __tmp117073)))
                                      (let ((__tmp117074
                                             (cons _%keys116741%_
                                                   _%hd-rest116767%_)))
                                        (declare (not safe))
                                        (##apply _%K116738%_ __tmp117074)))
                                  (if _%args116746%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116747%_
                                           _%rest116745%_))
                                        (_%lp116743%_
                                         _%hd-rest116767%_
                                         _%args116746%_
                                         _%rest116745%_))
                                      (_%lp116743%_
                                       _%hd-rest116767%_
                                       _%rest116745%_
                                       _%rest116745%_))))))))
              (if (pair? _%rest116748116756%_)
                  (let ((_%hd116753116835%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116748116756%_)))
                        (_%tl116754116837%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116748116756%_))))
                    (let* ((_%hd116840%_ _%hd116753116835%_)
                           (_%hd-rest116842%_ _%tl116754116837%_))
                      (_%K116752116832%_ _%hd-rest116842%_ _%hd116840%_)))
                  (_%else116750116764%_)))))))
    (define keyword-rest
      (lambda (_%kwt116729%_ . _%drop116730%_)
        (let ((_%rest116732%_ '()))
          (let ((__tmp117075
                 (lambda (_%k116734%_ _%v116735%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k116734%_ _%drop116730%_))
                       '#!void
                       (set! _%rest116732%_
                             (cons _%k116734%_
                                   (cons _%v116735%_ _%rest116732%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt116729%_ __tmp117075))
          _%rest116732%_)))))
