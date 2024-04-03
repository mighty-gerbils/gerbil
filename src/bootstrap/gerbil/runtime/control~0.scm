(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712121897)
  (begin
    (define make-promise
      (lambda (_%thunk90422%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90422%_))
              (let ()
                (let ((_%thunk90426%_ _%thunk90422%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-promise _%thunk90426%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk90422%_)))))
    (define __make-promise
      (lambda (_%thunk90410%_)
        (let ()
          (let ((_%thunk90413%_ _%thunk90410%_))
            (let ()
              (let ()
                (declare (not safe))
                (##make-delay-promise _%thunk90413%_)))))))
    (define call-with-parameters
      (lambda (_%thunk90395%_ . _%rest90396%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90395%_))
              (let ()
                (let ((_%thunk90400%_ _%thunk90395%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-with-parameters
                               _%thunk90400%_
                               _%rest90396%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk90395%_)))))
    (define __call-with-parameters
      (lambda (_%thunk90333%_ . _%rest90334%_)
        (let ()
          (let ((_%thunk90337%_ _%thunk90333%_))
            (let ()
              (let* ((_%rest9034590356%_ _%rest90334%_)
                     (_%E9034890360%_
                      (lambda ()
                        (error '"No clause matching"
                               _%rest9034590356%_
                               '([param val . rest])
                               '([]))
                        '#!void)))
                (let ((_%K9035090376%_
                       (lambda (_%rest90371%_ _%val90372%_ _%param90373%_)
                         (let ((__tmp90448
                                (if (let ()
                                      (declare (not safe))
                                      (null? _%rest90371%_))
                                    _%thunk90337%_
                                    (lambda ()
                                      (apply call-with-parameters
                                             _%thunk90337%_
                                             _%rest90371%_)))))
                           (declare (not safe))
                           (##parameterize1
                            _%param90373%_
                            _%val90372%_
                            __tmp90448))))
                      (_%K9034990365%_
                       (lambda ()
                         (let () (declare (not safe)) (_%thunk90337%_)))))
                  (let ((_%try-match9034790368%_
                         (lambda ()
                           (if (let ()
                                 (declare (not safe))
                                 (##null? _%rest9034590356%_))
                               (let () (declare (not safe)) (_%thunk90337%_))
                               (let ()
                                 (declare (not safe))
                                 (_%E9034890360%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest9034590356%_))
                        (let ((_%tl9035290381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest9034590356%_)))
                              (_%hd9035190379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest9034590356%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl9035290381%_))
                              (let ((_%tl9035490388%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl9035290381%_)))
                                    (_%hd9035390386%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl9035290381%_))))
                                (let ((_%param90384%_ _%hd9035190379%_)
                                      (_%val90391%_ _%hd9035390386%_)
                                      (_%rest90393%_ _%tl9035490388%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K9035090376%_
                                     _%rest90393%_
                                     _%val90391%_
                                     _%param90384%_))))
                              (let () (declare (not safe)) (_%E9034890360%_))))
                        (let ()
                          (declare (not safe))
                          (_%try-match9034790368%_)))))))))))
    (define with-unwind-protect
      (lambda (_%K90308%_ _%fini90309%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90308%_))
              (let ()
                (let ((_%K90313%_ _%K90308%_))
                  (if (let () (declare (not safe)) (procedure? _%fini90309%_))
                      (let ()
                        (let ((_%fini90323%_ _%fini90309%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__with-unwind-protect
                               _%K90313%_
                               _%fini90323%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90309%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90308%_)))))
    (define __with-unwind-protect
      (lambda (_%K90282%_ _%fini90283%_)
        (let ()
          (let ((_%K90286%_ _%K90282%_))
            (let ((_%fini90295%_ _%fini90283%_))
              (let ()
                (let* ((_%once90304%_ '#f)
                       (__tmp90449
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (if _%once90304%_
                              (error '"Cannot re-enter unwind protected block")
                              (set! _%once90304%_ '#t)))))
                  (declare (not safe))
                  (##dynamic-wind __tmp90449 _%K90286%_ _%fini90295%_))))))))
    (define keyword-dispatch
      (lambda (_%kwt90175%_ _%K90176%_ . _%all-args90177%_)
        (if _%kwt90175%_
            (if (let () (declare (not safe)) (vector? _%kwt90175%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90175%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90176%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90176%_))
        (let ((_%keys90179%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90181%_ ((_%rest90183%_ _%all-args90177%_)
                            (_%args90184%_ '#f)
                            (_%tail90185%_ '#f))
            (let* ((_%rest9018690194%_ _%rest90183%_)
                   (_%else9018890202%_
                    (lambda ()
                      (if _%args90184%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90185%_ '()))
                            (let ((__tmp90450
                                   (cons _%keys90179%_ _%args90184%_)))
                              (declare (not safe))
                              (##apply _%K90176%_ __tmp90450)))
                          (_%K90176%_ _%keys90179%_))))
                   (_%K9019090270%_
                    (lambda (_%hd-rest90205%_ _%hd90206%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90206%_))
                          (let ()
                            (let* ((_%hd-rest9020890215%_ _%hd-rest90205%_)
                                   (_%E9021090219%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9020890215%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9021190227%_
                                    (lambda (_%rest90222%_ _%val90223%_)
                                      (if _%kwt90175%_
                                          (let ((_%pos90225%_
                                                 (let ((__tmp90452
                                                        (keyword-hash
                                                         _%hd90206%_))
                                                       (__tmp90451
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90175%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp90452
                                                    __tmp90451))))
                                            (if (eq? _%hd90206%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90175%_
                                                        _%pos90225%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90176%_
                                                       _%hd90206%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90179%_
                                                  _%hd90206%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90176%_
                                                 _%hd90206%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90179%_
                                         _%hd90206%_
                                         _%val90223%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90181%_
                                         _%rest90222%_
                                         _%args90184%_
                                         _%tail90185%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9020890215%_))
                                  (let ((_%hd9021290230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9020890215%_)))
                                        (_%tl9021390232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9020890215%_))))
                                    (let* ((_%val90235%_ _%hd9021290230%_)
                                           (_%rest90237%_ _%tl9021390232%_))
                                      (declare (not safe))
                                      (_%K9021190227%_
                                       _%rest90237%_
                                       _%val90235%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9021090219%_)))))
                          (if (eq? _%hd90206%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9023990246%_ _%hd-rest90205%_)
                                       (_%E9024190250%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9023990246%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9024290256%_
                                        (lambda (_%rest90253%_ _%val90254%_)
                                          (if _%args90184%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90185%_
                                                   _%hd-rest90205%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90181%_
                                                   _%rest90253%_
                                                   _%args90184%_
                                                   _%hd-rest90205%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90181%_
                                                 _%rest90253%_
                                                 _%hd-rest90205%_
                                                 _%hd-rest90205%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9023990246%_))
                                      (let ((_%hd9024390259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9023990246%_)))
                                            (_%tl9024490261%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9023990246%_))))
                                        (let* ((_%val90264%_ _%hd9024390259%_)
                                               (_%rest90266%_
                                                _%tl9024490261%_))
                                          (declare (not safe))
                                          (_%K9024290256%_
                                           _%rest90266%_
                                           _%val90264%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9024190250%_)))))
                              (if (eq? _%hd90206%_ '#!rest)
                                  (let ()
                                    (if _%args90184%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90185%_
                                             _%hd-rest90205%_))
                                          (let ((__tmp90453
                                                 (cons _%keys90179%_
                                                       _%args90184%_)))
                                            (declare (not safe))
                                            (##apply _%K90176%_ __tmp90453)))
                                        (let ((__tmp90454
                                               (cons _%keys90179%_
                                                     _%hd-rest90205%_)))
                                          (declare (not safe))
                                          (##apply _%K90176%_ __tmp90454))))
                                  (let ()
                                    (if _%args90184%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90185%_
                                             _%rest90183%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90181%_
                                             _%hd-rest90205%_
                                             _%args90184%_
                                             _%rest90183%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90181%_
                                           _%hd-rest90205%_
                                           _%rest90183%_
                                           _%rest90183%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9018690194%_))
                  (let ((_%hd9019190273%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9018690194%_)))
                        (_%tl9019290275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9018690194%_))))
                    (let* ((_%hd90278%_ _%hd9019190273%_)
                           (_%hd-rest90280%_ _%tl9019290275%_))
                      (declare (not safe))
                      (_%K9019090270%_ _%hd-rest90280%_ _%hd90278%_)))
                  (let () (declare (not safe)) (_%else9018890202%_))))))))
    (define keyword-rest
      (lambda (_%kwt90167%_ . _%drop90168%_)
        (let ((_%rest90170%_ '()))
          (let ((__tmp90455
                 (lambda (_%k90172%_ _%v90173%_)
                   (if (memq _%k90172%_ _%drop90168%_)
                       '#!void
                       (set! _%rest90170%_
                             (let ((__tmp90456
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90173%_ _%rest90170%_))))
                               (declare (not safe))
                               (cons _%k90172%_ __tmp90456)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90167%_ __tmp90455))
          _%rest90170%_)))))
