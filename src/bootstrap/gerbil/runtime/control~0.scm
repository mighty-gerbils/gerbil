(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712784664)
  (begin
    (define make-promise
      (lambda (_%thunk91792%_)
        (if (procedure? _%thunk91792%_)
            (let ((_%thunk91796%_ _%thunk91792%_))
              (__make-promise _%thunk91796%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk91792%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk91780%_)
        (let ((_%thunk91783%_ _%thunk91780%_))
          (declare (not safe))
          (##make-delay-promise _%thunk91783%_))))
    (define call-with-parameters
      (lambda (_%thunk91765%_ . _%rest91766%_)
        (if (procedure? _%thunk91765%_)
            (let ((_%thunk91770%_ _%thunk91765%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk91770%_ _%rest91766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk91765%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk91703%_ . _%rest91704%_)
        (let* ((_%thunk91707%_ _%thunk91703%_)
               (_%rest9171591726%_ _%rest91704%_)
               (_%E9171891730%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9171591726%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9172091746%_
                 (lambda (_%rest91741%_ _%val91742%_ _%param91743%_)
                   (let ((__tmp91818
                          (if (null? _%rest91741%_)
                              _%thunk91707%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk91707%_
                                       _%rest91741%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param91743%_
                      _%val91742%_
                      __tmp91818))))
                (_%K9171991735%_
                 (lambda () (let () (declare (not safe)) (_%thunk91707%_)))))
            (let ((_%try-match9171791738%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9171591726%_))
                         (let () (declare (not safe)) (_%thunk91707%_))
                         (_%E9171891730%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9171591726%_))
                  (let ((_%tl9172291751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9171591726%_)))
                        (_%hd9172191749%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9171591726%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9172291751%_))
                        (let ((_%tl9172491758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9172291751%_)))
                              (_%hd9172391756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9172291751%_))))
                          (let ((_%param91754%_ _%hd9172191749%_)
                                (_%val91761%_ _%hd9172391756%_)
                                (_%rest91763%_ _%tl9172491758%_))
                            (_%K9172091746%_
                             _%rest91763%_
                             _%val91761%_
                             _%param91754%_)))
                        (_%E9171891730%_)))
                  (_%try-match9171791738%_)))))))
    (define with-unwind-protect
      (lambda (_%K91678%_ _%fini91679%_)
        (if (procedure? _%K91678%_)
            (let ((_%K91683%_ _%K91678%_))
              (if (procedure? _%fini91679%_)
                  (let ((_%fini91693%_ _%fini91679%_))
                    (__with-unwind-protect _%K91683%_ _%fini91693%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini91679%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K91678%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K91652%_ _%fini91653%_)
        (let* ((_%K91656%_ _%K91652%_)
               (_%fini91665%_ _%fini91653%_)
               (_%once91674%_ '#f)
               (__tmp91819
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once91674%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once91674%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp91819 _%K91656%_ _%fini91665%_))))
    (define keyword-dispatch
      (lambda (_%kwt91545%_ _%K91546%_ . _%all-args91547%_)
        (if _%kwt91545%_
            (if (vector? _%kwt91545%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt91545%_))
            '#!void)
        (if (procedure? _%K91546%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K91546%_))
        (let ((_%keys91549%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp91551%_ ((_%rest91553%_ _%all-args91547%_)
                            (_%args91554%_ '#f)
                            (_%tail91555%_ '#f))
            (let* ((_%rest9155691564%_ _%rest91553%_)
                   (_%else9155891572%_
                    (lambda ()
                      (if _%args91554%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail91555%_ '()))
                            (let ((__tmp91820
                                   (cons _%keys91549%_ _%args91554%_)))
                              (declare (not safe))
                              (##apply _%K91546%_ __tmp91820)))
                          (_%K91546%_ _%keys91549%_))))
                   (_%K9156091640%_
                    (lambda (_%hd-rest91575%_ _%hd91576%_)
                      (if (keyword? _%hd91576%_)
                          (let* ((_%hd-rest9157891585%_ _%hd-rest91575%_)
                                 (_%E9158091589%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9157891585%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9158191597%_
                                  (lambda (_%rest91592%_ _%val91593%_)
                                    (if _%kwt91545%_
                                        (let ((_%pos91595%_
                                               (let ((__tmp91822
                                                      (keyword-hash
                                                       _%hd91576%_))
                                                     (__tmp91821
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt91545%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp91822
                                                  __tmp91821))))
                                          (if (eq? _%hd91576%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt91545%_
                                                      _%pos91595%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K91546%_
                                                     _%hd91576%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys91549%_
                                                _%hd91576%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K91546%_
                                               _%hd91576%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys91549%_
                                       _%hd91576%_
                                       _%val91593%_))
                                    (_%lp91551%_
                                     _%rest91592%_
                                     _%args91554%_
                                     _%tail91555%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9157891585%_))
                                (let ((_%hd9158291600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9157891585%_)))
                                      (_%tl9158391602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9157891585%_))))
                                  (let* ((_%val91605%_ _%hd9158291600%_)
                                         (_%rest91607%_ _%tl9158391602%_))
                                    (_%K9158191597%_
                                     _%rest91607%_
                                     _%val91605%_)))
                                (_%E9158091589%_)))
                          (if (eq? _%hd91576%_ '#!key)
                              (let* ((_%hd-rest9160991616%_ _%hd-rest91575%_)
                                     (_%E9161191620%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9160991616%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9161291626%_
                                      (lambda (_%rest91623%_ _%val91624%_)
                                        (if _%args91554%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail91555%_
                                                 _%hd-rest91575%_))
                                              (_%lp91551%_
                                               _%rest91623%_
                                               _%args91554%_
                                               _%hd-rest91575%_))
                                            (_%lp91551%_
                                             _%rest91623%_
                                             _%hd-rest91575%_
                                             _%hd-rest91575%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9160991616%_))
                                    (let ((_%hd9161391629%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9160991616%_)))
                                          (_%tl9161491631%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9160991616%_))))
                                      (let* ((_%val91634%_ _%hd9161391629%_)
                                             (_%rest91636%_ _%tl9161491631%_))
                                        (_%K9161291626%_
                                         _%rest91636%_
                                         _%val91634%_)))
                                    (_%E9161191620%_)))
                              (if (eq? _%hd91576%_ '#!rest)
                                  (if _%args91554%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail91555%_
                                           _%hd-rest91575%_))
                                        (let ((__tmp91823
                                               (cons _%keys91549%_
                                                     _%args91554%_)))
                                          (declare (not safe))
                                          (##apply _%K91546%_ __tmp91823)))
                                      (let ((__tmp91824
                                             (cons _%keys91549%_
                                                   _%hd-rest91575%_)))
                                        (declare (not safe))
                                        (##apply _%K91546%_ __tmp91824)))
                                  (if _%args91554%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail91555%_
                                           _%rest91553%_))
                                        (_%lp91551%_
                                         _%hd-rest91575%_
                                         _%args91554%_
                                         _%rest91553%_))
                                      (_%lp91551%_
                                       _%hd-rest91575%_
                                       _%rest91553%_
                                       _%rest91553%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9155691564%_))
                  (let ((_%hd9156191643%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9155691564%_)))
                        (_%tl9156291645%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9155691564%_))))
                    (let* ((_%hd91648%_ _%hd9156191643%_)
                           (_%hd-rest91650%_ _%tl9156291645%_))
                      (_%K9156091640%_ _%hd-rest91650%_ _%hd91648%_)))
                  (_%else9155891572%_)))))))
    (define keyword-rest
      (lambda (_%kwt91537%_ . _%drop91538%_)
        (let ((_%rest91540%_ '()))
          (let ((__tmp91825
                 (lambda (_%k91542%_ _%v91543%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k91542%_ _%drop91538%_))
                       '#!void
                       (set! _%rest91540%_
                             (cons _%k91542%_
                                   (cons _%v91543%_ _%rest91540%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt91537%_ __tmp91825))
          _%rest91540%_)))))
