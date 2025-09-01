(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1756715351)
  (begin
    (define CastError::t
      (let ((__tmp113003 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp113003
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args112996%_
        (apply make-instance CastError::t _%$args112996%_)))
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
      (lambda (_%where112870%_ _%message112871%_ . _%irritants112872%_)
        (let ((__tmp113004
               (let ((__obj112999
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj112999
                    _%message112871%_
                    'where:
                    _%where112870%_
                    'irritants:
                    _%irritants112872%_))
                 __obj112999)))
          (declare (not safe))
          (raise __tmp113004))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp113006 (list)) (__tmp113005 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp113006
         '(__object)
         __tmp113005
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
      (let ((__tmp113008 (list))
            (__tmp113007
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp113008
         '(type methods)
         __tmp113007
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args112867%_
        (apply make-instance interface-descriptor::t _%$args112867%_)))
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
      (lambda (_%key112865%_)
        (let ((__tmp113011
               (let ((__tmp113012
                      (let () (declare (not safe)) (##car _%key112865%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp113012)))
              (__tmp113009
               (let ((__tmp113010
                      (let () (declare (not safe)) (##cdr _%key112865%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp113010))))
          (declare (not safe))
          (##fxxor __tmp113011 __tmp113009))))
    (define __interface-test-key
      (lambda (_%a112862%_ _%b112863%_)
        (if (let ((__tmp113014
                   (let () (declare (not safe)) (##car _%a112862%_)))
                  (__tmp113013
                   (let () (declare (not safe)) (##car _%b112863%_))))
              (declare (not safe))
              (##eq? __tmp113014 __tmp113013))
            (let ((__tmp113016
                   (let () (declare (not safe)) (##cdr _%a112862%_)))
                  (__tmp113015
                   (let () (declare (not safe)) (##cdr _%b112863%_))))
              (declare (not safe))
              (##eq? __tmp113016 __tmp113015))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint112843%_ _%seed112845%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint112843%_
           __interface-hash-key
           __interface-test-key
           _%seed112845%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint112851%_ '#f) (_%seed112853%_ '0))
          (make-prototype-table__% _%size-hint112851%_ _%seed112853%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint112855%_)
        (let ((_%seed112857%_ '0))
          (make-prototype-table__% _%size-hint112855%_ _%seed112857%_))))
    (define make-prototype-table
      (lambda _g113017_
        (let ((_g113018_ (let () (declare (not safe)) (##length _g113017_))))
          (cond ((let () (declare (not safe)) (##fx= _g113018_ 0))
                 (apply make-prototype-table__0 _g113017_))
                ((let () (declare (not safe)) (##fx= _g113018_ 1))
                 (apply make-prototype-table__1 _g113017_))
                ((let () (declare (not safe)) (##fx= _g113018_ 2))
                 (apply make-prototype-table__% _g113017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g113017_))))))
    (define prototype-table-ref
      (lambda (_%tab112796%_ _%key112797%_ _%default112798%_)
        (let ((_%table112800%_
               (let () (declare (not safe)) (&raw-table-table _%tab112796%_)))
              (_%seed112801%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112796%_))))
          (let* ((_%h112803%_
                  (fxxor (__interface-hash-key _%key112797%_) _%seed112801%_))
                 (_%size112806%_ (vector-length _%table112800%_))
                 (_%entries112809%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112806%_ '2)))
                 (_%start112812%_
                  (let ((__tmp113019
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112803%_ _%entries112809%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113019 '1))))
            (let _%loop112816%_ ((_%probe112819%_ _%start112812%_)
                                 (_%i112821%_ '1)
                                 (_%deleted112823%_ '#f))
              (let ((_%k112826%_ (vector-ref _%table112800%_ _%probe112819%_)))
                (if (eq? _%k112826%_ (macro-unused-obj))
                    _%default112798%_
                    (if (eq? _%k112826%_ (macro-deleted-obj))
                        (_%loop112816%_
                         (let ((_%next-probe112831%_
                                (fx+ _%start112812%_
                                     _%i112821%_
                                     (fx* _%i112821%_ _%i112821%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112831%_ _%size112806%_))
                         (let () (declare (not safe)) (##fx+ _%i112821%_ '1))
                         (let ((_%$e112834%_ _%deleted112823%_))
                           (if _%$e112834%_ _%$e112834%_ _%probe112819%_)))
                        (if (__interface-test-key _%key112797%_ _%k112826%_)
                            (vector-ref
                             _%table112800%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe112819%_ '1)))
                            (_%loop112816%_
                             (let ((_%next-probe112839%_
                                    (fx+ _%start112812%_
                                         _%i112821%_
                                         (fx* _%i112821%_ _%i112821%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112839%_
                                _%size112806%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112821%_ '1))
                             _%deleted112823%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab112792%_ _%key112793%_ _%value112794%_)
        (if (let ((__tmp113022
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112792%_)))
                  (__tmp113020
                   (let ((__tmp113021
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112792%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp113021 '4))))
              (declare (not safe))
              (##fx< __tmp113022 __tmp113020))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112792%_))
            '#!void)
        (__prototype-table-set! _%tab112792%_ _%key112793%_ _%value112794%_)))
    (define __prototype-table-set!
      (lambda (_%tab112743%_ _%key112744%_ _%value112745%_)
        (let ((_%table112748%_
               (let () (declare (not safe)) (&raw-table-table _%tab112743%_)))
              (_%seed112749%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112743%_))))
          (let* ((_%h112751%_
                  (fxxor (__interface-hash-key _%key112744%_) _%seed112749%_))
                 (_%size112754%_ (vector-length _%table112748%_))
                 (_%entries112757%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112754%_ '2)))
                 (_%start112760%_
                  (let ((__tmp113023
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112751%_ _%entries112757%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113023 '1))))
            (let _%loop112764%_ ((_%probe112767%_ _%start112760%_)
                                 (_%i112769%_ '1)
                                 (_%deleted112771%_ '#f))
              (let ((_%k112774%_ (vector-ref _%table112748%_ _%probe112767%_)))
                (if (eq? _%k112774%_ (macro-unused-obj))
                    (if _%deleted112771%_
                        (begin
                          (vector-set!
                           _%table112748%_
                           _%deleted112771%_
                           _%key112744%_)
                          (vector-set!
                           _%table112748%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112771%_ '1))
                           _%value112745%_)
                          ((lambda ()
                             (let ((__tmp113024
                                    (let ((__tmp113025
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112743%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113025 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112743%_
                                __tmp113024)))))
                        (begin
                          (vector-set!
                           _%table112748%_
                           _%probe112767%_
                           _%key112744%_)
                          (vector-set!
                           _%table112748%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112767%_ '1))
                           _%value112745%_)
                          ((lambda ()
                             (let ((__tmp113026
                                    (let ((__tmp113027
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112743%_))))
                                      (declare (not safe))
                                      (##fx- __tmp113027 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112743%_
                                __tmp113026))
                             (let ((__tmp113028
                                    (let ((__tmp113029
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112743%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113029 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112743%_
                                __tmp113028))))))
                    (if (eq? _%k112774%_ (macro-deleted-obj))
                        (_%loop112764%_
                         (let ((_%next-probe112781%_
                                (fx+ _%start112760%_
                                     _%i112769%_
                                     (fx* _%i112769%_ _%i112769%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112781%_ _%size112754%_))
                         (let () (declare (not safe)) (##fx+ _%i112769%_ '1))
                         (let ((_%$e112784%_ _%deleted112771%_))
                           (if _%$e112784%_ _%$e112784%_ _%probe112767%_)))
                        (if (__interface-test-key _%key112744%_ _%k112774%_)
                            (let ()
                              (vector-set!
                               _%table112748%_
                               _%probe112767%_
                               _%key112744%_)
                              (vector-set!
                               _%table112748%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112767%_ '1))
                               _%value112745%_))
                            (_%loop112764%_
                             (let ((_%next-probe112789%_
                                    (fx+ _%start112760%_
                                         _%i112769%_
                                         (fx* _%i112769%_ _%i112769%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112789%_
                                _%size112754%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112769%_ '1))
                             _%deleted112771%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab112738%_
               _%key112739%_
               _%prototype-table-update!112740%_
               _%default112741%_)
        (if (let ((__tmp113032
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab112738%_)))
                  (__tmp113030
                   (let ((__tmp113031
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab112738%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp113031 '4))))
              (declare (not safe))
              (##fx< __tmp113032 __tmp113030))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab112738%_))
            '#!void)
        (__prototype-table-update!
         _%tab112738%_
         _%key112739%_
         _%prototype-table-update!112740%_
         _%default112741%_)))
    (define __prototype-table-update!
      (lambda (_%tab112688%_
               _%key112689%_
               _%prototype-table-update!112690%_
               _%default112691%_)
        (let ((_%table112694%_
               (let () (declare (not safe)) (&raw-table-table _%tab112688%_)))
              (_%seed112695%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112688%_))))
          (let* ((_%h112697%_
                  (fxxor (__interface-hash-key _%key112689%_) _%seed112695%_))
                 (_%size112700%_ (vector-length _%table112694%_))
                 (_%entries112703%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112700%_ '2)))
                 (_%start112706%_
                  (let ((__tmp113033
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112697%_ _%entries112703%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113033 '1))))
            (let _%loop112710%_ ((_%probe112713%_ _%start112706%_)
                                 (_%i112715%_ '1)
                                 (_%deleted112717%_ '#f))
              (let ((_%k112720%_ (vector-ref _%table112694%_ _%probe112713%_)))
                (if (eq? _%k112720%_ (macro-unused-obj))
                    (if _%deleted112717%_
                        (begin
                          (vector-set!
                           _%table112694%_
                           _%deleted112717%_
                           _%key112689%_)
                          (vector-set!
                           _%table112694%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted112717%_ '1))
                           (_%prototype-table-update!112690%_
                            _%default112691%_))
                          ((lambda ()
                             (let ((__tmp113034
                                    (let ((__tmp113035
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112688%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113035 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112688%_
                                __tmp113034)))))
                        (begin
                          (vector-set!
                           _%table112694%_
                           _%probe112713%_
                           _%key112689%_)
                          (vector-set!
                           _%table112694%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe112713%_ '1))
                           (_%prototype-table-update!112690%_
                            _%default112691%_))
                          ((lambda ()
                             (let ((__tmp113036
                                    (let ((__tmp113037
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab112688%_))))
                                      (declare (not safe))
                                      (##fx- __tmp113037 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab112688%_
                                __tmp113036))
                             (let ((__tmp113038
                                    (let ((__tmp113039
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab112688%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp113039 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab112688%_
                                __tmp113038))))))
                    (if (eq? _%k112720%_ (macro-deleted-obj))
                        (_%loop112710%_
                         (let ((_%next-probe112727%_
                                (fx+ _%start112706%_
                                     _%i112715%_
                                     (fx* _%i112715%_ _%i112715%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112727%_ _%size112700%_))
                         (let () (declare (not safe)) (##fx+ _%i112715%_ '1))
                         (let ((_%$e112730%_ _%deleted112717%_))
                           (if _%$e112730%_ _%$e112730%_ _%probe112713%_)))
                        (if (__interface-test-key _%key112689%_ _%k112720%_)
                            (let ()
                              (vector-set!
                               _%table112694%_
                               _%probe112713%_
                               _%key112689%_)
                              (vector-set!
                               _%table112694%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112713%_ '1))
                               (_%prototype-table-update!112690%_
                                (vector-ref
                                 _%table112694%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe112713%_ '1))))))
                            (_%loop112710%_
                             (let ((_%next-probe112735%_
                                    (fx+ _%start112706%_
                                         _%i112715%_
                                         (fx* _%i112715%_ _%i112715%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112735%_
                                _%size112700%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112715%_ '1))
                             _%deleted112717%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab112643%_ _%key112645%_)
        (let ((_%table112648%_
               (let () (declare (not safe)) (&raw-table-table _%tab112643%_)))
              (_%seed112650%_
               (let () (declare (not safe)) (&raw-table-seed _%tab112643%_))))
          (let* ((_%h112653%_
                  (fxxor (__interface-hash-key _%key112645%_) _%seed112650%_))
                 (_%size112656%_ (vector-length _%table112648%_))
                 (_%entries112659%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size112656%_ '2)))
                 (_%start112662%_
                  (let ((__tmp113040
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h112653%_ _%entries112659%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp113040 '1))))
            (let _%loop112666%_ ((_%probe112669%_ _%start112662%_)
                                 (_%i112671%_ '1))
              (let ((_%k112674%_ (vector-ref _%table112648%_ _%probe112669%_)))
                (if (eq? _%k112674%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k112674%_ (macro-deleted-obj))
                        (_%loop112666%_
                         (let ((_%next-probe112679%_
                                (fx+ _%start112662%_
                                     _%i112671%_
                                     (fx* _%i112671%_ _%i112671%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe112679%_ _%size112656%_))
                         (let () (declare (not safe)) (##fx+ _%i112671%_ '1)))
                        (if (__interface-test-key _%key112645%_ _%k112674%_)
                            (let ()
                              (vector-set!
                               _%table112648%_
                               _%probe112669%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table112648%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe112669%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp113041
                                        (let ((__tmp113042
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab112643%_))))
                                          (declare (not safe))
                                          (##fx- __tmp113042 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab112643%_
                                    __tmp113041)))))
                            (_%loop112666%_
                             (let ((_%next-probe112685%_
                                    (fx+ _%start112662%_
                                         _%i112671%_
                                         (fx* _%i112671%_ _%i112671%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe112685%_
                                _%size112656%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i112671%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass112635%_)
        (let ((_%super112636112638%_
               (let () (declare (not safe)) (##type-super _%klass112635%_))))
          (if _%super112636112638%_
              (let ((_%super112641%_ _%super112636112638%_))
                (eq? (let () (declare (not safe)) (##type-id _%super112641%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor112469%_ _%klass112470%_ _%obj-klass112471%_)
        (let ((_%method-table112473%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass112471%_))))
          (let _%loop112476%_ ((_%rest112479%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor112469%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count112481%_ '0)
                               (_%methods112483%_ '()))
            (let* ((_%rest112485112493%_ _%rest112479%_)
                   (_%else112487112555%_
                    (lambda ()
                      (let ((_%prototype112501%_
                             (let ((__obj113001
                                    (let ((__tmp113043
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count112481%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass112470%_
                                       __tmp113043))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj113001 '#f))
                               __obj113001)))
                        (let _%loop112504%_ ((_%rest112506%_ _%methods112483%_)
                                             (_%off112507%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count112481%_ '1))))
                          (let* ((_%rest112509112517%_ _%rest112506%_)
                                 (_%else112511112536%_
                                  (lambda ()
                                    (let ((_%prototype-key112525%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass112470%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass112471%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again112530%_ ()
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
                                                (_%again112530%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key112525%_
                                       _%prototype112501%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype112534%_)
                                         _%prototype112534%_)
                                       _%prototype112501%_))))
                                 (_%K112513112543%_
                                  (lambda (_%rest112539%_ _%method112540%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype112501%_
                                       _%method112540%_
                                       _%off112507%_
                                       _%klass112470%_
                                       '#f))
                                    (_%loop112504%_
                                     _%rest112539%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off112507%_ '1))))))
                            (if (pair? _%rest112509112517%_)
                                (let ((_%hd112514112546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest112509112517%_)))
                                      (_%tl112515112548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest112509112517%_))))
                                  (let* ((_%method112551%_ _%hd112514112546%_)
                                         (_%rest112553%_ _%tl112515112548%_))
                                    (_%K112513112543%_
                                     _%rest112553%_
                                     _%method112551%_)))
                                (_%else112511112536%_)))))))
                   (_%K112489112623%_
                    (lambda (_%rest112558%_ _%method-spec112559%_)
                      (if (pair? _%method-spec112559%_)
                          (let _%loop-inner112563%_ ((_%methods-rest112566%_
                                                      _%method-spec112559%_))
                            (let* ((_%methods-rest112568112576%_
                                    _%methods-rest112566%_)
                                   (_%else112570112588%_
                                    (lambda ()
                                      ((lambda (_%klass112584%_
                                                _%obj-klass112585%_
                                                _%method-name112586%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass112584%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass112584%_))
                                          'class:
                                          _%obj-klass112585%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass112585%_))
                                          'method:
                                          _%method-name112586%_)
                                         '#!void)
                                       _%klass112470%_
                                       _%obj-klass112471%_
                                       _%method-spec112559%_)))
                                   (_%K112572112601%_
                                    (lambda (_%methods-rest112591%_
                                             _%method-name112592%_)
                                      (let ((_%$e112595%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table112473%_
                                                _%method-name112592%_
                                                '#f))))
                                        (if _%$e112595%_
                                            ((lambda (_%method112598%_)
                                               (_%loop112476%_
                                                _%rest112558%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count112481%_ '1))
                                                (cons _%method112598%_
                                                      _%methods112483%_)))
                                             _%$e112595%_)
                                            (_%loop-inner112563%_
                                             _%methods-rest112591%_))))))
                              (if (pair? _%methods-rest112568112576%_)
                                  (let ((_%hd112573112604%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest112568112576%_)))
                                        (_%tl112574112606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest112568112576%_))))
                                    (let* ((_%method-name112609%_
                                            _%hd112573112604%_)
                                           (_%methods-rest112611%_
                                            _%tl112574112606%_))
                                      (_%K112572112601%_
                                       _%methods-rest112611%_
                                       _%method-name112609%_)))
                                  (_%else112570112588%_))))
                          (let ((_%$e112613%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table112473%_
                                    _%method-spec112559%_
                                    '#f))))
                            (if _%$e112613%_
                                ((lambda (_%method112616%_)
                                   (_%loop112476%_
                                    _%rest112558%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count112481%_ '1))
                                    (cons _%method112616%_ _%methods112483%_)))
                                 _%$e112613%_)
                                ((lambda (_%klass112619%_
                                          _%obj-klass112620%_
                                          _%method-name112621%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass112619%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass112619%_))
                                    'class:
                                    _%obj-klass112620%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass112620%_))
                                    'method:
                                    _%method-name112621%_)
                                   '#!void)
                                 _%klass112470%_
                                 _%obj-klass112471%_
                                 _%method-spec112559%_)))))))
              (if (pair? _%rest112485112493%_)
                  (let ((_%hd112490112626%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112485112493%_)))
                        (_%tl112491112628%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112485112493%_))))
                    (let* ((_%method-spec112631%_ _%hd112490112626%_)
                           (_%rest112633%_ _%tl112491112628%_))
                      (_%K112489112623%_
                       _%rest112633%_
                       _%method-spec112631%_)))
                  (_%else112487112555%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor112303%_ _%klass112304%_ _%obj-klass112305%_)
        (let ((_%method-table112307%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass112305%_))))
          (let _%loop112310%_ ((_%rest112313%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor112303%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count112315%_ '0)
                               (_%methods112317%_ '()))
            (let* ((_%rest112319112327%_ _%rest112313%_)
                   (_%else112321112389%_
                    (lambda ()
                      (let ((_%prototype112335%_
                             (let ((__obj113002
                                    (let ((__tmp113045
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count112315%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass112304%_
                                       __tmp113045))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj113002 '#f))
                               __obj113002)))
                        (let _%loop112338%_ ((_%rest112340%_ _%methods112317%_)
                                             (_%off112341%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count112315%_ '1))))
                          (let* ((_%rest112343112351%_ _%rest112340%_)
                                 (_%else112345112370%_
                                  (lambda ()
                                    (let ((_%prototype-key112359%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass112304%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass112305%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again112364%_ ()
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
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again112364%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key112359%_
                                       _%prototype112335%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype112368%_)
                                         _%prototype112368%_)
                                       _%prototype112335%_))))
                                 (_%K112347112377%_
                                  (lambda (_%rest112373%_ _%method112374%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype112335%_
                                       _%method112374%_
                                       _%off112341%_
                                       _%klass112304%_
                                       '#f))
                                    (_%loop112338%_
                                     _%rest112373%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off112341%_ '1))))))
                            (if (pair? _%rest112343112351%_)
                                (let ((_%hd112348112380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest112343112351%_)))
                                      (_%tl112349112382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest112343112351%_))))
                                  (let* ((_%method112385%_ _%hd112348112380%_)
                                         (_%rest112387%_ _%tl112349112382%_))
                                    (_%K112347112377%_
                                     _%rest112387%_
                                     _%method112385%_)))
                                (_%else112345112370%_)))))))
                   (_%K112323112457%_
                    (lambda (_%rest112392%_ _%method-spec112393%_)
                      (if (pair? _%method-spec112393%_)
                          (let _%loop-inner112397%_ ((_%methods-rest112400%_
                                                      _%method-spec112393%_))
                            (let* ((_%methods-rest112402112410%_
                                    _%methods-rest112400%_)
                                   (_%else112404112422%_
                                    (lambda ()
                                      ((lambda (_%klass112418%_
                                                _%obj-klass112419%_
                                                _%method-name112420%_)
                                         '#f)
                                       _%klass112304%_
                                       _%obj-klass112305%_
                                       _%method-spec112393%_)))
                                   (_%K112406112435%_
                                    (lambda (_%methods-rest112425%_
                                             _%method-name112426%_)
                                      (let ((_%$e112429%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table112307%_
                                                _%method-name112426%_
                                                '#f))))
                                        (if _%$e112429%_
                                            ((lambda (_%method112432%_)
                                               (_%loop112310%_
                                                _%rest112392%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count112315%_ '1))
                                                (cons _%method112432%_
                                                      _%methods112317%_)))
                                             _%$e112429%_)
                                            (_%loop-inner112397%_
                                             _%methods-rest112425%_))))))
                              (if (pair? _%methods-rest112402112410%_)
                                  (let ((_%hd112407112438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest112402112410%_)))
                                        (_%tl112408112440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest112402112410%_))))
                                    (let* ((_%method-name112443%_
                                            _%hd112407112438%_)
                                           (_%methods-rest112445%_
                                            _%tl112408112440%_))
                                      (_%K112406112435%_
                                       _%methods-rest112445%_
                                       _%method-name112443%_)))
                                  (_%else112404112422%_))))
                          (let ((_%$e112447%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table112307%_
                                    _%method-spec112393%_
                                    '#f))))
                            (if _%$e112447%_
                                ((lambda (_%method112450%_)
                                   (_%loop112310%_
                                    _%rest112392%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count112315%_ '1))
                                    (cons _%method112450%_ _%methods112317%_)))
                                 _%$e112447%_)
                                ((lambda (_%klass112453%_
                                          _%obj-klass112454%_
                                          _%method-name112455%_)
                                   '#f)
                                 _%klass112304%_
                                 _%obj-klass112305%_
                                 _%method-spec112393%_)))))))
              (if (pair? _%rest112319112327%_)
                  (let ((_%hd112324112460%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest112319112327%_)))
                        (_%tl112325112462%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest112319112327%_))))
                    (let* ((_%method-spec112465%_ _%hd112324112460%_)
                           (_%rest112467%_ _%tl112325112462%_))
                      (_%K112323112457%_
                       _%rest112467%_
                       _%method-spec112465%_)))
                  (_%else112321112389%_)))))))
    (define cast
      (lambda (_%descriptor112261%_ _%obj112263%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112267%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112261%_ '1 '#f '#f)))
               (_%klass-id112270%_
                (let () (declare (not safe)) (##type-id _%klass112267%_)))
               (_%obj-klass112273%_
                (let () (declare (not safe)) (class-of _%obj112263%_)))
               (_%obj-klass-id112276%_
                (let () (declare (not safe)) (##type-id _%obj-klass112273%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112270%_ _%obj-klass-id112276%_))
              _%obj112263%_
              (if (interface-subclass? _%obj-klass112273%_)
                  (cast _%descriptor112261%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj112263%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112285%_ ()
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
                              (_%again112285%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112270%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112276%_))
                    (let ((_%prototype112296%_
                           (let ((_%$e112289%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112289%_
                                 ((lambda (_%prototype112292%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112292%_)
                                  _%$e112289%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor112261%_
                                    _%klass112267%_
                                    _%obj-klass112273%_))))))
                      ((lambda (_%prototype112298%_ _%obj112299%_)
                         (let ((_%instance112301%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype112298%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance112301%_
                              _%obj112299%_
                              '1
                              '#f
                              'cast))
                           _%instance112301%_))
                       _%prototype112296%_
                       _%obj112263%_))))))))
    (define try-cast
      (lambda (_%descriptor112219%_ _%obj112221%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112225%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112219%_ '1 '#f '#f)))
               (_%klass-id112228%_
                (let () (declare (not safe)) (##type-id _%klass112225%_)))
               (_%obj-klass112231%_
                (let () (declare (not safe)) (class-of _%obj112221%_)))
               (_%obj-klass-id112234%_
                (let () (declare (not safe)) (##type-id _%obj-klass112231%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112228%_ _%obj-klass-id112234%_))
              _%obj112221%_
              (if (interface-subclass? _%obj-klass112231%_)
                  (try-cast
                   _%descriptor112219%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj112221%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112243%_ ()
                        (if (let ((__tmp113048
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp113048 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again112243%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112228%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112234%_))
                    (let ((_%prototype112254%_
                           (let ((_%$e112247%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112247%_
                                 ((lambda (_%prototype112250%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112250%_)
                                  _%$e112247%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor112219%_
                                    _%klass112225%_
                                    _%obj-klass112231%_))))))
                      ((lambda (_%prototype112256%_ _%obj112257%_)
                         (if _%prototype112256%_
                             (let ((_%instance112259%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype112256%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance112259%_
                                  _%obj112257%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance112259%_)
                             '#f))
                       _%prototype112254%_
                       _%obj112221%_))))))))
    (define satisfies?
      (lambda (_%descriptor112179%_ _%obj112181%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass112185%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor112179%_ '1 '#f '#f)))
               (_%klass-id112188%_
                (let () (declare (not safe)) (##type-id _%klass112185%_)))
               (_%obj-klass112191%_
                (let () (declare (not safe)) (class-of _%obj112181%_)))
               (_%obj-klass-id112194%_
                (let () (declare (not safe)) (##type-id _%obj-klass112191%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id112188%_ _%obj-klass-id112194%_))
              _%obj112181%_
              (if (interface-subclass? _%obj-klass112191%_)
                  (satisfies?
                   _%descriptor112179%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj112181%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again112203%_ ()
                        (if (let ((__tmp113049
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp113049 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again112203%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id112188%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id112194%_))
                    (let ((_%prototype112214%_
                           (let ((_%$e112207%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e112207%_
                                 ((lambda (_%prototype112210%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype112210%_)
                                  _%$e112207%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor112179%_
                                    _%klass112185%_
                                    _%obj-klass112191%_))))))
                      ((lambda (_%prototype112216%_ _%obj112217%_)
                         (if _%prototype112216%_ '#t '#f))
                       _%prototype112214%_
                       _%obj112181%_))))))))))
