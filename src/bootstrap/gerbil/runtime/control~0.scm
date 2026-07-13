(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1783939345)
  (begin
    (define __make-promise
      (lambda (_%thunk123212%_)
        (let ((_%thunk123215%_ _%thunk123212%_))
          (declare (not safe))
          (##make-delay-promise _%thunk123215%_))))
    (define make-promise
      (lambda (_%thunk123198%_)
        (if (procedure? _%thunk123198%_)
            (let ((_%thunk123202%_ _%thunk123198%_))
              (__make-promise _%thunk123202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk123198%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk123142%_)
        (let ((_%thunk123145%_ _%thunk123142%_))
          (let ((_%mx123172%_ (make-mutex 'promise))
                (_%inner123173%_
                 (let* ((_%thunk123154%_ _%thunk123145%_)
                        (_%thunk123159%_ _%thunk123154%_))
                   (__make-promise _%thunk123159%_))))
            (let* ((_%thunk123182%_
                    (lambda ()
                      (let ((_%once123176%_ (vector '0)))
                        (let ((__tmp123303
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp123304
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once123176%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp123304 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx123172%_))))
                              (__tmp123302
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner123173%_))))
                              (__tmp123301
                               (lambda () (mutex-unlock! _%mx123172%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp123303
                           __tmp123302
                           __tmp123301)))))
                   (_%thunk123187%_ _%thunk123182%_))
              (__make-promise _%thunk123187%_))))))
    (define make-atomic-promise
      (lambda (_%thunk123128%_)
        (if (procedure? _%thunk123128%_)
            (let ((_%thunk123132%_ _%thunk123128%_))
              (__make-atomic-promise _%thunk123132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk123128%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk123080%_)
        (if (procedure? _%thunk123080%_)
            (let ((_%thunk123084%_ _%thunk123080%_))
              (declare (not safe))
              (_%thunk123084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk123080%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk123094%_ _%param123095%_ _%val123096%_)
        (if (procedure? _%thunk123094%_)
            (let ((_%thunk123100%_ _%thunk123094%_))
              (declare (not safe))
              (##parameterize1 _%param123095%_ _%val123096%_ _%thunk123100%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk123094%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk123110%_ _%param123111%_ _%val123112%_ . _%rest123113%_)
        (if (procedure? _%thunk123110%_)
            (let ((_%thunk123117%_ _%thunk123110%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk123117%_ _%rest123113%_))
               _%param123111%_
               _%val123112%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk123110%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g123305_
        (let ((_g123306_ (let () (declare (not safe)) (##length _g123305_))))
          (cond ((let () (declare (not safe)) (##fx= _g123306_ 1))
                 (apply call-with-parameters__0 _g123305_))
                ((let () (declare (not safe)) (##fx= _g123306_ 3))
                 (apply call-with-parameters__1 _g123305_))
                ((let () (declare (not safe)) (##fx>= _g123306_ 3))
                 (apply call-with-parameters__2 _g123305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g123305_))))))
    (define __with-unwind-protect
      (lambda (_%K123055%_ _%fini123056%_)
        (let* ((_%K123059%_ _%K123055%_)
               (_%fini123067%_ _%fini123056%_)
               (_%once123076%_ (vector '0))
               (__tmp123307
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp123308
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once123076%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp123308 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp123307 _%K123059%_ _%fini123067%_))))
    (define with-unwind-protect
      (lambda (_%K123030%_ _%fini123031%_)
        (if (procedure? _%K123030%_)
            (let ((_%K123035%_ _%K123030%_))
              (if (procedure? _%fini123031%_)
                  (let ((_%fini123045%_ _%fini123031%_))
                    (__with-unwind-protect _%K123035%_ _%fini123045%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini123031%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K123030%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt122923%_ _%K122924%_ . _%all-args122925%_)
        (if _%kwt122923%_
            (if (vector? _%kwt122923%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt122923%_))
            '#!void)
        (if (procedure? _%K122924%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K122924%_))
        (let ((_%keys122927%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp122929%_ ((_%rest122931%_ _%all-args122925%_)
                             (_%args122932%_ '#f)
                             (_%tail122933%_ '#f))
            (let* ((_%$%rest122934122942%_ _%rest122931%_)
                   (_%$%else122936122950%_
                    (lambda ()
                      (if _%args122932%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail122933%_ '()))
                            (let ((__tmp123309
                                   (cons _%keys122927%_ _%args122932%_)))
                              (declare (not safe))
                              (##apply _%K122924%_ __tmp123309)))
                          (_%K122924%_ _%keys122927%_))))
                   (_%$%K122938123018%_
                    (lambda (_%hd-rest122953%_ _%hd122954%_)
                      (if (keyword? _%hd122954%_)
                          (let* ((_%$%hd-rest122956122963%_ _%hd-rest122953%_)
                                 (_%$%E122958122967%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest122956122963%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K122959122975%_
                                  (lambda (_%rest122970%_ _%val122971%_)
                                    (if _%kwt122923%_
                                        (let ((_%pos122973%_
                                               (let ((__tmp123311
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd122954%_)))
                                                     (__tmp123310
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt122923%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp123311
                                                  __tmp123310))))
                                          (if (eq? _%hd122954%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt122923%_
                                                      _%pos122973%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K122924%_
                                                     _%hd122954%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys122927%_
                                                _%hd122954%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K122924%_
                                               _%hd122954%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys122927%_
                                       _%hd122954%_
                                       _%val122971%_))
                                    (_%lp122929%_
                                     _%rest122970%_
                                     _%args122932%_
                                     _%tail122933%_))))
                            (if (pair? _%$%hd-rest122956122963%_)
                                (let ((_%$%hd122960122978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest122956122963%_)))
                                      (_%$%tl122961122980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest122956122963%_))))
                                  (let* ((_%val122983%_ _%$%hd122960122978%_)
                                         (_%rest122985%_ _%$%tl122961122980%_))
                                    (_%$%K122959122975%_
                                     _%rest122985%_
                                     _%val122983%_)))
                                (_%$%E122958122967%_)))
                          (if (eq? _%hd122954%_ '#!key)
                              (let* ((_%$%hd-rest122987122994%_
                                      _%hd-rest122953%_)
                                     (_%$%E122989122998%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest122987122994%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K122990123004%_
                                      (lambda (_%rest123001%_ _%val123002%_)
                                        (if _%args122932%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail122933%_
                                                 _%hd-rest122953%_))
                                              (_%lp122929%_
                                               _%rest123001%_
                                               _%args122932%_
                                               _%hd-rest122953%_))
                                            (_%lp122929%_
                                             _%rest123001%_
                                             _%hd-rest122953%_
                                             _%hd-rest122953%_)))))
                                (if (pair? _%$%hd-rest122987122994%_)
                                    (let ((_%$%hd122991123007%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest122987122994%_)))
                                          (_%$%tl122992123009%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest122987122994%_))))
                                      (let* ((_%val123012%_
                                              _%$%hd122991123007%_)
                                             (_%rest123014%_
                                              _%$%tl122992123009%_))
                                        (_%$%K122990123004%_
                                         _%rest123014%_
                                         _%val123012%_)))
                                    (_%$%E122989122998%_)))
                              (if (eq? _%hd122954%_ '#!rest)
                                  (if _%args122932%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail122933%_
                                           _%hd-rest122953%_))
                                        (let ((__tmp123312
                                               (cons _%keys122927%_
                                                     _%args122932%_)))
                                          (declare (not safe))
                                          (##apply _%K122924%_ __tmp123312)))
                                      (let ((__tmp123313
                                             (cons _%keys122927%_
                                                   _%hd-rest122953%_)))
                                        (declare (not safe))
                                        (##apply _%K122924%_ __tmp123313)))
                                  (if _%args122932%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail122933%_
                                           _%rest122931%_))
                                        (_%lp122929%_
                                         _%hd-rest122953%_
                                         _%args122932%_
                                         _%rest122931%_))
                                      (_%lp122929%_
                                       _%hd-rest122953%_
                                       _%rest122931%_
                                       _%rest122931%_))))))))
              (if (pair? _%$%rest122934122942%_)
                  (let ((_%$%hd122939123021%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest122934122942%_)))
                        (_%$%tl122940123023%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest122934122942%_))))
                    (let* ((_%hd123026%_ _%$%hd122939123021%_)
                           (_%hd-rest123028%_ _%$%tl122940123023%_))
                      (_%$%K122938123018%_ _%hd-rest123028%_ _%hd123026%_)))
                  (_%$%else122936122950%_)))))))
    (define keyword-rest
      (lambda (_%kwt122915%_ . _%drop122916%_)
        (let ((_%rest122918%_ '()))
          (let ((__tmp123314
                 (lambda (_%k122920%_ _%v122921%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k122920%_ _%drop122916%_))
                       '#!void
                       (set! _%rest122918%_
                             (cons _%k122920%_
                                   (cons _%v122921%_ _%rest122918%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt122915%_ __tmp123314))
          _%rest122918%_)))))
