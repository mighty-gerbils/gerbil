(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712246554)
  (begin
    (define make-promise
      (lambda (_%thunk91035%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk91035%_))
              (let ((_%thunk91039%_ _%thunk91035%_))
                (declare (not safe))
                (__make-promise _%thunk91039%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@11.21-11.26"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk91035%_)
                '#!void)))))
    (define __make-promise
      (lambda (_%thunk91023%_)
        (let ((_%thunk91026%_ _%thunk91023%_))
          (declare (not safe))
          (##make-delay-promise _%thunk91026%_))))
    (define call-with-parameters
      (lambda (_%thunk91008%_ . _%rest91009%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk91008%_))
              (let ((_%thunk91013%_ _%thunk91008%_))
                (declare (not safe))
                (##apply __call-with-parameters _%thunk91013%_ _%rest91009%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@15.29-15.34"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk91008%_)
                '#!void)))))
    (define __call-with-parameters
      (lambda (_%thunk90946%_ . _%rest90947%_)
        (let ((_%thunk90950%_ _%thunk90946%_))
          (let* ((_%rest9095890969%_ _%rest90947%_)
                 (_%E9096190973%_
                  (lambda ()
                    (error '"No clause matching"
                           _%rest9095890969%_
                           '([param val . rest])
                           '([]))
                    '#!void)))
            (let ((_%K9096390989%_
                   (lambda (_%rest90984%_ _%val90985%_ _%param90986%_)
                     (let ((__tmp91061
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest90984%_))
                                _%thunk90950%_
                                (lambda ()
                                  (apply call-with-parameters
                                         _%thunk90950%_
                                         _%rest90984%_)))))
                       (declare (not safe))
                       (##parameterize1
                        _%param90986%_
                        _%val90985%_
                        __tmp91061))))
                  (_%K9096290978%_
                   (lambda () (let () (declare (not safe)) (_%thunk90950%_)))))
              (let ((_%try-match9096090981%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest9095890969%_))
                           (let () (declare (not safe)) (_%thunk90950%_))
                           (let () (declare (not safe)) (_%E9096190973%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest9095890969%_))
                    (let ((_%tl9096590994%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9095890969%_)))
                          (_%hd9096490992%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9095890969%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl9096590994%_))
                          (let ((_%tl9096791001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl9096590994%_)))
                                (_%hd9096690999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl9096590994%_))))
                            (let ((_%param90997%_ _%hd9096490992%_)
                                  (_%val91004%_ _%hd9096690999%_)
                                  (_%rest91006%_ _%tl9096791001%_))
                              (let ()
                                (declare (not safe))
                                (_%K9096390989%_
                                 _%rest91006%_
                                 _%val91004%_
                                 _%param90997%_))))
                          (let () (declare (not safe)) (_%E9096190973%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match9096090981%_)))))))))
    (define with-unwind-protect
      (lambda (_%K90921%_ _%fini90922%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90921%_))
              (let ((_%K90926%_ _%K90921%_))
                (if (let () (declare (not safe)) (procedure? _%fini90922%_))
                    (let ((_%fini90936%_ _%fini90922%_))
                      (declare (not safe))
                      (__with-unwind-protect _%K90926%_ _%fini90936%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90922%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@23.28-23.29"
                 'contract:
                 'procedure?
                 'value:
                 _%K90921%_)
                '#!void)))))
    (define __with-unwind-protect
      (lambda (_%K90895%_ _%fini90896%_)
        (let ()
          (let* ((_%K90899%_ _%K90895%_) (_%fini90908%_ _%fini90896%_))
            (let* ((_%once90917%_ '#f)
                   (__tmp91062
                    (lambda ()
                      (declare (not interrupts-enabled))
                      (if _%once90917%_
                          (error '"Cannot re-enter unwind protected block")
                          (set! _%once90917%_ '#t)))))
              (declare (not safe))
              (##dynamic-wind __tmp91062 _%K90899%_ _%fini90908%_))))))
    (define keyword-dispatch
      (lambda (_%kwt90788%_ _%K90789%_ . _%all-args90790%_)
        (if _%kwt90788%_
            (if (let () (declare (not safe)) (vector? _%kwt90788%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90788%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90789%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90789%_))
        (let ((_%keys90792%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90794%_ ((_%rest90796%_ _%all-args90790%_)
                            (_%args90797%_ '#f)
                            (_%tail90798%_ '#f))
            (let* ((_%rest9079990807%_ _%rest90796%_)
                   (_%else9080190815%_
                    (lambda ()
                      (if _%args90797%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90798%_ '()))
                            (let ((__tmp91063
                                   (cons _%keys90792%_ _%args90797%_)))
                              (declare (not safe))
                              (##apply _%K90789%_ __tmp91063)))
                          (_%K90789%_ _%keys90792%_))))
                   (_%K9080390883%_
                    (lambda (_%hd-rest90818%_ _%hd90819%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90819%_))
                          (let ()
                            (let* ((_%hd-rest9082190828%_ _%hd-rest90818%_)
                                   (_%E9082390832%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9082190828%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9082490840%_
                                    (lambda (_%rest90835%_ _%val90836%_)
                                      (if _%kwt90788%_
                                          (let ((_%pos90838%_
                                                 (let ((__tmp91065
                                                        (keyword-hash
                                                         _%hd90819%_))
                                                       (__tmp91064
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90788%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp91065
                                                    __tmp91064))))
                                            (if (eq? _%hd90819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90788%_
                                                        _%pos90838%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90789%_
                                                       _%hd90819%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90792%_
                                                  _%hd90819%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90789%_
                                                 _%hd90819%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90792%_
                                         _%hd90819%_
                                         _%val90836%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90794%_
                                         _%rest90835%_
                                         _%args90797%_
                                         _%tail90798%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9082190828%_))
                                  (let ((_%hd9082590843%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9082190828%_)))
                                        (_%tl9082690845%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9082190828%_))))
                                    (let* ((_%val90848%_ _%hd9082590843%_)
                                           (_%rest90850%_ _%tl9082690845%_))
                                      (declare (not safe))
                                      (_%K9082490840%_
                                       _%rest90850%_
                                       _%val90848%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9082390832%_)))))
                          (if (eq? _%hd90819%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9085290859%_ _%hd-rest90818%_)
                                       (_%E9085490863%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9085290859%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9085590869%_
                                        (lambda (_%rest90866%_ _%val90867%_)
                                          (if _%args90797%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90798%_
                                                   _%hd-rest90818%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90794%_
                                                   _%rest90866%_
                                                   _%args90797%_
                                                   _%hd-rest90818%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90794%_
                                                 _%rest90866%_
                                                 _%hd-rest90818%_
                                                 _%hd-rest90818%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9085290859%_))
                                      (let ((_%hd9085690872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9085290859%_)))
                                            (_%tl9085790874%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9085290859%_))))
                                        (let* ((_%val90877%_ _%hd9085690872%_)
                                               (_%rest90879%_
                                                _%tl9085790874%_))
                                          (declare (not safe))
                                          (_%K9085590869%_
                                           _%rest90879%_
                                           _%val90877%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9085490863%_)))))
                              (if (eq? _%hd90819%_ '#!rest)
                                  (let ()
                                    (if _%args90797%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90798%_
                                             _%hd-rest90818%_))
                                          (let ((__tmp91066
                                                 (cons _%keys90792%_
                                                       _%args90797%_)))
                                            (declare (not safe))
                                            (##apply _%K90789%_ __tmp91066)))
                                        (let ((__tmp91067
                                               (cons _%keys90792%_
                                                     _%hd-rest90818%_)))
                                          (declare (not safe))
                                          (##apply _%K90789%_ __tmp91067))))
                                  (let ()
                                    (if _%args90797%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90798%_
                                             _%rest90796%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90794%_
                                             _%hd-rest90818%_
                                             _%args90797%_
                                             _%rest90796%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90794%_
                                           _%hd-rest90818%_
                                           _%rest90796%_
                                           _%rest90796%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9079990807%_))
                  (let ((_%hd9080490886%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9079990807%_)))
                        (_%tl9080590888%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9079990807%_))))
                    (let* ((_%hd90891%_ _%hd9080490886%_)
                           (_%hd-rest90893%_ _%tl9080590888%_))
                      (declare (not safe))
                      (_%K9080390883%_ _%hd-rest90893%_ _%hd90891%_)))
                  (let () (declare (not safe)) (_%else9080190815%_))))))))
    (define keyword-rest
      (lambda (_%kwt90780%_ . _%drop90781%_)
        (let ((_%rest90783%_ '()))
          (let ((__tmp91068
                 (lambda (_%k90785%_ _%v90786%_)
                   (if (memq _%k90785%_ _%drop90781%_)
                       '#!void
                       (set! _%rest90783%_
                             (let ((__tmp91069
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90786%_ _%rest90783%_))))
                               (declare (not safe))
                               (cons _%k90785%_ __tmp91069)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90780%_ __tmp91068))
          _%rest90783%_)))))
