(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1756224514)
  (begin
    (define make-promise
      (lambda (_%thunk101642%_)
        (if (procedure? _%thunk101642%_)
            (let ((_%thunk101646%_ _%thunk101642%_))
              (__make-promise _%thunk101646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk101642%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk101630%_)
        (let ((_%thunk101633%_ _%thunk101630%_))
          (declare (not safe))
          (##make-delay-promise _%thunk101633%_))))
    (define call-with-parameters__0
      (lambda (_%thunk101582%_)
        (if (procedure? _%thunk101582%_)
            (let ((_%thunk101586%_ _%thunk101582%_))
              (declare (not safe))
              (_%thunk101586%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@16.6-16.11"
               'contract:
               'procedure?
               'value:
               _%thunk101582%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk101596%_ _%param101597%_ _%val101598%_)
        (if (procedure? _%thunk101596%_)
            (let ((_%thunk101602%_ _%thunk101596%_))
              (declare (not safe))
              (##parameterize1 _%param101597%_ _%val101598%_ _%thunk101602%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@17.6-17.11"
               'contract:
               'procedure?
               'value:
               _%thunk101596%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk101612%_ _%param101613%_ _%val101614%_ . _%rest101615%_)
        (if (procedure? _%thunk101612%_)
            (let ((_%thunk101619%_ _%thunk101612%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk101619%_ _%rest101615%_))
               _%param101613%_
               _%val101614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@19.6-19.11"
               'contract:
               'procedure?
               'value:
               _%thunk101612%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g101655_
        (let ((_g101656_ (let () (declare (not safe)) (##length _g101655_))))
          (cond ((let () (declare (not safe)) (##fx= _g101656_ 1))
                 (apply call-with-parameters__0 _g101655_))
                ((let () (declare (not safe)) (##fx= _g101656_ 3))
                 (apply call-with-parameters__1 _g101655_))
                ((let () (declare (not safe)) (##fx>= _g101656_ 3))
                 (apply call-with-parameters__2 _g101655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g101655_))))))
    (define with-unwind-protect
      (lambda (_%K101557%_ _%fini101558%_)
        (if (procedure? _%K101557%_)
            (let ((_%K101562%_ _%K101557%_))
              (if (procedure? _%fini101558%_)
                  (let ((_%fini101572%_ _%fini101558%_))
                    (__with-unwind-protect _%K101562%_ _%fini101572%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@24.45-24.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini101558%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@24.28-24.29"
               'contract:
               'procedure?
               'value:
               _%K101557%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K101531%_ _%fini101532%_)
        (let* ((_%K101535%_ _%K101531%_)
               (_%fini101544%_ _%fini101532%_)
               (_%once101553%_ (vector '0))
               (__tmp101657
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp101658
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once101553%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp101658 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp101657 _%K101535%_ _%fini101544%_))))
    (define keyword-dispatch
      (lambda (_%kwt101424%_ _%K101425%_ . _%all-args101426%_)
        (if _%kwt101424%_
            (if (vector? _%kwt101424%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt101424%_))
            '#!void)
        (if (procedure? _%K101425%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K101425%_))
        (let ((_%keys101428%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp101430%_ ((_%rest101432%_ _%all-args101426%_)
                             (_%args101433%_ '#f)
                             (_%tail101434%_ '#f))
            (let* ((_%rest101435101443%_ _%rest101432%_)
                   (_%else101437101451%_
                    (lambda ()
                      (if _%args101433%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail101434%_ '()))
                            (let ((__tmp101659
                                   (cons _%keys101428%_ _%args101433%_)))
                              (declare (not safe))
                              (##apply _%K101425%_ __tmp101659)))
                          (_%K101425%_ _%keys101428%_))))
                   (_%K101439101519%_
                    (lambda (_%hd-rest101454%_ _%hd101455%_)
                      (if (keyword? _%hd101455%_)
                          (let* ((_%hd-rest101457101464%_ _%hd-rest101454%_)
                                 (_%E101459101468%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest101457101464%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K101460101476%_
                                  (lambda (_%rest101471%_ _%val101472%_)
                                    (if _%kwt101424%_
                                        (let ((_%pos101474%_
                                               (let ((__tmp101661
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd101455%_)))
                                                     (__tmp101660
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt101424%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp101661
                                                  __tmp101660))))
                                          (if (eq? _%hd101455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt101424%_
                                                      _%pos101474%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K101425%_
                                                     _%hd101455%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys101428%_
                                                _%hd101455%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K101425%_
                                               _%hd101455%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys101428%_
                                       _%hd101455%_
                                       _%val101472%_))
                                    (_%lp101430%_
                                     _%rest101471%_
                                     _%args101433%_
                                     _%tail101434%_))))
                            (if (pair? _%hd-rest101457101464%_)
                                (let ((_%hd101461101479%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest101457101464%_)))
                                      (_%tl101462101481%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest101457101464%_))))
                                  (let* ((_%val101484%_ _%hd101461101479%_)
                                         (_%rest101486%_ _%tl101462101481%_))
                                    (_%K101460101476%_
                                     _%rest101486%_
                                     _%val101484%_)))
                                (_%E101459101468%_)))
                          (if (eq? _%hd101455%_ '#!key)
                              (let* ((_%hd-rest101488101495%_
                                      _%hd-rest101454%_)
                                     (_%E101490101499%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest101488101495%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K101491101505%_
                                      (lambda (_%rest101502%_ _%val101503%_)
                                        (if _%args101433%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail101434%_
                                                 _%hd-rest101454%_))
                                              (_%lp101430%_
                                               _%rest101502%_
                                               _%args101433%_
                                               _%hd-rest101454%_))
                                            (_%lp101430%_
                                             _%rest101502%_
                                             _%hd-rest101454%_
                                             _%hd-rest101454%_)))))
                                (if (pair? _%hd-rest101488101495%_)
                                    (let ((_%hd101492101508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest101488101495%_)))
                                          (_%tl101493101510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest101488101495%_))))
                                      (let* ((_%val101513%_ _%hd101492101508%_)
                                             (_%rest101515%_
                                              _%tl101493101510%_))
                                        (_%K101491101505%_
                                         _%rest101515%_
                                         _%val101513%_)))
                                    (_%E101490101499%_)))
                              (if (eq? _%hd101455%_ '#!rest)
                                  (if _%args101433%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail101434%_
                                           _%hd-rest101454%_))
                                        (let ((__tmp101662
                                               (cons _%keys101428%_
                                                     _%args101433%_)))
                                          (declare (not safe))
                                          (##apply _%K101425%_ __tmp101662)))
                                      (let ((__tmp101663
                                             (cons _%keys101428%_
                                                   _%hd-rest101454%_)))
                                        (declare (not safe))
                                        (##apply _%K101425%_ __tmp101663)))
                                  (if _%args101433%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail101434%_
                                           _%rest101432%_))
                                        (_%lp101430%_
                                         _%hd-rest101454%_
                                         _%args101433%_
                                         _%rest101432%_))
                                      (_%lp101430%_
                                       _%hd-rest101454%_
                                       _%rest101432%_
                                       _%rest101432%_))))))))
              (if (pair? _%rest101435101443%_)
                  (let ((_%hd101440101522%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101435101443%_)))
                        (_%tl101441101524%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101435101443%_))))
                    (let* ((_%hd101527%_ _%hd101440101522%_)
                           (_%hd-rest101529%_ _%tl101441101524%_))
                      (_%K101439101519%_ _%hd-rest101529%_ _%hd101527%_)))
                  (_%else101437101451%_)))))))
    (define keyword-rest
      (lambda (_%kwt101416%_ . _%drop101417%_)
        (let ((_%rest101419%_ '()))
          (let ((__tmp101664
                 (lambda (_%k101421%_ _%v101422%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k101421%_ _%drop101417%_))
                       '#!void
                       (set! _%rest101419%_
                             (cons _%k101421%_
                                   (cons _%v101422%_ _%rest101419%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt101416%_ __tmp101664))
          _%rest101419%_)))))
