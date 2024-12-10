(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1733868034)
  (begin
    (define make-promise
      (lambda (_%thunk94304%_)
        (if (procedure? _%thunk94304%_)
            (let ((_%thunk94308%_ _%thunk94304%_))
              (__make-promise _%thunk94308%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk94304%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk94292%_)
        (let ((_%thunk94295%_ _%thunk94292%_))
          (declare (not safe))
          (##make-delay-promise _%thunk94295%_))))
    (define call-with-parameters
      (lambda (_%thunk94277%_ . _%rest94278%_)
        (if (procedure? _%thunk94277%_)
            (let ((_%thunk94282%_ _%thunk94277%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk94282%_ _%rest94278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk94277%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk94215%_ . _%rest94216%_)
        (let* ((_%thunk94219%_ _%thunk94215%_)
               (_%rest9422794238%_ _%rest94216%_)
               (_%E9423094242%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9422794238%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9423294258%_
                 (lambda (_%rest94253%_ _%val94254%_ _%param94255%_)
                   (let ((__tmp94330
                          (if (null? _%rest94253%_)
                              _%thunk94219%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk94219%_
                                       _%rest94253%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param94255%_
                      _%val94254%_
                      __tmp94330))))
                (_%K9423194247%_
                 (lambda () (let () (declare (not safe)) (_%thunk94219%_)))))
            (let ((_%try-match9422994250%_
                   (lambda ()
                     (if (null? _%rest9422794238%_)
                         (let () (declare (not safe)) (_%thunk94219%_))
                         (_%E9423094242%_)))))
              (if (pair? _%rest9422794238%_)
                  (let ((_%tl9423494263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9422794238%_)))
                        (_%hd9423394261%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9422794238%_))))
                    (if (pair? _%tl9423494263%_)
                        (let ((_%tl9423694270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9423494263%_)))
                              (_%hd9423594268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9423494263%_))))
                          (let ((_%param94266%_ _%hd9423394261%_)
                                (_%val94273%_ _%hd9423594268%_)
                                (_%rest94275%_ _%tl9423694270%_))
                            (_%K9423294258%_
                             _%rest94275%_
                             _%val94273%_
                             _%param94266%_)))
                        (_%E9423094242%_)))
                  (_%try-match9422994250%_)))))))
    (define with-unwind-protect
      (lambda (_%K94190%_ _%fini94191%_)
        (if (procedure? _%K94190%_)
            (let ((_%K94195%_ _%K94190%_))
              (if (procedure? _%fini94191%_)
                  (let ((_%fini94205%_ _%fini94191%_))
                    (__with-unwind-protect _%K94195%_ _%fini94205%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini94191%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K94190%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K94164%_ _%fini94165%_)
        (let* ((_%K94168%_ _%K94164%_)
               (_%fini94177%_ _%fini94165%_)
               (_%once94186%_ '#f)
               (__tmp94331
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once94186%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once94186%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp94331 _%K94168%_ _%fini94177%_))))
    (define keyword-dispatch
      (lambda (_%kwt94057%_ _%K94058%_ . _%all-args94059%_)
        (if _%kwt94057%_
            (if (vector? _%kwt94057%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94057%_))
            '#!void)
        (if (procedure? _%K94058%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94058%_))
        (let ((_%keys94061%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94063%_ ((_%rest94065%_ _%all-args94059%_)
                            (_%args94066%_ '#f)
                            (_%tail94067%_ '#f))
            (let* ((_%rest9406894076%_ _%rest94065%_)
                   (_%else9407094084%_
                    (lambda ()
                      (if _%args94066%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94067%_ '()))
                            (let ((__tmp94332
                                   (cons _%keys94061%_ _%args94066%_)))
                              (declare (not safe))
                              (##apply _%K94058%_ __tmp94332)))
                          (_%K94058%_ _%keys94061%_))))
                   (_%K9407294152%_
                    (lambda (_%hd-rest94087%_ _%hd94088%_)
                      (if (keyword? _%hd94088%_)
                          (let* ((_%hd-rest9409094097%_ _%hd-rest94087%_)
                                 (_%E9409294101%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9409094097%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9409394109%_
                                  (lambda (_%rest94104%_ _%val94105%_)
                                    (if _%kwt94057%_
                                        (let ((_%pos94107%_
                                               (let ((__tmp94334
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94088%_)))
                                                     (__tmp94333
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94057%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp94334
                                                  __tmp94333))))
                                          (if (eq? _%hd94088%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94057%_
                                                      _%pos94107%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94058%_
                                                     _%hd94088%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94061%_
                                                _%hd94088%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94058%_
                                               _%hd94088%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94061%_
                                       _%hd94088%_
                                       _%val94105%_))
                                    (_%lp94063%_
                                     _%rest94104%_
                                     _%args94066%_
                                     _%tail94067%_))))
                            (if (pair? _%hd-rest9409094097%_)
                                (let ((_%hd9409494112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9409094097%_)))
                                      (_%tl9409594114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9409094097%_))))
                                  (let* ((_%val94117%_ _%hd9409494112%_)
                                         (_%rest94119%_ _%tl9409594114%_))
                                    (_%K9409394109%_
                                     _%rest94119%_
                                     _%val94117%_)))
                                (_%E9409294101%_)))
                          (if (eq? _%hd94088%_ '#!key)
                              (let* ((_%hd-rest9412194128%_ _%hd-rest94087%_)
                                     (_%E9412394132%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9412194128%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9412494138%_
                                      (lambda (_%rest94135%_ _%val94136%_)
                                        (if _%args94066%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94067%_
                                                 _%hd-rest94087%_))
                                              (_%lp94063%_
                                               _%rest94135%_
                                               _%args94066%_
                                               _%hd-rest94087%_))
                                            (_%lp94063%_
                                             _%rest94135%_
                                             _%hd-rest94087%_
                                             _%hd-rest94087%_)))))
                                (if (pair? _%hd-rest9412194128%_)
                                    (let ((_%hd9412594141%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9412194128%_)))
                                          (_%tl9412694143%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9412194128%_))))
                                      (let* ((_%val94146%_ _%hd9412594141%_)
                                             (_%rest94148%_ _%tl9412694143%_))
                                        (_%K9412494138%_
                                         _%rest94148%_
                                         _%val94146%_)))
                                    (_%E9412394132%_)))
                              (if (eq? _%hd94088%_ '#!rest)
                                  (if _%args94066%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94067%_
                                           _%hd-rest94087%_))
                                        (let ((__tmp94335
                                               (cons _%keys94061%_
                                                     _%args94066%_)))
                                          (declare (not safe))
                                          (##apply _%K94058%_ __tmp94335)))
                                      (let ((__tmp94336
                                             (cons _%keys94061%_
                                                   _%hd-rest94087%_)))
                                        (declare (not safe))
                                        (##apply _%K94058%_ __tmp94336)))
                                  (if _%args94066%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94067%_
                                           _%rest94065%_))
                                        (_%lp94063%_
                                         _%hd-rest94087%_
                                         _%args94066%_
                                         _%rest94065%_))
                                      (_%lp94063%_
                                       _%hd-rest94087%_
                                       _%rest94065%_
                                       _%rest94065%_))))))))
              (if (pair? _%rest9406894076%_)
                  (let ((_%hd9407394155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9406894076%_)))
                        (_%tl9407494157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9406894076%_))))
                    (let* ((_%hd94160%_ _%hd9407394155%_)
                           (_%hd-rest94162%_ _%tl9407494157%_))
                      (_%K9407294152%_ _%hd-rest94162%_ _%hd94160%_)))
                  (_%else9407094084%_)))))))
    (define keyword-rest
      (lambda (_%kwt94049%_ . _%drop94050%_)
        (let ((_%rest94052%_ '()))
          (let ((__tmp94337
                 (lambda (_%k94054%_ _%v94055%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94054%_ _%drop94050%_))
                       '#!void
                       (set! _%rest94052%_
                             (cons _%k94054%_
                                   (cons _%v94055%_ _%rest94052%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94049%_ __tmp94337))
          _%rest94052%_)))))
