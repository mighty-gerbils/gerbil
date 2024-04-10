(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1712757953)
  (begin
    (define make-promise
      (lambda (_%thunk91108%_)
        (if (procedure? _%thunk91108%_)
            (let ((_%thunk91112%_ _%thunk91108%_))
              (__make-promise _%thunk91112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk91108%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk91096%_)
        (let ((_%thunk91099%_ _%thunk91096%_))
          (declare (not safe))
          (##make-delay-promise _%thunk91099%_))))
    (define call-with-parameters
      (lambda (_%thunk91081%_ . _%rest91082%_)
        (if (procedure? _%thunk91081%_)
            (let ((_%thunk91086%_ _%thunk91081%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk91086%_ _%rest91082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk91081%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk91019%_ . _%rest91020%_)
        (let* ((_%thunk91023%_ _%thunk91019%_)
               (_%rest9103191042%_ _%rest91020%_)
               (_%E9103491046%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9103191042%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9103691062%_
                 (lambda (_%rest91057%_ _%val91058%_ _%param91059%_)
                   (let ((__tmp91134
                          (if (null? _%rest91057%_)
                              _%thunk91023%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk91023%_
                                       _%rest91057%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param91059%_
                      _%val91058%_
                      __tmp91134))))
                (_%K9103591051%_
                 (lambda () (let () (declare (not safe)) (_%thunk91023%_)))))
            (let ((_%try-match9103391054%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9103191042%_))
                         (let () (declare (not safe)) (_%thunk91023%_))
                         (_%E9103491046%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9103191042%_))
                  (let ((_%tl9103891067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9103191042%_)))
                        (_%hd9103791065%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9103191042%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9103891067%_))
                        (let ((_%tl9104091074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9103891067%_)))
                              (_%hd9103991072%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9103891067%_))))
                          (let ((_%param91070%_ _%hd9103791065%_)
                                (_%val91077%_ _%hd9103991072%_)
                                (_%rest91079%_ _%tl9104091074%_))
                            (_%K9103691062%_
                             _%rest91079%_
                             _%val91077%_
                             _%param91070%_)))
                        (_%E9103491046%_)))
                  (_%try-match9103391054%_)))))))
    (define with-unwind-protect
      (lambda (_%K90994%_ _%fini90995%_)
        (if (procedure? _%K90994%_)
            (let ((_%K90999%_ _%K90994%_))
              (if (procedure? _%fini90995%_)
                  (let ((_%fini91009%_ _%fini90995%_))
                    (__with-unwind-protect _%K90999%_ _%fini91009%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini90995%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K90994%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K90968%_ _%fini90969%_)
        (let* ((_%K90972%_ _%K90968%_)
               (_%fini90981%_ _%fini90969%_)
               (_%once90990%_ '#f)
               (__tmp91135
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once90990%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once90990%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp91135 _%K90972%_ _%fini90981%_))))
    (define keyword-dispatch
      (lambda (_%kwt90861%_ _%K90862%_ . _%all-args90863%_)
        (if _%kwt90861%_
            (if (vector? _%kwt90861%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt90861%_))
            '#!void)
        (if (procedure? _%K90862%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K90862%_))
        (let ((_%keys90865%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp90867%_ ((_%rest90869%_ _%all-args90863%_)
                            (_%args90870%_ '#f)
                            (_%tail90871%_ '#f))
            (let* ((_%rest9087290880%_ _%rest90869%_)
                   (_%else9087490888%_
                    (lambda ()
                      (if _%args90870%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail90871%_ '()))
                            (let ((__tmp91136
                                   (cons _%keys90865%_ _%args90870%_)))
                              (declare (not safe))
                              (##apply _%K90862%_ __tmp91136)))
                          (_%K90862%_ _%keys90865%_))))
                   (_%K9087690956%_
                    (lambda (_%hd-rest90891%_ _%hd90892%_)
                      (if (keyword? _%hd90892%_)
                          (let* ((_%hd-rest9089490901%_ _%hd-rest90891%_)
                                 (_%E9089690905%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9089490901%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9089790913%_
                                  (lambda (_%rest90908%_ _%val90909%_)
                                    (if _%kwt90861%_
                                        (let ((_%pos90911%_
                                               (let ((__tmp91138
                                                      (keyword-hash
                                                       _%hd90892%_))
                                                     (__tmp91137
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt90861%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp91138
                                                  __tmp91137))))
                                          (if (eq? _%hd90892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt90861%_
                                                      _%pos90911%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K90862%_
                                                     _%hd90892%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys90865%_
                                                _%hd90892%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K90862%_
                                               _%hd90892%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys90865%_
                                       _%hd90892%_
                                       _%val90909%_))
                                    (_%lp90867%_
                                     _%rest90908%_
                                     _%args90870%_
                                     _%tail90871%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9089490901%_))
                                (let ((_%hd9089890916%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9089490901%_)))
                                      (_%tl9089990918%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9089490901%_))))
                                  (let* ((_%val90921%_ _%hd9089890916%_)
                                         (_%rest90923%_ _%tl9089990918%_))
                                    (_%K9089790913%_
                                     _%rest90923%_
                                     _%val90921%_)))
                                (_%E9089690905%_)))
                          (if (eq? _%hd90892%_ '#!key)
                              (let* ((_%hd-rest9092590932%_ _%hd-rest90891%_)
                                     (_%E9092790936%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9092590932%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9092890942%_
                                      (lambda (_%rest90939%_ _%val90940%_)
                                        (if _%args90870%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail90871%_
                                                 _%hd-rest90891%_))
                                              (_%lp90867%_
                                               _%rest90939%_
                                               _%args90870%_
                                               _%hd-rest90891%_))
                                            (_%lp90867%_
                                             _%rest90939%_
                                             _%hd-rest90891%_
                                             _%hd-rest90891%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9092590932%_))
                                    (let ((_%hd9092990945%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9092590932%_)))
                                          (_%tl9093090947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9092590932%_))))
                                      (let* ((_%val90950%_ _%hd9092990945%_)
                                             (_%rest90952%_ _%tl9093090947%_))
                                        (_%K9092890942%_
                                         _%rest90952%_
                                         _%val90950%_)))
                                    (_%E9092790936%_)))
                              (if (eq? _%hd90892%_ '#!rest)
                                  (if _%args90870%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail90871%_
                                           _%hd-rest90891%_))
                                        (let ((__tmp91139
                                               (cons _%keys90865%_
                                                     _%args90870%_)))
                                          (declare (not safe))
                                          (##apply _%K90862%_ __tmp91139)))
                                      (let ((__tmp91140
                                             (cons _%keys90865%_
                                                   _%hd-rest90891%_)))
                                        (declare (not safe))
                                        (##apply _%K90862%_ __tmp91140)))
                                  (if _%args90870%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail90871%_
                                           _%rest90869%_))
                                        (_%lp90867%_
                                         _%hd-rest90891%_
                                         _%args90870%_
                                         _%rest90869%_))
                                      (_%lp90867%_
                                       _%hd-rest90891%_
                                       _%rest90869%_
                                       _%rest90869%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9087290880%_))
                  (let ((_%hd9087790959%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9087290880%_)))
                        (_%tl9087890961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9087290880%_))))
                    (let* ((_%hd90964%_ _%hd9087790959%_)
                           (_%hd-rest90966%_ _%tl9087890961%_))
                      (_%K9087690956%_ _%hd-rest90966%_ _%hd90964%_)))
                  (_%else9087490888%_)))))))
    (define keyword-rest
      (lambda (_%kwt90853%_ . _%drop90854%_)
        (let ((_%rest90856%_ '()))
          (let ((__tmp91141
                 (lambda (_%k90858%_ _%v90859%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k90858%_ _%drop90854%_))
                       '#!void
                       (set! _%rest90856%_
                             (cons _%k90858%_
                                   (cons _%v90859%_ _%rest90856%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt90853%_ __tmp91141))
          _%rest90856%_)))))
