(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1734215268)
  (begin
    (define make-promise
      (lambda (_%thunk94367%_)
        (if (procedure? _%thunk94367%_)
            (let ((_%thunk94371%_ _%thunk94367%_))
              (__make-promise _%thunk94371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk94367%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk94355%_)
        (let ((_%thunk94358%_ _%thunk94355%_))
          (declare (not safe))
          (##make-delay-promise _%thunk94358%_))))
    (define call-with-parameters
      (lambda (_%thunk94340%_ . _%rest94341%_)
        (if (procedure? _%thunk94340%_)
            (let ((_%thunk94345%_ _%thunk94340%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk94345%_ _%rest94341%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk94340%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk94278%_ . _%rest94279%_)
        (let* ((_%thunk94282%_ _%thunk94278%_)
               (_%rest9429094301%_ _%rest94279%_)
               (_%E9429394305%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9429094301%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9429594321%_
                 (lambda (_%rest94316%_ _%val94317%_ _%param94318%_)
                   (let ((__tmp94393
                          (if (null? _%rest94316%_)
                              _%thunk94282%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk94282%_
                                       _%rest94316%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param94318%_
                      _%val94317%_
                      __tmp94393))))
                (_%K9429494310%_
                 (lambda () (let () (declare (not safe)) (_%thunk94282%_)))))
            (let ((_%try-match9429294313%_
                   (lambda ()
                     (if (null? _%rest9429094301%_)
                         (let () (declare (not safe)) (_%thunk94282%_))
                         (_%E9429394305%_)))))
              (if (pair? _%rest9429094301%_)
                  (let ((_%tl9429794326%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9429094301%_)))
                        (_%hd9429694324%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9429094301%_))))
                    (if (pair? _%tl9429794326%_)
                        (let ((_%tl9429994333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9429794326%_)))
                              (_%hd9429894331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9429794326%_))))
                          (let ((_%param94329%_ _%hd9429694324%_)
                                (_%val94336%_ _%hd9429894331%_)
                                (_%rest94338%_ _%tl9429994333%_))
                            (_%K9429594321%_
                             _%rest94338%_
                             _%val94336%_
                             _%param94329%_)))
                        (_%E9429394305%_)))
                  (_%try-match9429294313%_)))))))
    (define with-unwind-protect
      (lambda (_%K94253%_ _%fini94254%_)
        (if (procedure? _%K94253%_)
            (let ((_%K94258%_ _%K94253%_))
              (if (procedure? _%fini94254%_)
                  (let ((_%fini94268%_ _%fini94254%_))
                    (__with-unwind-protect _%K94258%_ _%fini94268%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini94254%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K94253%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K94227%_ _%fini94228%_)
        (let* ((_%K94231%_ _%K94227%_)
               (_%fini94240%_ _%fini94228%_)
               (_%once94249%_ '#f)
               (__tmp94394
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once94249%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once94249%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp94394 _%K94231%_ _%fini94240%_))))
    (define keyword-dispatch
      (lambda (_%kwt94120%_ _%K94121%_ . _%all-args94122%_)
        (if _%kwt94120%_
            (if (vector? _%kwt94120%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt94120%_))
            '#!void)
        (if (procedure? _%K94121%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K94121%_))
        (let ((_%keys94124%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp94126%_ ((_%rest94128%_ _%all-args94122%_)
                            (_%args94129%_ '#f)
                            (_%tail94130%_ '#f))
            (let* ((_%rest9413194139%_ _%rest94128%_)
                   (_%else9413394147%_
                    (lambda ()
                      (if _%args94129%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail94130%_ '()))
                            (let ((__tmp94395
                                   (cons _%keys94124%_ _%args94129%_)))
                              (declare (not safe))
                              (##apply _%K94121%_ __tmp94395)))
                          (_%K94121%_ _%keys94124%_))))
                   (_%K9413594215%_
                    (lambda (_%hd-rest94150%_ _%hd94151%_)
                      (if (keyword? _%hd94151%_)
                          (let* ((_%hd-rest9415394160%_ _%hd-rest94150%_)
                                 (_%E9415594164%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9415394160%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9415694172%_
                                  (lambda (_%rest94167%_ _%val94168%_)
                                    (if _%kwt94120%_
                                        (let ((_%pos94170%_
                                               (let ((__tmp94397
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd94151%_)))
                                                     (__tmp94396
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt94120%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp94397
                                                  __tmp94396))))
                                          (if (eq? _%hd94151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt94120%_
                                                      _%pos94170%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K94121%_
                                                     _%hd94151%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys94124%_
                                                _%hd94151%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K94121%_
                                               _%hd94151%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys94124%_
                                       _%hd94151%_
                                       _%val94168%_))
                                    (_%lp94126%_
                                     _%rest94167%_
                                     _%args94129%_
                                     _%tail94130%_))))
                            (if (pair? _%hd-rest9415394160%_)
                                (let ((_%hd9415794175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9415394160%_)))
                                      (_%tl9415894177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9415394160%_))))
                                  (let* ((_%val94180%_ _%hd9415794175%_)
                                         (_%rest94182%_ _%tl9415894177%_))
                                    (_%K9415694172%_
                                     _%rest94182%_
                                     _%val94180%_)))
                                (_%E9415594164%_)))
                          (if (eq? _%hd94151%_ '#!key)
                              (let* ((_%hd-rest9418494191%_ _%hd-rest94150%_)
                                     (_%E9418694195%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9418494191%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9418794201%_
                                      (lambda (_%rest94198%_ _%val94199%_)
                                        (if _%args94129%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail94130%_
                                                 _%hd-rest94150%_))
                                              (_%lp94126%_
                                               _%rest94198%_
                                               _%args94129%_
                                               _%hd-rest94150%_))
                                            (_%lp94126%_
                                             _%rest94198%_
                                             _%hd-rest94150%_
                                             _%hd-rest94150%_)))))
                                (if (pair? _%hd-rest9418494191%_)
                                    (let ((_%hd9418894204%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9418494191%_)))
                                          (_%tl9418994206%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9418494191%_))))
                                      (let* ((_%val94209%_ _%hd9418894204%_)
                                             (_%rest94211%_ _%tl9418994206%_))
                                        (_%K9418794201%_
                                         _%rest94211%_
                                         _%val94209%_)))
                                    (_%E9418694195%_)))
                              (if (eq? _%hd94151%_ '#!rest)
                                  (if _%args94129%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94130%_
                                           _%hd-rest94150%_))
                                        (let ((__tmp94398
                                               (cons _%keys94124%_
                                                     _%args94129%_)))
                                          (declare (not safe))
                                          (##apply _%K94121%_ __tmp94398)))
                                      (let ((__tmp94399
                                             (cons _%keys94124%_
                                                   _%hd-rest94150%_)))
                                        (declare (not safe))
                                        (##apply _%K94121%_ __tmp94399)))
                                  (if _%args94129%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail94130%_
                                           _%rest94128%_))
                                        (_%lp94126%_
                                         _%hd-rest94150%_
                                         _%args94129%_
                                         _%rest94128%_))
                                      (_%lp94126%_
                                       _%hd-rest94150%_
                                       _%rest94128%_
                                       _%rest94128%_))))))))
              (if (pair? _%rest9413194139%_)
                  (let ((_%hd9413694218%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9413194139%_)))
                        (_%tl9413794220%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9413194139%_))))
                    (let* ((_%hd94223%_ _%hd9413694218%_)
                           (_%hd-rest94225%_ _%tl9413794220%_))
                      (_%K9413594215%_ _%hd-rest94225%_ _%hd94223%_)))
                  (_%else9413394147%_)))))))
    (define keyword-rest
      (lambda (_%kwt94112%_ . _%drop94113%_)
        (let ((_%rest94115%_ '()))
          (let ((__tmp94400
                 (lambda (_%k94117%_ _%v94118%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k94117%_ _%drop94113%_))
                       '#!void
                       (set! _%rest94115%_
                             (cons _%k94117%_
                                   (cons _%v94118%_ _%rest94115%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt94112%_ __tmp94400))
          _%rest94115%_)))))
