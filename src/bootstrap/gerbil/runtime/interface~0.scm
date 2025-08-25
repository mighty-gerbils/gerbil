(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1756156299)
  (begin
    (define CastError::t
      (let ((__tmp112586 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp112586
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args112579%_
        (apply make-instance CastError::t _%$args112579%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where112453%_ _%message112454%_ . _%irritants112455%_)
        (let ((__tmp112587
               (let ((__obj112582
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj112582
                    _%message112454%_
                    'where:
                    _%where112453%_
                    'irritants:
                    _%irritants112455%_))
                 __obj112582)))
          (declare (not safe))
          (raise __tmp112587))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp112589 (list)) (__tmp112588 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp112589
         '(__object)
         __tmp112588
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp112591 (list))
            (__tmp112590
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp112591
         '(type methods)
         __tmp112590
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args112450%_
        (apply make-instance interface-descriptor::t _%$args112450%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define __interface-hash-key
      (lambda (_%key112448%_)
        (let ((__tmp112594
               (let ((__tmp112595
                      (let () (declare (not safe)) (##car _%key112448%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp112595)))
              (__tmp112592
               (let ((__tmp112593
                      (let () (declare (not safe)) (##cdr _%key112448%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp112593))))
          (declare (not safe))
          (##fxxor __tmp112594 __tmp112592))))
    (define __interface-test-key
      (lambda (_%a112445%_ _%b112446%_)
        (if (let ((__tmp112597
                   (let () (declare (not safe)) (##car _%a112445%_)))
                  (__tmp112596
                   (let () (declare (not safe)) (##car _%b112446%_))))
              (declare (not safe))
              (##eq? __tmp112597 __tmp112596))
            (let ((__tmp112599
                   (let () (declare (not safe)) (##cdr _%a112445%_)))
                  (__tmp112598
                   (let () (declare (not safe)) (##cdr _%b112446%_))))
              (declare (not safe))
              (##eq? __tmp112599 __tmp112598))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint112426%_ _%seed112428%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint112426%_
           __interface-hash-key
           __interface-test-key
           _%seed112428%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint112434%_ '#f) (_%seed112436%_ '0))
          (make-prototype-table__% _%size-hint112434%_ _%seed112436%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint112438%_)
        (let ((_%seed112440%_ '0))
          (make-prototype-table__% _%size-hint112438%_ _%seed112440%_))))
    (define make-prototype-table
      (lambda _g112600_
        (let ((_g112601_ (let () (declare (not safe)) (##length _g112600_))))
          (cond ((let () (declare (not safe)) (##fx= _g112601_ 0))
                 (apply make-prototype-table__0 _g112600_))
                ((let () (declare (not safe)) (##fx= _g112601_ 1))
                 (apply make-prototype-table__1 _g112600_))
                ((let () (declare (not safe)) (##fx= _g112601_ 2))
                 (apply make-prototype-table__% _g112600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g112600_))))))
    (define prototype-table-ref
      (lambda (_%tab112379%_ _%key112380%_ _%default112381%_)
        (let ((_%table112383%_
               (let () (declare (not safe)) (&raw-table-table _%tab112379%_)))
              (_%seed112384%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112379%_))))
          (let* ((_%h112386%_
                  (fxxor (__interface-hash-key _%key112380%_) _%seed112384%_))
                 (_%size112389%_ (vector-length _%table112383%_))
                 (_%entries112392%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112389%_ '2)))
                 (_%start112395%_
                  (let ((__tmp112602
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112386%_ _%entries112392%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112602 '1))))
            (let _%loop112399%_ ((_%probe112402%_ _%start112395%_)
                                 (_%i112404%_ '1)
                                 (_%deleted112406%_ '#f))
              (let ((_%k112409%_ (vector-ref _%table112383%_ _%probe112402%_)))
                (if (eq? _%k112409%_ (macro-unused-obj))
                    _%default112381%_
                    (if (eq? _%k112409%_ (macro-deleted-obj))
                        (_%loop112399%_
                         (let ((_%next-probe112414%_
                                (fx+ _%start112395%_
                                     _%i112404%_
                                     (fx* _%i112404%_ _%i112404%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112414%_ _%size112389%_))
                         (let () (declare (not safe)) (##fx+ _%i112404%_ '1))
                         (let ((_%$e112417%_ _%deleted112406%_))
                           (if _%$e112417%_ _%$e112417%_ _%probe112402%_)))
                        (if (__interface-test-key _%key112380%_ _%k112409%_)
                            (vector-ref
                             _%table112383%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe112402%_ '1)))
                            (_%loop112399%_
                             (let ((_%next-probe112422%_
                                    (fx+ _%start112395%_
                                         _%i112404%_
                                         (fx* _%i112404%_ _%i112404%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112422%_
                                _%size112389%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112404%_ '1))
                             _%deleted112406%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab112375%_ _%key112376%_ _%value112377%_)
        (if (let ((__tmp112605
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112375%_)))
                  (__tmp112603
                   (let ((__tmp112604
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112375%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112604 '4))))
              (declare (not safe))
              (##fx< __tmp112605 __tmp112603))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112375%_))
            '#!void)
        (__prototype-table-set! _%tab112375%_ _%key112376%_ _%value112377%_)))
    (define __prototype-table-set!
      (lambda (_%tab112326%_ _%key112327%_ _%value112328%_)
        (let ((_%table112331%_
               (let () (declare (not safe)) (&raw-table-table _%tab112326%_)))
              (_%seed112332%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112326%_))))
          (let* ((_%h112334%_
                  (fxxor (__interface-hash-key _%key112327%_) _%seed112332%_))
                 (_%size112337%_ (vector-length _%table112331%_))
                 (_%entries112340%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112337%_ '2)))
                 (_%start112343%_
                  (let ((__tmp112606
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112334%_ _%entries112340%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112606 '1))))
            (let _%loop112347%_ ((_%probe112350%_ _%start112343%_)
                                 (_%i112352%_ '1)
                                 (_%deleted112354%_ '#f))
              (let ((_%k112357%_ (vector-ref _%table112331%_ _%probe112350%_)))
                (if (eq? _%k112357%_ (macro-unused-obj))
                    (if _%deleted112354%_
                        (begin
                          (vector-set!
                           _%table112331%_
                           _%deleted112354%_
                           _%key112327%_)
                          (vector-set!
                           _%table112331%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112354%_ '1))
                           _%value112328%_)
                          ((lambda ()
                             (let ((__tmp112607
                                    (let ((__tmp112608
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112326%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112608 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112326%_
                                __tmp112607)))))
                        (begin
                          (vector-set!
                           _%table112331%_
                           _%probe112350%_
                           _%key112327%_)
                          (vector-set!
                           _%table112331%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112350%_ '1))
                           _%value112328%_)
                          ((lambda ()
                             (let ((__tmp112609
                                    (let ((__tmp112610
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112326%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112610 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112326%_
                                __tmp112609))
                             (let ((__tmp112611
                                    (let ((__tmp112612
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112326%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112612 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112326%_
                                __tmp112611))))))
                    (if (eq? _%k112357%_ (macro-deleted-obj))
                        (_%loop112347%_
                         (let ((_%next-probe112364%_
                                (fx+ _%start112343%_
                                     _%i112352%_
                                     (fx* _%i112352%_ _%i112352%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112364%_ _%size112337%_))
                         (let () (declare (not safe)) (##fx+ _%i112352%_ '1))
                         (let ((_%$e112367%_ _%deleted112354%_))
                           (if _%$e112367%_ _%$e112367%_ _%probe112350%_)))
                        (if (__interface-test-key _%key112327%_ _%k112357%_)
                            (let ()
                              (vector-set!
                               _%table112331%_
                               _%probe112350%_
                               _%key112327%_)
                              (vector-set!
                               _%table112331%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112350%_ '1))
                               _%value112328%_))
                            (_%loop112347%_
                             (let ((_%next-probe112372%_
                                    (fx+ _%start112343%_
                                         _%i112352%_
                                         (fx* _%i112352%_ _%i112352%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112372%_
                                _%size112337%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112352%_ '1))
                             _%deleted112354%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab112321%_
               _%key112322%_
               _%prototype-table-update!112323%_
               _%default112324%_)
        (if (let ((__tmp112615
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112321%_)))
                  (__tmp112613
                   (let ((__tmp112614
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112321%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112614 '4))))
              (declare (not safe))
              (##fx< __tmp112615 __tmp112613))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112321%_))
            '#!void)
        (__prototype-table-update!
         _%tab112321%_
         _%key112322%_
         _%prototype-table-update!112323%_
         _%default112324%_)))
    (define __prototype-table-update!
      (lambda (_%tab112271%_
               _%key112272%_
               _%prototype-table-update!112273%_
               _%default112274%_)
        (let ((_%table112277%_
               (let () (declare (not safe)) (&raw-table-table _%tab112271%_)))
              (_%seed112278%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112271%_))))
          (let* ((_%h112280%_
                  (fxxor (__interface-hash-key _%key112272%_) _%seed112278%_))
                 (_%size112283%_ (vector-length _%table112277%_))
                 (_%entries112286%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112283%_ '2)))
                 (_%start112289%_
                  (let ((__tmp112616
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112280%_ _%entries112286%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112616 '1))))
            (let _%loop112293%_ ((_%probe112296%_ _%start112289%_)
                                 (_%i112298%_ '1)
                                 (_%deleted112300%_ '#f))
              (let ((_%k112303%_ (vector-ref _%table112277%_ _%probe112296%_)))
                (if (eq? _%k112303%_ (macro-unused-obj))
                    (if _%deleted112300%_
                        (begin
                          (vector-set!
                           _%table112277%_
                           _%deleted112300%_
                           _%key112272%_)
                          (vector-set!
                           _%table112277%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112300%_ '1))
                           (_%prototype-table-update!112273%_
                            _%default112274%_))
                          ((lambda ()
                             (let ((__tmp112617
                                    (let ((__tmp112618
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112271%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112618 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112271%_
                                __tmp112617)))))
                        (begin
                          (vector-set!
                           _%table112277%_
                           _%probe112296%_
                           _%key112272%_)
                          (vector-set!
                           _%table112277%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112296%_ '1))
                           (_%prototype-table-update!112273%_
                            _%default112274%_))
                          ((lambda ()
                             (let ((__tmp112619
                                    (let ((__tmp112620
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112271%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112620 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112271%_
                                __tmp112619))
                             (let ((__tmp112621
                                    (let ((__tmp112622
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112271%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112622 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112271%_
                                __tmp112621))))))
                    (if (eq? _%k112303%_ (macro-deleted-obj))
                        (_%loop112293%_
                         (let ((_%next-probe112310%_
                                (fx+ _%start112289%_
                                     _%i112298%_
                                     (fx* _%i112298%_ _%i112298%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112310%_ _%size112283%_))
                         (let () (declare (not safe)) (##fx+ _%i112298%_ '1))
                         (let ((_%$e112313%_ _%deleted112300%_))
                           (if _%$e112313%_ _%$e112313%_ _%probe112296%_)))
                        (if (__interface-test-key _%key112272%_ _%k112303%_)
                            (let ()
                              (vector-set!
                               _%table112277%_
                               _%probe112296%_
                               _%key112272%_)
                              (vector-set!
                               _%table112277%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112296%_ '1))
                               (_%prototype-table-update!112273%_
                                (vector-ref
                                 _%table112277%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe112296%_ '1))))))
                            (_%loop112293%_
                             (let ((_%next-probe112318%_
                                    (fx+ _%start112289%_
                                         _%i112298%_
                                         (fx* _%i112298%_ _%i112298%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112318%_
                                _%size112283%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112298%_ '1))
                             _%deleted112300%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab112226%_ _%key112228%_)
        (let ((_%table112231%_
               (let () (declare (not safe)) (&raw-table-table _%tab112226%_)))
              (_%seed112233%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112226%_))))
          (let* ((_%h112236%_
                  (fxxor (__interface-hash-key _%key112228%_) _%seed112233%_))
                 (_%size112239%_ (vector-length _%table112231%_))
                 (_%entries112242%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112239%_ '2)))
                 (_%start112245%_
                  (let ((__tmp112623
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112236%_ _%entries112242%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112623 '1))))
            (let _%loop112249%_ ((_%probe112252%_ _%start112245%_)
                                 (_%i112254%_ '1))
              (let ((_%k112257%_ (vector-ref _%table112231%_ _%probe112252%_)))
                (if (eq? _%k112257%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k112257%_ (macro-deleted-obj))
                        (_%loop112249%_
                         (let ((_%next-probe112262%_
                                (fx+ _%start112245%_
                                     _%i112254%_
                                     (fx* _%i112254%_ _%i112254%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112262%_ _%size112239%_))
                         (let () (declare (not safe)) (##fx+ _%i112254%_ '1)))
                        (if (__interface-test-key _%key112228%_ _%k112257%_)
                            (let ()
                              (vector-set!
                               _%table112231%_
                               _%probe112252%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table112231%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112252%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp112624
                                        (let ((__tmp112625
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab112226%_))))
                                          (declare (not safe))
                                          (##fx- __tmp112625 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab112226%_
                                    __tmp112624)))))
                            (_%loop112249%_
                             (let ((_%next-probe112268%_
                                    (fx+ _%start112245%_
                                         _%i112254%_
                                         (fx* _%i112254%_ _%i112254%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112268%_
                                _%size112239%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112254%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass112218%_)
        (let ((_%super112219112221%_
               (let () (declare (not safe)) (##type-super _%klass112218%_))))
          (if _%super112219112221%_
              (let ((_%super112224%_ _%super112219112221%_))
                (eq? (let () (declare (not safe)) (##type-id _%super112224%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor112052%_ _%klass112053%_ _%obj-klass112054%_)
        (let ((_%method-table112056%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass112054%_))))
          (let _%loop112059%_ ((_%rest112062%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor112052%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count112064%_ '0)
                               (_%methods112066%_ '()))
            (let* ((_%rest112068112076%_ _%rest112062%_)
                   (_%else112070112138%_
                    (lambda ()
                      (let ((_%prototype112084%_
                             (let ((__obj112584
                                    (let ((__tmp112626
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count112064%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass112053%_
                                       __tmp112626))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj112584 '#f))
                               __obj112584)))
                        (let _%loop112087%_ ((_%rest112089%_ _%methods112066%_)
                                             (_%off112090%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count112064%_ '1))))
                          (let* ((_%rest112092112100%_ _%rest112089%_)
                                 (_%else112094112119%_
                                  (lambda ()
                                    (let ((_%prototype-key112108%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass112053%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass112054%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again112113%_ ()
                                          (if (let ((__tmp112627
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp112627 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again112113%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key112108%_
                                       _%prototype112084%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype112117%_)
                                         _%prototype112117%_)
                                       _%prototype112084%_))))
                                 (_%K112096112126%_
                                  (lambda (_%rest112122%_ _%method112123%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype112084%_
                                       _%method112123%_
                                       _%off112090%_
                                       _%klass112053%_
                                       '#f))
                                    (_%loop112087%_
                                     _%rest112122%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off112090%_ '1))))))
                            (if (pair? _%rest112092112100%_)
                                (let ((_%hd112097112129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest112092112100%_)))
                                      (_%tl112098112131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest112092112100%_))))
                                  (let* ((_%method112134%_ _%hd112097112129%_)
                                         (_%rest112136%_ _%tl112098112131%_))
                                    (_%K112096112126%_
                                     _%rest112136%_
                                     _%method112134%_)))
                                (_%else112094112119%_)))))))
                   (_%K112072112206%_
                    (lambda (_%rest112141%_ _%method-spec112142%_)
                      (if (pair? _%method-spec112142%_)
                          (let _%loop-inner112146%_ ((_%methods-rest112149%_
                                                      _%method-spec112142%_))
                            (let* ((_%methods-rest112151112159%_
                                    _%methods-rest112149%_)
                                   (_%else112153112171%_
                                    (lambda ()
                                      ((lambda (_%klass112167%_
                                                _%obj-klass112168%_
                                                _%method-name112169%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass112167%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass112167%_))
                                          'class:
                                          _%obj-klass112168%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass112168%_))
                                          'method:
                                          _%method-name112169%_)
                                         '#!void)
                                       _%klass112053%_
                                       _%obj-klass112054%_
                                       _%method-spec112142%_)))
                                   (_%K112155112184%_
                                    (lambda (_%methods-rest112174%_
                                             _%method-name112175%_)
                                      (let ((_%$e112178%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table112056%_
                                                _%method-name112175%_
                                                '#f))))
                                        (if _%$e112178%_
                                            ((lambda (_%method112181%_)
                                               (_%loop112059%_
                                                _%rest112141%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count112064%_ '1))
                                                (cons _%method112181%_
                                                      _%methods112066%_)))
                                             _%$e112178%_)
                                            (_%loop-inner112146%_
                                             _%methods-rest112174%_))))))
                              (if (pair? _%methods-rest112151112159%_)
                                  (let ((_%hd112156112187%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest112151112159%_)))
                                        (_%tl112157112189%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest112151112159%_))))
                                    (let* ((_%method-name112192%_
                                            _%hd112156112187%_)
                                           (_%methods-rest112194%_
                                            _%tl112157112189%_))
                                      (_%K112155112184%_
                                       _%methods-rest112194%_
                                       _%method-name112192%_)))
                                  (_%else112153112171%_))))
                          (let ((_%$e112196%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table112056%_
                                    _%method-spec112142%_
                                    '#f))))
                            (if _%$e112196%_
                                ((lambda (_%method112199%_)
                                   (_%loop112059%_
                                    _%rest112141%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count112064%_ '1))
                                    (cons _%method112199%_ _%methods112066%_)))
                                 _%$e112196%_)
                                ((lambda (_%klass112202%_
                                          _%obj-klass112203%_
                                          _%method-name112204%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass112202%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass112202%_))
                                    'class:
                                    _%obj-klass112203%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass112203%_))
                                    'method:
                                    _%method-name112204%_)
                                   '#!void)
                                 _%klass112053%_
                                 _%obj-klass112054%_
                                 _%method-spec112142%_)))))))
              (if (pair? _%rest112068112076%_)
                  (let ((_%hd112073112209%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112068112076%_)))
                        (_%tl112074112211%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112068112076%_))))
                    (let* ((_%method-spec112214%_ _%hd112073112209%_)
                           (_%rest112216%_ _%tl112074112211%_))
                      (_%K112072112206%_
                       _%rest112216%_
                       _%method-spec112214%_)))
                  (_%else112070112138%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor111886%_ _%klass111887%_ _%obj-klass111888%_)
        (let ((_%method-table111890%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass111888%_))))
          (let _%loop111893%_ ((_%rest111896%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor111886%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count111898%_ '0)
                               (_%methods111900%_ '()))
            (let* ((_%rest111902111910%_ _%rest111896%_)
                   (_%else111904111972%_
                    (lambda ()
                      (let ((_%prototype111918%_
                             (let ((__obj112585
                                    (let ((__tmp112628
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count111898%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass111887%_
                                       __tmp112628))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj112585 '#f))
                               __obj112585)))
                        (let _%loop111921%_ ((_%rest111923%_ _%methods111900%_)
                                             (_%off111924%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count111898%_ '1))))
                          (let* ((_%rest111926111934%_ _%rest111923%_)
                                 (_%else111928111953%_
                                  (lambda ()
                                    (let ((_%prototype-key111942%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass111887%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass111888%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again111947%_ ()
                                          (if (let ((__tmp112629
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp112629 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again111947%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key111942%_
                                       _%prototype111918%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype111951%_)
                                         _%prototype111951%_)
                                       _%prototype111918%_))))
                                 (_%K111930111960%_
                                  (lambda (_%rest111956%_ _%method111957%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype111918%_
                                       _%method111957%_
                                       _%off111924%_
                                       _%klass111887%_
                                       '#f))
                                    (_%loop111921%_
                                     _%rest111956%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off111924%_ '1))))))
                            (if (pair? _%rest111926111934%_)
                                (let ((_%hd111931111963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest111926111934%_)))
                                      (_%tl111932111965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest111926111934%_))))
                                  (let* ((_%method111968%_ _%hd111931111963%_)
                                         (_%rest111970%_ _%tl111932111965%_))
                                    (_%K111930111960%_
                                     _%rest111970%_
                                     _%method111968%_)))
                                (_%else111928111953%_)))))))
                   (_%K111906112040%_
                    (lambda (_%rest111975%_ _%method-spec111976%_)
                      (if (pair? _%method-spec111976%_)
                          (let _%loop-inner111980%_ ((_%methods-rest111983%_
                                                      _%method-spec111976%_))
                            (let* ((_%methods-rest111985111993%_
                                    _%methods-rest111983%_)
                                   (_%else111987112005%_
                                    (lambda ()
                                      ((lambda (_%klass112001%_
                                                _%obj-klass112002%_
                                                _%method-name112003%_)
                                         '#f)
                                       _%klass111887%_
                                       _%obj-klass111888%_
                                       _%method-spec111976%_)))
                                   (_%K111989112018%_
                                    (lambda (_%methods-rest112008%_
                                             _%method-name112009%_)
                                      (let ((_%$e112012%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table111890%_
                                                _%method-name112009%_
                                                '#f))))
                                        (if _%$e112012%_
                                            ((lambda (_%method112015%_)
                                               (_%loop111893%_
                                                _%rest111975%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count111898%_ '1))
                                                (cons _%method112015%_
                                                      _%methods111900%_)))
                                             _%$e112012%_)
                                            (_%loop-inner111980%_
                                             _%methods-rest112008%_))))))
                              (if (pair? _%methods-rest111985111993%_)
                                  (let ((_%hd111990112021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest111985111993%_)))
                                        (_%tl111991112023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest111985111993%_))))
                                    (let* ((_%method-name112026%_
                                            _%hd111990112021%_)
                                           (_%methods-rest112028%_
                                            _%tl111991112023%_))
                                      (_%K111989112018%_
                                       _%methods-rest112028%_
                                       _%method-name112026%_)))
                                  (_%else111987112005%_))))
                          (let ((_%$e112030%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table111890%_
                                    _%method-spec111976%_
                                    '#f))))
                            (if _%$e112030%_
                                ((lambda (_%method112033%_)
                                   (_%loop111893%_
                                    _%rest111975%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count111898%_ '1))
                                    (cons _%method112033%_ _%methods111900%_)))
                                 _%$e112030%_)
                                ((lambda (_%klass112036%_
                                          _%obj-klass112037%_
                                          _%method-name112038%_)
                                   '#f)
                                 _%klass111887%_
                                 _%obj-klass111888%_
                                 _%method-spec111976%_)))))))
              (if (pair? _%rest111902111910%_)
                  (let ((_%hd111907112043%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111902111910%_)))
                        (_%tl111908112045%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111902111910%_))))
                    (let* ((_%method-spec112048%_ _%hd111907112043%_)
                           (_%rest112050%_ _%tl111908112045%_))
                      (_%K111906112040%_
                       _%rest112050%_
                       _%method-spec112048%_)))
                  (_%else111904111972%_)))))))
    (define cast
      (lambda (_%descriptor111844%_ _%obj111846%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111850%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111844%_ '1 '#f '#f)))
               (_%klass-id111853%_
                (let () (declare (not safe)) (##type-id _%klass111850%_)))
               (_%obj-klass111856%_
                (let () (declare (not safe)) (class-of _%obj111846%_)))
               (_%obj-klass-id111859%_
                (let () (declare (not safe)) (##type-id _%obj-klass111856%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111853%_ _%obj-klass-id111859%_))
              _%obj111846%_
              (if (interface-subclass? _%obj-klass111856%_)
                  (cast _%descriptor111844%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj111846%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111868%_ ()
                        (if (let ((__tmp112630
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp112630 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111868%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111853%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111859%_))
                    (let ((_%prototype111879%_
                           (let ((_%$e111872%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111872%_
                                 ((lambda (_%prototype111875%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111875%_)
                                  _%$e111872%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor111844%_
                                    _%klass111850%_
                                    _%obj-klass111856%_))))))
                      ((lambda (_%prototype111881%_ _%obj111882%_)
                         (let ((_%instance111884%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype111881%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance111884%_
                              _%obj111882%_
                              '1
                              '#f
                              'cast))
                           _%instance111884%_))
                       _%prototype111879%_
                       _%obj111846%_))))))))
    (define try-cast
      (lambda (_%descriptor111802%_ _%obj111804%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111808%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111802%_ '1 '#f '#f)))
               (_%klass-id111811%_
                (let () (declare (not safe)) (##type-id _%klass111808%_)))
               (_%obj-klass111814%_
                (let () (declare (not safe)) (class-of _%obj111804%_)))
               (_%obj-klass-id111817%_
                (let () (declare (not safe)) (##type-id _%obj-klass111814%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111811%_ _%obj-klass-id111817%_))
              _%obj111804%_
              (if (interface-subclass? _%obj-klass111814%_)
                  (try-cast
                   _%descriptor111802%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj111804%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111826%_ ()
                        (if (let ((__tmp112631
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp112631 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111826%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111811%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111817%_))
                    (let ((_%prototype111837%_
                           (let ((_%$e111830%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111830%_
                                 ((lambda (_%prototype111833%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111833%_)
                                  _%$e111830%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor111802%_
                                    _%klass111808%_
                                    _%obj-klass111814%_))))))
                      ((lambda (_%prototype111839%_ _%obj111840%_)
                         (if _%prototype111839%_
                             (let ((_%instance111842%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype111839%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance111842%_
                                  _%obj111840%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance111842%_)
                             '#f))
                       _%prototype111837%_
                       _%obj111804%_))))))))
    (define satisfies?
      (lambda (_%descriptor111762%_ _%obj111764%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111768%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111762%_ '1 '#f '#f)))
               (_%klass-id111771%_
                (let () (declare (not safe)) (##type-id _%klass111768%_)))
               (_%obj-klass111774%_
                (let () (declare (not safe)) (class-of _%obj111764%_)))
               (_%obj-klass-id111777%_
                (let () (declare (not safe)) (##type-id _%obj-klass111774%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111771%_ _%obj-klass-id111777%_))
              _%obj111764%_
              (if (interface-subclass? _%obj-klass111774%_)
                  (satisfies?
                   _%descriptor111762%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj111764%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111786%_ ()
                        (if (let ((__tmp112632
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp112632 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111786%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111771%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111777%_))
                    (let ((_%prototype111797%_
                           (let ((_%$e111790%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111790%_
                                 ((lambda (_%prototype111793%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111793%_)
                                  _%$e111790%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor111762%_
                                    _%klass111768%_
                                    _%obj-klass111774%_))))))
                      ((lambda (_%prototype111799%_ _%obj111800%_)
                         (if _%prototype111799%_ '#t '#f))
                       _%prototype111797%_
                       _%obj111764%_))))))))))
