(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1781119034)
  (begin
    (define __make-promise
      (lambda (_%thunk104362%_)
        (let ((_%thunk104365%_ _%thunk104362%_))
          (declare (not safe))
          (##make-delay-promise _%thunk104365%_))))
    (define make-promise
      (lambda (_%thunk104348%_)
        (if (procedure? _%thunk104348%_)
            (let ((_%thunk104352%_ _%thunk104348%_))
              (__make-promise _%thunk104352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk104348%_)
              (void)))))
    (define __make-atomic-promise
      (lambda (_%thunk104292%_)
        (let ((_%thunk104295%_ _%thunk104292%_))
          (let ((_%mx104322%_ (make-mutex 'promise))
                (_%inner104323%_
                 (let ((_%thunk104304%_ _%thunk104295%_))
                   (if (procedure? _%thunk104304%_)
                       (let ((_%thunk104309%_ _%thunk104304%_))
                         (__make-promise _%thunk104309%_))
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/runtime/control
                          'contract:
                          'procedure?
                          'value:
                          _%thunk104304%_)
                         (void))))))
            (let ((_%thunk104332%_
                   (lambda ()
                     (let ((_%once104326%_ (vector '0)))
                       (dynamic-wind
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp104373
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once104326%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp104373 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx104322%_)))
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner104323%_)))
                        (lambda () (mutex-unlock! _%mx104322%_)))))))
              (if (procedure? _%thunk104332%_)
                  (let ((_%thunk104337%_ _%thunk104332%_))
                    (__make-promise _%thunk104337%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/control
                     'contract:
                     'procedure?
                     'value:
                     _%thunk104332%_)
                    (void))))))))
    (define make-atomic-promise
      (lambda (_%thunk104278%_)
        (if (procedure? _%thunk104278%_)
            (let ((_%thunk104282%_ _%thunk104278%_))
              (__make-atomic-promise _%thunk104282%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk104278%_)
              (void)))))
    (define call-with-parameters
      (lambda _g104374_
        (let ((_g104375_ (let () (declare (not safe)) (##length _g104374_))))
          (cond ((let () (declare (not safe)) (##fx= _g104375_ 1))
                 (apply (lambda (_%thunk104230%_)
                          (if (procedure? _%thunk104230%_)
                              (let ((_%thunk104234%_ _%thunk104230%_))
                                (_%thunk104234%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/control.ss\"@32.6-32.11"
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%thunk104230%_)
                                (void))))
                        _g104374_))
                ((let () (declare (not safe)) (##fx= _g104375_ 3))
                 (apply (lambda (_%thunk104244%_ _%param104245%_ _%val104246%_)
                          (if (procedure? _%thunk104244%_)
                              (let ((_%thunk104250%_ _%thunk104244%_))
                                (declare (not safe))
                                (##parameterize1
                                 _%param104245%_
                                 _%val104246%_
                                 _%thunk104250%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/control.ss\"@33.6-33.11"
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%thunk104244%_)
                                (void))))
                        _g104374_))
                ((let () (declare (not safe)) (##fx>= _g104375_ 3))
                 (apply (lambda (_%thunk104260%_
                                 _%param104261%_
                                 _%val104262%_
                                 .
                                 _%rest104263%_)
                          (if (procedure? _%thunk104260%_)
                              (let ((_%thunk104267%_ _%thunk104260%_))
                                (call-with-parameters
                                 (lambda ()
                                   (apply call-with-parameters
                                          _%thunk104267%_
                                          _%rest104263%_))
                                 _%param104261%_
                                 _%val104262%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/control.ss\"@35.6-35.11"
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%thunk104260%_)
                                (void))))
                        _g104374_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g104374_))))))
    (define __with-unwind-protect
      (lambda (_%K104205%_ _%fini104206%_)
        (let* ((_%K104209%_ _%K104205%_)
               (_%fini104217%_ _%fini104206%_)
               (_%once104226%_ (vector '0)))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if (let ((__tmp104376
                        (let ()
                          (declare (not safe))
                          (##vector-cas! _%once104226%_ '0 '1 '0))))
                   (declare (not safe))
                   (##fx= __tmp104376 '0))
                 '#!void
                 (error '"Cannot re-enter unwind protected block")))
           _%K104209%_
           _%fini104217%_))))
    (define with-unwind-protect
      (lambda (_%K104180%_ _%fini104181%_)
        (if (procedure? _%K104180%_)
            (let ((_%K104185%_ _%K104180%_))
              (if (procedure? _%fini104181%_)
                  (let ((_%fini104195%_ _%fini104181%_))
                    (__with-unwind-protect _%K104185%_ _%fini104195%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini104181%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K104180%_)
              (void)))))
    (define keyword-dispatch
      (lambda (_%kwt104073%_ _%K104074%_ . _%all-args104075%_)
        (if _%kwt104073%_
            (if (vector? _%kwt104073%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt104073%_))
            '#!void)
        (if (procedure? _%K104074%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K104074%_))
        (let ((_%keys104077%_ (make-symbolic-table '#f '0)))
          (let _%lp104079%_ ((_%rest104081%_ _%all-args104075%_)
                             (_%args104082%_ '#f)
                             (_%tail104083%_ '#f))
            (let* ((_%$%rest104084104092%_ _%rest104081%_)
                   (_%$%E104087104096%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest104084104092%_
                             '([hd . hd-rest])
                             'else)
                      (void)))
                   (_%$%else104086104100%_
                    (lambda ()
                      (if _%args104082%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail104083%_ '()))
                            (let ((__tmp104377
                                   (cons _%keys104077%_ _%args104082%_)))
                              (declare (not safe))
                              (##apply _%K104074%_ __tmp104377)))
                          (_%K104074%_ _%keys104077%_))))
                   (_%$%K104088104168%_
                    (lambda (_%hd-rest104103%_ _%hd104104%_)
                      (if (keyword? _%hd104104%_)
                          (let* ((_%$%hd-rest104106104113%_ _%hd-rest104103%_)
                                 (_%$%E104108104117%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest104106104113%_
                                           '([val . rest]))
                                    (void)))
                                 (_%$%K104109104125%_
                                  (lambda (_%rest104120%_ _%val104121%_)
                                    (if _%kwt104073%_
                                        (let ((_%pos104123%_
                                               (let ((__tmp104379
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd104104%_)))
                                                     (__tmp104378
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt104073%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp104379
                                                  __tmp104378))))
                                          (if (eq? _%hd104104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt104073%_
                                                      _%pos104123%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K104074%_
                                                     _%hd104104%_)))
                                        '#!void)
                                    (if (eq? (symbolic-table-ref
                                              _%keys104077%_
                                              _%hd104104%_
                                              absent-value)
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K104074%_
                                               _%hd104104%_))
                                    (symbolic-table-set!
                                     _%keys104077%_
                                     _%hd104104%_
                                     _%val104121%_)
                                    (_%lp104079%_
                                     _%rest104120%_
                                     _%args104082%_
                                     _%tail104083%_))))
                            (if (pair? _%$%hd-rest104106104113%_)
                                (let ((_%$%hd104110104128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest104106104113%_)))
                                      (_%$%tl104111104130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest104106104113%_))))
                                  (let* ((_%val104133%_ _%$%hd104110104128%_)
                                         (_%rest104135%_ _%$%tl104111104130%_))
                                    (_%$%K104109104125%_
                                     _%rest104135%_
                                     _%val104133%_)))
                                (_%$%E104108104117%_)))
                          (if (eq? _%hd104104%_ '#!key)
                              (let* ((_%$%hd-rest104137104144%_
                                      _%hd-rest104103%_)
                                     (_%$%E104139104148%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest104137104144%_
                                               '([val . rest]))
                                        (void)))
                                     (_%$%K104140104154%_
                                      (lambda (_%rest104151%_ _%val104152%_)
                                        (if _%args104082%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail104083%_
                                                 _%hd-rest104103%_))
                                              (_%lp104079%_
                                               _%rest104151%_
                                               _%args104082%_
                                               _%hd-rest104103%_))
                                            (_%lp104079%_
                                             _%rest104151%_
                                             _%hd-rest104103%_
                                             _%hd-rest104103%_)))))
                                (if (pair? _%$%hd-rest104137104144%_)
                                    (let ((_%$%hd104141104157%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest104137104144%_)))
                                          (_%$%tl104142104159%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest104137104144%_))))
                                      (let* ((_%val104162%_
                                              _%$%hd104141104157%_)
                                             (_%rest104164%_
                                              _%$%tl104142104159%_))
                                        (_%$%K104140104154%_
                                         _%rest104164%_
                                         _%val104162%_)))
                                    (_%$%E104139104148%_)))
                              (if (eq? _%hd104104%_ '#!rest)
                                  (if _%args104082%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104083%_
                                           _%hd-rest104103%_))
                                        (let ((__tmp104380
                                               (cons _%keys104077%_
                                                     _%args104082%_)))
                                          (declare (not safe))
                                          (##apply _%K104074%_ __tmp104380)))
                                      (let ((__tmp104381
                                             (cons _%keys104077%_
                                                   _%hd-rest104103%_)))
                                        (declare (not safe))
                                        (##apply _%K104074%_ __tmp104381)))
                                  (if _%args104082%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail104083%_
                                           _%rest104081%_))
                                        (_%lp104079%_
                                         _%hd-rest104103%_
                                         _%args104082%_
                                         _%rest104081%_))
                                      (_%lp104079%_
                                       _%hd-rest104103%_
                                       _%rest104081%_
                                       _%rest104081%_))))))))
              (if (pair? _%$%rest104084104092%_)
                  (let ((_%$%hd104089104171%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest104084104092%_)))
                        (_%$%tl104090104173%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest104084104092%_))))
                    (let* ((_%hd104176%_ _%$%hd104089104171%_)
                           (_%hd-rest104178%_ _%$%tl104090104173%_))
                      (_%$%K104088104168%_ _%hd-rest104178%_ _%hd104176%_)))
                  (_%$%else104086104100%_)))))))
    (define keyword-rest
      (lambda (_%kwt104065%_ . _%drop104066%_)
        (let ((_%rest104068%_ '()))
          (raw-table-for-each
           _%kwt104065%_
           (lambda (_%k104070%_ _%v104071%_)
             (if (memq _%k104070%_ _%drop104066%_)
                 '#!void
                 (set! _%rest104068%_
                       (cons* _%k104070%_ _%v104071%_ _%rest104068%_)))))
          _%rest104068%_)))))
