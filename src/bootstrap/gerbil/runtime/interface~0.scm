(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1756721294)
  (begin
    (define CastError::t
      (let ((__tmp113001 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp113001
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args112994%_
        (apply make-instance CastError::t _%$args112994%_)))
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
      (lambda (_%where112868%_ _%message112869%_ . _%irritants112870%_)
        (let ((__tmp113002
               (let ((__obj112997
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj112997
                    _%message112869%_
                    'where:
                    _%where112868%_
                    'irritants:
                    _%irritants112870%_))
                 __obj112997)))
          (declare (not safe))
          (raise __tmp113002))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp113004 (list)) (__tmp113003 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp113004
         '(__object)
         __tmp113003
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
      (let ((__tmp113006 (list))
            (__tmp113005
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp113006
         '(type methods)
         __tmp113005
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args112865%_
        (apply make-instance interface-descriptor::t _%$args112865%_)))
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
      (lambda (_%key112863%_)
        (let ((__tmp113009
               (let ((__tmp113010
                      (let () (declare (not safe)) (##car _%key112863%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp113010)))
              (__tmp113007
               (let ((__tmp113008
                      (let () (declare (not safe)) (##cdr _%key112863%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp113008))))
          (declare (not safe))
          (##fxxor __tmp113009 __tmp113007))))
    (define __interface-test-key
      (lambda (_%a112860%_ _%b112861%_)
        (if (let ((__tmp113012
                   (let () (declare (not safe)) (##car _%a112860%_)))
                  (__tmp113011
                   (let () (declare (not safe)) (##car _%b112861%_))))
              (declare (not safe))
              (##eq? __tmp113012 __tmp113011))
            (let ((__tmp113014
                   (let () (declare (not safe)) (##cdr _%a112860%_)))
                  (__tmp113013
                   (let () (declare (not safe)) (##cdr _%b112861%_))))
              (declare (not safe))
              (##eq? __tmp113014 __tmp113013))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint112841%_ _%seed112843%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint112841%_
           __interface-hash-key
           __interface-test-key
           _%seed112843%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint112849%_ '#f) (_%seed112851%_ '0))
          (make-prototype-table__% _%size-hint112849%_ _%seed112851%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint112853%_)
        (let ((_%seed112855%_ '0))
          (make-prototype-table__% _%size-hint112853%_ _%seed112855%_))))
    (define make-prototype-table
      (lambda _g113015_
        (let ((_g113016_ (let () (declare (not safe)) (##length _g113015_))))
          (cond ((let () (declare (not safe)) (##fx= _g113016_ 0))
                 (apply make-prototype-table__0 _g113015_))
                ((let () (declare (not safe)) (##fx= _g113016_ 1))
                 (apply make-prototype-table__1 _g113015_))
                ((let () (declare (not safe)) (##fx= _g113016_ 2))
                 (apply make-prototype-table__% _g113015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g113015_))))))
    (define prototype-table-ref
      (lambda (_%tab112794%_ _%key112795%_ _%default112796%_)
        (let ((_%table112798%_
               (let () (declare (not safe)) (&raw-table-table _%tab112794%_)))
              (_%seed112799%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112794%_))))
          (let* ((_%h112801%_
                  (fxxor (__interface-hash-key _%key112795%_) _%seed112799%_))
                 (_%size112804%_ (vector-length _%table112798%_))
                 (_%entries112807%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112804%_ '2)))
                 (_%start112810%_
                  (let ((__tmp113017
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112801%_ _%entries112807%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113017 '1))))
            (let _%loop112814%_ ((_%probe112817%_ _%start112810%_)
                                 (_%i112819%_ '1)
                                 (_%deleted112821%_ '#f))
              (let ((_%k112824%_ (vector-ref _%table112798%_ _%probe112817%_)))
                (if (eq? _%k112824%_ (macro-unused-obj))
                    _%default112796%_
                    (if (eq? _%k112824%_ (macro-deleted-obj))
                        (_%loop112814%_
                         (let ((_%next-probe112829%_
                                (fx+ _%start112810%_
                                     _%i112819%_
                                     (fx* _%i112819%_ _%i112819%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112829%_ _%size112804%_))
                         (let () (declare (not safe)) (##fx+ _%i112819%_ '1))
                         (let ((_%$e112832%_ _%deleted112821%_))
                           (if _%$e112832%_ _%$e112832%_ _%probe112817%_)))
                        (if (__interface-test-key _%key112795%_ _%k112824%_)
                            (vector-ref
                             _%table112798%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe112817%_ '1)))
                            (_%loop112814%_
                             (let ((_%next-probe112837%_
                                    (fx+ _%start112810%_
                                         _%i112819%_
                                         (fx* _%i112819%_ _%i112819%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112837%_
                                _%size112804%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112819%_ '1))
                             _%deleted112821%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab112790%_ _%key112791%_ _%value112792%_)
        (if (let ((__tmp113020
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112790%_)))
                  (__tmp113018
                   (let ((__tmp113019
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112790%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp113019 '4))))
              (declare (not safe))
              (##fx< __tmp113020 __tmp113018))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112790%_))
            '#!void)
        (__prototype-table-set! _%tab112790%_ _%key112791%_ _%value112792%_)))
    (define __prototype-table-set!
      (lambda (_%tab112741%_ _%key112742%_ _%value112743%_)
        (let ((_%table112746%_
               (let () (declare (not safe)) (&raw-table-table _%tab112741%_)))
              (_%seed112747%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112741%_))))
          (let* ((_%h112749%_
                  (fxxor (__interface-hash-key _%key112742%_) _%seed112747%_))
                 (_%size112752%_ (vector-length _%table112746%_))
                 (_%entries112755%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112752%_ '2)))
                 (_%start112758%_
                  (let ((__tmp113021
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112749%_ _%entries112755%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113021 '1))))
            (let _%loop112762%_ ((_%probe112765%_ _%start112758%_)
                                 (_%i112767%_ '1)
                                 (_%deleted112769%_ '#f))
              (let ((_%k112772%_ (vector-ref _%table112746%_ _%probe112765%_)))
                (if (eq? _%k112772%_ (macro-unused-obj))
                    (if _%deleted112769%_
                        (begin
                          (vector-set!
                           _%table112746%_
                           _%deleted112769%_
                           _%key112742%_)
                          (vector-set!
                           _%table112746%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112769%_ '1))
                           _%value112743%_)
                          ((lambda ()
                             (let ((__tmp113022
                                    (let ((__tmp113023
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112741%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113023 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112741%_
                                __tmp113022)))))
                        (begin
                          (vector-set!
                           _%table112746%_
                           _%probe112765%_
                           _%key112742%_)
                          (vector-set!
                           _%table112746%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112765%_ '1))
                           _%value112743%_)
                          ((lambda ()
                             (let ((__tmp113024
                                    (let ((__tmp113025
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112741%_))))
                                      (declare (not safe))
                                      (##fx- __tmp113025 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112741%_
                                __tmp113024))
                             (let ((__tmp113026
                                    (let ((__tmp113027
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112741%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113027 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112741%_
                                __tmp113026))))))
                    (if (eq? _%k112772%_ (macro-deleted-obj))
                        (_%loop112762%_
                         (let ((_%next-probe112779%_
                                (fx+ _%start112758%_
                                     _%i112767%_
                                     (fx* _%i112767%_ _%i112767%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112779%_ _%size112752%_))
                         (let () (declare (not safe)) (##fx+ _%i112767%_ '1))
                         (let ((_%$e112782%_ _%deleted112769%_))
                           (if _%$e112782%_ _%$e112782%_ _%probe112765%_)))
                        (if (__interface-test-key _%key112742%_ _%k112772%_)
                            (let ()
                              (vector-set!
                               _%table112746%_
                               _%probe112765%_
                               _%key112742%_)
                              (vector-set!
                               _%table112746%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112765%_ '1))
                               _%value112743%_))
                            (_%loop112762%_
                             (let ((_%next-probe112787%_
                                    (fx+ _%start112758%_
                                         _%i112767%_
                                         (fx* _%i112767%_ _%i112767%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112787%_
                                _%size112752%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112767%_ '1))
                             _%deleted112769%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab112736%_
               _%key112737%_
               _%prototype-table-update!112738%_
               _%default112739%_)
        (if (let ((__tmp113030
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112736%_)))
                  (__tmp113028
                   (let ((__tmp113029
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112736%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp113029 '4))))
              (declare (not safe))
              (##fx< __tmp113030 __tmp113028))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112736%_))
            '#!void)
        (__prototype-table-update!
         _%tab112736%_
         _%key112737%_
         _%prototype-table-update!112738%_
         _%default112739%_)))
    (define __prototype-table-update!
      (lambda (_%tab112686%_
               _%key112687%_
               _%prototype-table-update!112688%_
               _%default112689%_)
        (let ((_%table112692%_
               (let () (declare (not safe)) (&raw-table-table _%tab112686%_)))
              (_%seed112693%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112686%_))))
          (let* ((_%h112695%_
                  (fxxor (__interface-hash-key _%key112687%_) _%seed112693%_))
                 (_%size112698%_ (vector-length _%table112692%_))
                 (_%entries112701%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112698%_ '2)))
                 (_%start112704%_
                  (let ((__tmp113031
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112695%_ _%entries112701%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113031 '1))))
            (let _%loop112708%_ ((_%probe112711%_ _%start112704%_)
                                 (_%i112713%_ '1)
                                 (_%deleted112715%_ '#f))
              (let ((_%k112718%_ (vector-ref _%table112692%_ _%probe112711%_)))
                (if (eq? _%k112718%_ (macro-unused-obj))
                    (if _%deleted112715%_
                        (begin
                          (vector-set!
                           _%table112692%_
                           _%deleted112715%_
                           _%key112687%_)
                          (vector-set!
                           _%table112692%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112715%_ '1))
                           (_%prototype-table-update!112688%_
                            _%default112689%_))
                          ((lambda ()
                             (let ((__tmp113032
                                    (let ((__tmp113033
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112686%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113033 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112686%_
                                __tmp113032)))))
                        (begin
                          (vector-set!
                           _%table112692%_
                           _%probe112711%_
                           _%key112687%_)
                          (vector-set!
                           _%table112692%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112711%_ '1))
                           (_%prototype-table-update!112688%_
                            _%default112689%_))
                          ((lambda ()
                             (let ((__tmp113034
                                    (let ((__tmp113035
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112686%_))))
                                      (declare (not safe))
                                      (##fx- __tmp113035 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112686%_
                                __tmp113034))
                             (let ((__tmp113036
                                    (let ((__tmp113037
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112686%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113037 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112686%_
                                __tmp113036))))))
                    (if (eq? _%k112718%_ (macro-deleted-obj))
                        (_%loop112708%_
                         (let ((_%next-probe112725%_
                                (fx+ _%start112704%_
                                     _%i112713%_
                                     (fx* _%i112713%_ _%i112713%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112725%_ _%size112698%_))
                         (let () (declare (not safe)) (##fx+ _%i112713%_ '1))
                         (let ((_%$e112728%_ _%deleted112715%_))
                           (if _%$e112728%_ _%$e112728%_ _%probe112711%_)))
                        (if (__interface-test-key _%key112687%_ _%k112718%_)
                            (let ()
                              (vector-set!
                               _%table112692%_
                               _%probe112711%_
                               _%key112687%_)
                              (vector-set!
                               _%table112692%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112711%_ '1))
                               (_%prototype-table-update!112688%_
                                (vector-ref
                                 _%table112692%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe112711%_ '1))))))
                            (_%loop112708%_
                             (let ((_%next-probe112733%_
                                    (fx+ _%start112704%_
                                         _%i112713%_
                                         (fx* _%i112713%_ _%i112713%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112733%_
                                _%size112698%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112713%_ '1))
                             _%deleted112715%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab112641%_ _%key112643%_)
        (let ((_%table112646%_
               (let () (declare (not safe)) (&raw-table-table _%tab112641%_)))
              (_%seed112648%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112641%_))))
          (let* ((_%h112651%_
                  (fxxor (__interface-hash-key _%key112643%_) _%seed112648%_))
                 (_%size112654%_ (vector-length _%table112646%_))
                 (_%entries112657%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112654%_ '2)))
                 (_%start112660%_
                  (let ((__tmp113038
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112651%_ _%entries112657%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113038 '1))))
            (let _%loop112664%_ ((_%probe112667%_ _%start112660%_)
                                 (_%i112669%_ '1))
              (let ((_%k112672%_ (vector-ref _%table112646%_ _%probe112667%_)))
                (if (eq? _%k112672%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k112672%_ (macro-deleted-obj))
                        (_%loop112664%_
                         (let ((_%next-probe112677%_
                                (fx+ _%start112660%_
                                     _%i112669%_
                                     (fx* _%i112669%_ _%i112669%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112677%_ _%size112654%_))
                         (let () (declare (not safe)) (##fx+ _%i112669%_ '1)))
                        (if (__interface-test-key _%key112643%_ _%k112672%_)
                            (let ()
                              (vector-set!
                               _%table112646%_
                               _%probe112667%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table112646%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112667%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp113039
                                        (let ((__tmp113040
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab112641%_))))
                                          (declare (not safe))
                                          (##fx- __tmp113040 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab112641%_
                                    __tmp113039)))))
                            (_%loop112664%_
                             (let ((_%next-probe112683%_
                                    (fx+ _%start112660%_
                                         _%i112669%_
                                         (fx* _%i112669%_ _%i112669%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112683%_
                                _%size112654%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112669%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass112633%_)
        (let ((_%super112634112636%_
               (let () (declare (not safe)) (##type-super _%klass112633%_))))
          (if _%super112634112636%_
              (let ((_%super112639%_ _%super112634112636%_))
                (eq? (let () (declare (not safe)) (##type-id _%super112639%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor112467%_ _%klass112468%_ _%obj-klass112469%_)
        (let ((_%method-table112471%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass112469%_))))
          (let _%loop112474%_ ((_%rest112477%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor112467%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count112479%_ '0)
                               (_%methods112481%_ '()))
            (let* ((_%rest112483112491%_ _%rest112477%_)
                   (_%else112485112553%_
                    (lambda ()
                      (let ((_%prototype112499%_
                             (let ((__obj112999
                                    (let ((__tmp113041
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count112479%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass112468%_
                                       __tmp113041))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj112999 '#f))
                               __obj112999)))
                        (let _%loop112502%_ ((_%rest112504%_ _%methods112481%_)
                                             (_%off112505%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count112479%_ '1))))
                          (let* ((_%rest112507112515%_ _%rest112504%_)
                                 (_%else112509112534%_
                                  (lambda ()
                                    (let ((_%prototype-key112523%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass112468%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass112469%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again112528%_ ()
                                          (if (let ((__tmp113042
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp113042 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again112528%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key112523%_
                                       _%prototype112499%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype112532%_)
                                         _%prototype112532%_)
                                       _%prototype112499%_))))
                                 (_%K112511112541%_
                                  (lambda (_%rest112537%_ _%method112538%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype112499%_
                                       _%method112538%_
                                       _%off112505%_
                                       _%klass112468%_
                                       '#f))
                                    (_%loop112502%_
                                     _%rest112537%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off112505%_ '1))))))
                            (if (pair? _%rest112507112515%_)
                                (let ((_%hd112512112544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest112507112515%_)))
                                      (_%tl112513112546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest112507112515%_))))
                                  (let* ((_%method112549%_ _%hd112512112544%_)
                                         (_%rest112551%_ _%tl112513112546%_))
                                    (_%K112511112541%_
                                     _%rest112551%_
                                     _%method112549%_)))
                                (_%else112509112534%_)))))))
                   (_%K112487112621%_
                    (lambda (_%rest112556%_ _%method-spec112557%_)
                      (if (pair? _%method-spec112557%_)
                          (let _%loop-inner112561%_ ((_%methods-rest112564%_
                                                      _%method-spec112557%_))
                            (let* ((_%methods-rest112566112574%_
                                    _%methods-rest112564%_)
                                   (_%else112568112586%_
                                    (lambda ()
                                      ((lambda (_%klass112582%_
                                                _%obj-klass112583%_
                                                _%method-name112584%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass112582%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass112582%_))
                                          'class:
                                          _%obj-klass112583%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass112583%_))
                                          'method:
                                          _%method-name112584%_)
                                         '#!void)
                                       _%klass112468%_
                                       _%obj-klass112469%_
                                       _%method-spec112557%_)))
                                   (_%K112570112599%_
                                    (lambda (_%methods-rest112589%_
                                             _%method-name112590%_)
                                      (let ((_%$e112593%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table112471%_
                                                _%method-name112590%_
                                                '#f))))
                                        (if _%$e112593%_
                                            ((lambda (_%method112596%_)
                                               (_%loop112474%_
                                                _%rest112556%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count112479%_ '1))
                                                (cons _%method112596%_
                                                      _%methods112481%_)))
                                             _%$e112593%_)
                                            (_%loop-inner112561%_
                                             _%methods-rest112589%_))))))
                              (if (pair? _%methods-rest112566112574%_)
                                  (let ((_%hd112571112602%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest112566112574%_)))
                                        (_%tl112572112604%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest112566112574%_))))
                                    (let* ((_%method-name112607%_
                                            _%hd112571112602%_)
                                           (_%methods-rest112609%_
                                            _%tl112572112604%_))
                                      (_%K112570112599%_
                                       _%methods-rest112609%_
                                       _%method-name112607%_)))
                                  (_%else112568112586%_))))
                          (let ((_%$e112611%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table112471%_
                                    _%method-spec112557%_
                                    '#f))))
                            (if _%$e112611%_
                                ((lambda (_%method112614%_)
                                   (_%loop112474%_
                                    _%rest112556%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count112479%_ '1))
                                    (cons _%method112614%_ _%methods112481%_)))
                                 _%$e112611%_)
                                ((lambda (_%klass112617%_
                                          _%obj-klass112618%_
                                          _%method-name112619%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass112617%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass112617%_))
                                    'class:
                                    _%obj-klass112618%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass112618%_))
                                    'method:
                                    _%method-name112619%_)
                                   '#!void)
                                 _%klass112468%_
                                 _%obj-klass112469%_
                                 _%method-spec112557%_)))))))
              (if (pair? _%rest112483112491%_)
                  (let ((_%hd112488112624%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112483112491%_)))
                        (_%tl112489112626%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112483112491%_))))
                    (let* ((_%method-spec112629%_ _%hd112488112624%_)
                           (_%rest112631%_ _%tl112489112626%_))
                      (_%K112487112621%_
                       _%rest112631%_
                       _%method-spec112629%_)))
                  (_%else112485112553%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor112301%_ _%klass112302%_ _%obj-klass112303%_)
        (let ((_%method-table112305%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass112303%_))))
          (let _%loop112308%_ ((_%rest112311%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor112301%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count112313%_ '0)
                               (_%methods112315%_ '()))
            (let* ((_%rest112317112325%_ _%rest112311%_)
                   (_%else112319112387%_
                    (lambda ()
                      (let ((_%prototype112333%_
                             (let ((__obj113000
                                    (let ((__tmp113043
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count112313%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass112302%_
                                       __tmp113043))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj113000 '#f))
                               __obj113000)))
                        (let _%loop112336%_ ((_%rest112338%_ _%methods112315%_)
                                             (_%off112339%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count112313%_ '1))))
                          (let* ((_%rest112341112349%_ _%rest112338%_)
                                 (_%else112343112368%_
                                  (lambda ()
                                    (let ((_%prototype-key112357%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass112302%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass112303%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again112362%_ ()
                                          (if (let ((__tmp113044
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp113044 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again112362%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key112357%_
                                       _%prototype112333%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype112366%_)
                                         _%prototype112366%_)
                                       _%prototype112333%_))))
                                 (_%K112345112375%_
                                  (lambda (_%rest112371%_ _%method112372%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype112333%_
                                       _%method112372%_
                                       _%off112339%_
                                       _%klass112302%_
                                       '#f))
                                    (_%loop112336%_
                                     _%rest112371%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off112339%_ '1))))))
                            (if (pair? _%rest112341112349%_)
                                (let ((_%hd112346112378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest112341112349%_)))
                                      (_%tl112347112380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest112341112349%_))))
                                  (let* ((_%method112383%_ _%hd112346112378%_)
                                         (_%rest112385%_ _%tl112347112380%_))
                                    (_%K112345112375%_
                                     _%rest112385%_
                                     _%method112383%_)))
                                (_%else112343112368%_)))))))
                   (_%K112321112455%_
                    (lambda (_%rest112390%_ _%method-spec112391%_)
                      (if (pair? _%method-spec112391%_)
                          (let _%loop-inner112395%_ ((_%methods-rest112398%_
                                                      _%method-spec112391%_))
                            (let* ((_%methods-rest112400112408%_
                                    _%methods-rest112398%_)
                                   (_%else112402112420%_
                                    (lambda ()
                                      ((lambda (_%klass112416%_
                                                _%obj-klass112417%_
                                                _%method-name112418%_)
                                         '#f)
                                       _%klass112302%_
                                       _%obj-klass112303%_
                                       _%method-spec112391%_)))
                                   (_%K112404112433%_
                                    (lambda (_%methods-rest112423%_
                                             _%method-name112424%_)
                                      (let ((_%$e112427%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table112305%_
                                                _%method-name112424%_
                                                '#f))))
                                        (if _%$e112427%_
                                            ((lambda (_%method112430%_)
                                               (_%loop112308%_
                                                _%rest112390%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count112313%_ '1))
                                                (cons _%method112430%_
                                                      _%methods112315%_)))
                                             _%$e112427%_)
                                            (_%loop-inner112395%_
                                             _%methods-rest112423%_))))))
                              (if (pair? _%methods-rest112400112408%_)
                                  (let ((_%hd112405112436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest112400112408%_)))
                                        (_%tl112406112438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest112400112408%_))))
                                    (let* ((_%method-name112441%_
                                            _%hd112405112436%_)
                                           (_%methods-rest112443%_
                                            _%tl112406112438%_))
                                      (_%K112404112433%_
                                       _%methods-rest112443%_
                                       _%method-name112441%_)))
                                  (_%else112402112420%_))))
                          (let ((_%$e112445%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table112305%_
                                    _%method-spec112391%_
                                    '#f))))
                            (if _%$e112445%_
                                ((lambda (_%method112448%_)
                                   (_%loop112308%_
                                    _%rest112390%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count112313%_ '1))
                                    (cons _%method112448%_ _%methods112315%_)))
                                 _%$e112445%_)
                                ((lambda (_%klass112451%_
                                          _%obj-klass112452%_
                                          _%method-name112453%_)
                                   '#f)
                                 _%klass112302%_
                                 _%obj-klass112303%_
                                 _%method-spec112391%_)))))))
              (if (pair? _%rest112317112325%_)
                  (let ((_%hd112322112458%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112317112325%_)))
                        (_%tl112323112460%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112317112325%_))))
                    (let* ((_%method-spec112463%_ _%hd112322112458%_)
                           (_%rest112465%_ _%tl112323112460%_))
                      (_%K112321112455%_
                       _%rest112465%_
                       _%method-spec112463%_)))
                  (_%else112319112387%_)))))))
    (define cast
      (lambda (_%descriptor112259%_ _%obj112261%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112265%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112259%_ '1 '#f '#f)))
               (_%klass-id112268%_
                (let () (declare (not safe)) (##type-id _%klass112265%_)))
               (_%obj-klass112271%_
                (let () (declare (not safe)) (class-of _%obj112261%_)))
               (_%obj-klass-id112274%_
                (let () (declare (not safe)) (##type-id _%obj-klass112271%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112268%_ _%obj-klass-id112274%_))
              _%obj112261%_
              (if (interface-subclass? _%obj-klass112271%_)
                  (cast _%descriptor112259%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj112261%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112283%_ ()
                        (if (let ((__tmp113045
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp113045 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again112283%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112268%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112274%_))
                    (let ((_%prototype112294%_
                           (let ((_%$e112287%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112287%_
                                 ((lambda (_%prototype112290%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112290%_)
                                  _%$e112287%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor112259%_
                                    _%klass112265%_
                                    _%obj-klass112271%_))))))
                      ((lambda (_%prototype112296%_ _%obj112297%_)
                         (let ((_%instance112299%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype112296%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance112299%_
                              _%obj112297%_
                              '1
                              '#f
                              'cast))
                           _%instance112299%_))
                       _%prototype112294%_
                       _%obj112261%_))))))))
    (define try-cast
      (lambda (_%descriptor112217%_ _%obj112219%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112217%_ '1 '#f '#f)))
               (_%klass-id112226%_
                (let () (declare (not safe)) (##type-id _%klass112223%_)))
               (_%obj-klass112229%_
                (let () (declare (not safe)) (class-of _%obj112219%_)))
               (_%obj-klass-id112232%_
                (let () (declare (not safe)) (##type-id _%obj-klass112229%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112226%_ _%obj-klass-id112232%_))
              _%obj112219%_
              (if (interface-subclass? _%obj-klass112229%_)
                  (try-cast
                   _%descriptor112217%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj112219%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112241%_ ()
                        (if (let ((__tmp113046
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp113046 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again112241%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112226%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112232%_))
                    (let ((_%prototype112252%_
                           (let ((_%$e112245%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112245%_
                                 ((lambda (_%prototype112248%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112248%_)
                                  _%$e112245%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor112217%_
                                    _%klass112223%_
                                    _%obj-klass112229%_))))))
                      ((lambda (_%prototype112254%_ _%obj112255%_)
                         (if _%prototype112254%_
                             (let ((_%instance112257%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype112254%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance112257%_
                                  _%obj112255%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance112257%_)
                             '#f))
                       _%prototype112252%_
                       _%obj112219%_))))))))
    (define satisfies?
      (lambda (_%descriptor112177%_ _%obj112179%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112177%_ '1 '#f '#f)))
               (_%klass-id112186%_
                (let () (declare (not safe)) (##type-id _%klass112183%_)))
               (_%obj-klass112189%_
                (let () (declare (not safe)) (class-of _%obj112179%_)))
               (_%obj-klass-id112192%_
                (let () (declare (not safe)) (##type-id _%obj-klass112189%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112186%_ _%obj-klass-id112192%_))
              _%obj112179%_
              (if (interface-subclass? _%obj-klass112189%_)
                  (satisfies?
                   _%descriptor112177%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj112179%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112201%_ ()
                        (if (let ((__tmp113047
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp113047 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again112201%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112186%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112192%_))
                    (let ((_%prototype112212%_
                           (let ((_%$e112205%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112205%_
                                 ((lambda (_%prototype112208%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112208%_)
                                  _%$e112205%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor112177%_
                                    _%klass112183%_
                                    _%obj-klass112189%_))))))
                      ((lambda (_%prototype112214%_ _%obj112215%_)
                         (if _%prototype112214%_ '#t '#f))
                       _%prototype112212%_
                       _%obj112179%_))))))))))
