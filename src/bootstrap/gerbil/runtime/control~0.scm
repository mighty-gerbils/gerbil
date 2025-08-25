(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1756142014)
  (begin
    (define make-promise
      (lambda (_%thunk100913%_)
        (if (procedure? _%thunk100913%_)
            (let ((_%thunk100917%_ _%thunk100913%_))
              (__make-promise _%thunk100917%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk100913%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk100901%_)
        (let ((_%thunk100904%_ _%thunk100901%_))
          (declare (not safe))
          (##make-delay-promise _%thunk100904%_))))
    (define call-with-parameters__0
      (lambda (_%thunk100853%_)
        (if (procedure? _%thunk100853%_)
            (let ((_%thunk100857%_ _%thunk100853%_))
              (declare (not safe))
              (_%thunk100857%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@16.6-16.11"
               'contract:
               'procedure?
               'value:
               _%thunk100853%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk100867%_ _%param100868%_ _%val100869%_)
        (if (procedure? _%thunk100867%_)
            (let ((_%thunk100873%_ _%thunk100867%_))
              (declare (not safe))
              (##parameterize1 _%param100868%_ _%val100869%_ _%thunk100873%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@17.6-17.11"
               'contract:
               'procedure?
               'value:
               _%thunk100867%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk100883%_ _%param100884%_ _%val100885%_ . _%rest100886%_)
        (if (procedure? _%thunk100883%_)
            (let ((_%thunk100890%_ _%thunk100883%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk100890%_ _%rest100886%_))
               _%param100884%_
               _%val100885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@19.6-19.11"
               'contract:
               'procedure?
               'value:
               _%thunk100883%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g100926_
        (let ((_g100927_ (let () (declare (not safe)) (##length _g100926_))))
          (cond ((let () (declare (not safe)) (##fx= _g100927_ 1))
                 (apply call-with-parameters__0 _g100926_))
                ((let () (declare (not safe)) (##fx= _g100927_ 3))
                 (apply call-with-parameters__1 _g100926_))
                ((let () (declare (not safe)) (##fx>= _g100927_ 3))
                 (apply call-with-parameters__2 _g100926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g100926_))))))
    (define with-unwind-protect
      (lambda (_%K100828%_ _%fini100829%_)
        (if (procedure? _%K100828%_)
            (let ((_%K100833%_ _%K100828%_))
              (if (procedure? _%fini100829%_)
                  (let ((_%fini100843%_ _%fini100829%_))
                    (__with-unwind-protect _%K100833%_ _%fini100843%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@24.45-24.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini100829%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@24.28-24.29"
               'contract:
               'procedure?
               'value:
               _%K100828%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K100802%_ _%fini100803%_)
        (let* ((_%K100806%_ _%K100802%_)
               (_%fini100815%_ _%fini100803%_)
               (_%once100824%_ (vector '0))
               (__tmp100928
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp100929
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once100824%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp100929 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp100928 _%K100806%_ _%fini100815%_))))
    (define keyword-dispatch
      (lambda (_%kwt100695%_ _%K100696%_ . _%all-args100697%_)
        (if _%kwt100695%_
            (if (vector? _%kwt100695%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt100695%_))
            '#!void)
        (if (procedure? _%K100696%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K100696%_))
        (let ((_%keys100699%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp100701%_ ((_%rest100703%_ _%all-args100697%_)
                             (_%args100704%_ '#f)
                             (_%tail100705%_ '#f))
            (let* ((_%rest100706100714%_ _%rest100703%_)
                   (_%else100708100722%_
                    (lambda ()
                      (if _%args100704%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail100705%_ '()))
                            (let ((__tmp100930
                                   (cons _%keys100699%_ _%args100704%_)))
                              (declare (not safe))
                              (##apply _%K100696%_ __tmp100930)))
                          (_%K100696%_ _%keys100699%_))))
                   (_%K100710100790%_
                    (lambda (_%hd-rest100725%_ _%hd100726%_)
                      (if (keyword? _%hd100726%_)
                          (let* ((_%hd-rest100728100735%_ _%hd-rest100725%_)
                                 (_%E100730100739%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest100728100735%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K100731100747%_
                                  (lambda (_%rest100742%_ _%val100743%_)
                                    (if _%kwt100695%_
                                        (let ((_%pos100745%_
                                               (let ((__tmp100932
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd100726%_)))
                                                     (__tmp100931
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt100695%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp100932
                                                  __tmp100931))))
                                          (if (eq? _%hd100726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt100695%_
                                                      _%pos100745%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K100696%_
                                                     _%hd100726%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys100699%_
                                                _%hd100726%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K100696%_
                                               _%hd100726%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys100699%_
                                       _%hd100726%_
                                       _%val100743%_))
                                    (_%lp100701%_
                                     _%rest100742%_
                                     _%args100704%_
                                     _%tail100705%_))))
                            (if (pair? _%hd-rest100728100735%_)
                                (let ((_%hd100732100750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest100728100735%_)))
                                      (_%tl100733100752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest100728100735%_))))
                                  (let* ((_%val100755%_ _%hd100732100750%_)
                                         (_%rest100757%_ _%tl100733100752%_))
                                    (_%K100731100747%_
                                     _%rest100757%_
                                     _%val100755%_)))
                                (_%E100730100739%_)))
                          (if (eq? _%hd100726%_ '#!key)
                              (let* ((_%hd-rest100759100766%_
                                      _%hd-rest100725%_)
                                     (_%E100761100770%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest100759100766%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K100762100776%_
                                      (lambda (_%rest100773%_ _%val100774%_)
                                        (if _%args100704%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail100705%_
                                                 _%hd-rest100725%_))
                                              (_%lp100701%_
                                               _%rest100773%_
                                               _%args100704%_
                                               _%hd-rest100725%_))
                                            (_%lp100701%_
                                             _%rest100773%_
                                             _%hd-rest100725%_
                                             _%hd-rest100725%_)))))
                                (if (pair? _%hd-rest100759100766%_)
                                    (let ((_%hd100763100779%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest100759100766%_)))
                                          (_%tl100764100781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest100759100766%_))))
                                      (let* ((_%val100784%_ _%hd100763100779%_)
                                             (_%rest100786%_
                                              _%tl100764100781%_))
                                        (_%K100762100776%_
                                         _%rest100786%_
                                         _%val100784%_)))
                                    (_%E100761100770%_)))
                              (if (eq? _%hd100726%_ '#!rest)
                                  (if _%args100704%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail100705%_
                                           _%hd-rest100725%_))
                                        (let ((__tmp100933
                                               (cons _%keys100699%_
                                                     _%args100704%_)))
                                          (declare (not safe))
                                          (##apply _%K100696%_ __tmp100933)))
                                      (let ((__tmp100934
                                             (cons _%keys100699%_
                                                   _%hd-rest100725%_)))
                                        (declare (not safe))
                                        (##apply _%K100696%_ __tmp100934)))
                                  (if _%args100704%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail100705%_
                                           _%rest100703%_))
                                        (_%lp100701%_
                                         _%hd-rest100725%_
                                         _%args100704%_
                                         _%rest100703%_))
                                      (_%lp100701%_
                                       _%hd-rest100725%_
                                       _%rest100703%_
                                       _%rest100703%_))))))))
              (if (pair? _%rest100706100714%_)
                  (let ((_%hd100711100793%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest100706100714%_)))
                        (_%tl100712100795%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest100706100714%_))))
                    (let* ((_%hd100798%_ _%hd100711100793%_)
                           (_%hd-rest100800%_ _%tl100712100795%_))
                      (_%K100710100790%_ _%hd-rest100800%_ _%hd100798%_)))
                  (_%else100708100722%_)))))))
    (define keyword-rest
      (lambda (_%kwt100687%_ . _%drop100688%_)
        (let ((_%rest100690%_ '()))
          (let ((__tmp100935
                 (lambda (_%k100692%_ _%v100693%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k100692%_ _%drop100688%_))
                       '#!void
                       (set! _%rest100690%_
                             (cons _%k100692%_
                                   (cons _%v100693%_ _%rest100690%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt100687%_ __tmp100935))
          _%rest100690%_)))))
