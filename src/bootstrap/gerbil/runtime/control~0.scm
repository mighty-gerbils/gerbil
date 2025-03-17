(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1742237311)
  (begin
    (define make-promise
      (lambda (_%thunk95198%_)
        (if (procedure? _%thunk95198%_)
            (let ((_%thunk95202%_ _%thunk95198%_))
              (__make-promise _%thunk95202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95198%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95186%_)
        (let ((_%thunk95189%_ _%thunk95186%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95189%_))))
    (define call-with-parameters
      (lambda (_%thunk95171%_ . _%rest95172%_)
        (if (procedure? _%thunk95171%_)
            (let ((_%thunk95176%_ _%thunk95171%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95176%_ _%rest95172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95171%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95109%_ . _%rest95110%_)
        (let* ((_%thunk95113%_ _%thunk95109%_)
               (_%rest9512195132%_ _%rest95110%_)
               (_%E9512495136%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9512195132%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9512695152%_
                 (lambda (_%rest95147%_ _%val95148%_ _%param95149%_)
                   (let ((__tmp95224
                          (if (null? _%rest95147%_)
                              _%thunk95113%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95113%_
                                       _%rest95147%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95149%_
                      _%val95148%_
                      __tmp95224))))
                (_%K9512595141%_
                 (lambda () (let () (declare (not safe)) (_%thunk95113%_)))))
            (let ((_%try-match9512395144%_
                   (lambda ()
                     (if (null? _%rest9512195132%_)
                         (let () (declare (not safe)) (_%thunk95113%_))
                         (_%E9512495136%_)))))
              (if (pair? _%rest9512195132%_)
                  (let ((_%tl9512895157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9512195132%_)))
                        (_%hd9512795155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9512195132%_))))
                    (if (pair? _%tl9512895157%_)
                        (let ((_%tl9513095164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9512895157%_)))
                              (_%hd9512995162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9512895157%_))))
                          (let ((_%param95160%_ _%hd9512795155%_)
                                (_%val95167%_ _%hd9512995162%_)
                                (_%rest95169%_ _%tl9513095164%_))
                            (_%K9512695152%_
                             _%rest95169%_
                             _%val95167%_
                             _%param95160%_)))
                        (_%E9512495136%_)))
                  (_%try-match9512395144%_)))))))
    (define with-unwind-protect
      (lambda (_%K95084%_ _%fini95085%_)
        (if (procedure? _%K95084%_)
            (let ((_%K95089%_ _%K95084%_))
              (if (procedure? _%fini95085%_)
                  (let ((_%fini95099%_ _%fini95085%_))
                    (__with-unwind-protect _%K95089%_ _%fini95099%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95085%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95084%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95058%_ _%fini95059%_)
        (let* ((_%K95062%_ _%K95058%_)
               (_%fini95071%_ _%fini95059%_)
               (_%once95080%_ '#f)
               (__tmp95225
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95080%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95080%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95225 _%K95062%_ _%fini95071%_))))
    (define keyword-dispatch
      (lambda (_%kwt94951%_ _%K94952%_ . _%all-args94953%_)
        (if _%kwt94951%_
            (if (vector? _%kwt94951%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94951%_))
            '#!void)
        (if (procedure? _%K94952%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94952%_))
        (let ((_%keys94955%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94957%_ ((_%rest94959%_ _%all-args94953%_)
                            (_%args94960%_ '#f)
                            (_%tail94961%_ '#f))
            (let* ((_%rest9496294970%_ _%rest94959%_)
                   (_%else9496494978%_
                    (lambda ()
                      (if _%args94960%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94961%_ '()))
                            (let ((__tmp95226
                                   (cons _%keys94955%_ _%args94960%_)))
                              (declare (not safe))
                              (##apply _%K94952%_ __tmp95226)))
                          (_%K94952%_ _%keys94955%_))))
                   (_%K9496695046%_
                    (lambda (_%hd-rest94981%_ _%hd94982%_)
                      (if (keyword? _%hd94982%_)
                          (let* ((_%hd-rest9498494991%_ _%hd-rest94981%_)
                                 (_%E9498694995%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9498494991%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9498795003%_
                                  (lambda (_%rest94998%_ _%val94999%_)
                                    (if _%kwt94951%_
                                        (let ((_%pos95001%_
                                               (let ((__tmp95228
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94982%_)))
                                                     (__tmp95227
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94951%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95228
                                                  __tmp95227))))
                                          (if (eq? _%hd94982%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94951%_
                                                      _%pos95001%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94952%_
                                                     _%hd94982%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94955%_
                                                _%hd94982%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94952%_
                                               _%hd94982%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94955%_
                                       _%hd94982%_
                                       _%val94999%_))
                                    (_%lp94957%_
                                     _%rest94998%_
                                     _%args94960%_
                                     _%tail94961%_))))
                            (if (pair? _%hd-rest9498494991%_)
                                (let ((_%hd9498895006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9498494991%_)))
                                      (_%tl9498995008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9498494991%_))))
                                  (let* ((_%val95011%_ _%hd9498895006%_)
                                         (_%rest95013%_ _%tl9498995008%_))
                                    (_%K9498795003%_
                                     _%rest95013%_
                                     _%val95011%_)))
                                (_%E9498694995%_)))
                          (if (eq? _%hd94982%_ '#!key)
                              (let* ((_%hd-rest9501595022%_ _%hd-rest94981%_)
                                     (_%E9501795026%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9501595022%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9501895032%_
                                      (lambda (_%rest95029%_ _%val95030%_)
                                        (if _%args94960%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94961%_
                                                 _%hd-rest94981%_))
                                              (_%lp94957%_
                                               _%rest95029%_
                                               _%args94960%_
                                               _%hd-rest94981%_))
                                            (_%lp94957%_
                                             _%rest95029%_
                                             _%hd-rest94981%_
                                             _%hd-rest94981%_)))))
                                (if (pair? _%hd-rest9501595022%_)
                                    (let ((_%hd9501995035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9501595022%_)))
                                          (_%tl9502095037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9501595022%_))))
                                      (let* ((_%val95040%_ _%hd9501995035%_)
                                             (_%rest95042%_ _%tl9502095037%_))
                                        (_%K9501895032%_
                                         _%rest95042%_
                                         _%val95040%_)))
                                    (_%E9501795026%_)))
                              (if (eq? _%hd94982%_ '#!rest)
                                  (if _%args94960%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94961%_
                                           _%hd-rest94981%_))
                                        (let ((__tmp95229
                                               (cons _%keys94955%_
                                                     _%args94960%_)))
                                          (declare (not safe))
                                          (##apply _%K94952%_ __tmp95229)))
                                      (let ((__tmp95230
                                             (cons _%keys94955%_
                                                   _%hd-rest94981%_)))
                                        (declare (not safe))
                                        (##apply _%K94952%_ __tmp95230)))
                                  (if _%args94960%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94961%_
                                           _%rest94959%_))
                                        (_%lp94957%_
                                         _%hd-rest94981%_
                                         _%args94960%_
                                         _%rest94959%_))
                                      (_%lp94957%_
                                       _%hd-rest94981%_
                                       _%rest94959%_
                                       _%rest94959%_))))))))
              (if (pair? _%rest9496294970%_)
                  (let ((_%hd9496795049%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9496294970%_)))
                        (_%tl9496895051%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9496294970%_))))
                    (let* ((_%hd95054%_ _%hd9496795049%_)
                           (_%hd-rest95056%_ _%tl9496895051%_))
                      (_%K9496695046%_ _%hd-rest95056%_ _%hd95054%_)))
                  (_%else9496494978%_)))))))
    (define keyword-rest
      (lambda (_%kwt94943%_ . _%drop94944%_)
        (let ((_%rest94946%_ '()))
          (let ((__tmp95231
                 (lambda (_%k94948%_ _%v94949%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94948%_ _%drop94944%_))
                       '#!void
                       (set! _%rest94946%_
                             (cons _%k94948%_
                                   (cons _%v94949%_ _%rest94946%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94943%_ __tmp95231))
          _%rest94946%_)))))
