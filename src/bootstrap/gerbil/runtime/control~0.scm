(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1770513293)
  (begin
    (define __make-promise
      (lambda (_%thunk117065%_)
        (let ((_%thunk117068%_ _%thunk117065%_))
          (declare (not safe))
          (##make-delay-promise _%thunk117068%_))))
    (define make-promise
      (lambda (_%thunk116528%_)
        (if (procedure? _%thunk116528%_)
            (let ((_%thunk116532%_ _%thunk116528%_))
              (__make-promise _%thunk116532%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk116528%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk117009%_)
        (let ((_%thunk117012%_ _%thunk117009%_))
          (let ((_%mx117039%_ (make-mutex 'promise))
                (_%inner117040%_
                 (let* ((_%thunk117021%_ _%thunk117012%_)
                        (_%thunk117026%_ _%thunk117021%_))
                   (__make-promise _%thunk117026%_))))
            (let* ((_%thunk117049%_
                    (lambda ()
                      (let ((_%once117043%_ (vector '0)))
                        (let ((__tmp117156
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp117157
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once117043%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp117157 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx117039%_))))
                              (__tmp117155
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner117040%_))))
                              (__tmp117154
                               (lambda () (mutex-unlock! _%mx117039%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp117156
                           __tmp117155
                           __tmp117154)))))
                   (_%thunk117054%_ _%thunk117049%_))
              (__make-promise _%thunk117054%_))))))
    (define make-atomic-promise
      (lambda (_%thunk116662%_)
        (if (procedure? _%thunk116662%_)
            (let ((_%thunk116666%_ _%thunk116662%_))
              (__make-atomic-promise _%thunk116666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk116662%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk116961%_)
        (if (procedure? _%thunk116961%_)
            (let ((_%thunk116965%_ _%thunk116961%_))
              (declare (not safe))
              (_%thunk116965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk116961%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk116975%_ _%param116976%_ _%val116977%_)
        (if (procedure? _%thunk116975%_)
            (let ((_%thunk116981%_ _%thunk116975%_))
              (declare (not safe))
              (##parameterize1 _%param116976%_ _%val116977%_ _%thunk116981%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk116975%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk116991%_ _%param116992%_ _%val116993%_ . _%rest116994%_)
        (if (procedure? _%thunk116991%_)
            (let ((_%thunk116998%_ _%thunk116991%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk116998%_ _%rest116994%_))
               _%param116992%_
               _%val116993%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk116991%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g117158_
        (let ((_g117159_ (let () (declare (not safe)) (##length _g117158_))))
          (cond ((let () (declare (not safe)) (##fx= _g117159_ 1))
                 (apply call-with-parameters__0 _g117158_))
                ((let () (declare (not safe)) (##fx= _g117159_ 3))
                 (apply call-with-parameters__1 _g117158_))
                ((let () (declare (not safe)) (##fx>= _g117159_ 3))
                 (apply call-with-parameters__2 _g117158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g117158_))))))
    (define __with-unwind-protect
      (lambda (_%K116936%_ _%fini116937%_)
        (let* ((_%K116940%_ _%K116936%_)
               (_%fini116948%_ _%fini116937%_)
               (_%once116957%_ (vector '0))
               (__tmp117160
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp117161
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once116957%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp117161 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp117160 _%K116940%_ _%fini116948%_))))
    (define with-unwind-protect
      (lambda (_%K116796%_ _%fini116797%_)
        (if (procedure? _%K116796%_)
            (let ((_%K116801%_ _%K116796%_))
              (if (procedure? _%fini116797%_)
                  (let ((_%fini116811%_ _%fini116797%_))
                    (__with-unwind-protect _%K116801%_ _%fini116811%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini116797%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K116796%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt116829%_ _%K116830%_ . _%all-args116831%_)
        (if _%kwt116829%_
            (if (vector? _%kwt116829%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt116829%_))
            '#!void)
        (if (procedure? _%K116830%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K116830%_))
        (let ((_%keys116833%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp116835%_ ((_%rest116837%_ _%all-args116831%_)
                             (_%args116838%_ '#f)
                             (_%tail116839%_ '#f))
            (let* ((_%rest116840116848%_ _%rest116837%_)
                   (_%else116842116856%_
                    (lambda ()
                      (if _%args116838%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail116839%_ '()))
                            (let ((__tmp117162
                                   (cons _%keys116833%_ _%args116838%_)))
                              (declare (not safe))
                              (##apply _%K116830%_ __tmp117162)))
                          (_%K116830%_ _%keys116833%_))))
                   (_%K116844116924%_
                    (lambda (_%hd-rest116859%_ _%hd116860%_)
                      (if (keyword? _%hd116860%_)
                          (let* ((_%hd-rest116862116869%_ _%hd-rest116859%_)
                                 (_%E116864116873%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest116862116869%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K116865116881%_
                                  (lambda (_%rest116876%_ _%val116877%_)
                                    (if _%kwt116829%_
                                        (let ((_%pos116879%_
                                               (let ((__tmp117164
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd116860%_)))
                                                     (__tmp117163
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt116829%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp117164
                                                  __tmp117163))))
                                          (if (eq? _%hd116860%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt116829%_
                                                      _%pos116879%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K116830%_
                                                     _%hd116860%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys116833%_
                                                _%hd116860%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K116830%_
                                               _%hd116860%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys116833%_
                                       _%hd116860%_
                                       _%val116877%_))
                                    (_%lp116835%_
                                     _%rest116876%_
                                     _%args116838%_
                                     _%tail116839%_))))
                            (if (pair? _%hd-rest116862116869%_)
                                (let ((_%hd116866116884%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest116862116869%_)))
                                      (_%tl116867116886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest116862116869%_))))
                                  (let* ((_%val116889%_ _%hd116866116884%_)
                                         (_%rest116891%_ _%tl116867116886%_))
                                    (_%K116865116881%_
                                     _%rest116891%_
                                     _%val116889%_)))
                                (_%E116864116873%_)))
                          (if (eq? _%hd116860%_ '#!key)
                              (let* ((_%hd-rest116893116900%_
                                      _%hd-rest116859%_)
                                     (_%E116895116904%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest116893116900%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K116896116910%_
                                      (lambda (_%rest116907%_ _%val116908%_)
                                        (if _%args116838%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail116839%_
                                                 _%hd-rest116859%_))
                                              (_%lp116835%_
                                               _%rest116907%_
                                               _%args116838%_
                                               _%hd-rest116859%_))
                                            (_%lp116835%_
                                             _%rest116907%_
                                             _%hd-rest116859%_
                                             _%hd-rest116859%_)))))
                                (if (pair? _%hd-rest116893116900%_)
                                    (let ((_%hd116897116913%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest116893116900%_)))
                                          (_%tl116898116915%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest116893116900%_))))
                                      (let* ((_%val116918%_ _%hd116897116913%_)
                                             (_%rest116920%_
                                              _%tl116898116915%_))
                                        (_%K116896116910%_
                                         _%rest116920%_
                                         _%val116918%_)))
                                    (_%E116895116904%_)))
                              (if (eq? _%hd116860%_ '#!rest)
                                  (if _%args116838%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116839%_
                                           _%hd-rest116859%_))
                                        (let ((__tmp117165
                                               (cons _%keys116833%_
                                                     _%args116838%_)))
                                          (declare (not safe))
                                          (##apply _%K116830%_ __tmp117165)))
                                      (let ((__tmp117166
                                             (cons _%keys116833%_
                                                   _%hd-rest116859%_)))
                                        (declare (not safe))
                                        (##apply _%K116830%_ __tmp117166)))
                                  (if _%args116838%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail116839%_
                                           _%rest116837%_))
                                        (_%lp116835%_
                                         _%hd-rest116859%_
                                         _%args116838%_
                                         _%rest116837%_))
                                      (_%lp116835%_
                                       _%hd-rest116859%_
                                       _%rest116837%_
                                       _%rest116837%_))))))))
              (if (pair? _%rest116840116848%_)
                  (let ((_%hd116845116927%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest116840116848%_)))
                        (_%tl116846116929%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest116840116848%_))))
                    (let* ((_%hd116932%_ _%hd116845116927%_)
                           (_%hd-rest116934%_ _%tl116846116929%_))
                      (_%K116844116924%_ _%hd-rest116934%_ _%hd116932%_)))
                  (_%else116842116856%_)))))))
    (define keyword-rest
      (lambda (_%kwt116821%_ . _%drop116822%_)
        (let ((_%rest116824%_ '()))
          (let ((__tmp117167
                 (lambda (_%k116826%_ _%v116827%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k116826%_ _%drop116822%_))
                       '#!void
                       (set! _%rest116824%_
                             (cons _%k116826%_
                                   (cons _%v116827%_ _%rest116824%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt116821%_ __tmp117167))
          _%rest116824%_)))))
