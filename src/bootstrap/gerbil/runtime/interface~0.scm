(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1733868035)
  (begin
    (define CastError::t
      (let ((__tmp105117 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp105117
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args105110%_
        (apply make-instance CastError::t _%$args105110%_)))
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
      (lambda (_%where104984%_ _%message104985%_ . _%irritants104986%_)
        (let ((__tmp105118
               (let ((__obj105113
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj105113
                    _%message104985%_
                    'where:
                    _%where104984%_
                    'irritants:
                    _%irritants104986%_))
                 __obj105113)))
          (declare (not safe))
          (raise __tmp105118))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp105120 (list)) (__tmp105119 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp105120
         '(__object)
         __tmp105119
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
      (let ((__tmp105122 (list))
            (__tmp105121
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp105122
         '(type methods)
         __tmp105121
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args104981%_
        (apply make-instance interface-descriptor::t _%$args104981%_)))
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
      (lambda (_%key104979%_)
        (let ((__tmp105124
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key104979%_))))
              (__tmp105123
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key104979%_)))))
          (declare (not safe))
          (##fxxor __tmp105124 __tmp105123))))
    (define __interface-test-key
      (lambda (_%a104976%_ _%b104977%_)
        (if (let ((__tmp105126
                   (let () (declare (not safe)) (##car _%a104976%_)))
                  (__tmp105125
                   (let () (declare (not safe)) (##car _%b104977%_))))
              (declare (not safe))
              (##eq? __tmp105126 __tmp105125))
            (let ((__tmp105128
                   (let () (declare (not safe)) (##cdr _%a104976%_)))
                  (__tmp105127
                   (let () (declare (not safe)) (##cdr _%b104977%_))))
              (declare (not safe))
              (##eq? __tmp105128 __tmp105127))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint104957%_ _%seed104959%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104957%_
           __interface-hash-key
           __interface-test-key
           _%seed104959%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint104965%_ '#f) (_%seed104967%_ '0))
          (make-prototype-table__% _%size-hint104965%_ _%seed104967%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint104969%_)
        (let ((_%seed104971%_ '0))
          (make-prototype-table__% _%size-hint104969%_ _%seed104971%_))))
    (define make-prototype-table
      (lambda _g105130_
        (let ((_g105129_ (let () (declare (not safe)) (##length _g105130_))))
          (cond ((let () (declare (not safe)) (##fx= _g105129_ 0))
                 (apply make-prototype-table__0 _g105130_))
                ((let () (declare (not safe)) (##fx= _g105129_ 1))
                 (apply make-prototype-table__1 _g105130_))
                ((let () (declare (not safe)) (##fx= _g105129_ 2))
                 (apply make-prototype-table__% _g105130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g105130_))))))
    (define prototype-table-ref
      (lambda (_%tab104910%_ _%key104911%_ _%default104912%_)
        (let ((_%table104914%_
               (let () (declare (not safe)) (&raw-table-table _%tab104910%_)))
              (_%seed104915%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104910%_))))
          (let* ((_%h104917%_
                  (fxxor (__interface-hash-key _%key104911%_) _%seed104915%_))
                 (_%size104920%_ (vector-length _%table104914%_))
                 (_%entries104923%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104920%_ '2)))
                 (_%start104926%_
                  (let ((__tmp105131
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104917%_ _%entries104923%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105131 '1))))
            (let _%loop104930%_ ((_%probe104933%_ _%start104926%_)
                                 (_%i104935%_ '1)
                                 (_%deleted104937%_ '#f))
              (let ((_%k104940%_ (vector-ref _%table104914%_ _%probe104933%_)))
                (if (eq? _%k104940%_ (macro-unused-obj))
                    _%default104912%_
                    (if (eq? _%k104940%_ (macro-deleted-obj))
                        (_%loop104930%_
                         (let ((_%next-probe104945%_
                                (fx+ _%start104926%_
                                     _%i104935%_
                                     (fx* _%i104935%_ _%i104935%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104945%_ _%size104920%_))
                         (let () (declare (not safe)) (##fx+ _%i104935%_ '1))
                         (let ((_%$e104948%_ _%deleted104937%_))
                           (if _%$e104948%_ _%$e104948%_ _%probe104933%_)))
                        (if (__interface-test-key _%key104911%_ _%k104940%_)
                            (vector-ref
                             _%table104914%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104933%_ '1)))
                            (_%loop104930%_
                             (let ((_%next-probe104953%_
                                    (fx+ _%start104926%_
                                         _%i104935%_
                                         (fx* _%i104935%_ _%i104935%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104953%_
                                _%size104920%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104935%_ '1))
                             _%deleted104937%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab104906%_ _%key104907%_ _%value104908%_)
        (if (let ((__tmp105134
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104906%_)))
                  (__tmp105132
                   (let ((__tmp105133
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104906%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105133 '4))))
              (declare (not safe))
              (##fx< __tmp105134 __tmp105132))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104906%_))
            '#!void)
        (__prototype-table-set! _%tab104906%_ _%key104907%_ _%value104908%_)))
    (define __prototype-table-set!
      (lambda (_%tab104857%_ _%key104858%_ _%value104859%_)
        (let ((_%table104862%_
               (let () (declare (not safe)) (&raw-table-table _%tab104857%_)))
              (_%seed104863%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104857%_))))
          (let* ((_%h104865%_
                  (fxxor (__interface-hash-key _%key104858%_) _%seed104863%_))
                 (_%size104868%_ (vector-length _%table104862%_))
                 (_%entries104871%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104868%_ '2)))
                 (_%start104874%_
                  (let ((__tmp105135
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104865%_ _%entries104871%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105135 '1))))
            (let _%loop104878%_ ((_%probe104881%_ _%start104874%_)
                                 (_%i104883%_ '1)
                                 (_%deleted104885%_ '#f))
              (let ((_%k104888%_ (vector-ref _%table104862%_ _%probe104881%_)))
                (if (eq? _%k104888%_ (macro-unused-obj))
                    (if _%deleted104885%_
                        (begin
                          (vector-set!
                           _%table104862%_
                           _%deleted104885%_
                           _%key104858%_)
                          (vector-set!
                           _%table104862%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104885%_ '1))
                           _%value104859%_)
                          ((lambda ()
                             (let ((__tmp105136
                                    (let ((__tmp105137
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104857%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105137 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104857%_
                                __tmp105136)))))
                        (begin
                          (vector-set!
                           _%table104862%_
                           _%probe104881%_
                           _%key104858%_)
                          (vector-set!
                           _%table104862%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104881%_ '1))
                           _%value104859%_)
                          ((lambda ()
                             (let ((__tmp105138
                                    (let ((__tmp105139
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104857%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105139 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104857%_
                                __tmp105138))
                             (let ((__tmp105140
                                    (let ((__tmp105141
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104857%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105141 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104857%_
                                __tmp105140))))))
                    (if (eq? _%k104888%_ (macro-deleted-obj))
                        (_%loop104878%_
                         (let ((_%next-probe104895%_
                                (fx+ _%start104874%_
                                     _%i104883%_
                                     (fx* _%i104883%_ _%i104883%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104895%_ _%size104868%_))
                         (let () (declare (not safe)) (##fx+ _%i104883%_ '1))
                         (let ((_%$e104898%_ _%deleted104885%_))
                           (if _%$e104898%_ _%$e104898%_ _%probe104881%_)))
                        (if (__interface-test-key _%key104858%_ _%k104888%_)
                            (let ()
                              (vector-set!
                               _%table104862%_
                               _%probe104881%_
                               _%key104858%_)
                              (vector-set!
                               _%table104862%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104881%_ '1))
                               _%value104859%_))
                            (_%loop104878%_
                             (let ((_%next-probe104903%_
                                    (fx+ _%start104874%_
                                         _%i104883%_
                                         (fx* _%i104883%_ _%i104883%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104903%_
                                _%size104868%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104883%_ '1))
                             _%deleted104885%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab104852%_
               _%key104853%_
               _%prototype-table-update!104854%_
               _%default104855%_)
        (if (let ((__tmp105144
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104852%_)))
                  (__tmp105142
                   (let ((__tmp105143
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104852%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp105143 '4))))
              (declare (not safe))
              (##fx< __tmp105144 __tmp105142))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104852%_))
            '#!void)
        (__prototype-table-update!
         _%tab104852%_
         _%key104853%_
         _%prototype-table-update!104854%_
         _%default104855%_)))
    (define __prototype-table-update!
      (lambda (_%tab104802%_
               _%key104803%_
               _%prototype-table-update!104804%_
               _%default104805%_)
        (let ((_%table104808%_
               (let () (declare (not safe)) (&raw-table-table _%tab104802%_)))
              (_%seed104809%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104802%_))))
          (let* ((_%h104811%_
                  (fxxor (__interface-hash-key _%key104803%_) _%seed104809%_))
                 (_%size104814%_ (vector-length _%table104808%_))
                 (_%entries104817%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104814%_ '2)))
                 (_%start104820%_
                  (let ((__tmp105145
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104811%_ _%entries104817%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105145 '1))))
            (let _%loop104824%_ ((_%probe104827%_ _%start104820%_)
                                 (_%i104829%_ '1)
                                 (_%deleted104831%_ '#f))
              (let ((_%k104834%_ (vector-ref _%table104808%_ _%probe104827%_)))
                (if (eq? _%k104834%_ (macro-unused-obj))
                    (if _%deleted104831%_
                        (begin
                          (vector-set!
                           _%table104808%_
                           _%deleted104831%_
                           _%key104803%_)
                          (vector-set!
                           _%table104808%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104831%_ '1))
                           (_%prototype-table-update!104804%_
                            _%default104805%_))
                          ((lambda ()
                             (let ((__tmp105146
                                    (let ((__tmp105147
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104802%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105147 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104802%_
                                __tmp105146)))))
                        (begin
                          (vector-set!
                           _%table104808%_
                           _%probe104827%_
                           _%key104803%_)
                          (vector-set!
                           _%table104808%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104827%_ '1))
                           (_%prototype-table-update!104804%_
                            _%default104805%_))
                          ((lambda ()
                             (let ((__tmp105148
                                    (let ((__tmp105149
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104802%_))))
                                      (declare (not safe))
                                      (##fx- __tmp105149 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104802%_
                                __tmp105148))
                             (let ((__tmp105150
                                    (let ((__tmp105151
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104802%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp105151 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104802%_
                                __tmp105150))))))
                    (if (eq? _%k104834%_ (macro-deleted-obj))
                        (_%loop104824%_
                         (let ((_%next-probe104841%_
                                (fx+ _%start104820%_
                                     _%i104829%_
                                     (fx* _%i104829%_ _%i104829%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104841%_ _%size104814%_))
                         (let () (declare (not safe)) (##fx+ _%i104829%_ '1))
                         (let ((_%$e104844%_ _%deleted104831%_))
                           (if _%$e104844%_ _%$e104844%_ _%probe104827%_)))
                        (if (__interface-test-key _%key104803%_ _%k104834%_)
                            (let ()
                              (vector-set!
                               _%table104808%_
                               _%probe104827%_
                               _%key104803%_)
                              (vector-set!
                               _%table104808%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104827%_ '1))
                               (_%prototype-table-update!104804%_
                                (vector-ref
                                 _%table104808%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104827%_ '1))))))
                            (_%loop104824%_
                             (let ((_%next-probe104849%_
                                    (fx+ _%start104820%_
                                         _%i104829%_
                                         (fx* _%i104829%_ _%i104829%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104849%_
                                _%size104814%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104829%_ '1))
                             _%deleted104831%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab104757%_ _%key104759%_)
        (let ((_%table104762%_
               (let () (declare (not safe)) (&raw-table-table _%tab104757%_)))
              (_%seed104764%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104757%_))))
          (let* ((_%h104767%_
                  (fxxor (__interface-hash-key _%key104759%_) _%seed104764%_))
                 (_%size104770%_ (vector-length _%table104762%_))
                 (_%entries104773%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104770%_ '2)))
                 (_%start104776%_
                  (let ((__tmp105152
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104767%_ _%entries104773%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp105152 '1))))
            (let _%loop104780%_ ((_%probe104783%_ _%start104776%_)
                                 (_%i104785%_ '1))
              (let ((_%k104788%_ (vector-ref _%table104762%_ _%probe104783%_)))
                (if (eq? _%k104788%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104788%_ (macro-deleted-obj))
                        (_%loop104780%_
                         (let ((_%next-probe104793%_
                                (fx+ _%start104776%_
                                     _%i104785%_
                                     (fx* _%i104785%_ _%i104785%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104793%_ _%size104770%_))
                         (let () (declare (not safe)) (##fx+ _%i104785%_ '1)))
                        (if (__interface-test-key _%key104759%_ _%k104788%_)
                            (let ()
                              (vector-set!
                               _%table104762%_
                               _%probe104783%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104762%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104783%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp105153
                                        (let ((__tmp105154
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104757%_))))
                                          (declare (not safe))
                                          (##fx- __tmp105154 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104757%_
                                    __tmp105153)))))
                            (_%loop104780%_
                             (let ((_%next-probe104799%_
                                    (fx+ _%start104776%_
                                         _%i104785%_
                                         (fx* _%i104785%_ _%i104785%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104799%_
                                _%size104770%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104785%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass104749%_)
        (let ((_%super104750104752%_
               (let () (declare (not safe)) (##type-super _%klass104749%_))))
          (if _%super104750104752%_
              (let ((_%super104755%_ _%super104750104752%_))
                (eq? (let () (declare (not safe)) (##type-id _%super104755%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor104634%_ _%klass104635%_ _%obj-klass104636%_)
        (let ((_%method-table104638%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104636%_))))
          (let _%loop104641%_ ((_%rest104644%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104634%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104646%_ '0)
                               (_%methods104648%_ '()))
            (let* ((_%rest104650104658%_ _%rest104644%_)
                   (_%else104652104720%_
                    (lambda ()
                      (let ((_%prototype104666%_
                             (let ((__obj105115
                                    (let ((__tmp105155
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104646%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104635%_
                                       __tmp105155))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105115 '#f))
                               __obj105115)))
                        (let _%loop104669%_ ((_%rest104671%_ _%methods104648%_)
                                             (_%off104672%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104646%_ '1))))
                          (let* ((_%rest104674104682%_ _%rest104671%_)
                                 (_%else104676104701%_
                                  (lambda ()
                                    (let ((_%prototype-key104690%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104635%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104636%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104695%_ ()
                                          (if (let ((__tmp105156
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105156 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104695%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104690%_
                                       _%prototype104666%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104699%_)
                                         _%prototype104699%_)
                                       _%prototype104666%_))))
                                 (_%K104678104708%_
                                  (lambda (_%rest104704%_ _%method104705%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104666%_
                                       _%method104705%_
                                       _%off104672%_
                                       _%klass104635%_
                                       '#f))
                                    (_%loop104669%_
                                     _%rest104704%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104672%_ '1))))))
                            (if (pair? _%rest104674104682%_)
                                (let ((_%hd104679104711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104674104682%_)))
                                      (_%tl104680104713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104674104682%_))))
                                  (let* ((_%method104716%_ _%hd104679104711%_)
                                         (_%rest104718%_ _%tl104680104713%_))
                                    (_%K104678104708%_
                                     _%rest104718%_
                                     _%method104716%_)))
                                (_%else104676104701%_)))))))
                   (_%K104654104737%_
                    (lambda (_%rest104723%_ _%method-name104724%_)
                      (let ((_%$e104727%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104638%_
                                _%method-name104724%_
                                '#f))))
                        (if _%$e104727%_
                            ((lambda (_%method104730%_)
                               (_%loop104641%_
                                _%rest104723%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104646%_ '1))
                                (cons _%method104730%_ _%methods104648%_)))
                             _%$e104727%_)
                            ((lambda (_%klass104733%_
                                      _%obj-klass104734%_
                                      _%method-name104735%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass104733%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass104733%_))
                                'class:
                                _%obj-klass104734%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass104734%_))
                                'method:
                                _%method-name104735%_)
                               '#!void)
                             _%klass104635%_
                             _%obj-klass104636%_
                             _%method-name104724%_))))))
              (if (pair? _%rest104650104658%_)
                  (let ((_%hd104655104740%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104650104658%_)))
                        (_%tl104656104742%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104650104658%_))))
                    (let* ((_%method-name104745%_ _%hd104655104740%_)
                           (_%rest104747%_ _%tl104656104742%_))
                      (_%K104654104737%_
                       _%rest104747%_
                       _%method-name104745%_)))
                  (_%else104652104720%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor104519%_ _%klass104520%_ _%obj-klass104521%_)
        (let ((_%method-table104523%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104521%_))))
          (let _%loop104526%_ ((_%rest104529%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104519%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104531%_ '0)
                               (_%methods104533%_ '()))
            (let* ((_%rest104535104543%_ _%rest104529%_)
                   (_%else104537104605%_
                    (lambda ()
                      (let ((_%prototype104551%_
                             (let ((__obj105116
                                    (let ((__tmp105157
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104531%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104520%_
                                       __tmp105157))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj105116 '#f))
                               __obj105116)))
                        (let _%loop104554%_ ((_%rest104556%_ _%methods104533%_)
                                             (_%off104557%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104531%_ '1))))
                          (let* ((_%rest104559104567%_ _%rest104556%_)
                                 (_%else104561104586%_
                                  (lambda ()
                                    (let ((_%prototype-key104575%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104520%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104521%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104580%_ ()
                                          (if (let ((__tmp105158
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp105158 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104580%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104575%_
                                       _%prototype104551%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104584%_)
                                         _%prototype104584%_)
                                       _%prototype104551%_))))
                                 (_%K104563104593%_
                                  (lambda (_%rest104589%_ _%method104590%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104551%_
                                       _%method104590%_
                                       _%off104557%_
                                       _%klass104520%_
                                       '#f))
                                    (_%loop104554%_
                                     _%rest104589%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104557%_ '1))))))
                            (if (pair? _%rest104559104567%_)
                                (let ((_%hd104564104596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104559104567%_)))
                                      (_%tl104565104598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104559104567%_))))
                                  (let* ((_%method104601%_ _%hd104564104596%_)
                                         (_%rest104603%_ _%tl104565104598%_))
                                    (_%K104563104593%_
                                     _%rest104603%_
                                     _%method104601%_)))
                                (_%else104561104586%_)))))))
                   (_%K104539104622%_
                    (lambda (_%rest104608%_ _%method-name104609%_)
                      (let ((_%$e104612%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104523%_
                                _%method-name104609%_
                                '#f))))
                        (if _%$e104612%_
                            ((lambda (_%method104615%_)
                               (_%loop104526%_
                                _%rest104608%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104531%_ '1))
                                (cons _%method104615%_ _%methods104533%_)))
                             _%$e104612%_)
                            ((lambda (_%klass104618%_
                                      _%obj-klass104619%_
                                      _%method-name104620%_)
                               '#f)
                             _%klass104520%_
                             _%obj-klass104521%_
                             _%method-name104609%_))))))
              (if (pair? _%rest104535104543%_)
                  (let ((_%hd104540104625%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104535104543%_)))
                        (_%tl104541104627%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104535104543%_))))
                    (let* ((_%method-name104630%_ _%hd104540104625%_)
                           (_%rest104632%_ _%tl104541104627%_))
                      (_%K104539104622%_
                       _%rest104632%_
                       _%method-name104630%_)))
                  (_%else104537104605%_)))))))
    (define cast
      (lambda (_%descriptor104477%_ _%obj104479%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104483%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104477%_ '1 '#f '#f)))
               (_%klass-id104486%_
                (let () (declare (not safe)) (##type-id _%klass104483%_)))
               (_%obj-klass104489%_
                (let () (declare (not safe)) (class-of _%obj104479%_)))
               (_%obj-klass-id104492%_
                (let () (declare (not safe)) (##type-id _%obj-klass104489%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104486%_ _%obj-klass-id104492%_))
              _%obj104479%_
              (if (interface-subclass? _%obj-klass104489%_)
                  (cast _%descriptor104477%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj104479%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104501%_ ()
                        (if (let ((__tmp105159
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105159 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104501%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104486%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104492%_))
                    (let ((_%prototype104512%_
                           (let ((_%$e104505%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104505%_
                                 ((lambda (_%prototype104508%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104508%_)
                                  _%$e104505%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor104477%_
                                    _%klass104483%_
                                    _%obj-klass104489%_))))))
                      ((lambda (_%prototype104514%_ _%obj104515%_)
                         (let ((_%instance104517%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype104514%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance104517%_
                              _%obj104515%_
                              '1
                              '#f
                              'cast))
                           _%instance104517%_))
                       _%prototype104512%_
                       _%obj104479%_))))))))
    (define try-cast
      (lambda (_%descriptor104435%_ _%obj104437%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104441%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104435%_ '1 '#f '#f)))
               (_%klass-id104444%_
                (let () (declare (not safe)) (##type-id _%klass104441%_)))
               (_%obj-klass104447%_
                (let () (declare (not safe)) (class-of _%obj104437%_)))
               (_%obj-klass-id104450%_
                (let () (declare (not safe)) (##type-id _%obj-klass104447%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104444%_ _%obj-klass-id104450%_))
              _%obj104437%_
              (if (interface-subclass? _%obj-klass104447%_)
                  (try-cast
                   _%descriptor104435%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104437%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104459%_ ()
                        (if (let ((__tmp105160
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105160 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104459%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104444%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104450%_))
                    (let ((_%prototype104470%_
                           (let ((_%$e104463%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104463%_
                                 ((lambda (_%prototype104466%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104466%_)
                                  _%$e104463%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104435%_
                                    _%klass104441%_
                                    _%obj-klass104447%_))))))
                      ((lambda (_%prototype104472%_ _%obj104473%_)
                         (if _%prototype104472%_
                             (let ((_%instance104475%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype104472%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance104475%_
                                  _%obj104473%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance104475%_)
                             '#f))
                       _%prototype104470%_
                       _%obj104437%_))))))))
    (define satisfies?
      (lambda (_%descriptor104395%_ _%obj104397%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104401%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104395%_ '1 '#f '#f)))
               (_%klass-id104404%_
                (let () (declare (not safe)) (##type-id _%klass104401%_)))
               (_%obj-klass104407%_
                (let () (declare (not safe)) (class-of _%obj104397%_)))
               (_%obj-klass-id104410%_
                (let () (declare (not safe)) (##type-id _%obj-klass104407%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104404%_ _%obj-klass-id104410%_))
              _%obj104397%_
              (if (interface-subclass? _%obj-klass104407%_)
                  (satisfies?
                   _%descriptor104395%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104397%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104419%_ ()
                        (if (let ((__tmp105161
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105161 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104419%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104404%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104410%_))
                    (let ((_%prototype104430%_
                           (let ((_%$e104423%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104423%_
                                 ((lambda (_%prototype104426%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104426%_)
                                  _%$e104423%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104395%_
                                    _%klass104401%_
                                    _%obj-klass104407%_))))))
                      ((lambda (_%prototype104432%_ _%obj104433%_)
                         (if _%prototype104432%_ '#t '#f))
                       _%prototype104430%_
                       _%obj104397%_))))))))))
