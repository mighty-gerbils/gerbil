(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770338920)
  (begin
    (define make-promise
      (lambda (_%thunk109052%_)
        (if (procedure? _%thunk109052%_)
            (let ((_%thunk109056%_ _%thunk109052%_))
              (__make-promise _%thunk109056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk109052%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk109040%_)
        (let ((_%thunk109043%_ _%thunk109040%_))
          (declare (not safe))
          (##make-delay-promise _%thunk109043%_))))
    (define make-atomic-promise
      (lambda (_%thunk109026%_)
        (if (procedure? _%thunk109026%_)
            (let ((_%thunk109030%_ _%thunk109026%_))
              (__make-atomic-promise _%thunk109030%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk109026%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk109004%_)
        (let ((_%thunk109007%_ _%thunk109004%_))
          (let ((_%mx109016%_ (make-mutex 'promise))
                (_%inner109017%_ (__make-promise _%thunk109007%_)))
            (__make-promise
             (lambda ()
               (let ((_%once109020%_ (vector '0)))
                 (let ((__tmp109067
                        (lambda ()
                          (declare (not interrupts-enabled))
                          (begin
                            (if (let ((__tmp109068
                                       (let ()
                                         (declare (not safe))
                                         (##vector-cas!
                                          _%once109020%_
                                          '0
                                          '1
                                          '0))))
                                  (declare (not safe))
                                  (##fx= __tmp109068 '0))
                                '#!void
                                (error '"Cannot reenter atomic block"))
                            (mutex-lock! _%mx109016%_))))
                       (__tmp109066
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (##force-out-of-line _%inner109017%_))))
                       (__tmp109065 (lambda () (mutex-unlock! _%mx109016%_))))
                   (declare (not safe))
                   (##dynamic-wind __tmp109067 __tmp109066 __tmp109065)))))))))
    (define call-with-parameters__0
      (lambda (_%thunk108956%_)
        (if (procedure? _%thunk108956%_)
            (let ((_%thunk108960%_ _%thunk108956%_))
              (declare (not safe))
              (_%thunk108960%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk108956%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk108970%_ _%param108971%_ _%val108972%_)
        (if (procedure? _%thunk108970%_)
            (let ((_%thunk108976%_ _%thunk108970%_))
              (declare (not safe))
              (##parameterize1 _%param108971%_ _%val108972%_ _%thunk108976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk108970%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk108986%_ _%param108987%_ _%val108988%_ . _%rest108989%_)
        (if (procedure? _%thunk108986%_)
            (let ((_%thunk108993%_ _%thunk108986%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk108993%_ _%rest108989%_))
               _%param108987%_
               _%val108988%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk108986%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g109069_
        (let ((_g109070_ (let () (declare (not safe)) (##length _g109069_))))
          (cond ((let () (declare (not safe)) (##fx= _g109070_ 1))
                 (apply call-with-parameters__0 _g109069_))
                ((let () (declare (not safe)) (##fx= _g109070_ 3))
                 (apply call-with-parameters__1 _g109069_))
                ((let () (declare (not safe)) (##fx>= _g109070_ 3))
                 (apply call-with-parameters__2 _g109069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g109069_))))))
    (define with-unwind-protect
      (lambda (_%K108931%_ _%fini108932%_)
        (if (procedure? _%K108931%_)
            (let ((_%K108936%_ _%K108931%_))
              (if (procedure? _%fini108932%_)
                  (let ((_%fini108946%_ _%fini108932%_))
                    (__with-unwind-protect _%K108936%_ _%fini108946%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini108932%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K108931%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K108905%_ _%fini108906%_)
        (let* ((_%K108909%_ _%K108905%_)
               (_%fini108918%_ _%fini108906%_)
               (_%once108927%_ (vector '0))
               (__tmp109071
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp109072
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once108927%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp109072 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp109071 _%K108909%_ _%fini108918%_))))
    (define keyword-dispatch
      (lambda (_%kwt108798%_ _%K108799%_ . _%all-args108800%_)
        (if _%kwt108798%_
            (if (vector? _%kwt108798%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt108798%_))
            '#!void)
        (if (procedure? _%K108799%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K108799%_))
        (let ((_%keys108802%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp108804%_ ((_%rest108806%_ _%all-args108800%_)
                             (_%args108807%_ '#f)
                             (_%tail108808%_ '#f))
            (let* ((_%rest108809108817%_ _%rest108806%_)
                   (_%else108811108825%_
                    (lambda ()
                      (if _%args108807%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail108808%_ '()))
                            (let ((__tmp109073
                                   (cons _%keys108802%_ _%args108807%_)))
                              (declare (not safe))
                              (##apply _%K108799%_ __tmp109073)))
                          (_%K108799%_ _%keys108802%_))))
                   (_%K108813108893%_
                    (lambda (_%hd-rest108828%_ _%hd108829%_)
                      (if (keyword? _%hd108829%_)
                          (let* ((_%hd-rest108831108838%_ _%hd-rest108828%_)
                                 (_%E108833108842%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest108831108838%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K108834108850%_
                                  (lambda (_%rest108845%_ _%val108846%_)
                                    (if _%kwt108798%_
                                        (let ((_%pos108848%_
                                               (let ((__tmp109075
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd108829%_)))
                                                     (__tmp109074
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt108798%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp109075
                                                  __tmp109074))))
                                          (if (eq? _%hd108829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt108798%_
                                                      _%pos108848%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K108799%_
                                                     _%hd108829%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys108802%_
                                                _%hd108829%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K108799%_
                                               _%hd108829%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys108802%_
                                       _%hd108829%_
                                       _%val108846%_))
                                    (_%lp108804%_
                                     _%rest108845%_
                                     _%args108807%_
                                     _%tail108808%_))))
                            (if (pair? _%hd-rest108831108838%_)
                                (let ((_%hd108835108853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest108831108838%_)))
                                      (_%tl108836108855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest108831108838%_))))
                                  (let* ((_%val108858%_ _%hd108835108853%_)
                                         (_%rest108860%_ _%tl108836108855%_))
                                    (_%K108834108850%_
                                     _%rest108860%_
                                     _%val108858%_)))
                                (_%E108833108842%_)))
                          (if (eq? _%hd108829%_ '#!key)
                              (let* ((_%hd-rest108862108869%_
                                      _%hd-rest108828%_)
                                     (_%E108864108873%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest108862108869%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K108865108879%_
                                      (lambda (_%rest108876%_ _%val108877%_)
                                        (if _%args108807%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail108808%_
                                                 _%hd-rest108828%_))
                                              (_%lp108804%_
                                               _%rest108876%_
                                               _%args108807%_
                                               _%hd-rest108828%_))
                                            (_%lp108804%_
                                             _%rest108876%_
                                             _%hd-rest108828%_
                                             _%hd-rest108828%_)))))
                                (if (pair? _%hd-rest108862108869%_)
                                    (let ((_%hd108866108882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest108862108869%_)))
                                          (_%tl108867108884%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest108862108869%_))))
                                      (let* ((_%val108887%_ _%hd108866108882%_)
                                             (_%rest108889%_
                                              _%tl108867108884%_))
                                        (_%K108865108879%_
                                         _%rest108889%_
                                         _%val108887%_)))
                                    (_%E108864108873%_)))
                              (if (eq? _%hd108829%_ '#!rest)
                                  (if _%args108807%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail108808%_
                                           _%hd-rest108828%_))
                                        (let ((__tmp109076
                                               (cons _%keys108802%_
                                                     _%args108807%_)))
                                          (declare (not safe))
                                          (##apply _%K108799%_ __tmp109076)))
                                      (let ((__tmp109077
                                             (cons _%keys108802%_
                                                   _%hd-rest108828%_)))
                                        (declare (not safe))
                                        (##apply _%K108799%_ __tmp109077)))
                                  (if _%args108807%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail108808%_
                                           _%rest108806%_))
                                        (_%lp108804%_
                                         _%hd-rest108828%_
                                         _%args108807%_
                                         _%rest108806%_))
                                      (_%lp108804%_
                                       _%hd-rest108828%_
                                       _%rest108806%_
                                       _%rest108806%_))))))))
              (if (pair? _%rest108809108817%_)
                  (let ((_%hd108814108896%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108809108817%_)))
                        (_%tl108815108898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108809108817%_))))
                    (let* ((_%hd108901%_ _%hd108814108896%_)
                           (_%hd-rest108903%_ _%tl108815108898%_))
                      (_%K108813108893%_ _%hd-rest108903%_ _%hd108901%_)))
                  (_%else108811108825%_)))))))
    (define keyword-rest
      (lambda (_%kwt108790%_ . _%drop108791%_)
        (let ((_%rest108793%_ '()))
          (let ((__tmp109078
                 (lambda (_%k108795%_ _%v108796%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k108795%_ _%drop108791%_))
                       '#!void
                       (set! _%rest108793%_
                             (cons _%k108795%_
                                   (cons _%v108796%_ _%rest108793%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt108790%_ __tmp109078))
          _%rest108793%_)))))
