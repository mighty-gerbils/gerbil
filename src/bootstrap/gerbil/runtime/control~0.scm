(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1734225192)
  (begin
    (define make-promise
      (lambda (_%thunk95161%_)
        (if (procedure? _%thunk95161%_)
            (let ((_%thunk95165%_ _%thunk95161%_))
              (__make-promise _%thunk95165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95161%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95149%_)
        (let ((_%thunk95152%_ _%thunk95149%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95152%_))))
    (define call-with-parameters
      (lambda (_%thunk95134%_ . _%rest95135%_)
        (if (procedure? _%thunk95134%_)
            (let ((_%thunk95139%_ _%thunk95134%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95139%_ _%rest95135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95134%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95072%_ . _%rest95073%_)
        (let* ((_%thunk95076%_ _%thunk95072%_)
               (_%rest9508495095%_ _%rest95073%_)
               (_%E9508795099%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9508495095%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9508995115%_
                 (lambda (_%rest95110%_ _%val95111%_ _%param95112%_)
                   (let ((__tmp95187
                          (if (null? _%rest95110%_)
                              _%thunk95076%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95076%_
                                       _%rest95110%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95112%_
                      _%val95111%_
                      __tmp95187))))
                (_%K9508895104%_
                 (lambda () (let () (declare (not safe)) (_%thunk95076%_)))))
            (let ((_%try-match9508695107%_
                   (lambda ()
                     (if (null? _%rest9508495095%_)
                         (let () (declare (not safe)) (_%thunk95076%_))
                         (_%E9508795099%_)))))
              (if (pair? _%rest9508495095%_)
                  (let ((_%tl9509195120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9508495095%_)))
                        (_%hd9509095118%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9508495095%_))))
                    (if (pair? _%tl9509195120%_)
                        (let ((_%tl9509395127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9509195120%_)))
                              (_%hd9509295125%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9509195120%_))))
                          (let ((_%param95123%_ _%hd9509095118%_)
                                (_%val95130%_ _%hd9509295125%_)
                                (_%rest95132%_ _%tl9509395127%_))
                            (_%K9508995115%_
                             _%rest95132%_
                             _%val95130%_
                             _%param95123%_)))
                        (_%E9508795099%_)))
                  (_%try-match9508695107%_)))))))
    (define with-unwind-protect
      (lambda (_%K95047%_ _%fini95048%_)
        (if (procedure? _%K95047%_)
            (let ((_%K95052%_ _%K95047%_))
              (if (procedure? _%fini95048%_)
                  (let ((_%fini95062%_ _%fini95048%_))
                    (__with-unwind-protect _%K95052%_ _%fini95062%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95047%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95021%_ _%fini95022%_)
        (let* ((_%K95025%_ _%K95021%_)
               (_%fini95034%_ _%fini95022%_)
               (_%once95043%_ '#f)
               (__tmp95188
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95043%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95043%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95188 _%K95025%_ _%fini95034%_))))
    (define keyword-dispatch
      (lambda (_%kwt94914%_ _%K94915%_ . _%all-args94916%_)
        (if _%kwt94914%_
            (if (vector? _%kwt94914%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94914%_))
            '#!void)
        (if (procedure? _%K94915%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94915%_))
        (let ((_%keys94918%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94920%_ ((_%rest94922%_ _%all-args94916%_)
                            (_%args94923%_ '#f)
                            (_%tail94924%_ '#f))
            (let* ((_%rest9492594933%_ _%rest94922%_)
                   (_%else9492794941%_
                    (lambda ()
                      (if _%args94923%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94924%_ '()))
                            (let ((__tmp95189
                                   (cons _%keys94918%_ _%args94923%_)))
                              (declare (not safe))
                              (##apply _%K94915%_ __tmp95189)))
                          (_%K94915%_ _%keys94918%_))))
                   (_%K9492995009%_
                    (lambda (_%hd-rest94944%_ _%hd94945%_)
                      (if (keyword? _%hd94945%_)
                          (let* ((_%hd-rest9494794954%_ _%hd-rest94944%_)
                                 (_%E9494994958%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9494794954%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9495094966%_
                                  (lambda (_%rest94961%_ _%val94962%_)
                                    (if _%kwt94914%_
                                        (let ((_%pos94964%_
                                               (let ((__tmp95191
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94945%_)))
                                                     (__tmp95190
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94914%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95191
                                                  __tmp95190))))
                                          (if (eq? _%hd94945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94914%_
                                                      _%pos94964%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94915%_
                                                     _%hd94945%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94918%_
                                                _%hd94945%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94915%_
                                               _%hd94945%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94918%_
                                       _%hd94945%_
                                       _%val94962%_))
                                    (_%lp94920%_
                                     _%rest94961%_
                                     _%args94923%_
                                     _%tail94924%_))))
                            (if (pair? _%hd-rest9494794954%_)
                                (let ((_%hd9495194969%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9494794954%_)))
                                      (_%tl9495294971%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9494794954%_))))
                                  (let* ((_%val94974%_ _%hd9495194969%_)
                                         (_%rest94976%_ _%tl9495294971%_))
                                    (_%K9495094966%_
                                     _%rest94976%_
                                     _%val94974%_)))
                                (_%E9494994958%_)))
                          (if (eq? _%hd94945%_ '#!key)
                              (let* ((_%hd-rest9497894985%_ _%hd-rest94944%_)
                                     (_%E9498094989%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9497894985%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9498194995%_
                                      (lambda (_%rest94992%_ _%val94993%_)
                                        (if _%args94923%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94924%_
                                                 _%hd-rest94944%_))
                                              (_%lp94920%_
                                               _%rest94992%_
                                               _%args94923%_
                                               _%hd-rest94944%_))
                                            (_%lp94920%_
                                             _%rest94992%_
                                             _%hd-rest94944%_
                                             _%hd-rest94944%_)))))
                                (if (pair? _%hd-rest9497894985%_)
                                    (let ((_%hd9498294998%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9497894985%_)))
                                          (_%tl9498395000%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9497894985%_))))
                                      (let* ((_%val95003%_ _%hd9498294998%_)
                                             (_%rest95005%_ _%tl9498395000%_))
                                        (_%K9498194995%_
                                         _%rest95005%_
                                         _%val95003%_)))
                                    (_%E9498094989%_)))
                              (if (eq? _%hd94945%_ '#!rest)
                                  (if _%args94923%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94924%_
                                           _%hd-rest94944%_))
                                        (let ((__tmp95192
                                               (cons _%keys94918%_
                                                     _%args94923%_)))
                                          (declare (not safe))
                                          (##apply _%K94915%_ __tmp95192)))
                                      (let ((__tmp95193
                                             (cons _%keys94918%_
                                                   _%hd-rest94944%_)))
                                        (declare (not safe))
                                        (##apply _%K94915%_ __tmp95193)))
                                  (if _%args94923%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94924%_
                                           _%rest94922%_))
                                        (_%lp94920%_
                                         _%hd-rest94944%_
                                         _%args94923%_
                                         _%rest94922%_))
                                      (_%lp94920%_
                                       _%hd-rest94944%_
                                       _%rest94922%_
                                       _%rest94922%_))))))))
              (if (pair? _%rest9492594933%_)
                  (let ((_%hd9493095012%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9492594933%_)))
                        (_%tl9493195014%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9492594933%_))))
                    (let* ((_%hd95017%_ _%hd9493095012%_)
                           (_%hd-rest95019%_ _%tl9493195014%_))
                      (_%K9492995009%_ _%hd-rest95019%_ _%hd95017%_)))
                  (_%else9492794941%_)))))))
    (define keyword-rest
      (lambda (_%kwt94906%_ . _%drop94907%_)
        (let ((_%rest94909%_ '()))
          (let ((__tmp95194
                 (lambda (_%k94911%_ _%v94912%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94911%_ _%drop94907%_))
                       '#!void
                       (set! _%rest94909%_
                             (cons _%k94911%_
                                   (cons _%v94912%_ _%rest94909%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94906%_ __tmp95194))
          _%rest94909%_)))))
