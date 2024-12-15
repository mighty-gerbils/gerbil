(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1734225192)
  (begin
    (define CastError::t
      (let ((__tmp106119 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp106119
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args106112%_
        (apply make-instance CastError::t _%$args106112%_)))
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
      (lambda (_%where105986%_ _%message105987%_ . _%irritants105988%_)
        (let ((__tmp106120
               (let ((__obj106115
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj106115
                    _%message105987%_
                    'where:
                    _%where105986%_
                    'irritants:
                    _%irritants105988%_))
                 __obj106115)))
          (declare (not safe))
          (raise __tmp106120))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp106122 (list)) (__tmp106121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp106122
         '(__object)
         __tmp106121
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
      (let ((__tmp106124 (list))
            (__tmp106123
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp106124
         '(type methods)
         __tmp106123
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args105983%_
        (apply make-instance interface-descriptor::t _%$args105983%_)))
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
      (lambda (_%key105981%_)
        (let ((__tmp106126
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key105981%_))))
              (__tmp106125
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key105981%_)))))
          (declare (not safe))
          (##fxxor __tmp106126 __tmp106125))))
    (define __interface-test-key
      (lambda (_%a105978%_ _%b105979%_)
        (if (let ((__tmp106128
                   (let () (declare (not safe)) (##car _%a105978%_)))
                  (__tmp106127
                   (let () (declare (not safe)) (##car _%b105979%_))))
              (declare (not safe))
              (##eq? __tmp106128 __tmp106127))
            (let ((__tmp106130
                   (let () (declare (not safe)) (##cdr _%a105978%_)))
                  (__tmp106129
                   (let () (declare (not safe)) (##cdr _%b105979%_))))
              (declare (not safe))
              (##eq? __tmp106130 __tmp106129))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint105959%_ _%seed105961%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105959%_
           __interface-hash-key
           __interface-test-key
           _%seed105961%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint105967%_ '#f) (_%seed105969%_ '0))
          (make-prototype-table__% _%size-hint105967%_ _%seed105969%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint105971%_)
        (let ((_%seed105973%_ '0))
          (make-prototype-table__% _%size-hint105971%_ _%seed105973%_))))
    (define make-prototype-table
      (lambda _g106132_
        (let ((_g106131_ (let () (declare (not safe)) (##length _g106132_))))
          (cond ((let () (declare (not safe)) (##fx= _g106131_ 0))
                 (apply make-prototype-table__0 _g106132_))
                ((let () (declare (not safe)) (##fx= _g106131_ 1))
                 (apply make-prototype-table__1 _g106132_))
                ((let () (declare (not safe)) (##fx= _g106131_ 2))
                 (apply make-prototype-table__% _g106132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g106132_))))))
    (define prototype-table-ref
      (lambda (_%tab105912%_ _%key105913%_ _%default105914%_)
        (let ((_%table105916%_
               (let () (declare (not safe)) (&raw-table-table _%tab105912%_)))
              (_%seed105917%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105912%_))))
          (let* ((_%h105919%_
                  (fxxor (__interface-hash-key _%key105913%_) _%seed105917%_))
                 (_%size105922%_ (vector-length _%table105916%_))
                 (_%entries105925%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105922%_ '2)))
                 (_%start105928%_
                  (let ((__tmp106133
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105919%_ _%entries105925%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106133 '1))))
            (let _%loop105932%_ ((_%probe105935%_ _%start105928%_)
                                 (_%i105937%_ '1)
                                 (_%deleted105939%_ '#f))
              (let ((_%k105942%_ (vector-ref _%table105916%_ _%probe105935%_)))
                (if (eq? _%k105942%_ (macro-unused-obj))
                    _%default105914%_
                    (if (eq? _%k105942%_ (macro-deleted-obj))
                        (_%loop105932%_
                         (let ((_%next-probe105947%_
                                (fx+ _%start105928%_
                                     _%i105937%_
                                     (fx* _%i105937%_ _%i105937%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105947%_ _%size105922%_))
                         (let () (declare (not safe)) (##fx+ _%i105937%_ '1))
                         (let ((_%$e105950%_ _%deleted105939%_))
                           (if _%$e105950%_ _%$e105950%_ _%probe105935%_)))
                        (if (__interface-test-key _%key105913%_ _%k105942%_)
                            (vector-ref
                             _%table105916%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105935%_ '1)))
                            (_%loop105932%_
                             (let ((_%next-probe105955%_
                                    (fx+ _%start105928%_
                                         _%i105937%_
                                         (fx* _%i105937%_ _%i105937%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105955%_
                                _%size105922%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105937%_ '1))
                             _%deleted105939%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab105908%_ _%key105909%_ _%value105910%_)
        (if (let ((__tmp106136
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105908%_)))
                  (__tmp106134
                   (let ((__tmp106135
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105908%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106135 '4))))
              (declare (not safe))
              (##fx< __tmp106136 __tmp106134))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105908%_))
            '#!void)
        (__prototype-table-set! _%tab105908%_ _%key105909%_ _%value105910%_)))
    (define __prototype-table-set!
      (lambda (_%tab105859%_ _%key105860%_ _%value105861%_)
        (let ((_%table105864%_
               (let () (declare (not safe)) (&raw-table-table _%tab105859%_)))
              (_%seed105865%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105859%_))))
          (let* ((_%h105867%_
                  (fxxor (__interface-hash-key _%key105860%_) _%seed105865%_))
                 (_%size105870%_ (vector-length _%table105864%_))
                 (_%entries105873%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105870%_ '2)))
                 (_%start105876%_
                  (let ((__tmp106137
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105867%_ _%entries105873%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106137 '1))))
            (let _%loop105880%_ ((_%probe105883%_ _%start105876%_)
                                 (_%i105885%_ '1)
                                 (_%deleted105887%_ '#f))
              (let ((_%k105890%_ (vector-ref _%table105864%_ _%probe105883%_)))
                (if (eq? _%k105890%_ (macro-unused-obj))
                    (if _%deleted105887%_
                        (begin
                          (vector-set!
                           _%table105864%_
                           _%deleted105887%_
                           _%key105860%_)
                          (vector-set!
                           _%table105864%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105887%_ '1))
                           _%value105861%_)
                          ((lambda ()
                             (let ((__tmp106138
                                    (let ((__tmp106139
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105859%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106139 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105859%_
                                __tmp106138)))))
                        (begin
                          (vector-set!
                           _%table105864%_
                           _%probe105883%_
                           _%key105860%_)
                          (vector-set!
                           _%table105864%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105883%_ '1))
                           _%value105861%_)
                          ((lambda ()
                             (let ((__tmp106140
                                    (let ((__tmp106141
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105859%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106141 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105859%_
                                __tmp106140))
                             (let ((__tmp106142
                                    (let ((__tmp106143
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105859%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106143 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105859%_
                                __tmp106142))))))
                    (if (eq? _%k105890%_ (macro-deleted-obj))
                        (_%loop105880%_
                         (let ((_%next-probe105897%_
                                (fx+ _%start105876%_
                                     _%i105885%_
                                     (fx* _%i105885%_ _%i105885%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105897%_ _%size105870%_))
                         (let () (declare (not safe)) (##fx+ _%i105885%_ '1))
                         (let ((_%$e105900%_ _%deleted105887%_))
                           (if _%$e105900%_ _%$e105900%_ _%probe105883%_)))
                        (if (__interface-test-key _%key105860%_ _%k105890%_)
                            (let ()
                              (vector-set!
                               _%table105864%_
                               _%probe105883%_
                               _%key105860%_)
                              (vector-set!
                               _%table105864%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105883%_ '1))
                               _%value105861%_))
                            (_%loop105880%_
                             (let ((_%next-probe105905%_
                                    (fx+ _%start105876%_
                                         _%i105885%_
                                         (fx* _%i105885%_ _%i105885%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105905%_
                                _%size105870%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105885%_ '1))
                             _%deleted105887%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab105854%_
               _%key105855%_
               _%prototype-table-update!105856%_
               _%default105857%_)
        (if (let ((__tmp106146
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab105854%_)))
                  (__tmp106144
                   (let ((__tmp106145
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab105854%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106145 '4))))
              (declare (not safe))
              (##fx< __tmp106146 __tmp106144))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab105854%_))
            '#!void)
        (__prototype-table-update!
         _%tab105854%_
         _%key105855%_
         _%prototype-table-update!105856%_
         _%default105857%_)))
    (define __prototype-table-update!
      (lambda (_%tab105804%_
               _%key105805%_
               _%prototype-table-update!105806%_
               _%default105807%_)
        (let ((_%table105810%_
               (let () (declare (not safe)) (&raw-table-table _%tab105804%_)))
              (_%seed105811%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105804%_))))
          (let* ((_%h105813%_
                  (fxxor (__interface-hash-key _%key105805%_) _%seed105811%_))
                 (_%size105816%_ (vector-length _%table105810%_))
                 (_%entries105819%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105816%_ '2)))
                 (_%start105822%_
                  (let ((__tmp106147
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105813%_ _%entries105819%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106147 '1))))
            (let _%loop105826%_ ((_%probe105829%_ _%start105822%_)
                                 (_%i105831%_ '1)
                                 (_%deleted105833%_ '#f))
              (let ((_%k105836%_ (vector-ref _%table105810%_ _%probe105829%_)))
                (if (eq? _%k105836%_ (macro-unused-obj))
                    (if _%deleted105833%_
                        (begin
                          (vector-set!
                           _%table105810%_
                           _%deleted105833%_
                           _%key105805%_)
                          (vector-set!
                           _%table105810%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted105833%_ '1))
                           (_%prototype-table-update!105806%_
                            _%default105807%_))
                          ((lambda ()
                             (let ((__tmp106148
                                    (let ((__tmp106149
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105804%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106149 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105804%_
                                __tmp106148)))))
                        (begin
                          (vector-set!
                           _%table105810%_
                           _%probe105829%_
                           _%key105805%_)
                          (vector-set!
                           _%table105810%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe105829%_ '1))
                           (_%prototype-table-update!105806%_
                            _%default105807%_))
                          ((lambda ()
                             (let ((__tmp106150
                                    (let ((__tmp106151
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab105804%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106151 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab105804%_
                                __tmp106150))
                             (let ((__tmp106152
                                    (let ((__tmp106153
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab105804%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106153 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab105804%_
                                __tmp106152))))))
                    (if (eq? _%k105836%_ (macro-deleted-obj))
                        (_%loop105826%_
                         (let ((_%next-probe105843%_
                                (fx+ _%start105822%_
                                     _%i105831%_
                                     (fx* _%i105831%_ _%i105831%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105843%_ _%size105816%_))
                         (let () (declare (not safe)) (##fx+ _%i105831%_ '1))
                         (let ((_%$e105846%_ _%deleted105833%_))
                           (if _%$e105846%_ _%$e105846%_ _%probe105829%_)))
                        (if (__interface-test-key _%key105805%_ _%k105836%_)
                            (let ()
                              (vector-set!
                               _%table105810%_
                               _%probe105829%_
                               _%key105805%_)
                              (vector-set!
                               _%table105810%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105829%_ '1))
                               (_%prototype-table-update!105806%_
                                (vector-ref
                                 _%table105810%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe105829%_ '1))))))
                            (_%loop105826%_
                             (let ((_%next-probe105851%_
                                    (fx+ _%start105822%_
                                         _%i105831%_
                                         (fx* _%i105831%_ _%i105831%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105851%_
                                _%size105816%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105831%_ '1))
                             _%deleted105833%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab105759%_ _%key105761%_)
        (let ((_%table105764%_
               (let () (declare (not safe)) (&raw-table-table _%tab105759%_)))
              (_%seed105766%_
               (let () (declare (not safe)) (&raw-table-seed _%tab105759%_))))
          (let* ((_%h105769%_
                  (fxxor (__interface-hash-key _%key105761%_) _%seed105766%_))
                 (_%size105772%_ (vector-length _%table105764%_))
                 (_%entries105775%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105772%_ '2)))
                 (_%start105778%_
                  (let ((__tmp106154
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105769%_ _%entries105775%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106154 '1))))
            (let _%loop105782%_ ((_%probe105785%_ _%start105778%_)
                                 (_%i105787%_ '1))
              (let ((_%k105790%_ (vector-ref _%table105764%_ _%probe105785%_)))
                (if (eq? _%k105790%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k105790%_ (macro-deleted-obj))
                        (_%loop105782%_
                         (let ((_%next-probe105795%_
                                (fx+ _%start105778%_
                                     _%i105787%_
                                     (fx* _%i105787%_ _%i105787%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105795%_ _%size105772%_))
                         (let () (declare (not safe)) (##fx+ _%i105787%_ '1)))
                        (if (__interface-test-key _%key105761%_ _%k105790%_)
                            (let ()
                              (vector-set!
                               _%table105764%_
                               _%probe105785%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table105764%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe105785%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106155
                                        (let ((__tmp106156
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab105759%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106156 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab105759%_
                                    __tmp106155)))))
                            (_%loop105782%_
                             (let ((_%next-probe105801%_
                                    (fx+ _%start105778%_
                                         _%i105787%_
                                         (fx* _%i105787%_ _%i105787%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105801%_
                                _%size105772%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105787%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass105751%_)
        (let ((_%super105752105754%_
               (let () (declare (not safe)) (##type-super _%klass105751%_))))
          (if _%super105752105754%_
              (let ((_%super105757%_ _%super105752105754%_))
                (eq? (let () (declare (not safe)) (##type-id _%super105757%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor105585%_ _%klass105586%_ _%obj-klass105587%_)
        (let ((_%method-table105589%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105587%_))))
          (let _%loop105592%_ ((_%rest105595%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105585%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105597%_ '0)
                               (_%methods105599%_ '()))
            (let* ((_%rest105601105609%_ _%rest105595%_)
                   (_%else105603105671%_
                    (lambda ()
                      (let ((_%prototype105617%_
                             (let ((__obj106117
                                    (let ((__tmp106157
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105597%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105586%_
                                       __tmp106157))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106117 '#f))
                               __obj106117)))
                        (let _%loop105620%_ ((_%rest105622%_ _%methods105599%_)
                                             (_%off105623%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105597%_ '1))))
                          (let* ((_%rest105625105633%_ _%rest105622%_)
                                 (_%else105627105652%_
                                  (lambda ()
                                    (let ((_%prototype-key105641%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105586%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105587%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105646%_ ()
                                          (if (let ((__tmp106158
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106158 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105646%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105641%_
                                       _%prototype105617%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105650%_)
                                         _%prototype105650%_)
                                       _%prototype105617%_))))
                                 (_%K105629105659%_
                                  (lambda (_%rest105655%_ _%method105656%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105617%_
                                       _%method105656%_
                                       _%off105623%_
                                       _%klass105586%_
                                       '#f))
                                    (_%loop105620%_
                                     _%rest105655%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105623%_ '1))))))
                            (if (pair? _%rest105625105633%_)
                                (let ((_%hd105630105662%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105625105633%_)))
                                      (_%tl105631105664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105625105633%_))))
                                  (let* ((_%method105667%_ _%hd105630105662%_)
                                         (_%rest105669%_ _%tl105631105664%_))
                                    (_%K105629105659%_
                                     _%rest105669%_
                                     _%method105667%_)))
                                (_%else105627105652%_)))))))
                   (_%K105605105739%_
                    (lambda (_%rest105674%_ _%method-spec105675%_)
                      (if (pair? _%method-spec105675%_)
                          (let _%loop-inner105679%_ ((_%methods-rest105682%_
                                                      _%method-spec105675%_))
                            (let* ((_%methods-rest105684105692%_
                                    _%methods-rest105682%_)
                                   (_%else105686105704%_
                                    (lambda ()
                                      ((lambda (_%klass105700%_
                                                _%obj-klass105701%_
                                                _%method-name105702%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass105700%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass105700%_))
                                          'class:
                                          _%obj-klass105701%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass105701%_))
                                          'method:
                                          _%method-name105702%_)
                                         '#!void)
                                       _%klass105586%_
                                       _%obj-klass105587%_
                                       _%method-spec105675%_)))
                                   (_%K105688105717%_
                                    (lambda (_%methods-rest105707%_
                                             _%method-name105708%_)
                                      (let ((_%$e105711%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105589%_
                                                _%method-name105708%_
                                                '#f))))
                                        (if _%$e105711%_
                                            ((lambda (_%method105714%_)
                                               (_%loop105592%_
                                                _%rest105674%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105597%_ '1))
                                                (cons _%method105714%_
                                                      _%methods105599%_)))
                                             _%$e105711%_)
                                            (_%loop-inner105679%_
                                             _%methods-rest105707%_))))))
                              (if (pair? _%methods-rest105684105692%_)
                                  (let ((_%hd105689105720%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105684105692%_)))
                                        (_%tl105690105722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105684105692%_))))
                                    (let* ((_%method-name105725%_
                                            _%hd105689105720%_)
                                           (_%methods-rest105727%_
                                            _%tl105690105722%_))
                                      (_%K105688105717%_
                                       _%methods-rest105727%_
                                       _%method-name105725%_)))
                                  (_%else105686105704%_))))
                          (let ((_%$e105729%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105589%_
                                    _%method-spec105675%_
                                    '#f))))
                            (if _%$e105729%_
                                ((lambda (_%method105732%_)
                                   (_%loop105592%_
                                    _%rest105674%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105597%_ '1))
                                    (cons _%method105732%_ _%methods105599%_)))
                                 _%$e105729%_)
                                ((lambda (_%klass105735%_
                                          _%obj-klass105736%_
                                          _%method-name105737%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass105735%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass105735%_))
                                    'class:
                                    _%obj-klass105736%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass105736%_))
                                    'method:
                                    _%method-name105737%_)
                                   '#!void)
                                 _%klass105586%_
                                 _%obj-klass105587%_
                                 _%method-spec105675%_)))))))
              (if (pair? _%rest105601105609%_)
                  (let ((_%hd105606105742%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105601105609%_)))
                        (_%tl105607105744%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105601105609%_))))
                    (let* ((_%method-spec105747%_ _%hd105606105742%_)
                           (_%rest105749%_ _%tl105607105744%_))
                      (_%K105605105739%_
                       _%rest105749%_
                       _%method-spec105747%_)))
                  (_%else105603105671%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor105419%_ _%klass105420%_ _%obj-klass105421%_)
        (let ((_%method-table105423%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass105421%_))))
          (let _%loop105426%_ ((_%rest105429%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor105419%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count105431%_ '0)
                               (_%methods105433%_ '()))
            (let* ((_%rest105435105443%_ _%rest105429%_)
                   (_%else105437105505%_
                    (lambda ()
                      (let ((_%prototype105451%_
                             (let ((__obj106118
                                    (let ((__tmp106159
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count105431%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass105420%_
                                       __tmp106159))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj106118 '#f))
                               __obj106118)))
                        (let _%loop105454%_ ((_%rest105456%_ _%methods105433%_)
                                             (_%off105457%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count105431%_ '1))))
                          (let* ((_%rest105459105467%_ _%rest105456%_)
                                 (_%else105461105486%_
                                  (lambda ()
                                    (let ((_%prototype-key105475%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass105420%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass105421%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again105480%_ ()
                                          (if (let ((__tmp106160
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp106160 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again105480%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key105475%_
                                       _%prototype105451%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype105484%_)
                                         _%prototype105484%_)
                                       _%prototype105451%_))))
                                 (_%K105463105493%_
                                  (lambda (_%rest105489%_ _%method105490%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype105451%_
                                       _%method105490%_
                                       _%off105457%_
                                       _%klass105420%_
                                       '#f))
                                    (_%loop105454%_
                                     _%rest105489%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off105457%_ '1))))))
                            (if (pair? _%rest105459105467%_)
                                (let ((_%hd105464105496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest105459105467%_)))
                                      (_%tl105465105498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest105459105467%_))))
                                  (let* ((_%method105501%_ _%hd105464105496%_)
                                         (_%rest105503%_ _%tl105465105498%_))
                                    (_%K105463105493%_
                                     _%rest105503%_
                                     _%method105501%_)))
                                (_%else105461105486%_)))))))
                   (_%K105439105573%_
                    (lambda (_%rest105508%_ _%method-spec105509%_)
                      (if (pair? _%method-spec105509%_)
                          (let _%loop-inner105513%_ ((_%methods-rest105516%_
                                                      _%method-spec105509%_))
                            (let* ((_%methods-rest105518105526%_
                                    _%methods-rest105516%_)
                                   (_%else105520105538%_
                                    (lambda ()
                                      ((lambda (_%klass105534%_
                                                _%obj-klass105535%_
                                                _%method-name105536%_)
                                         '#f)
                                       _%klass105420%_
                                       _%obj-klass105421%_
                                       _%method-spec105509%_)))
                                   (_%K105522105551%_
                                    (lambda (_%methods-rest105541%_
                                             _%method-name105542%_)
                                      (let ((_%$e105545%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table105423%_
                                                _%method-name105542%_
                                                '#f))))
                                        (if _%$e105545%_
                                            ((lambda (_%method105548%_)
                                               (_%loop105426%_
                                                _%rest105508%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count105431%_ '1))
                                                (cons _%method105548%_
                                                      _%methods105433%_)))
                                             _%$e105545%_)
                                            (_%loop-inner105513%_
                                             _%methods-rest105541%_))))))
                              (if (pair? _%methods-rest105518105526%_)
                                  (let ((_%hd105523105554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest105518105526%_)))
                                        (_%tl105524105556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest105518105526%_))))
                                    (let* ((_%method-name105559%_
                                            _%hd105523105554%_)
                                           (_%methods-rest105561%_
                                            _%tl105524105556%_))
                                      (_%K105522105551%_
                                       _%methods-rest105561%_
                                       _%method-name105559%_)))
                                  (_%else105520105538%_))))
                          (let ((_%$e105563%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table105423%_
                                    _%method-spec105509%_
                                    '#f))))
                            (if _%$e105563%_
                                ((lambda (_%method105566%_)
                                   (_%loop105426%_
                                    _%rest105508%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count105431%_ '1))
                                    (cons _%method105566%_ _%methods105433%_)))
                                 _%$e105563%_)
                                ((lambda (_%klass105569%_
                                          _%obj-klass105570%_
                                          _%method-name105571%_)
                                   '#f)
                                 _%klass105420%_
                                 _%obj-klass105421%_
                                 _%method-spec105509%_)))))))
              (if (pair? _%rest105435105443%_)
                  (let ((_%hd105440105576%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest105435105443%_)))
                        (_%tl105441105578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest105435105443%_))))
                    (let* ((_%method-spec105581%_ _%hd105440105576%_)
                           (_%rest105583%_ _%tl105441105578%_))
                      (_%K105439105573%_
                       _%rest105583%_
                       _%method-spec105581%_)))
                  (_%else105437105505%_)))))))
    (define cast
      (lambda (_%descriptor105377%_ _%obj105379%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105383%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105377%_ '1 '#f '#f)))
               (_%klass-id105386%_
                (let () (declare (not safe)) (##type-id _%klass105383%_)))
               (_%obj-klass105389%_
                (let () (declare (not safe)) (class-of _%obj105379%_)))
               (_%obj-klass-id105392%_
                (let () (declare (not safe)) (##type-id _%obj-klass105389%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105386%_ _%obj-klass-id105392%_))
              _%obj105379%_
              (if (interface-subclass? _%obj-klass105389%_)
                  (cast _%descriptor105377%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj105379%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105401%_ ()
                        (if (let ((__tmp106161
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106161 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105401%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105386%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105392%_))
                    (let ((_%prototype105412%_
                           (let ((_%$e105405%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105405%_
                                 ((lambda (_%prototype105408%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105408%_)
                                  _%$e105405%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor105377%_
                                    _%klass105383%_
                                    _%obj-klass105389%_))))))
                      ((lambda (_%prototype105414%_ _%obj105415%_)
                         (let ((_%instance105417%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype105414%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance105417%_
                              _%obj105415%_
                              '1
                              '#f
                              'cast))
                           _%instance105417%_))
                       _%prototype105412%_
                       _%obj105379%_))))))))
    (define try-cast
      (lambda (_%descriptor105335%_ _%obj105337%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105341%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105335%_ '1 '#f '#f)))
               (_%klass-id105344%_
                (let () (declare (not safe)) (##type-id _%klass105341%_)))
               (_%obj-klass105347%_
                (let () (declare (not safe)) (class-of _%obj105337%_)))
               (_%obj-klass-id105350%_
                (let () (declare (not safe)) (##type-id _%obj-klass105347%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105344%_ _%obj-klass-id105350%_))
              _%obj105337%_
              (if (interface-subclass? _%obj-klass105347%_)
                  (try-cast
                   _%descriptor105335%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105337%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105359%_ ()
                        (if (let ((__tmp106162
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106162 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105359%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105344%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105350%_))
                    (let ((_%prototype105370%_
                           (let ((_%$e105363%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105363%_
                                 ((lambda (_%prototype105366%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105366%_)
                                  _%$e105363%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105335%_
                                    _%klass105341%_
                                    _%obj-klass105347%_))))))
                      ((lambda (_%prototype105372%_ _%obj105373%_)
                         (if _%prototype105372%_
                             (let ((_%instance105375%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype105372%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance105375%_
                                  _%obj105373%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance105375%_)
                             '#f))
                       _%prototype105370%_
                       _%obj105337%_))))))))
    (define satisfies?
      (lambda (_%descriptor105295%_ _%obj105297%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass105301%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor105295%_ '1 '#f '#f)))
               (_%klass-id105304%_
                (let () (declare (not safe)) (##type-id _%klass105301%_)))
               (_%obj-klass105307%_
                (let () (declare (not safe)) (class-of _%obj105297%_)))
               (_%obj-klass-id105310%_
                (let () (declare (not safe)) (##type-id _%obj-klass105307%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id105304%_ _%obj-klass-id105310%_))
              _%obj105297%_
              (if (interface-subclass? _%obj-klass105307%_)
                  (satisfies?
                   _%descriptor105295%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj105297%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again105319%_ ()
                        (if (let ((__tmp106163
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp106163 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again105319%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id105304%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id105310%_))
                    (let ((_%prototype105330%_
                           (let ((_%$e105323%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e105323%_
                                 ((lambda (_%prototype105326%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype105326%_)
                                  _%$e105323%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor105295%_
                                    _%klass105301%_
                                    _%obj-klass105307%_))))))
                      ((lambda (_%prototype105332%_ _%obj105333%_)
                         (if _%prototype105332%_ '#t '#f))
                       _%prototype105330%_
                       _%obj105297%_))))))))))
