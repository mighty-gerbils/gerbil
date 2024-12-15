(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1734278443)
  (begin
    (define make-promise
      (lambda (_%thunk95157%_)
        (if (procedure? _%thunk95157%_)
            (let ((_%thunk95161%_ _%thunk95157%_))
              (__make-promise _%thunk95161%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95157%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95145%_)
        (let ((_%thunk95148%_ _%thunk95145%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95148%_))))
    (define call-with-parameters
      (lambda (_%thunk95130%_ . _%rest95131%_)
        (if (procedure? _%thunk95130%_)
            (let ((_%thunk95135%_ _%thunk95130%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95135%_ _%rest95131%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95130%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95068%_ . _%rest95069%_)
        (let* ((_%thunk95072%_ _%thunk95068%_)
               (_%rest9508095091%_ _%rest95069%_)
               (_%E9508395095%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9508095091%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9508595111%_
                 (lambda (_%rest95106%_ _%val95107%_ _%param95108%_)
                   (let ((__tmp95183
                          (if (null? _%rest95106%_)
                              _%thunk95072%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95072%_
                                       _%rest95106%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95108%_
                      _%val95107%_
                      __tmp95183))))
                (_%K9508495100%_
                 (lambda () (let () (declare (not safe)) (_%thunk95072%_)))))
            (let ((_%try-match9508295103%_
                   (lambda ()
                     (if (null? _%rest9508095091%_)
                         (let () (declare (not safe)) (_%thunk95072%_))
                         (_%E9508395095%_)))))
              (if (pair? _%rest9508095091%_)
                  (let ((_%tl9508795116%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9508095091%_)))
                        (_%hd9508695114%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9508095091%_))))
                    (if (pair? _%tl9508795116%_)
                        (let ((_%tl9508995123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9508795116%_)))
                              (_%hd9508895121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9508795116%_))))
                          (let ((_%param95119%_ _%hd9508695114%_)
                                (_%val95126%_ _%hd9508895121%_)
                                (_%rest95128%_ _%tl9508995123%_))
                            (_%K9508595111%_
                             _%rest95128%_
                             _%val95126%_
                             _%param95119%_)))
                        (_%E9508395095%_)))
                  (_%try-match9508295103%_)))))))
    (define with-unwind-protect
      (lambda (_%K95043%_ _%fini95044%_)
        (if (procedure? _%K95043%_)
            (let ((_%K95048%_ _%K95043%_))
              (if (procedure? _%fini95044%_)
                  (let ((_%fini95058%_ _%fini95044%_))
                    (__with-unwind-protect _%K95048%_ _%fini95058%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95044%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95043%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95017%_ _%fini95018%_)
        (let* ((_%K95021%_ _%K95017%_)
               (_%fini95030%_ _%fini95018%_)
               (_%once95039%_ '#f)
               (__tmp95184
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95039%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95039%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95184 _%K95021%_ _%fini95030%_))))
    (define keyword-dispatch
      (lambda (_%kwt94910%_ _%K94911%_ . _%all-args94912%_)
        (if _%kwt94910%_
            (if (vector? _%kwt94910%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94910%_))
            '#!void)
        (if (procedure? _%K94911%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94911%_))
        (let ((_%keys94914%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94916%_ ((_%rest94918%_ _%all-args94912%_)
                            (_%args94919%_ '#f)
                            (_%tail94920%_ '#f))
            (let* ((_%rest9492194929%_ _%rest94918%_)
                   (_%else9492394937%_
                    (lambda ()
                      (if _%args94919%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94920%_ '()))
                            (let ((__tmp95185
                                   (cons _%keys94914%_ _%args94919%_)))
                              (declare (not safe))
                              (##apply _%K94911%_ __tmp95185)))
                          (_%K94911%_ _%keys94914%_))))
                   (_%K9492595005%_
                    (lambda (_%hd-rest94940%_ _%hd94941%_)
                      (if (keyword? _%hd94941%_)
                          (let* ((_%hd-rest9494394950%_ _%hd-rest94940%_)
                                 (_%E9494594954%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9494394950%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9494694962%_
                                  (lambda (_%rest94957%_ _%val94958%_)
                                    (if _%kwt94910%_
                                        (let ((_%pos94960%_
                                               (let ((__tmp95187
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94941%_)))
                                                     (__tmp95186
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94910%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95187
                                                  __tmp95186))))
                                          (if (eq? _%hd94941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94910%_
                                                      _%pos94960%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94911%_
                                                     _%hd94941%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94914%_
                                                _%hd94941%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94911%_
                                               _%hd94941%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94914%_
                                       _%hd94941%_
                                       _%val94958%_))
                                    (_%lp94916%_
                                     _%rest94957%_
                                     _%args94919%_
                                     _%tail94920%_))))
                            (if (pair? _%hd-rest9494394950%_)
                                (let ((_%hd9494794965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9494394950%_)))
                                      (_%tl9494894967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9494394950%_))))
                                  (let* ((_%val94970%_ _%hd9494794965%_)
                                         (_%rest94972%_ _%tl9494894967%_))
                                    (_%K9494694962%_
                                     _%rest94972%_
                                     _%val94970%_)))
                                (_%E9494594954%_)))
                          (if (eq? _%hd94941%_ '#!key)
                              (let* ((_%hd-rest9497494981%_ _%hd-rest94940%_)
                                     (_%E9497694985%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9497494981%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9497794991%_
                                      (lambda (_%rest94988%_ _%val94989%_)
                                        (if _%args94919%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94920%_
                                                 _%hd-rest94940%_))
                                              (_%lp94916%_
                                               _%rest94988%_
                                               _%args94919%_
                                               _%hd-rest94940%_))
                                            (_%lp94916%_
                                             _%rest94988%_
                                             _%hd-rest94940%_
                                             _%hd-rest94940%_)))))
                                (if (pair? _%hd-rest9497494981%_)
                                    (let ((_%hd9497894994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9497494981%_)))
                                          (_%tl9497994996%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9497494981%_))))
                                      (let* ((_%val94999%_ _%hd9497894994%_)
                                             (_%rest95001%_ _%tl9497994996%_))
                                        (_%K9497794991%_
                                         _%rest95001%_
                                         _%val94999%_)))
                                    (_%E9497694985%_)))
                              (if (eq? _%hd94941%_ '#!rest)
                                  (if _%args94919%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94920%_
                                           _%hd-rest94940%_))
                                        (let ((__tmp95188
                                               (cons _%keys94914%_
                                                     _%args94919%_)))
                                          (declare (not safe))
                                          (##apply _%K94911%_ __tmp95188)))
                                      (let ((__tmp95189
                                             (cons _%keys94914%_
                                                   _%hd-rest94940%_)))
                                        (declare (not safe))
                                        (##apply _%K94911%_ __tmp95189)))
                                  (if _%args94919%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94920%_
                                           _%rest94918%_))
                                        (_%lp94916%_
                                         _%hd-rest94940%_
                                         _%args94919%_
                                         _%rest94918%_))
                                      (_%lp94916%_
                                       _%hd-rest94940%_
                                       _%rest94918%_
                                       _%rest94918%_))))))))
              (if (pair? _%rest9492194929%_)
                  (let ((_%hd9492695008%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9492194929%_)))
                        (_%tl9492795010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9492194929%_))))
                    (let* ((_%hd95013%_ _%hd9492695008%_)
                           (_%hd-rest95015%_ _%tl9492795010%_))
                      (_%K9492595005%_ _%hd-rest95015%_ _%hd95013%_)))
                  (_%else9492394937%_)))))))
    (define keyword-rest
      (lambda (_%kwt94902%_ . _%drop94903%_)
        (let ((_%rest94905%_ '()))
          (let ((__tmp95190
                 (lambda (_%k94907%_ _%v94908%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94907%_ _%drop94903%_))
                       '#!void
                       (set! _%rest94905%_
                             (cons _%k94907%_
                                   (cons _%v94908%_ _%rest94905%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94902%_ __tmp95190))
          _%rest94905%_)))))
