(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734279327)
  (begin
    (define CastError::t
      (let ((__tmp106109 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106109
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106102%_
        (apply make-instance CastError::t _%$args106102%_)))
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
      (lambda (_%where105976%_ _%message105977%_ . _%irritants105978%_)
        (let ((__tmp106110
               (let ((__obj106105
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106105
                    _%message105977%_
                    'where:
                    _%where105976%_
                    'irritants:
                    _%irritants105978%_))
                 __obj106105)))
          (declare (not safe))
          (raise __tmp106110))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106112 (list)) (__tmp106111 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106112
         '(__object)
         __tmp106111
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
      (let ((__tmp106114 (list))
            (__tmp106113
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106114
         '(type methods)
         __tmp106113
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args105973%_
        (apply make-instance interface-descriptor::t _%$args105973%_)))
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
      (lambda (_%key105971%_)
        (let ((__tmp106116
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key105971%_))))
              (__tmp106115
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key105971%_)))))
          (declare (not safe))
          (##fxxor __tmp106116 __tmp106115))))
    (define __interface-test-key
      (lambda (_%a105968%_ _%b105969%_)
        (if (let ((__tmp106118
                   (let () (declare (not safe)) (##car _%a105968%_)))
                  (__tmp106117
                   (let () (declare (not safe)) (##car _%b105969%_))))
              (declare (not safe))
              (##eq? __tmp106118 __tmp106117))
            (let ((__tmp106120
                   (let () (declare (not safe)) (##cdr _%a105968%_)))
                  (__tmp106119
                   (let () (declare (not safe)) (##cdr _%b105969%_))))
              (declare (not safe))
              (##eq? __tmp106120 __tmp106119))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105949%_ _%seed105951%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105949%_
           __interface-hash-key
           __interface-test-key
           _%seed105951%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105957%_ '#f) (_%seed105959%_ '0))
          (make-prototype-table__% _%size-hint105957%_ _%seed105959%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105961%_)
        (let ((_%seed105963%_ '0))
          (make-prototype-table__% _%size-hint105961%_ _%seed105963%_))))
    (define make-prototype-table
      (lambda _g106122_
        (let ((_g106121_ (let () (declare (not safe)) (##length _g106122_))))
          (cond ((let () (declare (not safe)) (##fx= _g106121_ 0))
                 (apply make-prototype-table__0 _g106122_))
                ((let () (declare (not safe)) (##fx= _g106121_ 1))
                 (apply make-prototype-table__1 _g106122_))
                ((let () (declare (not safe)) (##fx= _g106121_ 2))
                 (apply make-prototype-table__% _g106122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106122_))))))
    (define prototype-table-ref
      (lambda (_%tab105902%_ _%key105903%_ _%default105904%_)
        (let ((_%table105906%_
               (let () (declare (not safe)) (&raw-table-table _%tab105902%_)))
              (_%seed105907%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105902%_))))
          (let* ((_%h105909%_
                  (fxxor (__interface-hash-key _%key105903%_) _%seed105907%_))
                 (_%size105912%_ (vector-length _%table105906%_))
                 (_%entries105915%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105912%_ '2)))
                 (_%start105918%_
                  (let ((__tmp106123
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105909%_ _%entries105915%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106123 '1))))
            (let _%loop105922%_ ((_%probe105925%_ _%start105918%_)
                                 (_%i105927%_ '1)
                                 (_%deleted105929%_ '#f))
              (let ((_%k105932%_ (vector-ref _%table105906%_ _%probe105925%_)))
                (if (eq? _%k105932%_ (macro-unused-obj))
                    _%default105904%_
                    (if (eq? _%k105932%_ (macro-deleted-obj))
                        (_%loop105922%_
                         (let ((_%next-probe105937%_
                                (fx+ _%start105918%_
                                     _%i105927%_
                                     (fx* _%i105927%_ _%i105927%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105937%_ _%size105912%_))
                         (let () (declare (not safe)) (##fx+ _%i105927%_ '1))
                         (let ((_%$e105940%_ _%deleted105929%_))
                           (if _%$e105940%_ _%$e105940%_ _%probe105925%_)))
                        (if (__interface-test-key _%key105903%_ _%k105932%_)
                            (vector-ref
                             _%table105906%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105925%_ '1)))
                            (_%loop105922%_
                             (let ((_%next-probe105945%_
                                    (fx+ _%start105918%_
                                         _%i105927%_
                                         (fx* _%i105927%_ _%i105927%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105945%_
                                _%size105912%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105927%_ '1))
                             _%deleted105929%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105898%_ _%key105899%_ _%value105900%_)
        (if (let ((__tmp106126
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105898%_)))
                  (__tmp106124
                   (let ((__tmp106125
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105898%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106125 '4))))
              (declare (not safe))
              (##fx< __tmp106126 __tmp106124))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105898%_))
            '#!void)
        (__prototype-table-set! _%tab105898%_ _%key105899%_ _%value105900%_)))
    (define __prototype-table-set!
      (lambda (_%tab105849%_ _%key105850%_ _%value105851%_)
        (let ((_%table105854%_
               (let () (declare (not safe)) (&raw-table-table _%tab105849%_)))
              (_%seed105855%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105849%_))))
          (let* ((_%h105857%_
                  (fxxor (__interface-hash-key _%key105850%_) _%seed105855%_))
                 (_%size105860%_ (vector-length _%table105854%_))
                 (_%entries105863%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105860%_ '2)))
                 (_%start105866%_
                  (let ((__tmp106127
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105857%_ _%entries105863%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106127 '1))))
            (let _%loop105870%_ ((_%probe105873%_ _%start105866%_)
                                 (_%i105875%_ '1)
                                 (_%deleted105877%_ '#f))
              (let ((_%k105880%_ (vector-ref _%table105854%_ _%probe105873%_)))
                (if (eq? _%k105880%_ (macro-unused-obj))
                    (if _%deleted105877%_
                        (begin
                          (vector-set!
                           _%table105854%_
                           _%deleted105877%_
                           _%key105850%_)
                          (vector-set!
                           _%table105854%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105877%_ '1))
                           _%value105851%_)
                          ((lambda ()
                             (let ((__tmp106128
                                    (let ((__tmp106129
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105849%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106129 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105849%_
                                __tmp106128)))))
                        (begin
                          (vector-set!
                           _%table105854%_
                           _%probe105873%_
                           _%key105850%_)
                          (vector-set!
                           _%table105854%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105873%_ '1))
                           _%value105851%_)
                          ((lambda ()
                             (let ((__tmp106130
                                    (let ((__tmp106131
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105849%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106131 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105849%_
                                __tmp106130))
                             (let ((__tmp106132
                                    (let ((__tmp106133
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105849%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106133 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105849%_
                                __tmp106132))))))
                    (if (eq? _%k105880%_ (macro-deleted-obj))
                        (_%loop105870%_
                         (let ((_%next-probe105887%_
                                (fx+ _%start105866%_
                                     _%i105875%_
                                     (fx* _%i105875%_ _%i105875%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105887%_ _%size105860%_))
                         (let () (declare (not safe)) (##fx+ _%i105875%_ '1))
                         (let ((_%$e105890%_ _%deleted105877%_))
                           (if _%$e105890%_ _%$e105890%_ _%probe105873%_)))
                        (if (__interface-test-key _%key105850%_ _%k105880%_)
                            (let ()
                              (vector-set!
                               _%table105854%_
                               _%probe105873%_
                               _%key105850%_)
                              (vector-set!
                               _%table105854%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105873%_ '1))
                               _%value105851%_))
                            (_%loop105870%_
                             (let ((_%next-probe105895%_
                                    (fx+ _%start105866%_
                                         _%i105875%_
                                         (fx* _%i105875%_ _%i105875%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105895%_
                                _%size105860%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105875%_ '1))
                             _%deleted105877%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105844%_
               _%key105845%_
               _%prototype-table-update!105846%_
               _%default105847%_)
        (if (let ((__tmp106136
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105844%_)))
                  (__tmp106134
                   (let ((__tmp106135
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105844%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106135 '4))))
              (declare (not safe))
              (##fx< __tmp106136 __tmp106134))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105844%_))
            '#!void)
        (__prototype-table-update!
         _%tab105844%_
         _%key105845%_
         _%prototype-table-update!105846%_
         _%default105847%_)))
    (define __prototype-table-update!
      (lambda (_%tab105794%_
               _%key105795%_
               _%prototype-table-update!105796%_
               _%default105797%_)
        (let ((_%table105800%_
               (let () (declare (not safe)) (&raw-table-table _%tab105794%_)))
              (_%seed105801%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105794%_))))
          (let* ((_%h105803%_
                  (fxxor (__interface-hash-key _%key105795%_) _%seed105801%_))
                 (_%size105806%_ (vector-length _%table105800%_))
                 (_%entries105809%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105806%_ '2)))
                 (_%start105812%_
                  (let ((__tmp106137
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105803%_ _%entries105809%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106137 '1))))
            (let _%loop105816%_ ((_%probe105819%_ _%start105812%_)
                                 (_%i105821%_ '1)
                                 (_%deleted105823%_ '#f))
              (let ((_%k105826%_ (vector-ref _%table105800%_ _%probe105819%_)))
                (if (eq? _%k105826%_ (macro-unused-obj))
                    (if _%deleted105823%_
                        (begin
                          (vector-set!
                           _%table105800%_
                           _%deleted105823%_
                           _%key105795%_)
                          (vector-set!
                           _%table105800%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105823%_ '1))
                           (_%prototype-table-update!105796%_
                            _%default105797%_))
                          ((lambda ()
                             (let ((__tmp106138
                                    (let ((__tmp106139
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105794%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106139 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105794%_
                                __tmp106138)))))
                        (begin
                          (vector-set!
                           _%table105800%_
                           _%probe105819%_
                           _%key105795%_)
                          (vector-set!
                           _%table105800%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105819%_ '1))
                           (_%prototype-table-update!105796%_
                            _%default105797%_))
                          ((lambda ()
                             (let ((__tmp106140
                                    (let ((__tmp106141
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105794%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106141 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105794%_
                                __tmp106140))
                             (let ((__tmp106142
                                    (let ((__tmp106143
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105794%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106143 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105794%_
                                __tmp106142))))))
                    (if (eq? _%k105826%_ (macro-deleted-obj))
                        (_%loop105816%_
                         (let ((_%next-probe105833%_
                                (fx+ _%start105812%_
                                     _%i105821%_
                                     (fx* _%i105821%_ _%i105821%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105833%_ _%size105806%_))
                         (let () (declare (not safe)) (##fx+ _%i105821%_ '1))
                         (let ((_%$e105836%_ _%deleted105823%_))
                           (if _%$e105836%_ _%$e105836%_ _%probe105819%_)))
                        (if (__interface-test-key _%key105795%_ _%k105826%_)
                            (let ()
                              (vector-set!
                               _%table105800%_
                               _%probe105819%_
                               _%key105795%_)
                              (vector-set!
                               _%table105800%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105819%_ '1))
                               (_%prototype-table-update!105796%_
                                (vector-ref
                                 _%table105800%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105819%_ '1))))))
                            (_%loop105816%_
                             (let ((_%next-probe105841%_
                                    (fx+ _%start105812%_
                                         _%i105821%_
                                         (fx* _%i105821%_ _%i105821%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105841%_
                                _%size105806%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105821%_ '1))
                             _%deleted105823%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105749%_ _%key105751%_)
        (let ((_%table105754%_
               (let () (declare (not safe)) (&raw-table-table _%tab105749%_)))
              (_%seed105756%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105749%_))))
          (let* ((_%h105759%_
                  (fxxor (__interface-hash-key _%key105751%_) _%seed105756%_))
                 (_%size105762%_ (vector-length _%table105754%_))
                 (_%entries105765%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105762%_ '2)))
                 (_%start105768%_
                  (let ((__tmp106144
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105759%_ _%entries105765%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106144 '1))))
            (let _%loop105772%_ ((_%probe105775%_ _%start105768%_)
                                 (_%i105777%_ '1))
              (let ((_%k105780%_ (vector-ref _%table105754%_ _%probe105775%_)))
                (if (eq? _%k105780%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105780%_ (macro-deleted-obj))
                        (_%loop105772%_
                         (let ((_%next-probe105785%_
                                (fx+ _%start105768%_
                                     _%i105777%_
                                     (fx* _%i105777%_ _%i105777%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105785%_ _%size105762%_))
                         (let () (declare (not safe)) (##fx+ _%i105777%_ '1)))
                        (if (__interface-test-key _%key105751%_ _%k105780%_)
                            (let ()
                              (vector-set!
                               _%table105754%_
                               _%probe105775%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105754%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105775%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106145
                                        (let ((__tmp106146
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105749%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106146 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105749%_
                                    __tmp106145)))))
                            (_%loop105772%_
                             (let ((_%next-probe105791%_
                                    (fx+ _%start105768%_
                                         _%i105777%_
                                         (fx* _%i105777%_ _%i105777%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105791%_
                                _%size105762%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105777%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105741%_)
        (let ((_%super105742105744%_
               (let () (declare (not safe)) (##type-super _%klass105741%_))))
          (if _%super105742105744%_
              (let ((_%super105747%_ _%super105742105744%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105747%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105575%_ _%klass105576%_ _%obj-klass105577%_)
        (let ((_%method-table105579%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105577%_))))
          (let _%loop105582%_ ((_%rest105585%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105575%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105587%_ '0)
                               (_%methods105589%_ '()))
            (let* ((_%rest105591105599%_ _%rest105585%_)
                   (_%else105593105661%_
                    (lambda ()
                      (let ((_%prototype105607%_
                             (let ((__obj106107
                                    (let ((__tmp106147
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105587%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105576%_
                                       __tmp106147))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106107 '#f))
                               __obj106107)))
                        (let _%loop105610%_ ((_%rest105612%_ _%methods105589%_)
                                             (_%off105613%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105587%_ '1))))
                          (let* ((_%rest105615105623%_ _%rest105612%_)
                                 (_%else105617105642%_
                                  (lambda ()
                                    (let ((_%prototype-key105631%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105576%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105577%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105636%_ ()
                                          (if (let ((__tmp106148
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106148 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105636%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105631%_
                                       _%prototype105607%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105640%_)
                                         _%prototype105640%_)
                                       _%prototype105607%_))))
                                 (_%K105619105649%_
                                  (lambda (_%rest105645%_ _%method105646%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105607%_
                                       _%method105646%_
                                       _%off105613%_
                                       _%klass105576%_
                                       '#f))
                                    (_%loop105610%_
                                     _%rest105645%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105613%_ '1))))))
                            (if (pair? _%rest105615105623%_)
                                (let ((_%hd105620105652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105615105623%_)))
                                      (_%tl105621105654%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105615105623%_))))
                                  (let* ((_%method105657%_ _%hd105620105652%_)
                                         (_%rest105659%_ _%tl105621105654%_))
                                    (_%K105619105649%_
                                     _%rest105659%_
                                     _%method105657%_)))
                                (_%else105617105642%_)))))))
                   (_%K105595105729%_
                    (lambda (_%rest105664%_ _%method-spec105665%_)
                      (if (pair? _%method-spec105665%_)
                          (let _%loop-inner105669%_ ((_%methods-rest105672%_
                                                      _%method-spec105665%_))
                            (let* ((_%methods-rest105674105682%_
                                    _%methods-rest105672%_)
                                   (_%else105676105694%_
                                    (lambda ()
                                      ((lambda (_%klass105690%_
                                                _%obj-klass105691%_
                                                _%method-name105692%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105690%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105690%_))
                                          'class:
                                          _%obj-klass105691%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105691%_))
                                          'method:
                                          _%method-name105692%_)
                                         '#!void)
                                       _%klass105576%_
                                       _%obj-klass105577%_
                                       _%method-spec105665%_)))
                                   (_%K105678105707%_
                                    (lambda (_%methods-rest105697%_
                                             _%method-name105698%_)
                                      (let ((_%$e105701%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105579%_
                                                _%method-name105698%_
                                                '#f))))
                                        (if _%$e105701%_
                                            ((lambda (_%method105704%_)
                                               (_%loop105582%_
                                                _%rest105664%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105587%_ '1))
                                                (cons _%method105704%_
                                                      _%methods105589%_)))
                                             _%$e105701%_)
                                            (_%loop-inner105669%_
                                             _%methods-rest105697%_))))))
                              (if (pair? _%methods-rest105674105682%_)
                                  (let ((_%hd105679105710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105674105682%_)))
                                        (_%tl105680105712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105674105682%_))))
                                    (let* ((_%method-name105715%_
                                            _%hd105679105710%_)
                                           (_%methods-rest105717%_
                                            _%tl105680105712%_))
                                      (_%K105678105707%_
                                       _%methods-rest105717%_
                                       _%method-name105715%_)))
                                  (_%else105676105694%_))))
                          (let ((_%$e105719%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105579%_
                                    _%method-spec105665%_
                                    '#f))))
                            (if _%$e105719%_
                                ((lambda (_%method105722%_)
                                   (_%loop105582%_
                                    _%rest105664%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105587%_ '1))
                                    (cons _%method105722%_ _%methods105589%_)))
                                 _%$e105719%_)
                                ((lambda (_%klass105725%_
                                          _%obj-klass105726%_
                                          _%method-name105727%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105725%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105725%_))
                                    'class:
                                    _%obj-klass105726%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105726%_))
                                    'method:
                                    _%method-name105727%_)
                                   '#!void)
                                 _%klass105576%_
                                 _%obj-klass105577%_
                                 _%method-spec105665%_)))))))
              (if (pair? _%rest105591105599%_)
                  (let ((_%hd105596105732%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105591105599%_)))
                        (_%tl105597105734%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105591105599%_))))
                    (let* ((_%method-spec105737%_ _%hd105596105732%_)
                           (_%rest105739%_ _%tl105597105734%_))
                      (_%K105595105729%_
                       _%rest105739%_
                       _%method-spec105737%_)))
                  (_%else105593105661%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105409%_ _%klass105410%_ _%obj-klass105411%_)
        (let ((_%method-table105413%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105411%_))))
          (let _%loop105416%_ ((_%rest105419%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105409%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105421%_ '0)
                               (_%methods105423%_ '()))
            (let* ((_%rest105425105433%_ _%rest105419%_)
                   (_%else105427105495%_
                    (lambda ()
                      (let ((_%prototype105441%_
                             (let ((__obj106108
                                    (let ((__tmp106149
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105421%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105410%_
                                       __tmp106149))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106108 '#f))
                               __obj106108)))
                        (let _%loop105444%_ ((_%rest105446%_ _%methods105423%_)
                                             (_%off105447%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105421%_ '1))))
                          (let* ((_%rest105449105457%_ _%rest105446%_)
                                 (_%else105451105476%_
                                  (lambda ()
                                    (let ((_%prototype-key105465%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105410%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105411%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105470%_ ()
                                          (if (let ((__tmp106150
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106150 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105470%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105465%_
                                       _%prototype105441%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105474%_)
                                         _%prototype105474%_)
                                       _%prototype105441%_))))
                                 (_%K105453105483%_
                                  (lambda (_%rest105479%_ _%method105480%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105441%_
                                       _%method105480%_
                                       _%off105447%_
                                       _%klass105410%_
                                       '#f))
                                    (_%loop105444%_
                                     _%rest105479%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105447%_ '1))))))
                            (if (pair? _%rest105449105457%_)
                                (let ((_%hd105454105486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105449105457%_)))
                                      (_%tl105455105488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105449105457%_))))
                                  (let* ((_%method105491%_ _%hd105454105486%_)
                                         (_%rest105493%_ _%tl105455105488%_))
                                    (_%K105453105483%_
                                     _%rest105493%_
                                     _%method105491%_)))
                                (_%else105451105476%_)))))))
                   (_%K105429105563%_
                    (lambda (_%rest105498%_ _%method-spec105499%_)
                      (if (pair? _%method-spec105499%_)
                          (let _%loop-inner105503%_ ((_%methods-rest105506%_
                                                      _%method-spec105499%_))
                            (let* ((_%methods-rest105508105516%_
                                    _%methods-rest105506%_)
                                   (_%else105510105528%_
                                    (lambda ()
                                      ((lambda (_%klass105524%_
                                                _%obj-klass105525%_
                                                _%method-name105526%_)
                                         '#f)
                                       _%klass105410%_
                                       _%obj-klass105411%_
                                       _%method-spec105499%_)))
                                   (_%K105512105541%_
                                    (lambda (_%methods-rest105531%_
                                             _%method-name105532%_)
                                      (let ((_%$e105535%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105413%_
                                                _%method-name105532%_
                                                '#f))))
                                        (if _%$e105535%_
                                            ((lambda (_%method105538%_)
                                               (_%loop105416%_
                                                _%rest105498%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105421%_ '1))
                                                (cons _%method105538%_
                                                      _%methods105423%_)))
                                             _%$e105535%_)
                                            (_%loop-inner105503%_
                                             _%methods-rest105531%_))))))
                              (if (pair? _%methods-rest105508105516%_)
                                  (let ((_%hd105513105544%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105508105516%_)))
                                        (_%tl105514105546%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105508105516%_))))
                                    (let* ((_%method-name105549%_
                                            _%hd105513105544%_)
                                           (_%methods-rest105551%_
                                            _%tl105514105546%_))
                                      (_%K105512105541%_
                                       _%methods-rest105551%_
                                       _%method-name105549%_)))
                                  (_%else105510105528%_))))
                          (let ((_%$e105553%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105413%_
                                    _%method-spec105499%_
                                    '#f))))
                            (if _%$e105553%_
                                ((lambda (_%method105556%_)
                                   (_%loop105416%_
                                    _%rest105498%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105421%_ '1))
                                    (cons _%method105556%_ _%methods105423%_)))
                                 _%$e105553%_)
                                ((lambda (_%klass105559%_
                                          _%obj-klass105560%_
                                          _%method-name105561%_)
                                   '#f)
                                 _%klass105410%_
                                 _%obj-klass105411%_
                                 _%method-spec105499%_)))))))
              (if (pair? _%rest105425105433%_)
                  (let ((_%hd105430105566%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105425105433%_)))
                        (_%tl105431105568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105425105433%_))))
                    (let* ((_%method-spec105571%_ _%hd105430105566%_)
                           (_%rest105573%_ _%tl105431105568%_))
                      (_%K105429105563%_
                       _%rest105573%_
                       _%method-spec105571%_)))
                  (_%else105427105495%_)))))))
    (define cast
      (lambda (_%descriptor105367%_ _%obj105369%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105373%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105367%_ '1 '#f '#f)))
               (_%klass-id105376%_
                (let () (declare (not safe)) (##type-id _%klass105373%_)))
               (_%obj-klass105379%_
                (let () (declare (not safe)) (class-of _%obj105369%_)))
               (_%obj-klass-id105382%_
                (let () (declare (not safe)) (##type-id _%obj-klass105379%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105376%_ _%obj-klass-id105382%_))
              _%obj105369%_
              (if (interface-subclass? _%obj-klass105379%_)
                  (cast _%descriptor105367%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105369%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105391%_ ()
                        (if (let ((__tmp106151
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106151 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105391%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105376%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105382%_))
                    (let ((_%prototype105402%_
                           (let ((_%$e105395%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105395%_
                                 ((lambda (_%prototype105398%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105398%_)
                                  _%$e105395%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105367%_
                                    _%klass105373%_
                                    _%obj-klass105379%_))))))
                      ((lambda (_%prototype105404%_ _%obj105405%_)
                         (let ((_%instance105407%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105404%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105407%_
                              _%obj105405%_
                              '1
                              '#f
                              'cast))
                           _%instance105407%_))
                       _%prototype105402%_
                       _%obj105369%_))))))))
    (define try-cast
      (lambda (_%descriptor105325%_ _%obj105327%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105331%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105325%_ '1 '#f '#f)))
               (_%klass-id105334%_
                (let () (declare (not safe)) (##type-id _%klass105331%_)))
               (_%obj-klass105337%_
                (let () (declare (not safe)) (class-of _%obj105327%_)))
               (_%obj-klass-id105340%_
                (let () (declare (not safe)) (##type-id _%obj-klass105337%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105334%_ _%obj-klass-id105340%_))
              _%obj105327%_
              (if (interface-subclass? _%obj-klass105337%_)
                  (try-cast
                   _%descriptor105325%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105327%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105349%_ ()
                        (if (let ((__tmp106152
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106152 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105349%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105334%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105340%_))
                    (let ((_%prototype105360%_
                           (let ((_%$e105353%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105353%_
                                 ((lambda (_%prototype105356%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105356%_)
                                  _%$e105353%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105325%_
                                    _%klass105331%_
                                    _%obj-klass105337%_))))))
                      ((lambda (_%prototype105362%_ _%obj105363%_)
                         (if _%prototype105362%_
                             (let ((_%instance105365%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105362%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105365%_
                                  _%obj105363%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105365%_)
                             '#f))
                       _%prototype105360%_
                       _%obj105327%_))))))))
    (define satisfies?
      (lambda (_%descriptor105285%_ _%obj105287%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105291%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105285%_ '1 '#f '#f)))
               (_%klass-id105294%_
                (let () (declare (not safe)) (##type-id _%klass105291%_)))
               (_%obj-klass105297%_
                (let () (declare (not safe)) (class-of _%obj105287%_)))
               (_%obj-klass-id105300%_
                (let () (declare (not safe)) (##type-id _%obj-klass105297%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105294%_ _%obj-klass-id105300%_))
              _%obj105287%_
              (if (interface-subclass? _%obj-klass105297%_)
                  (satisfies?
                   _%descriptor105285%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105287%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105309%_ ()
                        (if (let ((__tmp106153
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106153 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105309%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105294%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105300%_))
                    (let ((_%prototype105320%_
                           (let ((_%$e105313%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105313%_
                                 ((lambda (_%prototype105316%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105316%_)
                                  _%$e105313%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105285%_
                                    _%klass105291%_
                                    _%obj-klass105297%_))))))
                      ((lambda (_%prototype105322%_ _%obj105323%_)
                         (if _%prototype105322%_ '#t '#f))
                       _%prototype105320%_
                       _%obj105287%_))))))))))
