(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1755903074)
  (begin
    (define make-promise
      (lambda (_%thunk98581%_)
        (if (procedure? _%thunk98581%_)
            (let ((_%thunk98585%_ _%thunk98581%_))
              (__make-promise _%thunk98585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk98581%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk98569%_)
        (let ((_%thunk98572%_ _%thunk98569%_))
          (declare (not safe))
          (##make-delay-promise _%thunk98572%_))))
    (define call-with-parameters__0
      (lambda (_%thunk98521%_)
        (if (procedure? _%thunk98521%_)
            (let ((_%thunk98525%_ _%thunk98521%_))
              (declare (not safe))
              (_%thunk98525%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@16.6-16.11"
               'contract:
               'procedure?
               'value:
               _%thunk98521%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk98535%_ _%param98536%_ _%val98537%_)
        (if (procedure? _%thunk98535%_)
            (let ((_%thunk98541%_ _%thunk98535%_))
              (declare (not safe))
              (##parameterize1 _%param98536%_ _%val98537%_ _%thunk98541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@17.6-17.11"
               'contract:
               'procedure?
               'value:
               _%thunk98535%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk98551%_ _%param98552%_ _%val98553%_ . _%rest98554%_)
        (if (procedure? _%thunk98551%_)
            (let ((_%thunk98558%_ _%thunk98551%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk98558%_ _%rest98554%_))
               _%param98552%_
               _%val98553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@19.6-19.11"
               'contract:
               'procedure?
               'value:
               _%thunk98551%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g98594_
        (let ((_g98595_ (let () (declare (not safe)) (##length _g98594_))))
          (cond ((let () (declare (not safe)) (##fx= _g98595_ 1))
                 (apply call-with-parameters__0 _g98594_))
                ((let () (declare (not safe)) (##fx= _g98595_ 3))
                 (apply call-with-parameters__1 _g98594_))
                ((let () (declare (not safe)) (##fx>= _g98595_ 3))
                 (apply call-with-parameters__2 _g98594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g98594_))))))
    (define with-unwind-protect
      (lambda (_%K98496%_ _%fini98497%_)
        (if (procedure? _%K98496%_)
            (let ((_%K98501%_ _%K98496%_))
              (if (procedure? _%fini98497%_)
                  (let ((_%fini98511%_ _%fini98497%_))
                    (__with-unwind-protect _%K98501%_ _%fini98511%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@24.45-24.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini98497%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@24.28-24.29"
               'contract:
               'procedure?
               'value:
               _%K98496%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K98470%_ _%fini98471%_)
        (let* ((_%K98474%_ _%K98470%_)
               (_%fini98483%_ _%fini98471%_)
               (_%once98492%_ (vector '0))
               (__tmp98596
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp98597
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once98492%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp98597 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp98596 _%K98474%_ _%fini98483%_))))
    (define keyword-dispatch
      (lambda (_%kwt98363%_ _%K98364%_ . _%all-args98365%_)
        (if _%kwt98363%_
            (if (vector? _%kwt98363%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt98363%_))
            '#!void)
        (if (procedure? _%K98364%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K98364%_))
        (let ((_%keys98367%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp98369%_ ((_%rest98371%_ _%all-args98365%_)
                            (_%args98372%_ '#f)
                            (_%tail98373%_ '#f))
            (let* ((_%rest9837498382%_ _%rest98371%_)
                   (_%else9837698390%_
                    (lambda ()
                      (if _%args98372%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail98373%_ '()))
                            (let ((__tmp98598
                                   (cons _%keys98367%_ _%args98372%_)))
                              (declare (not safe))
                              (##apply _%K98364%_ __tmp98598)))
                          (_%K98364%_ _%keys98367%_))))
                   (_%K9837898458%_
                    (lambda (_%hd-rest98393%_ _%hd98394%_)
                      (if (keyword? _%hd98394%_)
                          (let* ((_%hd-rest9839698403%_ _%hd-rest98393%_)
                                 (_%E9839898407%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9839698403%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9839998415%_
                                  (lambda (_%rest98410%_ _%val98411%_)
                                    (if _%kwt98363%_
                                        (let ((_%pos98413%_
                                               (let ((__tmp98600
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd98394%_)))
                                                     (__tmp98599
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt98363%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp98600
                                                  __tmp98599))))
                                          (if (eq? _%hd98394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt98363%_
                                                      _%pos98413%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K98364%_
                                                     _%hd98394%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys98367%_
                                                _%hd98394%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K98364%_
                                               _%hd98394%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys98367%_
                                       _%hd98394%_
                                       _%val98411%_))
                                    (_%lp98369%_
                                     _%rest98410%_
                                     _%args98372%_
                                     _%tail98373%_))))
                            (if (pair? _%hd-rest9839698403%_)
                                (let ((_%hd9840098418%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9839698403%_)))
                                      (_%tl9840198420%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9839698403%_))))
                                  (let* ((_%val98423%_ _%hd9840098418%_)
                                         (_%rest98425%_ _%tl9840198420%_))
                                    (_%K9839998415%_
                                     _%rest98425%_
                                     _%val98423%_)))
                                (_%E9839898407%_)))
                          (if (eq? _%hd98394%_ '#!key)
                              (let* ((_%hd-rest9842798434%_ _%hd-rest98393%_)
                                     (_%E9842998438%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9842798434%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9843098444%_
                                      (lambda (_%rest98441%_ _%val98442%_)
                                        (if _%args98372%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail98373%_
                                                 _%hd-rest98393%_))
                                              (_%lp98369%_
                                               _%rest98441%_
                                               _%args98372%_
                                               _%hd-rest98393%_))
                                            (_%lp98369%_
                                             _%rest98441%_
                                             _%hd-rest98393%_
                                             _%hd-rest98393%_)))))
                                (if (pair? _%hd-rest9842798434%_)
                                    (let ((_%hd9843198447%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9842798434%_)))
                                          (_%tl9843298449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9842798434%_))))
                                      (let* ((_%val98452%_ _%hd9843198447%_)
                                             (_%rest98454%_ _%tl9843298449%_))
                                        (_%K9843098444%_
                                         _%rest98454%_
                                         _%val98452%_)))
                                    (_%E9842998438%_)))
                              (if (eq? _%hd98394%_ '#!rest)
                                  (if _%args98372%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail98373%_
                                           _%hd-rest98393%_))
                                        (let ((__tmp98601
                                               (cons _%keys98367%_
                                                     _%args98372%_)))
                                          (declare (not safe))
                                          (##apply _%K98364%_ __tmp98601)))
                                      (let ((__tmp98602
                                             (cons _%keys98367%_
                                                   _%hd-rest98393%_)))
                                        (declare (not safe))
                                        (##apply _%K98364%_ __tmp98602)))
                                  (if _%args98372%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail98373%_
                                           _%rest98371%_))
                                        (_%lp98369%_
                                         _%hd-rest98393%_
                                         _%args98372%_
                                         _%rest98371%_))
                                      (_%lp98369%_
                                       _%hd-rest98393%_
                                       _%rest98371%_
                                       _%rest98371%_))))))))
              (if (pair? _%rest9837498382%_)
                  (let ((_%hd9837998461%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9837498382%_)))
                        (_%tl9838098463%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9837498382%_))))
                    (let* ((_%hd98466%_ _%hd9837998461%_)
                           (_%hd-rest98468%_ _%tl9838098463%_))
                      (_%K9837898458%_ _%hd-rest98468%_ _%hd98466%_)))
                  (_%else9837698390%_)))))))
    (define keyword-rest
      (lambda (_%kwt98355%_ . _%drop98356%_)
        (let ((_%rest98358%_ '()))
          (let ((__tmp98603
                 (lambda (_%k98360%_ _%v98361%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k98360%_ _%drop98356%_))
                       '#!void
                       (set! _%rest98358%_
                             (cons _%k98360%_
                                   (cons _%v98361%_ _%rest98358%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt98355%_ __tmp98603))
          _%rest98358%_)))))
