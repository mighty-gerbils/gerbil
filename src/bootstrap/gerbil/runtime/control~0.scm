(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1771036668)
  (begin
    (define __make-promise
      (lambda (_%thunk302367%_)
        (let ((_%thunk302370%_ _%thunk302367%_))
          (declare (not safe))
          (##make-delay-promise _%thunk302370%_))))
    (define make-promise
      (lambda (_%thunk301830%_)
        (if (procedure? _%thunk301830%_)
            (let ((_%thunk301834%_ _%thunk301830%_))
              (__make-promise _%thunk301834%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk301830%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk302311%_)
        (let ((_%thunk302314%_ _%thunk302311%_))
          (let ((_%mx302341%_ (make-mutex 'promise))
                (_%inner302342%_
                 (let* ((_%thunk302323%_ _%thunk302314%_)
                        (_%thunk302328%_ _%thunk302323%_))
                   (__make-promise _%thunk302328%_))))
            (let* ((_%thunk302351%_
                    (lambda ()
                      (let ((_%once302345%_ (vector '0)))
                        (let ((__tmp302458
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp302459
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once302345%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp302459 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx302341%_))))
                              (__tmp302457
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner302342%_))))
                              (__tmp302456
                               (lambda () (mutex-unlock! _%mx302341%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp302458
                           __tmp302457
                           __tmp302456)))))
                   (_%thunk302356%_ _%thunk302351%_))
              (__make-promise _%thunk302356%_))))))
    (define make-atomic-promise
      (lambda (_%thunk301964%_)
        (if (procedure? _%thunk301964%_)
            (let ((_%thunk301968%_ _%thunk301964%_))
              (__make-atomic-promise _%thunk301968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk301964%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk302263%_)
        (if (procedure? _%thunk302263%_)
            (let ((_%thunk302267%_ _%thunk302263%_))
              (declare (not safe))
              (_%thunk302267%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk302263%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk302277%_ _%param302278%_ _%val302279%_)
        (if (procedure? _%thunk302277%_)
            (let ((_%thunk302283%_ _%thunk302277%_))
              (declare (not safe))
              (##parameterize1 _%param302278%_ _%val302279%_ _%thunk302283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk302277%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk302293%_ _%param302294%_ _%val302295%_ . _%rest302296%_)
        (if (procedure? _%thunk302293%_)
            (let ((_%thunk302300%_ _%thunk302293%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk302300%_ _%rest302296%_))
               _%param302294%_
               _%val302295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk302293%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g302460_
        (let ((_g302461_ (let () (declare (not safe)) (##length _g302460_))))
          (cond ((let () (declare (not safe)) (##fx= _g302461_ 1))
                 (apply call-with-parameters__0 _g302460_))
                ((let () (declare (not safe)) (##fx= _g302461_ 3))
                 (apply call-with-parameters__1 _g302460_))
                ((let () (declare (not safe)) (##fx>= _g302461_ 3))
                 (apply call-with-parameters__2 _g302460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g302460_))))))
    (define __with-unwind-protect
      (lambda (_%K302238%_ _%fini302239%_)
        (let* ((_%K302242%_ _%K302238%_)
               (_%fini302250%_ _%fini302239%_)
               (_%once302259%_ (vector '0))
               (__tmp302462
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp302463
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once302259%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp302463 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp302462 _%K302242%_ _%fini302250%_))))
    (define with-unwind-protect
      (lambda (_%K302098%_ _%fini302099%_)
        (if (procedure? _%K302098%_)
            (let ((_%K302103%_ _%K302098%_))
              (if (procedure? _%fini302099%_)
                  (let ((_%fini302113%_ _%fini302099%_))
                    (__with-unwind-protect _%K302103%_ _%fini302113%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini302099%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K302098%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt302131%_ _%K302132%_ . _%all-args302133%_)
        (if _%kwt302131%_
            (if (vector? _%kwt302131%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt302131%_))
            '#!void)
        (if (procedure? _%K302132%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K302132%_))
        (let ((_%keys302135%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp302137%_ ((_%rest302139%_ _%all-args302133%_)
                             (_%args302140%_ '#f)
                             (_%tail302141%_ '#f))
            (let* ((_%rest302142302150%_ _%rest302139%_)
                   (_%else302144302158%_
                    (lambda ()
                      (if _%args302140%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail302141%_ '()))
                            (let ((__tmp302464
                                   (cons _%keys302135%_ _%args302140%_)))
                              (declare (not safe))
                              (##apply _%K302132%_ __tmp302464)))
                          (_%K302132%_ _%keys302135%_))))
                   (_%K302146302226%_
                    (lambda (_%hd-rest302161%_ _%hd302162%_)
                      (if (keyword? _%hd302162%_)
                          (let* ((_%hd-rest302164302171%_ _%hd-rest302161%_)
                                 (_%E302166302175%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest302164302171%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K302167302183%_
                                  (lambda (_%rest302178%_ _%val302179%_)
                                    (if _%kwt302131%_
                                        (let ((_%pos302181%_
                                               (let ((__tmp302466
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd302162%_)))
                                                     (__tmp302465
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt302131%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp302466
                                                  __tmp302465))))
                                          (if (eq? _%hd302162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt302131%_
                                                      _%pos302181%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K302132%_
                                                     _%hd302162%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys302135%_
                                                _%hd302162%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K302132%_
                                               _%hd302162%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys302135%_
                                       _%hd302162%_
                                       _%val302179%_))
                                    (_%lp302137%_
                                     _%rest302178%_
                                     _%args302140%_
                                     _%tail302141%_))))
                            (if (pair? _%hd-rest302164302171%_)
                                (let ((_%hd302168302186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest302164302171%_)))
                                      (_%tl302169302188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest302164302171%_))))
                                  (let* ((_%val302191%_ _%hd302168302186%_)
                                         (_%rest302193%_ _%tl302169302188%_))
                                    (_%K302167302183%_
                                     _%rest302193%_
                                     _%val302191%_)))
                                (_%E302166302175%_)))
                          (if (eq? _%hd302162%_ '#!key)
                              (let* ((_%hd-rest302195302202%_
                                      _%hd-rest302161%_)
                                     (_%E302197302206%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest302195302202%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K302198302212%_
                                      (lambda (_%rest302209%_ _%val302210%_)
                                        (if _%args302140%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail302141%_
                                                 _%hd-rest302161%_))
                                              (_%lp302137%_
                                               _%rest302209%_
                                               _%args302140%_
                                               _%hd-rest302161%_))
                                            (_%lp302137%_
                                             _%rest302209%_
                                             _%hd-rest302161%_
                                             _%hd-rest302161%_)))))
                                (if (pair? _%hd-rest302195302202%_)
                                    (let ((_%hd302199302215%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest302195302202%_)))
                                          (_%tl302200302217%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest302195302202%_))))
                                      (let* ((_%val302220%_ _%hd302199302215%_)
                                             (_%rest302222%_
                                              _%tl302200302217%_))
                                        (_%K302198302212%_
                                         _%rest302222%_
                                         _%val302220%_)))
                                    (_%E302197302206%_)))
                              (if (eq? _%hd302162%_ '#!rest)
                                  (if _%args302140%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail302141%_
                                           _%hd-rest302161%_))
                                        (let ((__tmp302467
                                               (cons _%keys302135%_
                                                     _%args302140%_)))
                                          (declare (not safe))
                                          (##apply _%K302132%_ __tmp302467)))
                                      (let ((__tmp302468
                                             (cons _%keys302135%_
                                                   _%hd-rest302161%_)))
                                        (declare (not safe))
                                        (##apply _%K302132%_ __tmp302468)))
                                  (if _%args302140%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail302141%_
                                           _%rest302139%_))
                                        (_%lp302137%_
                                         _%hd-rest302161%_
                                         _%args302140%_
                                         _%rest302139%_))
                                      (_%lp302137%_
                                       _%hd-rest302161%_
                                       _%rest302139%_
                                       _%rest302139%_))))))))
              (if (pair? _%rest302142302150%_)
                  (let ((_%hd302147302229%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest302142302150%_)))
                        (_%tl302148302231%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest302142302150%_))))
                    (let* ((_%hd302234%_ _%hd302147302229%_)
                           (_%hd-rest302236%_ _%tl302148302231%_))
                      (_%K302146302226%_ _%hd-rest302236%_ _%hd302234%_)))
                  (_%else302144302158%_)))))))
    (define keyword-rest
      (lambda (_%kwt302123%_ . _%drop302124%_)
        (let ((_%rest302126%_ '()))
          (let ((__tmp302469
                 (lambda (_%k302128%_ _%v302129%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k302128%_ _%drop302124%_))
                       '#!void
                       (set! _%rest302126%_
                             (cons _%k302128%_
                                   (cons _%v302129%_ _%rest302126%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt302123%_ __tmp302469))
          _%rest302126%_)))))
