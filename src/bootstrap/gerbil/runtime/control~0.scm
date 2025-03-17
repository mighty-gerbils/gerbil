(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1742222162)
  (begin
    (define make-promise
      (lambda (_%thunk95179%_)
        (if (procedure? _%thunk95179%_)
            (let ((_%thunk95183%_ _%thunk95179%_))
              (__make-promise _%thunk95183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk95179%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk95167%_)
        (let ((_%thunk95170%_ _%thunk95167%_))
          (declare (not safe))
          (##make-delay-promise _%thunk95170%_))))
    (define call-with-parameters
      (lambda (_%thunk95152%_ . _%rest95153%_)
        (if (procedure? _%thunk95152%_)
            (let ((_%thunk95157%_ _%thunk95152%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk95157%_ _%rest95153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk95152%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk95090%_ . _%rest95091%_)
        (let* ((_%thunk95094%_ _%thunk95090%_)
               (_%rest9510295113%_ _%rest95091%_)
               (_%E9510595117%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9510295113%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9510795133%_
                 (lambda (_%rest95128%_ _%val95129%_ _%param95130%_)
                   (let ((__tmp95205
                          (if (null? _%rest95128%_)
                              _%thunk95094%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk95094%_
                                       _%rest95128%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param95130%_
                      _%val95129%_
                      __tmp95205))))
                (_%K9510695122%_
                 (lambda () (let () (declare (not safe)) (_%thunk95094%_)))))
            (let ((_%try-match9510495125%_
                   (lambda ()
                     (if (null? _%rest9510295113%_)
                         (let () (declare (not safe)) (_%thunk95094%_))
                         (_%E9510595117%_)))))
              (if (pair? _%rest9510295113%_)
                  (let ((_%tl9510995138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9510295113%_)))
                        (_%hd9510895136%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9510295113%_))))
                    (if (pair? _%tl9510995138%_)
                        (let ((_%tl9511195145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9510995138%_)))
                              (_%hd9511095143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9510995138%_))))
                          (let ((_%param95141%_ _%hd9510895136%_)
                                (_%val95148%_ _%hd9511095143%_)
                                (_%rest95150%_ _%tl9511195145%_))
                            (_%K9510795133%_
                             _%rest95150%_
                             _%val95148%_
                             _%param95141%_)))
                        (_%E9510595117%_)))
                  (_%try-match9510495125%_)))))))
    (define with-unwind-protect
      (lambda (_%K95065%_ _%fini95066%_)
        (if (procedure? _%K95065%_)
            (let ((_%K95070%_ _%K95065%_))
              (if (procedure? _%fini95066%_)
                  (let ((_%fini95080%_ _%fini95066%_))
                    (__with-unwind-protect _%K95070%_ _%fini95080%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini95066%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K95065%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K95039%_ _%fini95040%_)
        (let* ((_%K95043%_ _%K95039%_)
               (_%fini95052%_ _%fini95040%_)
               (_%once95061%_ '#f)
               (__tmp95206
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once95061%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once95061%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp95206 _%K95043%_ _%fini95052%_))))
    (define keyword-dispatch
      (lambda (_%kwt94932%_ _%K94933%_ . _%all-args94934%_)
        (if _%kwt94932%_
            (if (vector? _%kwt94932%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94932%_))
            '#!void)
        (if (procedure? _%K94933%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94933%_))
        (let ((_%keys94936%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94938%_ ((_%rest94940%_ _%all-args94934%_)
                            (_%args94941%_ '#f)
                            (_%tail94942%_ '#f))
            (let* ((_%rest9494394951%_ _%rest94940%_)
                   (_%else9494594959%_
                    (lambda ()
                      (if _%args94941%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94942%_ '()))
                            (let ((__tmp95207
                                   (cons _%keys94936%_ _%args94941%_)))
                              (declare (not safe))
                              (##apply _%K94933%_ __tmp95207)))
                          (_%K94933%_ _%keys94936%_))))
                   (_%K9494795027%_
                    (lambda (_%hd-rest94962%_ _%hd94963%_)
                      (if (keyword? _%hd94963%_)
                          (let* ((_%hd-rest9496594972%_ _%hd-rest94962%_)
                                 (_%E9496794976%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9496594972%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9496894984%_
                                  (lambda (_%rest94979%_ _%val94980%_)
                                    (if _%kwt94932%_
                                        (let ((_%pos94982%_
                                               (let ((__tmp95209
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94963%_)))
                                                     (__tmp95208
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94932%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp95209
                                                  __tmp95208))))
                                          (if (eq? _%hd94963%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94932%_
                                                      _%pos94982%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94933%_
                                                     _%hd94963%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94936%_
                                                _%hd94963%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94933%_
                                               _%hd94963%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94936%_
                                       _%hd94963%_
                                       _%val94980%_))
                                    (_%lp94938%_
                                     _%rest94979%_
                                     _%args94941%_
                                     _%tail94942%_))))
                            (if (pair? _%hd-rest9496594972%_)
                                (let ((_%hd9496994987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9496594972%_)))
                                      (_%tl9497094989%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9496594972%_))))
                                  (let* ((_%val94992%_ _%hd9496994987%_)
                                         (_%rest94994%_ _%tl9497094989%_))
                                    (_%K9496894984%_
                                     _%rest94994%_
                                     _%val94992%_)))
                                (_%E9496794976%_)))
                          (if (eq? _%hd94963%_ '#!key)
                              (let* ((_%hd-rest9499695003%_ _%hd-rest94962%_)
                                     (_%E9499895007%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9499695003%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9499995013%_
                                      (lambda (_%rest95010%_ _%val95011%_)
                                        (if _%args94941%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94942%_
                                                 _%hd-rest94962%_))
                                              (_%lp94938%_
                                               _%rest95010%_
                                               _%args94941%_
                                               _%hd-rest94962%_))
                                            (_%lp94938%_
                                             _%rest95010%_
                                             _%hd-rest94962%_
                                             _%hd-rest94962%_)))))
                                (if (pair? _%hd-rest9499695003%_)
                                    (let ((_%hd9500095016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9499695003%_)))
                                          (_%tl9500195018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9499695003%_))))
                                      (let* ((_%val95021%_ _%hd9500095016%_)
                                             (_%rest95023%_ _%tl9500195018%_))
                                        (_%K9499995013%_
                                         _%rest95023%_
                                         _%val95021%_)))
                                    (_%E9499895007%_)))
                              (if (eq? _%hd94963%_ '#!rest)
                                  (if _%args94941%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94942%_
                                           _%hd-rest94962%_))
                                        (let ((__tmp95210
                                               (cons _%keys94936%_
                                                     _%args94941%_)))
                                          (declare (not safe))
                                          (##apply _%K94933%_ __tmp95210)))
                                      (let ((__tmp95211
                                             (cons _%keys94936%_
                                                   _%hd-rest94962%_)))
                                        (declare (not safe))
                                        (##apply _%K94933%_ __tmp95211)))
                                  (if _%args94941%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94942%_
                                           _%rest94940%_))
                                        (_%lp94938%_
                                         _%hd-rest94962%_
                                         _%args94941%_
                                         _%rest94940%_))
                                      (_%lp94938%_
                                       _%hd-rest94962%_
                                       _%rest94940%_
                                       _%rest94940%_))))))))
              (if (pair? _%rest9494394951%_)
                  (let ((_%hd9494895030%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9494394951%_)))
                        (_%tl9494995032%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9494394951%_))))
                    (let* ((_%hd95035%_ _%hd9494895030%_)
                           (_%hd-rest95037%_ _%tl9494995032%_))
                      (_%K9494795027%_ _%hd-rest95037%_ _%hd95035%_)))
                  (_%else9494594959%_)))))))
    (define keyword-rest
      (lambda (_%kwt94924%_ . _%drop94925%_)
        (let ((_%rest94927%_ '()))
          (let ((__tmp95212
                 (lambda (_%k94929%_ _%v94930%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94929%_ _%drop94925%_))
                       '#!void
                       (set! _%rest94927%_
                             (cons _%k94929%_
                                   (cons _%v94930%_ _%rest94927%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94924%_ __tmp95212))
          _%rest94927%_)))))
