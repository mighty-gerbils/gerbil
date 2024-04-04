(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712251110)
  (begin
    (define make-promise
      (lambda (_%thunk91004%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk91004%_))
              (let ((_%thunk91008%_ _%thunk91004%_))
                (declare (not safe))
                (__make-promise _%thunk91008%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@11.21-11.26"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk91004%_)
                '#!void)))))
    (define __make-promise
      (lambda (_%thunk90992%_)
        (let ((_%thunk90995%_ _%thunk90992%_))
          (declare (not safe))
          (##make-delay-promise _%thunk90995%_))))
    (define call-with-parameters
      (lambda (_%thunk90977%_ . _%rest90978%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%thunk90977%_))
              (let ((_%thunk90982%_ _%thunk90977%_))
                (declare (not safe))
                (##apply __call-with-parameters _%thunk90982%_ _%rest90978%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@15.29-15.34"
                 'contract:
                 'procedure?
                 'value:
                 _%thunk90977%_)
                '#!void)))))
    (define __call-with-parameters
      (lambda (_%thunk90915%_ . _%rest90916%_)
        (let ((_%thunk90919%_ _%thunk90915%_))
          (let* ((_%rest9092790938%_ _%rest90916%_)
                 (_%E9093090942%_
                  (lambda ()
                    (error '"No clause matching"
                           _%rest9092790938%_
                           '([param val . rest])
                           '([]))
                    '#!void)))
            (let ((_%K9093290958%_
                   (lambda (_%rest90953%_ _%val90954%_ _%param90955%_)
                     (let ((__tmp91030
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest90953%_))
                                _%thunk90919%_
                                (lambda ()
                                  (apply call-with-parameters
                                         _%thunk90919%_
                                         _%rest90953%_)))))
                       (declare (not safe))
                       (##parameterize1
                        _%param90955%_
                        _%val90954%_
                        __tmp91030))))
                  (_%K9093190947%_
                   (lambda () (let () (declare (not safe)) (_%thunk90919%_)))))
              (let ((_%try-match9092990950%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest9092790938%_))
                           (let () (declare (not safe)) (_%thunk90919%_))
                           (let () (declare (not safe)) (_%E9093090942%_))))))
                (if (let () (declare (not safe)) (##pair? _%rest9092790938%_))
                    (let ((_%tl9093490963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest9092790938%_)))
                          (_%hd9093390961%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest9092790938%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%tl9093490963%_))
                          (let ((_%tl9093690970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%tl9093490963%_)))
                                (_%hd9093590968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%tl9093490963%_))))
                            (let ((_%param90966%_ _%hd9093390961%_)
                                  (_%val90973%_ _%hd9093590968%_)
                                  (_%rest90975%_ _%tl9093690970%_))
                              (let ()
                                (declare (not safe))
                                (_%K9093290958%_
                                 _%rest90975%_
                                 _%val90973%_
                                 _%param90966%_))))
                          (let () (declare (not safe)) (_%E9093090942%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match9092990950%_)))))))))
    (define with-unwind-protect
      (lambda (_%K90890%_ _%fini90891%_)
        (let ()
          (if (let () (declare (not safe)) (procedure? _%K90890%_))
              (let ((_%K90895%_ _%K90890%_))
                (if (let () (declare (not safe)) (procedure? _%fini90891%_))
                    (let ((_%fini90905%_ _%fini90891%_))
                      (declare (not safe))
                      (__with-unwind-protect _%K90895%_ _%fini90905%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                       'contract:
                       'procedure?
                       'value:
                       _%fini90891%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/control.ss\"@23.28-23.29"
                 'contract:
                 'procedure?
                 'value:
                 _%K90890%_)
                '#!void)))))
    (define __with-unwind-protect
      (lambda (_%K90864%_ _%fini90865%_)
        (let ()
          (let* ((_%K90868%_ _%K90864%_) (_%fini90877%_ _%fini90865%_))
            (let* ((_%once90886%_ '#f)
                   (__tmp91031
                    (lambda ()
                      (declare (not interrupts-enabled))
                      (if _%once90886%_
                          (error '"Cannot re-enter unwind protected block")
                          (set! _%once90886%_ '#t)))))
              (declare (not safe))
              (##dynamic-wind __tmp91031 _%K90868%_ _%fini90877%_))))))
    (define keyword-dispatch
      (lambda (_%kwt90757%_ _%K90758%_ . _%all-args90759%_)
        (if _%kwt90757%_
            (if (let () (declare (not safe)) (vector? _%kwt90757%_))
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90757%_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _%K90758%_))
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90758%_))
        (let ((_%keys90761%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90763%_ ((_%rest90765%_ _%all-args90759%_)
                            (_%args90766%_ '#f)
                            (_%tail90767%_ '#f))
            (let* ((_%rest9076890776%_ _%rest90765%_)
                   (_%else9077090784%_
                    (lambda ()
                      (if _%args90766%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90767%_ '()))
                            (let ((__tmp91032
                                   (cons _%keys90761%_ _%args90766%_)))
                              (declare (not safe))
                              (##apply _%K90758%_ __tmp91032)))
                          (_%K90758%_ _%keys90761%_))))
                   (_%K9077290852%_
                    (lambda (_%hd-rest90787%_ _%hd90788%_)
                      (if (let () (declare (not safe)) (keyword? _%hd90788%_))
                          (let ()
                            (let* ((_%hd-rest9079090797%_ _%hd-rest90787%_)
                                   (_%E9079290801%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%hd-rest9079090797%_
                                             '([val . rest]))
                                      '#!void))
                                   (_%K9079390809%_
                                    (lambda (_%rest90804%_ _%val90805%_)
                                      (if _%kwt90757%_
                                          (let ((_%pos90807%_
                                                 (let ((__tmp91034
                                                        (keyword-hash
                                                         _%hd90788%_))
                                                       (__tmp91033
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-length
                                                           _%kwt90757%_))))
                                                   (declare (not safe))
                                                   (##fxmodulo
                                                    __tmp91034
                                                    __tmp91033))))
                                            (if (eq? _%hd90788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%kwt90757%_
                                                        _%pos90807%_)))
                                                '#!void
                                                (error '"Unexpected keyword argument"
                                                       _%K90758%_
                                                       _%hd90788%_)))
                                          '#!void)
                                      (if (eq? (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%keys90761%_
                                                  _%hd90788%_
                                                  absent-value))
                                               absent-value)
                                          '#!void
                                          (error '"Duplicate keyword argument"
                                                 _%K90758%_
                                                 _%hd90788%_))
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%keys90761%_
                                         _%hd90788%_
                                         _%val90805%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%lp90763%_
                                         _%rest90804%_
                                         _%args90766%_
                                         _%tail90767%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd-rest9079090797%_))
                                  (let ((_%hd9079490812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd-rest9079090797%_)))
                                        (_%tl9079590814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd-rest9079090797%_))))
                                    (let* ((_%val90817%_ _%hd9079490812%_)
                                           (_%rest90819%_ _%tl9079590814%_))
                                      (declare (not safe))
                                      (_%K9079390809%_
                                       _%rest90819%_
                                       _%val90817%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%E9079290801%_)))))
                          (if (eq? _%hd90788%_ '#!key)
                              (let ()
                                (let* ((_%hd-rest9082190828%_ _%hd-rest90787%_)
                                       (_%E9082390832%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%hd-rest9082190828%_
                                                 '([val . rest]))
                                          '#!void))
                                       (_%K9082490838%_
                                        (lambda (_%rest90835%_ _%val90836%_)
                                          (if _%args90766%_
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##set-cdr!
                                                   _%tail90767%_
                                                   _%hd-rest90787%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp90763%_
                                                   _%rest90835%_
                                                   _%args90766%_
                                                   _%hd-rest90787%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%lp90763%_
                                                 _%rest90835%_
                                                 _%hd-rest90787%_
                                                 _%hd-rest90787%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%hd-rest9082190828%_))
                                      (let ((_%hd9082590841%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%hd-rest9082190828%_)))
                                            (_%tl9082690843%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%hd-rest9082190828%_))))
                                        (let* ((_%val90846%_ _%hd9082590841%_)
                                               (_%rest90848%_
                                                _%tl9082690843%_))
                                          (declare (not safe))
                                          (_%K9082490838%_
                                           _%rest90848%_
                                           _%val90846%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%E9082390832%_)))))
                              (if (eq? _%hd90788%_ '#!rest)
                                  (let ()
                                    (if _%args90766%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90767%_
                                             _%hd-rest90787%_))
                                          (let ((__tmp91035
                                                 (cons _%keys90761%_
                                                       _%args90766%_)))
                                            (declare (not safe))
                                            (##apply _%K90758%_ __tmp91035)))
                                        (let ((__tmp91036
                                               (cons _%keys90761%_
                                                     _%hd-rest90787%_)))
                                          (declare (not safe))
                                          (##apply _%K90758%_ __tmp91036))))
                                  (let ()
                                    (if _%args90766%_
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (##set-cdr!
                                             _%tail90767%_
                                             _%rest90765%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%lp90763%_
                                             _%hd-rest90787%_
                                             _%args90766%_
                                             _%rest90765%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp90763%_
                                           _%hd-rest90787%_
                                           _%rest90765%_
                                           _%rest90765%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9076890776%_))
                  (let ((_%hd9077390855%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9076890776%_)))
                        (_%tl9077490857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9076890776%_))))
                    (let* ((_%hd90860%_ _%hd9077390855%_)
                           (_%hd-rest90862%_ _%tl9077490857%_))
                      (declare (not safe))
                      (_%K9077290852%_ _%hd-rest90862%_ _%hd90860%_)))
                  (let () (declare (not safe)) (_%else9077090784%_))))))))
    (define keyword-rest
      (lambda (_%kwt90749%_ . _%drop90750%_)
        (let ((_%rest90752%_ '()))
          (let ((__tmp91037
                 (lambda (_%k90754%_ _%v90755%_)
                   (if (memq _%k90754%_ _%drop90750%_)
                       '#!void
                       (set! _%rest90752%_
                             (let ((__tmp91038
                                    (let ()
                                      (declare (not safe))
                                      (cons _%v90755%_ _%rest90752%_))))
                               (declare (not safe))
                               (cons _%k90754%_ __tmp91038)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90749%_ __tmp91037))
          _%rest90752%_)))))
