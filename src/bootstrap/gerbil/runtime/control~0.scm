(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1783878474)
  (begin
    (define __make-promise
      (lambda (_%thunk123032%_)
        (let ((_%thunk123035%_ _%thunk123032%_))
          (declare (not safe))
          (##make-delay-promise _%thunk123035%_))))
    (define make-promise
      (lambda (_%thunk123018%_)
        (if (procedure? _%thunk123018%_)
            (let ((_%thunk123022%_ _%thunk123018%_))
              (__make-promise _%thunk123022%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk123018%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk122962%_)
        (let ((_%thunk122965%_ _%thunk122962%_))
          (let ((_%mx122992%_ (make-mutex 'promise))
                (_%inner122993%_
                 (let* ((_%thunk122974%_ _%thunk122965%_)
                        (_%thunk122979%_ _%thunk122974%_))
                   (__make-promise _%thunk122979%_))))
            (let* ((_%thunk123002%_
                    (lambda ()
                      (let ((_%once122996%_ (vector '0)))
                        (let ((__tmp123123
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp123124
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once122996%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp123124 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx122992%_))))
                              (__tmp123122
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner122993%_))))
                              (__tmp123121
                               (lambda () (mutex-unlock! _%mx122992%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp123123
                           __tmp123122
                           __tmp123121)))))
                   (_%thunk123007%_ _%thunk123002%_))
              (__make-promise _%thunk123007%_))))))
    (define make-atomic-promise
      (lambda (_%thunk122948%_)
        (if (procedure? _%thunk122948%_)
            (let ((_%thunk122952%_ _%thunk122948%_))
              (__make-atomic-promise _%thunk122952%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk122948%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk122900%_)
        (if (procedure? _%thunk122900%_)
            (let ((_%thunk122904%_ _%thunk122900%_))
              (declare (not safe))
              (_%thunk122904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk122900%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk122914%_ _%param122915%_ _%val122916%_)
        (if (procedure? _%thunk122914%_)
            (let ((_%thunk122920%_ _%thunk122914%_))
              (declare (not safe))
              (##parameterize1 _%param122915%_ _%val122916%_ _%thunk122920%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk122914%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk122930%_ _%param122931%_ _%val122932%_ . _%rest122933%_)
        (if (procedure? _%thunk122930%_)
            (let ((_%thunk122937%_ _%thunk122930%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk122937%_ _%rest122933%_))
               _%param122931%_
               _%val122932%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk122930%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g123125_
        (let ((_g123126_ (let () (declare (not safe)) (##length _g123125_))))
          (cond ((let () (declare (not safe)) (##fx= _g123126_ 1))
                 (apply call-with-parameters__0 _g123125_))
                ((let () (declare (not safe)) (##fx= _g123126_ 3))
                 (apply call-with-parameters__1 _g123125_))
                ((let () (declare (not safe)) (##fx>= _g123126_ 3))
                 (apply call-with-parameters__2 _g123125_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g123125_))))))
    (define __with-unwind-protect
      (lambda (_%K122875%_ _%fini122876%_)
        (let* ((_%K122879%_ _%K122875%_)
               (_%fini122887%_ _%fini122876%_)
               (_%once122896%_ (vector '0))
               (__tmp123127
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp123128
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once122896%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp123128 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp123127 _%K122879%_ _%fini122887%_))))
    (define with-unwind-protect
      (lambda (_%K122850%_ _%fini122851%_)
        (if (procedure? _%K122850%_)
            (let ((_%K122855%_ _%K122850%_))
              (if (procedure? _%fini122851%_)
                  (let ((_%fini122865%_ _%fini122851%_))
                    (__with-unwind-protect _%K122855%_ _%fini122865%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini122851%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K122850%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt122743%_ _%K122744%_ . _%all-args122745%_)
        (if _%kwt122743%_
            (if (vector? _%kwt122743%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt122743%_))
            '#!void)
        (if (procedure? _%K122744%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K122744%_))
        (let ((_%keys122747%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp122749%_ ((_%rest122751%_ _%all-args122745%_)
                             (_%args122752%_ '#f)
                             (_%tail122753%_ '#f))
            (let* ((_%$%rest122754122762%_ _%rest122751%_)
                   (_%$%else122756122770%_
                    (lambda ()
                      (if _%args122752%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail122753%_ '()))
                            (let ((__tmp123129
                                   (cons _%keys122747%_ _%args122752%_)))
                              (declare (not safe))
                              (##apply _%K122744%_ __tmp123129)))
                          (_%K122744%_ _%keys122747%_))))
                   (_%$%K122758122838%_
                    (lambda (_%hd-rest122773%_ _%hd122774%_)
                      (if (keyword? _%hd122774%_)
                          (let* ((_%$%hd-rest122776122783%_ _%hd-rest122773%_)
                                 (_%$%E122778122787%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest122776122783%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K122779122795%_
                                  (lambda (_%rest122790%_ _%val122791%_)
                                    (if _%kwt122743%_
                                        (let ((_%pos122793%_
                                               (let ((__tmp123131
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd122774%_)))
                                                     (__tmp123130
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt122743%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp123131
                                                  __tmp123130))))
                                          (if (eq? _%hd122774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt122743%_
                                                      _%pos122793%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K122744%_
                                                     _%hd122774%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys122747%_
                                                _%hd122774%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K122744%_
                                               _%hd122774%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys122747%_
                                       _%hd122774%_
                                       _%val122791%_))
                                    (_%lp122749%_
                                     _%rest122790%_
                                     _%args122752%_
                                     _%tail122753%_))))
                            (if (pair? _%$%hd-rest122776122783%_)
                                (let ((_%$%hd122780122798%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest122776122783%_)))
                                      (_%$%tl122781122800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest122776122783%_))))
                                  (let* ((_%val122803%_ _%$%hd122780122798%_)
                                         (_%rest122805%_ _%$%tl122781122800%_))
                                    (_%$%K122779122795%_
                                     _%rest122805%_
                                     _%val122803%_)))
                                (_%$%E122778122787%_)))
                          (if (eq? _%hd122774%_ '#!key)
                              (let* ((_%$%hd-rest122807122814%_
                                      _%hd-rest122773%_)
                                     (_%$%E122809122818%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest122807122814%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K122810122824%_
                                      (lambda (_%rest122821%_ _%val122822%_)
                                        (if _%args122752%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail122753%_
                                                 _%hd-rest122773%_))
                                              (_%lp122749%_
                                               _%rest122821%_
                                               _%args122752%_
                                               _%hd-rest122773%_))
                                            (_%lp122749%_
                                             _%rest122821%_
                                             _%hd-rest122773%_
                                             _%hd-rest122773%_)))))
                                (if (pair? _%$%hd-rest122807122814%_)
                                    (let ((_%$%hd122811122827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest122807122814%_)))
                                          (_%$%tl122812122829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest122807122814%_))))
                                      (let* ((_%val122832%_
                                              _%$%hd122811122827%_)
                                             (_%rest122834%_
                                              _%$%tl122812122829%_))
                                        (_%$%K122810122824%_
                                         _%rest122834%_
                                         _%val122832%_)))
                                    (_%$%E122809122818%_)))
                              (if (eq? _%hd122774%_ '#!rest)
                                  (if _%args122752%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail122753%_
                                           _%hd-rest122773%_))
                                        (let ((__tmp123132
                                               (cons _%keys122747%_
                                                     _%args122752%_)))
                                          (declare (not safe))
                                          (##apply _%K122744%_ __tmp123132)))
                                      (let ((__tmp123133
                                             (cons _%keys122747%_
                                                   _%hd-rest122773%_)))
                                        (declare (not safe))
                                        (##apply _%K122744%_ __tmp123133)))
                                  (if _%args122752%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail122753%_
                                           _%rest122751%_))
                                        (_%lp122749%_
                                         _%hd-rest122773%_
                                         _%args122752%_
                                         _%rest122751%_))
                                      (_%lp122749%_
                                       _%hd-rest122773%_
                                       _%rest122751%_
                                       _%rest122751%_))))))))
              (if (pair? _%$%rest122754122762%_)
                  (let ((_%$%hd122759122841%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest122754122762%_)))
                        (_%$%tl122760122843%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest122754122762%_))))
                    (let* ((_%hd122846%_ _%$%hd122759122841%_)
                           (_%hd-rest122848%_ _%$%tl122760122843%_))
                      (_%$%K122758122838%_ _%hd-rest122848%_ _%hd122846%_)))
                  (_%$%else122756122770%_)))))))
    (define keyword-rest
      (lambda (_%kwt122735%_ . _%drop122736%_)
        (let ((_%rest122738%_ '()))
          (let ((__tmp123134
                 (lambda (_%k122740%_ _%v122741%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k122740%_ _%drop122736%_))
                       '#!void
                       (set! _%rest122738%_
                             (cons _%k122740%_
                                   (cons _%v122741%_ _%rest122738%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt122735%_ __tmp123134))
          _%rest122738%_)))))
