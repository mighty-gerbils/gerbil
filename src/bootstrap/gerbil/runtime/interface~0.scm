(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712784664)
  (begin
    (define CastError::t
      (let ((__tmp102444 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp102444
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args102437%_
        (apply make-instance CastError::t _%$args102437%_)))
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
      (__bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where102311%_ _%message102312%_ . _%irritants102313%_)
        (let ((__tmp102445
               (let ((__obj102440
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj102440
                  _%message102312%_
                  'where:
                  _%where102311%_
                  'irritants:
                  _%irritants102313%_)
                 __obj102440)))
          (declare (not safe))
          (raise __tmp102445))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp102447 (list)) (__tmp102446 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp102447
         '(__object)
         __tmp102446
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
      (let ((__tmp102449 (list))
            (__tmp102448
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp102449
         '(type methods)
         __tmp102448
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args102308%_
        (apply make-instance interface-descriptor::t _%$args102308%_)))
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
      (lambda (_%key102306%_)
        (let ((__tmp102451
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key102306%_))))
              (__tmp102450
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key102306%_)))))
          (declare (not safe))
          (##fxxor __tmp102451 __tmp102450))))
    (define __interface-test-key
      (lambda (_%a102303%_ _%b102304%_)
        (if (let ((__tmp102453
                   (let () (declare (not safe)) (##car _%a102303%_)))
                  (__tmp102452
                   (let () (declare (not safe)) (##car _%b102304%_))))
              (declare (not safe))
              (##eq? __tmp102453 __tmp102452))
            (let ((__tmp102455
                   (let () (declare (not safe)) (##cdr _%a102303%_)))
                  (__tmp102454
                   (let () (declare (not safe)) (##cdr _%b102304%_))))
              (declare (not safe))
              (##eq? __tmp102455 __tmp102454))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint102284%_ _%seed102286%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint102284%_
           __interface-hash-key
           __interface-test-key
           _%seed102286%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint102292%_ '#f) (_%seed102294%_ '0))
          (make-prototype-table__% _%size-hint102292%_ _%seed102294%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint102296%_)
        (let ((_%seed102298%_ '0))
          (make-prototype-table__% _%size-hint102296%_ _%seed102298%_))))
    (define make-prototype-table
      (lambda _g102457_
        (let ((_g102456_ (let () (declare (not safe)) (##length _g102457_))))
          (cond ((let () (declare (not safe)) (##fx= _g102456_ 0))
                 (apply make-prototype-table__0 _g102457_))
                ((let () (declare (not safe)) (##fx= _g102456_ 1))
                 (apply make-prototype-table__1 _g102457_))
                ((let () (declare (not safe)) (##fx= _g102456_ 2))
                 (apply make-prototype-table__% _g102457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g102457_))))))
    (define prototype-table-ref
      (lambda (_%tab102237%_ _%key102238%_ _%default102239%_)
        (let ((_%table102241%_
               (let () (declare (not safe)) (&raw-table-table _%tab102237%_)))
              (_%seed102242%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102237%_))))
          (let* ((_%h102244%_
                  (fxxor (__interface-hash-key _%key102238%_) _%seed102242%_))
                 (_%size102247%_ (vector-length _%table102241%_))
                 (_%entries102250%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102247%_ '2)))
                 (_%start102253%_
                  (let ((__tmp102458
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102244%_ _%entries102250%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102458 '1))))
            (let _%loop102257%_ ((_%probe102260%_ _%start102253%_)
                                 (_%i102262%_ '1)
                                 (_%deleted102264%_ '#f))
              (let ((_%k102267%_ (vector-ref _%table102241%_ _%probe102260%_)))
                (if (eq? _%k102267%_ (macro-unused-obj))
                    _%default102239%_
                    (if (eq? _%k102267%_ (macro-deleted-obj))
                        (_%loop102257%_
                         (let ((_%next-probe102272%_
                                (fx+ _%start102253%_
                                     _%i102262%_
                                     (fx* _%i102262%_ _%i102262%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102272%_ _%size102247%_))
                         (let () (declare (not safe)) (##fx+ _%i102262%_ '1))
                         (let ((_%$e102275%_ _%deleted102264%_))
                           (if _%$e102275%_ _%$e102275%_ _%probe102260%_)))
                        (if (__interface-test-key _%key102238%_ _%k102267%_)
                            (vector-ref
                             _%table102241%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe102260%_ '1)))
                            (_%loop102257%_
                             (let ((_%next-probe102280%_
                                    (fx+ _%start102253%_
                                         _%i102262%_
                                         (fx* _%i102262%_ _%i102262%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102280%_
                                _%size102247%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102262%_ '1))
                             _%deleted102264%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab102233%_ _%key102234%_ _%value102235%_)
        (if (let ((__tmp102461
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102233%_)))
                  (__tmp102459
                   (let ((__tmp102460
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102233%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102460 '4))))
              (declare (not safe))
              (##fx< __tmp102461 __tmp102459))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102233%_))
            '#!void)
        (__prototype-table-set! _%tab102233%_ _%key102234%_ _%value102235%_)))
    (define __prototype-table-set!
      (lambda (_%tab102184%_ _%key102185%_ _%value102186%_)
        (let ((_%table102189%_
               (let () (declare (not safe)) (&raw-table-table _%tab102184%_)))
              (_%seed102190%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102184%_))))
          (let* ((_%h102192%_
                  (fxxor (__interface-hash-key _%key102185%_) _%seed102190%_))
                 (_%size102195%_ (vector-length _%table102189%_))
                 (_%entries102198%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102195%_ '2)))
                 (_%start102201%_
                  (let ((__tmp102462
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102192%_ _%entries102198%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102462 '1))))
            (let _%loop102205%_ ((_%probe102208%_ _%start102201%_)
                                 (_%i102210%_ '1)
                                 (_%deleted102212%_ '#f))
              (let ((_%k102215%_ (vector-ref _%table102189%_ _%probe102208%_)))
                (if (eq? _%k102215%_ (macro-unused-obj))
                    (if _%deleted102212%_
                        (begin
                          (vector-set!
                           _%table102189%_
                           _%deleted102212%_
                           _%key102185%_)
                          (vector-set!
                           _%table102189%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102212%_ '1))
                           _%value102186%_)
                          ((lambda ()
                             (let ((__tmp102463
                                    (let ((__tmp102464
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102184%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102464 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102184%_
                                __tmp102463)))))
                        (begin
                          (vector-set!
                           _%table102189%_
                           _%probe102208%_
                           _%key102185%_)
                          (vector-set!
                           _%table102189%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102208%_ '1))
                           _%value102186%_)
                          ((lambda ()
                             (let ((__tmp102465
                                    (let ((__tmp102466
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102184%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102466 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102184%_
                                __tmp102465))
                             (let ((__tmp102467
                                    (let ((__tmp102468
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102184%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102468 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102184%_
                                __tmp102467))))))
                    (if (eq? _%k102215%_ (macro-deleted-obj))
                        (_%loop102205%_
                         (let ((_%next-probe102222%_
                                (fx+ _%start102201%_
                                     _%i102210%_
                                     (fx* _%i102210%_ _%i102210%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102222%_ _%size102195%_))
                         (let () (declare (not safe)) (##fx+ _%i102210%_ '1))
                         (let ((_%$e102225%_ _%deleted102212%_))
                           (if _%$e102225%_ _%$e102225%_ _%probe102208%_)))
                        (if (__interface-test-key _%key102185%_ _%k102215%_)
                            (let ()
                              (vector-set!
                               _%table102189%_
                               _%probe102208%_
                               _%key102185%_)
                              (vector-set!
                               _%table102189%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102208%_ '1))
                               _%value102186%_))
                            (_%loop102205%_
                             (let ((_%next-probe102230%_
                                    (fx+ _%start102201%_
                                         _%i102210%_
                                         (fx* _%i102210%_ _%i102210%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102230%_
                                _%size102195%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102210%_ '1))
                             _%deleted102212%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab102179%_
               _%key102180%_
               _%prototype-table-update!102181%_
               _%default102182%_)
        (if (let ((__tmp102471
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab102179%_)))
                  (__tmp102469
                   (let ((__tmp102470
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab102179%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102470 '4))))
              (declare (not safe))
              (##fx< __tmp102471 __tmp102469))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab102179%_))
            '#!void)
        (__prototype-table-update!
         _%tab102179%_
         _%key102180%_
         _%prototype-table-update!102181%_
         _%default102182%_)))
    (define __prototype-table-update!
      (lambda (_%tab102129%_
               _%key102130%_
               _%prototype-table-update!102131%_
               _%default102132%_)
        (let ((_%table102135%_
               (let () (declare (not safe)) (&raw-table-table _%tab102129%_)))
              (_%seed102136%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102129%_))))
          (let* ((_%h102138%_
                  (fxxor (__interface-hash-key _%key102130%_) _%seed102136%_))
                 (_%size102141%_ (vector-length _%table102135%_))
                 (_%entries102144%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102141%_ '2)))
                 (_%start102147%_
                  (let ((__tmp102472
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102138%_ _%entries102144%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102472 '1))))
            (let _%loop102151%_ ((_%probe102154%_ _%start102147%_)
                                 (_%i102156%_ '1)
                                 (_%deleted102158%_ '#f))
              (let ((_%k102161%_ (vector-ref _%table102135%_ _%probe102154%_)))
                (if (eq? _%k102161%_ (macro-unused-obj))
                    (if _%deleted102158%_
                        (begin
                          (vector-set!
                           _%table102135%_
                           _%deleted102158%_
                           _%key102130%_)
                          (vector-set!
                           _%table102135%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted102158%_ '1))
                           (_%prototype-table-update!102131%_
                            _%default102132%_))
                          ((lambda ()
                             (let ((__tmp102473
                                    (let ((__tmp102474
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102129%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102474 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102129%_
                                __tmp102473)))))
                        (begin
                          (vector-set!
                           _%table102135%_
                           _%probe102154%_
                           _%key102130%_)
                          (vector-set!
                           _%table102135%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe102154%_ '1))
                           (_%prototype-table-update!102131%_
                            _%default102132%_))
                          ((lambda ()
                             (let ((__tmp102475
                                    (let ((__tmp102476
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab102129%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102476 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab102129%_
                                __tmp102475))
                             (let ((__tmp102477
                                    (let ((__tmp102478
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab102129%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102478 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab102129%_
                                __tmp102477))))))
                    (if (eq? _%k102161%_ (macro-deleted-obj))
                        (_%loop102151%_
                         (let ((_%next-probe102168%_
                                (fx+ _%start102147%_
                                     _%i102156%_
                                     (fx* _%i102156%_ _%i102156%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102168%_ _%size102141%_))
                         (let () (declare (not safe)) (##fx+ _%i102156%_ '1))
                         (let ((_%$e102171%_ _%deleted102158%_))
                           (if _%$e102171%_ _%$e102171%_ _%probe102154%_)))
                        (if (__interface-test-key _%key102130%_ _%k102161%_)
                            (let ()
                              (vector-set!
                               _%table102135%_
                               _%probe102154%_
                               _%key102130%_)
                              (vector-set!
                               _%table102135%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102154%_ '1))
                               (_%prototype-table-update!102131%_
                                (vector-ref
                                 _%table102135%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe102154%_ '1))))))
                            (_%loop102151%_
                             (let ((_%next-probe102176%_
                                    (fx+ _%start102147%_
                                         _%i102156%_
                                         (fx* _%i102156%_ _%i102156%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102176%_
                                _%size102141%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102156%_ '1))
                             _%deleted102158%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab102084%_ _%key102086%_)
        (let ((_%table102089%_
               (let () (declare (not safe)) (&raw-table-table _%tab102084%_)))
              (_%seed102091%_
               (let () (declare (not safe)) (&raw-table-seed _%tab102084%_))))
          (let* ((_%h102094%_
                  (fxxor (__interface-hash-key _%key102086%_) _%seed102091%_))
                 (_%size102097%_ (vector-length _%table102089%_))
                 (_%entries102100%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size102097%_ '2)))
                 (_%start102103%_
                  (let ((__tmp102479
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h102094%_ _%entries102100%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102479 '1))))
            (let _%loop102107%_ ((_%probe102110%_ _%start102103%_)
                                 (_%i102112%_ '1))
              (let ((_%k102115%_ (vector-ref _%table102089%_ _%probe102110%_)))
                (if (eq? _%k102115%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k102115%_ (macro-deleted-obj))
                        (_%loop102107%_
                         (let ((_%next-probe102120%_
                                (fx+ _%start102103%_
                                     _%i102112%_
                                     (fx* _%i102112%_ _%i102112%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe102120%_ _%size102097%_))
                         (let () (declare (not safe)) (##fx+ _%i102112%_ '1)))
                        (if (__interface-test-key _%key102086%_ _%k102115%_)
                            (let ()
                              (vector-set!
                               _%table102089%_
                               _%probe102110%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table102089%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe102110%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102480
                                        (let ((__tmp102481
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab102084%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102481 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab102084%_
                                    __tmp102480)))))
                            (_%loop102107%_
                             (let ((_%next-probe102126%_
                                    (fx+ _%start102103%_
                                         _%i102112%_
                                         (fx* _%i102112%_ _%i102112%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe102126%_
                                _%size102097%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i102112%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass102076%_)
        (let ((_%super102077102079%_
               (let () (declare (not safe)) (##type-super _%klass102076%_))))
          (if _%super102077102079%_
              (let ((_%super102082%_ _%super102077102079%_))
                (eq? (let () (declare (not safe)) (##type-id _%super102082%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101961%_ _%klass101962%_ _%obj-klass101963%_)
        (let ((_%method-table101965%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101963%_))))
          (let _%loop101968%_ ((_%rest101971%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101961%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101973%_ '0)
                               (_%methods101975%_ '()))
            (let* ((_%rest101977101985%_ _%rest101971%_)
                   (_%else101979102047%_
                    (lambda ()
                      (let ((_%prototype101993%_
                             (let ((__obj102442
                                    (let ((__tmp102482
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101973%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101962%_
                                       __tmp102482))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj102442 '#f))
                               __obj102442)))
                        (let _%loop101996%_ ((_%rest101998%_ _%methods101975%_)
                                             (_%off101999%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101973%_ '1))))
                          (let* ((_%rest102001102009%_ _%rest101998%_)
                                 (_%else102003102028%_
                                  (lambda ()
                                    (let ((_%prototype-key102017%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101962%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101963%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102022%_ ()
                                          (if (let ((__tmp102483
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102483 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again102022%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102017%_
                                       _%prototype101993%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102026%_)
                                         _%prototype102026%_)
                                       _%prototype101993%_))))
                                 (_%K102005102035%_
                                  (lambda (_%rest102031%_ _%method102032%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101993%_
                                       _%method102032%_
                                       _%off101999%_
                                       _%klass101962%_
                                       '#f))
                                    (_%loop101996%_
                                     _%rest102031%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101999%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102001102009%_))
                                (let ((_%hd102006102038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102001102009%_)))
                                      (_%tl102007102040%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102001102009%_))))
                                  (let* ((_%method102043%_ _%hd102006102038%_)
                                         (_%rest102045%_ _%tl102007102040%_))
                                    (_%K102005102035%_
                                     _%rest102045%_
                                     _%method102043%_)))
                                (_%else102003102028%_)))))))
                   (_%K101981102064%_
                    (lambda (_%rest102050%_ _%method-name102051%_)
                      (let ((_%$e102054%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101965%_
                                _%method-name102051%_
                                '#f))))
                        (if _%$e102054%_
                            ((lambda (_%method102057%_)
                               (_%loop101968%_
                                _%rest102050%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101973%_ '1))
                                (cons _%method102057%_ _%methods101975%_)))
                             _%$e102054%_)
                            ((lambda (_%klass102060%_
                                      _%obj-klass102061%_
                                      _%method-name102062%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass102060%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass102060%_))
                                'class:
                                _%obj-klass102061%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass102061%_))
                                'method:
                                _%method-name102062%_)
                               '#!void)
                             _%klass101962%_
                             _%obj-klass101963%_
                             _%method-name102051%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101977101985%_))
                  (let ((_%hd101982102067%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101977101985%_)))
                        (_%tl101983102069%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101977101985%_))))
                    (let* ((_%method-name102072%_ _%hd101982102067%_)
                           (_%rest102074%_ _%tl101983102069%_))
                      (_%K101981102064%_
                       _%rest102074%_
                       _%method-name102072%_)))
                  (_%else101979102047%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor101846%_ _%klass101847%_ _%obj-klass101848%_)
        (let ((_%method-table101850%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101848%_))))
          (let _%loop101853%_ ((_%rest101856%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101846%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101858%_ '0)
                               (_%methods101860%_ '()))
            (let* ((_%rest101862101870%_ _%rest101856%_)
                   (_%else101864101932%_
                    (lambda ()
                      (let ((_%prototype101878%_
                             (let ((__obj102443
                                    (let ((__tmp102484
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101858%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101847%_
                                       __tmp102484))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj102443 '#f))
                               __obj102443)))
                        (let _%loop101881%_ ((_%rest101883%_ _%methods101860%_)
                                             (_%off101884%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101858%_ '1))))
                          (let* ((_%rest101886101894%_ _%rest101883%_)
                                 (_%else101888101913%_
                                  (lambda ()
                                    (let ((_%prototype-key101902%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101847%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101848%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101907%_ ()
                                          (if (let ((__tmp102485
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102485 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again101907%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key101902%_
                                       _%prototype101878%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101911%_)
                                         _%prototype101911%_)
                                       _%prototype101878%_))))
                                 (_%K101890101920%_
                                  (lambda (_%rest101916%_ _%method101917%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101878%_
                                       _%method101917%_
                                       _%off101884%_
                                       _%klass101847%_
                                       '#f))
                                    (_%loop101881%_
                                     _%rest101916%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101884%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101886101894%_))
                                (let ((_%hd101891101923%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101886101894%_)))
                                      (_%tl101892101925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101886101894%_))))
                                  (let* ((_%method101928%_ _%hd101891101923%_)
                                         (_%rest101930%_ _%tl101892101925%_))
                                    (_%K101890101920%_
                                     _%rest101930%_
                                     _%method101928%_)))
                                (_%else101888101913%_)))))))
                   (_%K101866101949%_
                    (lambda (_%rest101935%_ _%method-name101936%_)
                      (let ((_%$e101939%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101850%_
                                _%method-name101936%_
                                '#f))))
                        (if _%$e101939%_
                            ((lambda (_%method101942%_)
                               (_%loop101853%_
                                _%rest101935%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101858%_ '1))
                                (cons _%method101942%_ _%methods101860%_)))
                             _%$e101939%_)
                            ((lambda (_%klass101945%_
                                      _%obj-klass101946%_
                                      _%method-name101947%_)
                               '#f)
                             _%klass101847%_
                             _%obj-klass101848%_
                             _%method-name101936%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101862101870%_))
                  (let ((_%hd101867101952%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101862101870%_)))
                        (_%tl101868101954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101862101870%_))))
                    (let* ((_%method-name101957%_ _%hd101867101952%_)
                           (_%rest101959%_ _%tl101868101954%_))
                      (_%K101866101949%_
                       _%rest101959%_
                       _%method-name101957%_)))
                  (_%else101864101932%_)))))))
    (define cast
      (lambda (_%descriptor101804%_ _%obj101806%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101810%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101804%_ '1 '#f '#f)))
               (_%klass-id101813%_
                (let () (declare (not safe)) (##type-id _%klass101810%_)))
               (_%obj-klass101816%_
                (let () (declare (not safe)) (class-of _%obj101806%_)))
               (_%obj-klass-id101819%_
                (let () (declare (not safe)) (##type-id _%obj-klass101816%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101813%_ _%obj-klass-id101819%_))
              _%obj101806%_
              (if (interface-subclass? _%obj-klass101816%_)
                  (cast _%descriptor101804%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj101806%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101828%_ ()
                        (if (let ((__tmp102486
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102486 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101828%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101813%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101819%_))
                    (let ((_%prototype101839%_
                           (let ((_%$e101832%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101832%_
                                 ((lambda (_%prototype101835%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101835%_)
                                  _%$e101832%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor101804%_
                                    _%klass101810%_
                                    _%obj-klass101816%_))))))
                      ((lambda (_%prototype101841%_ _%obj101842%_)
                         (let ((_%instance101844%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101841%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101844%_
                              _%obj101842%_
                              '1
                              '#f
                              'cast))
                           _%instance101844%_))
                       _%prototype101839%_
                       _%obj101806%_))))))))
    (define try-cast
      (lambda (_%descriptor101762%_ _%obj101764%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101768%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101762%_ '1 '#f '#f)))
               (_%klass-id101771%_
                (let () (declare (not safe)) (##type-id _%klass101768%_)))
               (_%obj-klass101774%_
                (let () (declare (not safe)) (class-of _%obj101764%_)))
               (_%obj-klass-id101777%_
                (let () (declare (not safe)) (##type-id _%obj-klass101774%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101771%_ _%obj-klass-id101777%_))
              _%obj101764%_
              (if (interface-subclass? _%obj-klass101774%_)
                  (try-cast
                   _%descriptor101762%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101764%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101786%_ ()
                        (if (let ((__tmp102487
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102487 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101786%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101771%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101777%_))
                    (let ((_%prototype101797%_
                           (let ((_%$e101790%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101790%_
                                 ((lambda (_%prototype101793%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101793%_)
                                  _%$e101790%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101762%_
                                    _%klass101768%_
                                    _%obj-klass101774%_))))))
                      ((lambda (_%prototype101799%_ _%obj101800%_)
                         (if _%prototype101799%_
                             (let ((_%instance101802%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101799%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101802%_
                                  _%obj101800%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101802%_)
                             '#f))
                       _%prototype101797%_
                       _%obj101764%_))))))))
    (define satisfies?
      (lambda (_%descriptor101722%_ _%obj101724%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101728%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101722%_ '1 '#f '#f)))
               (_%klass-id101731%_
                (let () (declare (not safe)) (##type-id _%klass101728%_)))
               (_%obj-klass101734%_
                (let () (declare (not safe)) (class-of _%obj101724%_)))
               (_%obj-klass-id101737%_
                (let () (declare (not safe)) (##type-id _%obj-klass101734%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101731%_ _%obj-klass-id101737%_))
              _%obj101724%_
              (if (interface-subclass? _%obj-klass101734%_)
                  (satisfies?
                   _%descriptor101722%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101724%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101746%_ ()
                        (if (let ((__tmp102488
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102488 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101746%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101731%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101737%_))
                    (let ((_%prototype101757%_
                           (let ((_%$e101750%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101750%_
                                 ((lambda (_%prototype101753%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101753%_)
                                  _%$e101750%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101722%_
                                    _%klass101728%_
                                    _%obj-klass101734%_))))))
                      ((lambda (_%prototype101759%_ _%obj101760%_)
                         (if _%prototype101759%_ '#t '#f))
                       _%prototype101757%_
                       _%obj101724%_))))))))))
