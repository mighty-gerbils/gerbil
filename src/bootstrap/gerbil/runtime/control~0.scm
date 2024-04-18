(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1713454409)
  (begin
    (define make-promise
      (lambda (_%thunk93020%_)
        (if (procedure? _%thunk93020%_)
            (let ((_%thunk93024%_ _%thunk93020%_))
              (__make-promise _%thunk93024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk93020%_)
              '#!void))))
    (define __make-promise
      (lambda (_%thunk93008%_)
        (let ((_%thunk93011%_ _%thunk93008%_))
          (declare (not safe))
          (##make-delay-promise _%thunk93011%_))))
    (define call-with-parameters
      (lambda (_%thunk92993%_ . _%rest92994%_)
        (if (procedure? _%thunk92993%_)
            (let ((_%thunk92998%_ _%thunk92993%_))
              (declare (not safe))
              (##apply __call-with-parameters _%thunk92998%_ _%rest92994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.29-15.34"
               'contract:
               'procedure?
               'value:
               _%thunk92993%_)
              '#!void))))
    (define __call-with-parameters
      (lambda (_%thunk92931%_ . _%rest92932%_)
        (let* ((_%thunk92935%_ _%thunk92931%_)
               (_%rest9294392954%_ _%rest92932%_)
               (_%E9294692958%_
                (lambda ()
                  (error '"No clause matching"
                         _%rest9294392954%_
                         '([param val . rest])
                         '([]))
                  '#!void)))
          (let ((_%K9294892974%_
                 (lambda (_%rest92969%_ _%val92970%_ _%param92971%_)
                   (let ((__tmp93046
                          (if (null? _%rest92969%_)
                              _%thunk92935%_
                              (lambda ()
                                (apply call-with-parameters
                                       _%thunk92935%_
                                       _%rest92969%_)))))
                     (declare (not safe))
                     (##parameterize1
                      _%param92971%_
                      _%val92970%_
                      __tmp93046))))
                (_%K9294792963%_
                 (lambda () (let () (declare (not safe)) (_%thunk92935%_)))))
            (let ((_%try-match9294592966%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _%rest9294392954%_))
                         (let () (declare (not safe)) (_%thunk92935%_))
                         (_%E9294692958%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest9294392954%_))
                  (let ((_%tl9295092979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9294392954%_)))
                        (_%hd9294992977%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9294392954%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9295092979%_))
                        (let ((_%tl9295292986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9295092979%_)))
                              (_%hd9295192984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9295092979%_))))
                          (let ((_%param92982%_ _%hd9294992977%_)
                                (_%val92989%_ _%hd9295192984%_)
                                (_%rest92991%_ _%tl9295292986%_))
                            (_%K9294892974%_
                             _%rest92991%_
                             _%val92989%_
                             _%param92982%_)))
                        (_%E9294692958%_)))
                  (_%try-match9294592966%_)))))))
    (define with-unwind-protect
      (lambda (_%K92906%_ _%fini92907%_)
        (if (procedure? _%K92906%_)
            (let ((_%K92911%_ _%K92906%_))
              (if (procedure? _%fini92907%_)
                  (let ((_%fini92921%_ _%fini92907%_))
                    (__with-unwind-protect _%K92911%_ _%fini92921%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@23.45-23.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini92907%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@23.28-23.29"
               'contract:
               'procedure?
               'value:
               _%K92906%_)
              '#!void))))
    (define __with-unwind-protect
      (lambda (_%K92880%_ _%fini92881%_)
        (let* ((_%K92884%_ _%K92880%_)
               (_%fini92893%_ _%fini92881%_)
               (_%once92902%_ '#f)
               (__tmp93047
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if _%once92902%_
                      (error '"Cannot re-enter unwind protected block")
                      (set! _%once92902%_ '#t)))))
          (declare (not safe))
          (##dynamic-wind __tmp93047 _%K92884%_ _%fini92893%_))))
    (define keyword-dispatch
      (lambda (_%kwt92773%_ _%K92774%_ . _%all-args92775%_)
        (if _%kwt92773%_
            (if (vector? _%kwt92773%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt92773%_))
            '#!void)
        (if (procedure? _%K92774%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K92774%_))
        (let ((_%keys92777%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp92779%_ ((_%rest92781%_ _%all-args92775%_)
                            (_%args92782%_ '#f)
                            (_%tail92783%_ '#f))
            (let* ((_%rest9278492792%_ _%rest92781%_)
                   (_%else9278692800%_
                    (lambda ()
                      (if _%args92782%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail92783%_ '()))
                            (let ((__tmp93048
                                   (cons _%keys92777%_ _%args92782%_)))
                              (declare (not safe))
                              (##apply _%K92774%_ __tmp93048)))
                          (_%K92774%_ _%keys92777%_))))
                   (_%K9278892868%_
                    (lambda (_%hd-rest92803%_ _%hd92804%_)
                      (if (keyword? _%hd92804%_)
                          (let* ((_%hd-rest9280692813%_ _%hd-rest92803%_)
                                 (_%E9280892817%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%hd-rest9280692813%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%K9280992825%_
                                  (lambda (_%rest92820%_ _%val92821%_)
                                    (if _%kwt92773%_
                                        (let ((_%pos92823%_
                                               (let ((__tmp93050
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd92804%_)))
                                                     (__tmp93049
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt92773%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp93050
                                                  __tmp93049))))
                                          (if (eq? _%hd92804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt92773%_
                                                      _%pos92823%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K92774%_
                                                     _%hd92804%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys92777%_
                                                _%hd92804%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K92774%_
                                               _%hd92804%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys92777%_
                                       _%hd92804%_
                                       _%val92821%_))
                                    (_%lp92779%_
                                     _%rest92820%_
                                     _%args92782%_
                                     _%tail92783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd-rest9280692813%_))
                                (let ((_%hd9281092828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd-rest9280692813%_)))
                                      (_%tl9281192830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd-rest9280692813%_))))
                                  (let* ((_%val92833%_ _%hd9281092828%_)
                                         (_%rest92835%_ _%tl9281192830%_))
                                    (_%K9280992825%_
                                     _%rest92835%_
                                     _%val92833%_)))
                                (_%E9280892817%_)))
                          (if (eq? _%hd92804%_ '#!key)
                              (let* ((_%hd-rest9283792844%_ _%hd-rest92803%_)
                                     (_%E9283992848%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%hd-rest9283792844%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%K9284092854%_
                                      (lambda (_%rest92851%_ _%val92852%_)
                                        (if _%args92782%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail92783%_
                                                 _%hd-rest92803%_))
                                              (_%lp92779%_
                                               _%rest92851%_
                                               _%args92782%_
                                               _%hd-rest92803%_))
                                            (_%lp92779%_
                                             _%rest92851%_
                                             _%hd-rest92803%_
                                             _%hd-rest92803%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd-rest9283792844%_))
                                    (let ((_%hd9284192857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd-rest9283792844%_)))
                                          (_%tl9284292859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd-rest9283792844%_))))
                                      (let* ((_%val92862%_ _%hd9284192857%_)
                                             (_%rest92864%_ _%tl9284292859%_))
                                        (_%K9284092854%_
                                         _%rest92864%_
                                         _%val92862%_)))
                                    (_%E9283992848%_)))
                              (if (eq? _%hd92804%_ '#!rest)
                                  (if _%args92782%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92783%_
                                           _%hd-rest92803%_))
                                        (let ((__tmp93051
                                               (cons _%keys92777%_
                                                     _%args92782%_)))
                                          (declare (not safe))
                                          (##apply _%K92774%_ __tmp93051)))
                                      (let ((__tmp93052
                                             (cons _%keys92777%_
                                                   _%hd-rest92803%_)))
                                        (declare (not safe))
                                        (##apply _%K92774%_ __tmp93052)))
                                  (if _%args92782%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail92783%_
                                           _%rest92781%_))
                                        (_%lp92779%_
                                         _%hd-rest92803%_
                                         _%args92782%_
                                         _%rest92781%_))
                                      (_%lp92779%_
                                       _%hd-rest92803%_
                                       _%rest92781%_
                                       _%rest92781%_))))))))
              (if (let () (declare (not safe)) (##pair? _%rest9278492792%_))
                  (let ((_%hd9278992871%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest9278492792%_)))
                        (_%tl9279092873%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest9278492792%_))))
                    (let* ((_%hd92876%_ _%hd9278992871%_)
                           (_%hd-rest92878%_ _%tl9279092873%_))
                      (_%K9278892868%_ _%hd-rest92878%_ _%hd92876%_)))
                  (_%else9278692800%_)))))))
    (define keyword-rest
      (lambda (_%kwt92765%_ . _%drop92766%_)
        (let ((_%rest92768%_ '()))
          (let ((__tmp93053
                 (lambda (_%k92770%_ _%v92771%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k92770%_ _%drop92766%_))
                       '#!void
                       (set! _%rest92768%_
                             (cons _%k92770%_
                                   (cons _%v92771%_ _%rest92768%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt92765%_ __tmp93053))
          _%rest92768%_)))))
