(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1713631264)
  (begin
    (define make-promise
      (lambda (_%thunk94152%_)
        (if (procedure? _%thunk94152%_)
            (let ((_%thunk94156%_ _%thunk94152%_))
              (__make-promise _%thunk94156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk94152%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk94140%_)
        (let ((_%thunk94143%_ _%thunk94140%_))
          (declare (not safe))
          (##make-delay-promise _%thunk94143%_))))
    (define call-with-parameters
      (lambda (_%thunk94125%_ . _%rest94126%_)
        (if (procedure? _%thunk94125%_)
            (let ((_%thunk94130%_ _%thunk94125%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk94130%_ _%rest94126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk94125%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk94063%_ . _%rest94064%_)
        (let* ((_%thunk94067%_ _%thunk94063%_)
               (_%rest9407594086%_ _%rest94064%_)
               (_%E9407894090%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9407594086%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9408094106%_
                 (lambda (_%rest94101%_ _%val94102%_ _%param94103%_)
                   (let ((__tmp94178
                          (if (null? _%rest94101%_)
                              _%thunk94067%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk94067%_
                                       _%rest94101%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param94103%_
                      _%val94102%_
                      __tmp94178))))
                (_%K9407994095%_
                 (lambda () (let () (declare (not safe)) (_%thunk94067%_)))))
            (let ((_%try-match9407794098%_
                   (lambda ()
                     (if (null? _%rest9407594086%_)
                         (let () (declare (not safe)) (_%thunk94067%_))
                         (_%E9407894090%_)))))
              (if (pair? _%rest9407594086%_)
                  (let ((_%tl9408294111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9407594086%_)))
                        (_%hd9408194109%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9407594086%_))))
                    (if (pair? _%tl9408294111%_)
                        (let ((_%tl9408494118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9408294111%_)))
                              (_%hd9408394116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9408294111%_))))
                          (let ((_%param94114%_ _%hd9408194109%_)
                                (_%val94121%_ _%hd9408394116%_)
                                (_%rest94123%_ _%tl9408494118%_))
                            (_%K9408094106%_
                             _%rest94123%_
                             _%val94121%_
                             _%param94114%_)))
                        (_%E9407894090%_)))
                  (_%try-match9407794098%_)))))))
    (define with-unwind-protect
      (lambda (_%K94038%_ _%fini94039%_)
        (if (procedure? _%K94038%_)
            (let ((_%K94043%_ _%K94038%_))
              (if (procedure? _%fini94039%_)
                  (let ((_%fini94053%_ _%fini94039%_))
                    (__with-unwind-protect _%K94043%_ _%fini94053%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini94039%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K94038%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K94012%_ _%fini94013%_)
        (let* ((_%K94016%_ _%K94012%_)
               (_%fini94025%_ _%fini94013%_)
               (_%once94034%_ '#f)
               (__tmp94179
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once94034%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once94034%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp94179 _%K94016%_ _%fini94025%_))))
    (define keyword-dispatch
      (lambda (_%kwt93905%_ _%K93906%_ . _%all-args93907%_)
        (if _%kwt93905%_
            (if (vector? _%kwt93905%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt93905%_))
            '#!void)
        (if (procedure? _%K93906%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K93906%_))
        (let ((_%keys93909%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp93911%_ ((_%rest93913%_ _%all-args93907%_)
                            (_%args93914%_ '#f)
                            (_%tail93915%_ '#f))
            (let* ((_%rest9391693924%_ _%rest93913%_)
                   (_%else9391893932%_
                    (lambda ()
                      (if _%args93914%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail93915%_ '()))
                            (let ((__tmp94180
                                   (cons _%keys93909%_ _%args93914%_)))
                              (declare (not safe))
                              (##apply _%K93906%_ __tmp94180)))
                          (_%K93906%_ _%keys93909%_))))
                   (_%K9392094000%_
                    (lambda (_%hd-rest93935%_ _%hd93936%_)
                      (if (keyword? _%hd93936%_)
                          (let* ((_%hd-rest9393893945%_ _%hd-rest93935%_)
                                 (_%E9394093949%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9393893945%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9394193957%_
                                  (lambda (_%rest93952%_ _%val93953%_)
                                    (if _%kwt93905%_
                                        (let ((_%pos93955%_
                                               (let ((__tmp94182
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd93936%_)))
                                                     (__tmp94181
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt93905%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp94182
                                                  __tmp94181))))
                                          (if (eq? _%hd93936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt93905%_
                                                      _%pos93955%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K93906%_
                                                     _%hd93936%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys93909%_
                                                _%hd93936%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K93906%_
                                               _%hd93936%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys93909%_
                                       _%hd93936%_
                                       _%val93953%_))
                                    (_%lp93911%_
                                     _%rest93952%_
                                     _%args93914%_
                                     _%tail93915%_))))
                            (if (pair? _%hd-rest9393893945%_)
                                (let ((_%hd9394293960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9393893945%_)))
                                      (_%tl9394393962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9393893945%_))))
                                  (let* ((_%val93965%_ _%hd9394293960%_)
                                         (_%rest93967%_ _%tl9394393962%_))
                                    (_%K9394193957%_
                                     _%rest93967%_
                                     _%val93965%_)))
                                (_%E9394093949%_)))
                          (if (eq? _%hd93936%_ '#!key)
                              (let* ((_%hd-rest9396993976%_ _%hd-rest93935%_)
                                     (_%E9397193980%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9396993976%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9397293986%_
                                      (lambda (_%rest93983%_ _%val93984%_)
                                        (if _%args93914%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail93915%_
                                                 _%hd-rest93935%_))
                                              (_%lp93911%_
                                               _%rest93983%_
                                               _%args93914%_
                                               _%hd-rest93935%_))
                                            (_%lp93911%_
                                             _%rest93983%_
                                             _%hd-rest93935%_
                                             _%hd-rest93935%_)))))
                                (if (pair? _%hd-rest9396993976%_)
                                    (let ((_%hd9397393989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9396993976%_)))
                                          (_%tl9397493991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9396993976%_))))
                                      (let* ((_%val93994%_ _%hd9397393989%_)
                                             (_%rest93996%_ _%tl9397493991%_))
                                        (_%K9397293986%_
                                         _%rest93996%_
                                         _%val93994%_)))
                                    (_%E9397193980%_)))
                              (if (eq? _%hd93936%_ '#!rest)
                                  (if _%args93914%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail93915%_
                                           _%hd-rest93935%_))
                                        (let ((__tmp94183
                                               (cons _%keys93909%_
                                                     _%args93914%_)))
                                          (declare (not safe))
                                          (##apply _%K93906%_ __tmp94183)))
                                      (let ((__tmp94184
                                             (cons _%keys93909%_
                                                   _%hd-rest93935%_)))
                                        (declare (not safe))
                                        (##apply _%K93906%_ __tmp94184)))
                                  (if _%args93914%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail93915%_
                                           _%rest93913%_))
                                        (_%lp93911%_
                                         _%hd-rest93935%_
                                         _%args93914%_
                                         _%rest93913%_))
                                      (_%lp93911%_
                                       _%hd-rest93935%_
                                       _%rest93913%_
                                       _%rest93913%_))))))))
              (if (pair? _%rest9391693924%_)
                  (let ((_%hd9392194003%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9391693924%_)))
                        (_%tl9392294005%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9391693924%_))))
                    (let* ((_%hd94008%_ _%hd9392194003%_)
                           (_%hd-rest94010%_ _%tl9392294005%_))
                      (_%K9392094000%_ _%hd-rest94010%_ _%hd94008%_)))
                  (_%else9391893932%_)))))))
    (define keyword-rest
      (lambda (_%kwt93897%_ . _%drop93898%_)
        (let ((_%rest93900%_ '()))
          (let ((__tmp94185
                 (lambda (_%k93902%_ _%v93903%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k93902%_ _%drop93898%_))
                       '#!void
                       (set! _%rest93900%_
                             (cons _%k93902%_
                                   (cons _%v93903%_ _%rest93900%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt93897%_ __tmp94185))
          _%rest93900%_)))))
