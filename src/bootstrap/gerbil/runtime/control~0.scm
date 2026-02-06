(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770342546)
  (begin
    (define __make-promise
      (lambda (_%thunk115855%_)
        (let ((_%thunk115858%_ _%thunk115855%_))
          (declare (not safe))
          (##make-delay-promise _%thunk115858%_))))
    (define make-promise
      (lambda (_%thunk115352%_)
        (if (procedure? _%thunk115352%_)
            (let ((_%thunk115356%_ _%thunk115352%_))
              (__make-promise _%thunk115356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk115352%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk115833%_)
        (let ((_%thunk115836%_ _%thunk115833%_))
          (let ((_%mx115845%_ (make-mutex 'promise))
                (_%inner115846%_ (__make-promise _%thunk115836%_)))
            (__make-promise
             (lambda ()
               (let ((_%once115849%_ (vector '0)))
                 (let ((__tmp115946
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp115947
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once115849%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp115947 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx115845%_))))
                       (__tmp115945
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner115846%_))))
                       (__tmp115944 (lambda () (mutex-unlock! _%mx115845%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp115946 __tmp115945 __tmp115944)))))))))
    (define make-atomic-promise
      (lambda (_%thunk115486%_)
        (if (procedure? _%thunk115486%_)
            (let ((_%thunk115490%_ _%thunk115486%_))
              (__make-atomic-promise _%thunk115490%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk115486%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk115785%_)
        (if (procedure? _%thunk115785%_)
            (let ((_%thunk115789%_ _%thunk115785%_))
              (declare (not safe))
              (_%thunk115789%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk115785%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk115799%_ _%param115800%_ _%val115801%_)
        (if (procedure? _%thunk115799%_)
            (let ((_%thunk115805%_ _%thunk115799%_))
              (declare (not safe))
              (##parameterize1 _%param115800%_ _%val115801%_ _%thunk115805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk115799%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk115815%_ _%param115816%_ _%val115817%_ . _%rest115818%_)
        (if (procedure? _%thunk115815%_)
            (let ((_%thunk115822%_ _%thunk115815%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk115822%_ _%rest115818%_))
               _%param115816%_
               _%val115817%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk115815%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g115948_
        (let ((_g115949_ (let () (declare (not safe)) (##length _g115948_))))
          (cond ((let () (declare (not safe)) (##fx= _g115949_ 1))
                 (apply call-with-parameters__0 _g115948_))
                ((let () (declare (not safe)) (##fx= _g115949_ 3))
                 (apply call-with-parameters__1 _g115948_))
                ((let () (declare (not safe)) (##fx>= _g115949_ 3))
                 (apply call-with-parameters__2 _g115948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g115948_))))))
    (define __with-unwind-protect
      (lambda (_%K115760%_ _%fini115761%_)
        (let* ((_%K115764%_ _%K115760%_)
               (_%fini115772%_ _%fini115761%_)
               (_%once115781%_ (vector '0))
               (__tmp115950
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp115951
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once115781%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp115951 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp115950 _%K115764%_ _%fini115772%_))))
    (define with-unwind-protect
      (lambda (_%K115620%_ _%fini115621%_)
        (if (procedure? _%K115620%_)
            (let ((_%K115625%_ _%K115620%_))
              (if (procedure? _%fini115621%_)
                  (let ((_%fini115635%_ _%fini115621%_))
                    (__with-unwind-protect _%K115625%_ _%fini115635%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini115621%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K115620%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt115653%_ _%K115654%_ . _%all-args115655%_)
        (if _%kwt115653%_
            (if (vector? _%kwt115653%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt115653%_))
            '#!void)
        (if (procedure? _%K115654%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K115654%_))
        (let ((_%keys115657%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp115659%_ ((_%rest115661%_ _%all-args115655%_)
                             (_%args115662%_ '#f)
                             (_%tail115663%_ '#f))
            (let* ((_%rest115664115672%_ _%rest115661%_)
                   (_%else115666115680%_
                    (lambda ()
                      (if _%args115662%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail115663%_ '()))
                            (let ((__tmp115952
                                   (cons _%keys115657%_ _%args115662%_)))
                              (declare (not safe))
                              (##apply _%K115654%_ __tmp115952)))
                          (_%K115654%_ _%keys115657%_))))
                   (_%K115668115748%_
                    (lambda (_%hd-rest115683%_ _%hd115684%_)
                      (if (keyword? _%hd115684%_)
                          (let* ((_%hd-rest115686115693%_ _%hd-rest115683%_)
                                 (_%E115688115697%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest115686115693%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K115689115705%_
                                  (lambda (_%rest115700%_ _%val115701%_)
                                    (if _%kwt115653%_
                                        (let ((_%pos115703%_
                                               (let ((__tmp115954
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd115684%_)))
                                                     (__tmp115953
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt115653%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp115954
                                                  __tmp115953))))
                                          (if (eq? _%hd115684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt115653%_
                                                      _%pos115703%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K115654%_
                                                     _%hd115684%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys115657%_
                                                _%hd115684%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K115654%_
                                               _%hd115684%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys115657%_
                                       _%hd115684%_
                                       _%val115701%_))
                                    (_%lp115659%_
                                     _%rest115700%_
                                     _%args115662%_
                                     _%tail115663%_))))
                            (if (pair? _%hd-rest115686115693%_)
                                (let ((_%hd115690115708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest115686115693%_)))
                                      (_%tl115691115710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest115686115693%_))))
                                  (let* ((_%val115713%_ _%hd115690115708%_)
                                         (_%rest115715%_ _%tl115691115710%_))
                                    (_%K115689115705%_
                                     _%rest115715%_
                                     _%val115713%_)))
                                (_%E115688115697%_)))
                          (if (eq? _%hd115684%_ '#!key)
                              (let* ((_%hd-rest115717115724%_
                                      _%hd-rest115683%_)
                                     (_%E115719115728%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest115717115724%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K115720115734%_
                                      (lambda (_%rest115731%_ _%val115732%_)
                                        (if _%args115662%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail115663%_
                                                 _%hd-rest115683%_))
                                              (_%lp115659%_
                                               _%rest115731%_
                                               _%args115662%_
                                               _%hd-rest115683%_))
                                            (_%lp115659%_
                                             _%rest115731%_
                                             _%hd-rest115683%_
                                             _%hd-rest115683%_)))))
                                (if (pair? _%hd-rest115717115724%_)
                                    (let ((_%hd115721115737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest115717115724%_)))
                                          (_%tl115722115739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest115717115724%_))))
                                      (let* ((_%val115742%_ _%hd115721115737%_)
                                             (_%rest115744%_
                                              _%tl115722115739%_))
                                        (_%K115720115734%_
                                         _%rest115744%_
                                         _%val115742%_)))
                                    (_%E115719115728%_)))
                              (if (eq? _%hd115684%_ '#!rest)
                                  (if _%args115662%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail115663%_
                                           _%hd-rest115683%_))
                                        (let ((__tmp115955
                                               (cons _%keys115657%_
                                                     _%args115662%_)))
                                          (declare (not safe))
                                          (##apply _%K115654%_ __tmp115955)))
                                      (let ((__tmp115956
                                             (cons _%keys115657%_
                                                   _%hd-rest115683%_)))
                                        (declare (not safe))
                                        (##apply _%K115654%_ __tmp115956)))
                                  (if _%args115662%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail115663%_
                                           _%rest115661%_))
                                        (_%lp115659%_
                                         _%hd-rest115683%_
                                         _%args115662%_
                                         _%rest115661%_))
                                      (_%lp115659%_
                                       _%hd-rest115683%_
                                       _%rest115661%_
                                       _%rest115661%_))))))))
              (if (pair? _%rest115664115672%_)
                  (let ((_%hd115669115751%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115664115672%_)))
                        (_%tl115670115753%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115664115672%_))))
                    (let* ((_%hd115756%_ _%hd115669115751%_)
                           (_%hd-rest115758%_ _%tl115670115753%_))
                      (_%K115668115748%_ _%hd-rest115758%_ _%hd115756%_)))
                  (_%else115666115680%_)))))))
    (define keyword-rest
      (lambda (_%kwt115645%_ . _%drop115646%_)
        (let ((_%rest115648%_ '()))
          (let ((__tmp115957
                 (lambda (_%k115650%_ _%v115651%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k115650%_ _%drop115646%_))
                       '#!void
                       (set! _%rest115648%_
                             (cons _%k115650%_
                                   (cons _%v115651%_ _%rest115648%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt115645%_ __tmp115957))
          _%rest115648%_)))))
