(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1756721294)
  (begin
    (define make-promise
      (lambda (_%thunk102053%_)
        (if (procedure? _%thunk102053%_)
            (let ((_%thunk102057%_ _%thunk102053%_))
              (__make-promise _%thunk102057%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk102053%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk102041%_)
        (let ((_%thunk102044%_ _%thunk102041%_))
          (declare (not safe))
          (##make-delay-promise _%thunk102044%_))))
    (define make-atomic-promise
      (lambda (_%thunk102027%_)
        (if (procedure? _%thunk102027%_)
            (let ((_%thunk102031%_ _%thunk102027%_))
              (__make-atomic-promise _%thunk102031%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk102027%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk102005%_)
        (let ((_%thunk102008%_ _%thunk102005%_))
          (let ((_%mx102017%_ (make-mutex 'promise))
                (_%inner102018%_ (__make-promise _%thunk102008%_)))
            (__make-promise
             (lambda ()
               (let ((_%once102021%_ (vector '0)))
                 (let ((__tmp102068
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp102069
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once102021%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp102069 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx102017%_))))
                       (__tmp102067
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner102018%_))))
                       (__tmp102066 (lambda () (mutex-unlock! _%mx102017%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp102068 __tmp102067 __tmp102066)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk101957%_)
        (if (procedure? _%thunk101957%_)
            (let ((_%thunk101961%_ _%thunk101957%_))
              (declare (not safe))
              (_%thunk101961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk101957%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk101971%_ _%param101972%_ _%val101973%_)
        (if (procedure? _%thunk101971%_)
            (let ((_%thunk101977%_ _%thunk101971%_))
              (declare (not safe))
              (##parameterize1 _%param101972%_ _%val101973%_ _%thunk101977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk101971%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk101987%_ _%param101988%_ _%val101989%_ . _%rest101990%_)
        (if (procedure? _%thunk101987%_)
            (let ((_%thunk101994%_ _%thunk101987%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk101994%_ _%rest101990%_))
               _%param101988%_
               _%val101989%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk101987%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g102070_
        (let ((_g102071_ (let () (declare (not safe)) (##length _g102070_))))
          (cond ((let () (declare (not safe)) (##fx= _g102071_ 1))
                 (apply call-with-parameters__0 _g102070_))
                ((let () (declare (not safe)) (##fx= _g102071_ 3))
                 (apply call-with-parameters__1 _g102070_))
                ((let () (declare (not safe)) (##fx>= _g102071_ 3))
                 (apply call-with-parameters__2 _g102070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g102070_))))))
    (define with-unwind-protect
      (lambda (_%K101932%_ _%fini101933%_)
        (if (procedure? _%K101932%_)
            (let ((_%K101937%_ _%K101932%_))
              (if (procedure? _%fini101933%_)
                  (let ((_%fini101947%_ _%fini101933%_))
                    (__with-unwind-protect _%K101937%_ _%fini101947%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini101933%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K101932%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K101906%_ _%fini101907%_)
        (let* ((_%K101910%_ _%K101906%_)
               (_%fini101919%_ _%fini101907%_)
               (_%once101928%_ (vector '0))
               (__tmp102072
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp102073
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once101928%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp102073 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp102072 _%K101910%_ _%fini101919%_))))
    (define keyword-dispatch
      (lambda (_%kwt101799%_ _%K101800%_ . _%all-args101801%_)
        (if _%kwt101799%_
            (if (vector? _%kwt101799%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt101799%_))
            '#!void)
        (if (procedure? _%K101800%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K101800%_))
        (let ((_%keys101803%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp101805%_ ((_%rest101807%_ _%all-args101801%_)
                             (_%args101808%_ '#f)
                             (_%tail101809%_ '#f))
            (let* ((_%rest101810101818%_ _%rest101807%_)
                   (_%else101812101826%_
                    (lambda ()
                      (if _%args101808%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail101809%_ '()))
                            (let ((__tmp102074
                                   (cons _%keys101803%_ _%args101808%_)))
                              (declare (not safe))
                              (##apply _%K101800%_ __tmp102074)))
                          (_%K101800%_ _%keys101803%_))))
                   (_%K101814101894%_
                    (lambda (_%hd-rest101829%_ _%hd101830%_)
                      (if (keyword? _%hd101830%_)
                          (let* ((_%hd-rest101832101839%_ _%hd-rest101829%_)
                                 (_%E101834101843%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest101832101839%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K101835101851%_
                                  (lambda (_%rest101846%_ _%val101847%_)
                                    (if _%kwt101799%_
                                        (let ((_%pos101849%_
                                               (let ((__tmp102076
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd101830%_)))
                                                     (__tmp102075
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt101799%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp102076
                                                  __tmp102075))))
                                          (if (eq? _%hd101830%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt101799%_
                                                      _%pos101849%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K101800%_
                                                     _%hd101830%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys101803%_
                                                _%hd101830%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K101800%_
                                               _%hd101830%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys101803%_
                                       _%hd101830%_
                                       _%val101847%_))
                                    (_%lp101805%_
                                     _%rest101846%_
                                     _%args101808%_
                                     _%tail101809%_))))
                            (if (pair? _%hd-rest101832101839%_)
                                (let ((_%hd101836101854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest101832101839%_)))
                                      (_%tl101837101856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest101832101839%_))))
                                  (let* ((_%val101859%_ _%hd101836101854%_)
                                         (_%rest101861%_ _%tl101837101856%_))
                                    (_%K101835101851%_
                                     _%rest101861%_
                                     _%val101859%_)))
                                (_%E101834101843%_)))
                          (if (eq? _%hd101830%_ '#!key)
                              (let* ((_%hd-rest101863101870%_
                                      _%hd-rest101829%_)
                                     (_%E101865101874%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest101863101870%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K101866101880%_
                                      (lambda (_%rest101877%_ _%val101878%_)
                                        (if _%args101808%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail101809%_
                                                 _%hd-rest101829%_))
                                              (_%lp101805%_
                                               _%rest101877%_
                                               _%args101808%_
                                               _%hd-rest101829%_))
                                            (_%lp101805%_
                                             _%rest101877%_
                                             _%hd-rest101829%_
                                             _%hd-rest101829%_)))))
                                (if (pair? _%hd-rest101863101870%_)
                                    (let ((_%hd101867101883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest101863101870%_)))
                                          (_%tl101868101885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest101863101870%_))))
                                      (let* ((_%val101888%_ _%hd101867101883%_)
                                             (_%rest101890%_
                                              _%tl101868101885%_))
                                        (_%K101866101880%_
                                         _%rest101890%_
                                         _%val101888%_)))
                                    (_%E101865101874%_)))
                              (if (eq? _%hd101830%_ '#!rest)
                                  (if _%args101808%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail101809%_
                                           _%hd-rest101829%_))
                                        (let ((__tmp102077
                                               (cons _%keys101803%_
                                                     _%args101808%_)))
                                          (declare (not safe))
                                          (##apply _%K101800%_ __tmp102077)))
                                      (let ((__tmp102078
                                             (cons _%keys101803%_
                                                   _%hd-rest101829%_)))
                                        (declare (not safe))
                                        (##apply _%K101800%_ __tmp102078)))
                                  (if _%args101808%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail101809%_
                                           _%rest101807%_))
                                        (_%lp101805%_
                                         _%hd-rest101829%_
                                         _%args101808%_
                                         _%rest101807%_))
                                      (_%lp101805%_
                                       _%hd-rest101829%_
                                       _%rest101807%_
                                       _%rest101807%_))))))))
              (if (pair? _%rest101810101818%_)
                  (let ((_%hd101815101897%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101810101818%_)))
                        (_%tl101816101899%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101810101818%_))))
                    (let* ((_%hd101902%_ _%hd101815101897%_)
                           (_%hd-rest101904%_ _%tl101816101899%_))
                      (_%K101814101894%_ _%hd-rest101904%_ _%hd101902%_)))
                  (_%else101812101826%_)))))))
    (define keyword-rest
      (lambda (_%kwt101791%_ . _%drop101792%_)
        (let ((_%rest101794%_ '()))
          (let ((__tmp102079
                 (lambda (_%k101796%_ _%v101797%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k101796%_ _%drop101792%_))
                       '#!void
                       (set! _%rest101794%_
                             (cons _%k101796%_
                                   (cons _%v101797%_ _%rest101794%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt101791%_ __tmp102079))
          _%rest101794%_)))))
