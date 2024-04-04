(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712269044)
  (begin
    (define make-promise
      (lambda (_%thunk90950%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90950%_))
              (let ((_%thunk90954%_ _%thunk90950%_))
                (declare (not safe))
                (__make-promise _%thunk90954%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@11.21-11.26"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90950%_)
                '#!void)))))
    (define __make-promise
      (lambda (_%thunk90938%_)
        (let ((_%thunk90941%_ _%thunk90938%_))
          (declare (not safe))
          (##make-delay-promise _%thunk90941%_))))
    (define call-with-parameters
      (lambda (_%thunk90923%_ . _%rest90924%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90923%_))
              (let ((_%thunk90928%_ _%thunk90923%_))
                (declare (not safe))
                (##apply __call-with-parameters _%thunk90928%_ _%rest90924%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@15.29-15.34"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90923%_)
                '#!void)))))
    (define __call-with-parameters
      (lambda (_%thunk90861%_ . _%rest90862%_)
        (let ((_%thunk90865%_ _%thunk90861%_))
          (let* ((_%rest9087390884%_ _%rest90862%_)
                 (_%E9087690888%_
                  (lambda ()
                    (error '"No clause matching"
                           _%rest9087390884%_
                           '([param val . rest])
                           '([]))
                    '#!void)))
            (let ((_%K9087890904%_
                   (lambda (_%rest90899%_ _%val90900%_ _%param90901%_)
                     (let ((__tmp90976
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest90899%_))
                                _%thunk90865%_
                                (lambda ()
                                  (apply call-with-parameters
                                         _%thunk90865%_
                                         _%rest90899%_)))))
                       (declare (not safe))
                       (##parameterize1
                        _%param90901%_
                        _%val90900%_
                        __tmp90976))))
                  (_%K9087790893%_
                   (lambda () (let () (declare (not safe)) (_%thunk90865%_)))))
              (let ((_%try-match9087590896%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest9087390884%_))
                           (let () (declare (not safe)) (_%thunk90865%_))
                           (let () (declare (not safe)) (_%E9087690888%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest9087390884%_))
                    (let ((_%tl9088090909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9087390884%_)))
                          (_%hd9087990907%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9087390884%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl9088090909%_))
                          (let ((_%tl9088290916%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl9088090909%_)))
                                (_%hd9088190914%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl9088090909%_))))
                            (let ((_%param90912%_ _%hd9087990907%_)
                                  (_%val90919%_ _%hd9088190914%_)
                                  (_%rest90921%_ _%tl9088290916%_))
                              (let ()
                                (declare (not safe))
                                (_%K9087890904%_
                                 _%rest90921%_
                                 _%val90919%_
                                 _%param90912%_))))
                          (let () (declare (not safe)) (_%E9087690888%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match9087590896%_)))))))))
    (define with-unwind-protect
      (lambda (_%K90836%_ _%fini90837%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90836%_))
              (let ((_%K90841%_ _%K90836%_))
                (if (let () (declare (not safe)) (procedure? _%fini90837%_))
                    (let ((_%fini90851%_ _%fini90837%_))
                      (declare (not safe))
                      (__with-unwind-protect _%K90841%_ _%fini90851%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90837%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@23.28-23.29"
                 'contract:
                 'procedure?
                 'value:
                 _%K90836%_)
                '#!void)))))
    (define __with-unwind-protect
      (lambda (_%K90810%_ _%fini90811%_)
        (let ()
          (let* ((_%K90814%_ _%K90810%_) (_%fini90823%_ _%fini90811%_))
            (let* ((_%once90832%_ '#f)
                   (__tmp90977
                    (lambda ()
                      (declare (not interrupts-enabled))
                      (if _%once90832%_
                          (error '"Cannot re-enter unwind protected block")
                          (set! _%once90832%_ '#t)))))
              (declare (not safe))
              (##dynamic-wind __tmp90977 _%K90814%_ _%fini90823%_))))))
    (define keyword-dispatch
      (lambda (_%kwt90703%_ _%K90704%_ . _%all-args90705%_)
        (if _%kwt90703%_
            (if (let () (declare (not safe)) (vector? _%kwt90703%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90703%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90704%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90704%_))
        (let ((_%keys90707%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90709%_ ((_%rest90711%_ _%all-args90705%_)
                            (_%args90712%_ '#f)
                            (_%tail90713%_ '#f))
            (let* ((_%rest9071490722%_ _%rest90711%_)
                   (_%else9071690730%_
                    (lambda ()
                      (if _%args90712%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90713%_ '()))
                            (let ((__tmp90978
                                   (cons _%keys90707%_ _%args90712%_)))
                              (declare (not safe))
                              (##apply _%K90704%_ __tmp90978)))
                          (_%K90704%_ _%keys90707%_))))
                   (_%K9071890798%_
                    (lambda (_%hd-rest90733%_ _%hd90734%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90734%_))
                          (let ()
                            (let* ((_%hd-rest9073690743%_ _%hd-rest90733%_)
                                   (_%E9073890747%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9073690743%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9073990755%_
                                    (lambda (_%rest90750%_ _%val90751%_)
                                      (if _%kwt90703%_
                                          (let ((_%pos90753%_
                                                 (let ((__tmp90980
                                                        (keyword-hash
                                                         _%hd90734%_))
                                                       (__tmp90979
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90703%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90980
                                                    __tmp90979))))
                                            (if (eq? _%hd90734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90703%_
                                                        _%pos90753%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90704%_
                                                       _%hd90734%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90707%_
                                                  _%hd90734%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90704%_
                                                 _%hd90734%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90707%_
                                         _%hd90734%_
                                         _%val90751%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90709%_
                                         _%rest90750%_
                                         _%args90712%_
                                         _%tail90713%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9073690743%_))
                                  (let ((_%hd9074090758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9073690743%_)))
                                        (_%tl9074190760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9073690743%_))))
                                    (let* ((_%val90763%_ _%hd9074090758%_)
                                           (_%rest90765%_ _%tl9074190760%_))
                                      (declare (not safe))
                                      (_%K9073990755%_
                                       _%rest90765%_
                                       _%val90763%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9073890747%_)))))
                          (if (eq? _%hd90734%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9076790774%_ _%hd-rest90733%_)
                                       (_%E9076990778%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9076790774%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9077090784%_
                                        (lambda (_%rest90781%_ _%val90782%_)
                                          (if _%args90712%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90713%_
                                                   _%hd-rest90733%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90709%_
                                                   _%rest90781%_
                                                   _%args90712%_
                                                   _%hd-rest90733%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90709%_
                                                 _%rest90781%_
                                                 _%hd-rest90733%_
                                                 _%hd-rest90733%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9076790774%_))
                                      (let ((_%hd9077190787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9076790774%_)))
                                            (_%tl9077290789%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9076790774%_))))
                                        (let* ((_%val90792%_ _%hd9077190787%_)
                                               (_%rest90794%_
                                                _%tl9077290789%_))
                                          (declare (not safe))
                                          (_%K9077090784%_
                                           _%rest90794%_
                                           _%val90792%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9076990778%_)))))
                              (if (eq? _%hd90734%_ '#!rest)
                                  (let ()
                                    (if _%args90712%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90713%_
                                             _%hd-rest90733%_))
                                          (let ((__tmp90981
                                                 (cons _%keys90707%_
                                                       _%args90712%_)))
                                            (declare (not safe))
                                            (##apply _%K90704%_ __tmp90981)))
                                        (let ((__tmp90982
                                               (cons _%keys90707%_
                                                     _%hd-rest90733%_)))
                                          (declare (not safe))
                                          (##apply _%K90704%_ __tmp90982))))
                                  (let ()
                                    (if _%args90712%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90713%_
                                             _%rest90711%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90709%_
                                             _%hd-rest90733%_
                                             _%args90712%_
                                             _%rest90711%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90709%_
                                           _%hd-rest90733%_
                                           _%rest90711%_
                                           _%rest90711%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9071490722%_))
                  (let ((_%hd9071990801%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9071490722%_)))
                        (_%tl9072090803%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9071490722%_))))
                    (let* ((_%hd90806%_ _%hd9071990801%_)
                           (_%hd-rest90808%_ _%tl9072090803%_))
                      (declare (not safe))
                      (_%K9071890798%_ _%hd-rest90808%_ _%hd90806%_)))
                  (let () (declare (not safe)) (_%else9071690730%_))))))))
    (define keyword-rest
      (lambda (_%kwt90695%_ . _%drop90696%_)
        (let ((_%rest90698%_ '()))
          (let ((__tmp90983
                 (lambda (_%k90700%_ _%v90701%_)
                   (if (memq _%k90700%_ _%drop90696%_)
                       '#!void
                       (set! _%rest90698%_
                             (let ((__tmp90984
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90701%_ _%rest90698%_))))
                               (declare (not safe))
                               (cons _%k90700%_ __tmp90984)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90695%_ __tmp90983))
          _%rest90698%_)))))
