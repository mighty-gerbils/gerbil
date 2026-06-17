(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1781697556)
  (begin
    (define __make-promise
      (lambda (_%thunk121793%_)
        (let ((_%thunk121796%_ _%thunk121793%_))
          (declare (not safe))
          (##make-delay-promise _%thunk121796%_))))
    (define make-promise
      (lambda (_%thunk121779%_)
        (if (procedure? _%thunk121779%_)
            (let ((_%thunk121783%_ _%thunk121779%_))
              (__make-promise _%thunk121783%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk121779%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk121723%_)
        (let ((_%thunk121726%_ _%thunk121723%_))
          (let ((_%mx121753%_ (make-mutex 'promise))
                (_%inner121754%_
                 (let* ((_%thunk121735%_ _%thunk121726%_)
                        (_%thunk121740%_ _%thunk121735%_))
                   (__make-promise _%thunk121740%_))))
            (let* ((_%thunk121763%_
                    (lambda ()
                      (let ((_%once121757%_ (vector '0)))
                        (let ((__tmp121884
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp121885
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once121757%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp121885 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx121753%_))))
                              (__tmp121883
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner121754%_))))
                              (__tmp121882
                               (lambda () (mutex-unlock! _%mx121753%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp121884
                           __tmp121883
                           __tmp121882)))))
                   (_%thunk121768%_ _%thunk121763%_))
              (__make-promise _%thunk121768%_))))))
    (define make-atomic-promise
      (lambda (_%thunk121709%_)
        (if (procedure? _%thunk121709%_)
            (let ((_%thunk121713%_ _%thunk121709%_))
              (__make-atomic-promise _%thunk121713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk121709%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk121661%_)
        (if (procedure? _%thunk121661%_)
            (let ((_%thunk121665%_ _%thunk121661%_))
              (declare (not safe))
              (_%thunk121665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk121661%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk121675%_ _%param121676%_ _%val121677%_)
        (if (procedure? _%thunk121675%_)
            (let ((_%thunk121681%_ _%thunk121675%_))
              (declare (not safe))
              (##parameterize1 _%param121676%_ _%val121677%_ _%thunk121681%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk121675%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk121691%_ _%param121692%_ _%val121693%_ . _%rest121694%_)
        (if (procedure? _%thunk121691%_)
            (let ((_%thunk121698%_ _%thunk121691%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk121698%_ _%rest121694%_))
               _%param121692%_
               _%val121693%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk121691%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g121886_
        (let ((_g121887_ (let () (declare (not safe)) (##length _g121886_))))
          (cond ((let () (declare (not safe)) (##fx= _g121887_ 1))
                 (apply call-with-parameters__0 _g121886_))
                ((let () (declare (not safe)) (##fx= _g121887_ 3))
                 (apply call-with-parameters__1 _g121886_))
                ((let () (declare (not safe)) (##fx>= _g121887_ 3))
                 (apply call-with-parameters__2 _g121886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g121886_))))))
    (define __with-unwind-protect
      (lambda (_%K121636%_ _%fini121637%_)
        (let* ((_%K121640%_ _%K121636%_)
               (_%fini121648%_ _%fini121637%_)
               (_%once121657%_ (vector '0))
               (__tmp121888
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp121889
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once121657%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp121889 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp121888 _%K121640%_ _%fini121648%_))))
    (define with-unwind-protect
      (lambda (_%K121611%_ _%fini121612%_)
        (if (procedure? _%K121611%_)
            (let ((_%K121616%_ _%K121611%_))
              (if (procedure? _%fini121612%_)
                  (let ((_%fini121626%_ _%fini121612%_))
                    (__with-unwind-protect _%K121616%_ _%fini121626%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini121612%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K121611%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt121504%_ _%K121505%_ . _%all-args121506%_)
        (if _%kwt121504%_
            (if (vector? _%kwt121504%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt121504%_))
            '#!void)
        (if (procedure? _%K121505%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K121505%_))
        (let ((_%keys121508%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp121510%_ ((_%rest121512%_ _%all-args121506%_)
                             (_%args121513%_ '#f)
                             (_%tail121514%_ '#f))
            (let* ((_%$%rest121515121523%_ _%rest121512%_)
                   (_%$%else121517121531%_
                    (lambda ()
                      (if _%args121513%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail121514%_ '()))
                            (let ((__tmp121890
                                   (cons _%keys121508%_ _%args121513%_)))
                              (declare (not safe))
                              (##apply _%K121505%_ __tmp121890)))
                          (_%K121505%_ _%keys121508%_))))
                   (_%$%K121519121599%_
                    (lambda (_%hd-rest121534%_ _%hd121535%_)
                      (if (keyword? _%hd121535%_)
                          (let* ((_%$%hd-rest121537121544%_ _%hd-rest121534%_)
                                 (_%$%E121539121548%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest121537121544%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K121540121556%_
                                  (lambda (_%rest121551%_ _%val121552%_)
                                    (if _%kwt121504%_
                                        (let ((_%pos121554%_
                                               (let ((__tmp121892
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd121535%_)))
                                                     (__tmp121891
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt121504%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp121892
                                                  __tmp121891))))
                                          (if (eq? _%hd121535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt121504%_
                                                      _%pos121554%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K121505%_
                                                     _%hd121535%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys121508%_
                                                _%hd121535%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K121505%_
                                               _%hd121535%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys121508%_
                                       _%hd121535%_
                                       _%val121552%_))
                                    (_%lp121510%_
                                     _%rest121551%_
                                     _%args121513%_
                                     _%tail121514%_))))
                            (if (pair? _%$%hd-rest121537121544%_)
                                (let ((_%$%hd121541121559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest121537121544%_)))
                                      (_%$%tl121542121561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest121537121544%_))))
                                  (let* ((_%val121564%_ _%$%hd121541121559%_)
                                         (_%rest121566%_ _%$%tl121542121561%_))
                                    (_%$%K121540121556%_
                                     _%rest121566%_
                                     _%val121564%_)))
                                (_%$%E121539121548%_)))
                          (if (eq? _%hd121535%_ '#!key)
                              (let* ((_%$%hd-rest121568121575%_
                                      _%hd-rest121534%_)
                                     (_%$%E121570121579%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest121568121575%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K121571121585%_
                                      (lambda (_%rest121582%_ _%val121583%_)
                                        (if _%args121513%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail121514%_
                                                 _%hd-rest121534%_))
                                              (_%lp121510%_
                                               _%rest121582%_
                                               _%args121513%_
                                               _%hd-rest121534%_))
                                            (_%lp121510%_
                                             _%rest121582%_
                                             _%hd-rest121534%_
                                             _%hd-rest121534%_)))))
                                (if (pair? _%$%hd-rest121568121575%_)
                                    (let ((_%$%hd121572121588%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest121568121575%_)))
                                          (_%$%tl121573121590%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest121568121575%_))))
                                      (let* ((_%val121593%_
                                              _%$%hd121572121588%_)
                                             (_%rest121595%_
                                              _%$%tl121573121590%_))
                                        (_%$%K121571121585%_
                                         _%rest121595%_
                                         _%val121593%_)))
                                    (_%$%E121570121579%_)))
                              (if (eq? _%hd121535%_ '#!rest)
                                  (if _%args121513%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail121514%_
                                           _%hd-rest121534%_))
                                        (let ((__tmp121893
                                               (cons _%keys121508%_
                                                     _%args121513%_)))
                                          (declare (not safe))
                                          (##apply _%K121505%_ __tmp121893)))
                                      (let ((__tmp121894
                                             (cons _%keys121508%_
                                                   _%hd-rest121534%_)))
                                        (declare (not safe))
                                        (##apply _%K121505%_ __tmp121894)))
                                  (if _%args121513%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail121514%_
                                           _%rest121512%_))
                                        (_%lp121510%_
                                         _%hd-rest121534%_
                                         _%args121513%_
                                         _%rest121512%_))
                                      (_%lp121510%_
                                       _%hd-rest121534%_
                                       _%rest121512%_
                                       _%rest121512%_))))))))
              (if (pair? _%$%rest121515121523%_)
                  (let ((_%$%hd121520121602%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest121515121523%_)))
                        (_%$%tl121521121604%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest121515121523%_))))
                    (let* ((_%hd121607%_ _%$%hd121520121602%_)
                           (_%hd-rest121609%_ _%$%tl121521121604%_))
                      (_%$%K121519121599%_ _%hd-rest121609%_ _%hd121607%_)))
                  (_%$%else121517121531%_)))))))
    (define keyword-rest
      (lambda (_%kwt121496%_ . _%drop121497%_)
        (let ((_%rest121499%_ '()))
          (let ((__tmp121895
                 (lambda (_%k121501%_ _%v121502%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k121501%_ _%drop121497%_))
                       '#!void
                       (set! _%rest121499%_
                             (cons _%k121501%_
                                   (cons _%v121502%_ _%rest121499%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt121496%_ __tmp121895))
          _%rest121499%_)))))
