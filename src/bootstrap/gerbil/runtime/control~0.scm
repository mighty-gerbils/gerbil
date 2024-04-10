(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712773523)
  (begin
    (define make-promise
      (lambda (_%thunk91350%_)
        (if (procedure? _%thunk91350%_)
            (let ((_%thunk91354%_ _%thunk91350%_))
              (__make-promise _%thunk91354%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk91350%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk91338%_)
        (let ((_%thunk91341%_ _%thunk91338%_))
          (declare (not safe))
          (##make-delay-promise _%thunk91341%_))))
    (define call-with-parameters
      (lambda (_%thunk91323%_ . _%rest91324%_)
        (if (procedure? _%thunk91323%_)
            (let ((_%thunk91328%_ _%thunk91323%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk91328%_ _%rest91324%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk91323%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk91261%_ . _%rest91262%_)
        (let* ((_%thunk91265%_ _%thunk91261%_)
               (_%rest9127391284%_ _%rest91262%_)
               (_%E9127691288%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9127391284%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9127891304%_
                 (lambda (_%rest91299%_ _%val91300%_ _%param91301%_)
                   (let ((__tmp91376
                          (if (null? _%rest91299%_)
                              _%thunk91265%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk91265%_
                                       _%rest91299%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param91301%_
                      _%val91300%_
                      __tmp91376))))
                (_%K9127791293%_
                 (lambda () (let () (declare (not safe)) (_%thunk91265%_)))))
            (let ((_%try-match9127591296%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9127391284%_))
                         (let () (declare (not safe)) (_%thunk91265%_))
                         (_%E9127691288%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9127391284%_))
                  (let ((_%tl9128091309%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9127391284%_)))
                        (_%hd9127991307%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9127391284%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9128091309%_))
                        (let ((_%tl9128291316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9128091309%_)))
                              (_%hd9128191314%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9128091309%_))))
                          (let ((_%param91312%_ _%hd9127991307%_)
                                (_%val91319%_ _%hd9128191314%_)
                                (_%rest91321%_ _%tl9128291316%_))
                            (_%K9127891304%_
                             _%rest91321%_
                             _%val91319%_
                             _%param91312%_)))
                        (_%E9127691288%_)))
                  (_%try-match9127591296%_)))))))
    (define with-unwind-protect
      (lambda (_%K91236%_ _%fini91237%_)
        (if (procedure? _%K91236%_)
            (let ((_%K91241%_ _%K91236%_))
              (if (procedure? _%fini91237%_)
                  (let ((_%fini91251%_ _%fini91237%_))
                    (__with-unwind-protect _%K91241%_ _%fini91251%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini91237%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K91236%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K91210%_ _%fini91211%_)
        (let* ((_%K91214%_ _%K91210%_)
               (_%fini91223%_ _%fini91211%_)
               (_%once91232%_ '#f)
               (__tmp91377
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once91232%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once91232%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp91377 _%K91214%_ _%fini91223%_))))
    (define keyword-dispatch
      (lambda (_%kwt91103%_ _%K91104%_ . _%all-args91105%_)
        (if _%kwt91103%_
            (if (vector? _%kwt91103%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt91103%_))
            '#!void)
        (if (procedure? _%K91104%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K91104%_))
        (let ((_%keys91107%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp91109%_ ((_%rest91111%_ _%all-args91105%_)
                            (_%args91112%_ '#f)
                            (_%tail91113%_ '#f))
            (let* ((_%rest9111491122%_ _%rest91111%_)
                   (_%else9111691130%_
                    (lambda ()
                      (if _%args91112%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail91113%_ '()))
                            (let ((__tmp91378
                                   (cons _%keys91107%_ _%args91112%_)))
                              (declare (not safe))
                              (##apply _%K91104%_ __tmp91378)))
                          (_%K91104%_ _%keys91107%_))))
                   (_%K9111891198%_
                    (lambda (_%hd-rest91133%_ _%hd91134%_)
                      (if (keyword? _%hd91134%_)
                          (let* ((_%hd-rest9113691143%_ _%hd-rest91133%_)
                                 (_%E9113891147%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9113691143%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9113991155%_
                                  (lambda (_%rest91150%_ _%val91151%_)
                                    (if _%kwt91103%_
                                        (let ((_%pos91153%_
                                               (let ((__tmp91380
                                                      (keyword-hash
                                                       _%hd91134%_))
                                                     (__tmp91379
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt91103%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp91380
                                                  __tmp91379))))
                                          (if (eq? _%hd91134%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt91103%_
                                                      _%pos91153%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K91104%_
                                                     _%hd91134%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys91107%_
                                                _%hd91134%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K91104%_
                                               _%hd91134%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys91107%_
                                       _%hd91134%_
                                       _%val91151%_))
                                    (_%lp91109%_
                                     _%rest91150%_
                                     _%args91112%_
                                     _%tail91113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9113691143%_))
                                (let ((_%hd9114091158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9113691143%_)))
                                      (_%tl9114191160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9113691143%_))))
                                  (let* ((_%val91163%_ _%hd9114091158%_)
                                         (_%rest91165%_ _%tl9114191160%_))
                                    (_%K9113991155%_
                                     _%rest91165%_
                                     _%val91163%_)))
                                (_%E9113891147%_)))
                          (if (eq? _%hd91134%_ '#!key)
                              (let* ((_%hd-rest9116791174%_ _%hd-rest91133%_)
                                     (_%E9116991178%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9116791174%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9117091184%_
                                      (lambda (_%rest91181%_ _%val91182%_)
                                        (if _%args91112%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail91113%_
                                                 _%hd-rest91133%_))
                                              (_%lp91109%_
                                               _%rest91181%_
                                               _%args91112%_
                                               _%hd-rest91133%_))
                                            (_%lp91109%_
                                             _%rest91181%_
                                             _%hd-rest91133%_
                                             _%hd-rest91133%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9116791174%_))
                                    (let ((_%hd9117191187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9116791174%_)))
                                          (_%tl9117291189%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9116791174%_))))
                                      (let* ((_%val91192%_ _%hd9117191187%_)
                                             (_%rest91194%_ _%tl9117291189%_))
                                        (_%K9117091184%_
                                         _%rest91194%_
                                         _%val91192%_)))
                                    (_%E9116991178%_)))
                              (if (eq? _%hd91134%_ '#!rest)
                                  (if _%args91112%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail91113%_
                                           _%hd-rest91133%_))
                                        (let ((__tmp91381
                                               (cons _%keys91107%_
                                                     _%args91112%_)))
                                          (declare (not safe))
                                          (##apply _%K91104%_ __tmp91381)))
                                      (let ((__tmp91382
                                             (cons _%keys91107%_
                                                   _%hd-rest91133%_)))
                                        (declare (not safe))
                                        (##apply _%K91104%_ __tmp91382)))
                                  (if _%args91112%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail91113%_
                                           _%rest91111%_))
                                        (_%lp91109%_
                                         _%hd-rest91133%_
                                         _%args91112%_
                                         _%rest91111%_))
                                      (_%lp91109%_
                                       _%hd-rest91133%_
                                       _%rest91111%_
                                       _%rest91111%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9111491122%_))
                  (let ((_%hd9111991201%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9111491122%_)))
                        (_%tl9112091203%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9111491122%_))))
                    (let* ((_%hd91206%_ _%hd9111991201%_)
                           (_%hd-rest91208%_ _%tl9112091203%_))
                      (_%K9111891198%_ _%hd-rest91208%_ _%hd91206%_)))
                  (_%else9111691130%_)))))))
    (define keyword-rest
      (lambda (_%kwt91095%_ . _%drop91096%_)
        (let ((_%rest91098%_ '()))
          (let ((__tmp91383
                 (lambda (_%k91100%_ _%v91101%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k91100%_ _%drop91096%_))
                       '#!void
                       (set! _%rest91098%_
                             (cons _%k91100%_
                                   (cons _%v91101%_ _%rest91098%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt91095%_ __tmp91383))
          _%rest91098%_)))))
