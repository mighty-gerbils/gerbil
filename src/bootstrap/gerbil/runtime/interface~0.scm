(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1713000276)
  (begin
    (define CastError::t
      (let ((__tmp104129 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp104129
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args104122%_
        (apply make-instance CastError::t _%$args104122%_)))
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
      (lambda (_%where103996%_ _%message103997%_ . _%irritants103998%_)
        (let ((__tmp104130
               (let ((__obj104125
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj104125
                    _%message103997%_
                    'where:
                    _%where103996%_
                    'irritants:
                    _%irritants103998%_))
                 __obj104125)))
          (declare (not safe))
          (raise __tmp104130))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp104132 (list)) (__tmp104131 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp104132
         '(__object)
         __tmp104131
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
      (let ((__tmp104134 (list))
            (__tmp104133
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp104134
         '(type methods)
         __tmp104133
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103993%_
        (apply make-instance interface-descriptor::t _%$args103993%_)))
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
      (lambda (_%key103991%_)
        (let ((__tmp104136
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103991%_))))
              (__tmp104135
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103991%_)))))
          (declare (not safe))
          (##fxxor __tmp104136 __tmp104135))))
    (define __interface-test-key
      (lambda (_%a103988%_ _%b103989%_)
        (if (let ((__tmp104138
                   (let () (declare (not safe)) (##car _%a103988%_)))
                  (__tmp104137
                   (let () (declare (not safe)) (##car _%b103989%_))))
              (declare (not safe))
              (##eq? __tmp104138 __tmp104137))
            (let ((__tmp104140
                   (let () (declare (not safe)) (##cdr _%a103988%_)))
                  (__tmp104139
                   (let () (declare (not safe)) (##cdr _%b103989%_))))
              (declare (not safe))
              (##eq? __tmp104140 __tmp104139))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103969%_ _%seed103971%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103969%_
           __interface-hash-key
           __interface-test-key
           _%seed103971%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103977%_ '#f) (_%seed103979%_ '0))
          (make-prototype-table__% _%size-hint103977%_ _%seed103979%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103981%_)
        (let ((_%seed103983%_ '0))
          (make-prototype-table__% _%size-hint103981%_ _%seed103983%_))))
    (define make-prototype-table
      (lambda _g104142_
        (let ((_g104141_ (let () (declare (not safe)) (##length _g104142_))))
          (cond ((let () (declare (not safe)) (##fx= _g104141_ 0))
                 (apply make-prototype-table__0 _g104142_))
                ((let () (declare (not safe)) (##fx= _g104141_ 1))
                 (apply make-prototype-table__1 _g104142_))
                ((let () (declare (not safe)) (##fx= _g104141_ 2))
                 (apply make-prototype-table__% _g104142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g104142_))))))
    (define prototype-table-ref
      (lambda (_%tab103922%_ _%key103923%_ _%default103924%_)
        (let ((_%table103926%_
               (let () (declare (not safe)) (&raw-table-table _%tab103922%_)))
              (_%seed103927%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103922%_))))
          (let* ((_%h103929%_
                  (fxxor (__interface-hash-key _%key103923%_) _%seed103927%_))
                 (_%size103932%_ (vector-length _%table103926%_))
                 (_%entries103935%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103932%_ '2)))
                 (_%start103938%_
                  (let ((__tmp104143
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103929%_ _%entries103935%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104143 '1))))
            (let _%loop103942%_ ((_%probe103945%_ _%start103938%_)
                                 (_%i103947%_ '1)
                                 (_%deleted103949%_ '#f))
              (let ((_%k103952%_ (vector-ref _%table103926%_ _%probe103945%_)))
                (if (eq? _%k103952%_ (macro-unused-obj))
                    _%default103924%_
                    (if (eq? _%k103952%_ (macro-deleted-obj))
                        (_%loop103942%_
                         (let ((_%next-probe103957%_
                                (fx+ _%start103938%_
                                     _%i103947%_
                                     (fx* _%i103947%_ _%i103947%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103957%_ _%size103932%_))
                         (let () (declare (not safe)) (##fx+ _%i103947%_ '1))
                         (let ((_%$e103960%_ _%deleted103949%_))
                           (if _%$e103960%_ _%$e103960%_ _%probe103945%_)))
                        (if (__interface-test-key _%key103923%_ _%k103952%_)
                            (vector-ref
                             _%table103926%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103945%_ '1)))
                            (_%loop103942%_
                             (let ((_%next-probe103965%_
                                    (fx+ _%start103938%_
                                         _%i103947%_
                                         (fx* _%i103947%_ _%i103947%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103965%_
                                _%size103932%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103947%_ '1))
                             _%deleted103949%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab103918%_ _%key103919%_ _%value103920%_)
        (if (let ((__tmp104146
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103918%_)))
                  (__tmp104144
                   (let ((__tmp104145
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103918%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp104145 '4))))
              (declare (not safe))
              (##fx< __tmp104146 __tmp104144))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103918%_))
            '#!void)
        (__prototype-table-set! _%tab103918%_ _%key103919%_ _%value103920%_)))
    (define __prototype-table-set!
      (lambda (_%tab103869%_ _%key103870%_ _%value103871%_)
        (let ((_%table103874%_
               (let () (declare (not safe)) (&raw-table-table _%tab103869%_)))
              (_%seed103875%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103869%_))))
          (let* ((_%h103877%_
                  (fxxor (__interface-hash-key _%key103870%_) _%seed103875%_))
                 (_%size103880%_ (vector-length _%table103874%_))
                 (_%entries103883%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103880%_ '2)))
                 (_%start103886%_
                  (let ((__tmp104147
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103877%_ _%entries103883%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104147 '1))))
            (let _%loop103890%_ ((_%probe103893%_ _%start103886%_)
                                 (_%i103895%_ '1)
                                 (_%deleted103897%_ '#f))
              (let ((_%k103900%_ (vector-ref _%table103874%_ _%probe103893%_)))
                (if (eq? _%k103900%_ (macro-unused-obj))
                    (if _%deleted103897%_
                        (begin
                          (vector-set!
                           _%table103874%_
                           _%deleted103897%_
                           _%key103870%_)
                          (vector-set!
                           _%table103874%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103897%_ '1))
                           _%value103871%_)
                          ((lambda ()
                             (let ((__tmp104148
                                    (let ((__tmp104149
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103869%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104149 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103869%_
                                __tmp104148)))))
                        (begin
                          (vector-set!
                           _%table103874%_
                           _%probe103893%_
                           _%key103870%_)
                          (vector-set!
                           _%table103874%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103893%_ '1))
                           _%value103871%_)
                          ((lambda ()
                             (let ((__tmp104150
                                    (let ((__tmp104151
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103869%_))))
                                      (declare (not safe))
                                      (##fx- __tmp104151 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103869%_
                                __tmp104150))
                             (let ((__tmp104152
                                    (let ((__tmp104153
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103869%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104153 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103869%_
                                __tmp104152))))))
                    (if (eq? _%k103900%_ (macro-deleted-obj))
                        (_%loop103890%_
                         (let ((_%next-probe103907%_
                                (fx+ _%start103886%_
                                     _%i103895%_
                                     (fx* _%i103895%_ _%i103895%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103907%_ _%size103880%_))
                         (let () (declare (not safe)) (##fx+ _%i103895%_ '1))
                         (let ((_%$e103910%_ _%deleted103897%_))
                           (if _%$e103910%_ _%$e103910%_ _%probe103893%_)))
                        (if (__interface-test-key _%key103870%_ _%k103900%_)
                            (let ()
                              (vector-set!
                               _%table103874%_
                               _%probe103893%_
                               _%key103870%_)
                              (vector-set!
                               _%table103874%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103893%_ '1))
                               _%value103871%_))
                            (_%loop103890%_
                             (let ((_%next-probe103915%_
                                    (fx+ _%start103886%_
                                         _%i103895%_
                                         (fx* _%i103895%_ _%i103895%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103915%_
                                _%size103880%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103895%_ '1))
                             _%deleted103897%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab103864%_
               _%key103865%_
               _%prototype-table-update!103866%_
               _%default103867%_)
        (if (let ((__tmp104156
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103864%_)))
                  (__tmp104154
                   (let ((__tmp104155
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103864%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp104155 '4))))
              (declare (not safe))
              (##fx< __tmp104156 __tmp104154))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103864%_))
            '#!void)
        (__prototype-table-update!
         _%tab103864%_
         _%key103865%_
         _%prototype-table-update!103866%_
         _%default103867%_)))
    (define __prototype-table-update!
      (lambda (_%tab103814%_
               _%key103815%_
               _%prototype-table-update!103816%_
               _%default103817%_)
        (let ((_%table103820%_
               (let () (declare (not safe)) (&raw-table-table _%tab103814%_)))
              (_%seed103821%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103814%_))))
          (let* ((_%h103823%_
                  (fxxor (__interface-hash-key _%key103815%_) _%seed103821%_))
                 (_%size103826%_ (vector-length _%table103820%_))
                 (_%entries103829%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103826%_ '2)))
                 (_%start103832%_
                  (let ((__tmp104157
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103823%_ _%entries103829%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104157 '1))))
            (let _%loop103836%_ ((_%probe103839%_ _%start103832%_)
                                 (_%i103841%_ '1)
                                 (_%deleted103843%_ '#f))
              (let ((_%k103846%_ (vector-ref _%table103820%_ _%probe103839%_)))
                (if (eq? _%k103846%_ (macro-unused-obj))
                    (if _%deleted103843%_
                        (begin
                          (vector-set!
                           _%table103820%_
                           _%deleted103843%_
                           _%key103815%_)
                          (vector-set!
                           _%table103820%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103843%_ '1))
                           (_%prototype-table-update!103816%_
                            _%default103817%_))
                          ((lambda ()
                             (let ((__tmp104158
                                    (let ((__tmp104159
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103814%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104159 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103814%_
                                __tmp104158)))))
                        (begin
                          (vector-set!
                           _%table103820%_
                           _%probe103839%_
                           _%key103815%_)
                          (vector-set!
                           _%table103820%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103839%_ '1))
                           (_%prototype-table-update!103816%_
                            _%default103817%_))
                          ((lambda ()
                             (let ((__tmp104160
                                    (let ((__tmp104161
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103814%_))))
                                      (declare (not safe))
                                      (##fx- __tmp104161 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103814%_
                                __tmp104160))
                             (let ((__tmp104162
                                    (let ((__tmp104163
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103814%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104163 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103814%_
                                __tmp104162))))))
                    (if (eq? _%k103846%_ (macro-deleted-obj))
                        (_%loop103836%_
                         (let ((_%next-probe103853%_
                                (fx+ _%start103832%_
                                     _%i103841%_
                                     (fx* _%i103841%_ _%i103841%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103853%_ _%size103826%_))
                         (let () (declare (not safe)) (##fx+ _%i103841%_ '1))
                         (let ((_%$e103856%_ _%deleted103843%_))
                           (if _%$e103856%_ _%$e103856%_ _%probe103839%_)))
                        (if (__interface-test-key _%key103815%_ _%k103846%_)
                            (let ()
                              (vector-set!
                               _%table103820%_
                               _%probe103839%_
                               _%key103815%_)
                              (vector-set!
                               _%table103820%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103839%_ '1))
                               (_%prototype-table-update!103816%_
                                (vector-ref
                                 _%table103820%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103839%_ '1))))))
                            (_%loop103836%_
                             (let ((_%next-probe103861%_
                                    (fx+ _%start103832%_
                                         _%i103841%_
                                         (fx* _%i103841%_ _%i103841%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103861%_
                                _%size103826%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103841%_ '1))
                             _%deleted103843%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab103769%_ _%key103771%_)
        (let ((_%table103774%_
               (let () (declare (not safe)) (&raw-table-table _%tab103769%_)))
              (_%seed103776%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103769%_))))
          (let* ((_%h103779%_
                  (fxxor (__interface-hash-key _%key103771%_) _%seed103776%_))
                 (_%size103782%_ (vector-length _%table103774%_))
                 (_%entries103785%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103782%_ '2)))
                 (_%start103788%_
                  (let ((__tmp104164
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103779%_ _%entries103785%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104164 '1))))
            (let _%loop103792%_ ((_%probe103795%_ _%start103788%_)
                                 (_%i103797%_ '1))
              (let ((_%k103800%_ (vector-ref _%table103774%_ _%probe103795%_)))
                (if (eq? _%k103800%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103800%_ (macro-deleted-obj))
                        (_%loop103792%_
                         (let ((_%next-probe103805%_
                                (fx+ _%start103788%_
                                     _%i103797%_
                                     (fx* _%i103797%_ _%i103797%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103805%_ _%size103782%_))
                         (let () (declare (not safe)) (##fx+ _%i103797%_ '1)))
                        (if (__interface-test-key _%key103771%_ _%k103800%_)
                            (let ()
                              (vector-set!
                               _%table103774%_
                               _%probe103795%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103774%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103795%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp104165
                                        (let ((__tmp104166
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103769%_))))
                                          (declare (not safe))
                                          (##fx- __tmp104166 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103769%_
                                    __tmp104165)))))
                            (_%loop103792%_
                             (let ((_%next-probe103811%_
                                    (fx+ _%start103788%_
                                         _%i103797%_
                                         (fx* _%i103797%_ _%i103797%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103811%_
                                _%size103782%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103797%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass103761%_)
        (let ((_%super103762103764%_
               (let () (declare (not safe)) (##type-super _%klass103761%_))))
          (if _%super103762103764%_
              (let ((_%super103767%_ _%super103762103764%_))
                (eq? (let () (declare (not safe)) (##type-id _%super103767%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor103646%_ _%klass103647%_ _%obj-klass103648%_)
        (let ((_%method-table103650%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass103648%_))))
          (let _%loop103653%_ ((_%rest103656%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor103646%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count103658%_ '0)
                               (_%methods103660%_ '()))
            (let* ((_%rest103662103670%_ _%rest103656%_)
                   (_%else103664103732%_
                    (lambda ()
                      (let ((_%prototype103678%_
                             (let ((__obj104127
                                    (let ((__tmp104167
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count103658%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass103647%_
                                       __tmp104167))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj104127 '#f))
                               __obj104127)))
                        (let _%loop103681%_ ((_%rest103683%_ _%methods103660%_)
                                             (_%off103684%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count103658%_ '1))))
                          (let* ((_%rest103686103694%_ _%rest103683%_)
                                 (_%else103688103713%_
                                  (lambda ()
                                    (let ((_%prototype-key103702%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass103647%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass103648%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103707%_ ()
                                          (if (let ((__tmp104168
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp104168 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103707%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103702%_
                                       _%prototype103678%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103711%_)
                                         _%prototype103711%_)
                                       _%prototype103678%_))))
                                 (_%K103690103720%_
                                  (lambda (_%rest103716%_ _%method103717%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype103678%_
                                       _%method103717%_
                                       _%off103684%_
                                       _%klass103647%_
                                       '#f))
                                    (_%loop103681%_
                                     _%rest103716%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off103684%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest103686103694%_))
                                (let ((_%hd103691103723%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest103686103694%_)))
                                      (_%tl103692103725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103686103694%_))))
                                  (let* ((_%method103728%_ _%hd103691103723%_)
                                         (_%rest103730%_ _%tl103692103725%_))
                                    (_%K103690103720%_
                                     _%rest103730%_
                                     _%method103728%_)))
                                (_%else103688103713%_)))))))
                   (_%K103666103749%_
                    (lambda (_%rest103735%_ _%method-name103736%_)
                      (let ((_%$e103739%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table103650%_
                                _%method-name103736%_
                                '#f))))
                        (if _%$e103739%_
                            ((lambda (_%method103742%_)
                               (_%loop103653%_
                                _%rest103735%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count103658%_ '1))
                                (cons _%method103742%_ _%methods103660%_)))
                             _%$e103739%_)
                            ((lambda (_%klass103745%_
                                      _%obj-klass103746%_
                                      _%method-name103747%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass103745%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass103745%_))
                                'class:
                                _%obj-klass103746%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass103746%_))
                                'method:
                                _%method-name103747%_)
                               '#!void)
                             _%klass103647%_
                             _%obj-klass103648%_
                             _%method-name103736%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest103662103670%_))
                  (let ((_%hd103667103752%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103662103670%_)))
                        (_%tl103668103754%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103662103670%_))))
                    (let* ((_%method-name103757%_ _%hd103667103752%_)
                           (_%rest103759%_ _%tl103668103754%_))
                      (_%K103666103749%_
                       _%rest103759%_
                       _%method-name103757%_)))
                  (_%else103664103732%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor103531%_ _%klass103532%_ _%obj-klass103533%_)
        (let ((_%method-table103535%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass103533%_))))
          (let _%loop103538%_ ((_%rest103541%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor103531%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count103543%_ '0)
                               (_%methods103545%_ '()))
            (let* ((_%rest103547103555%_ _%rest103541%_)
                   (_%else103549103617%_
                    (lambda ()
                      (let ((_%prototype103563%_
                             (let ((__obj104128
                                    (let ((__tmp104169
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count103543%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass103532%_
                                       __tmp104169))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj104128 '#f))
                               __obj104128)))
                        (let _%loop103566%_ ((_%rest103568%_ _%methods103545%_)
                                             (_%off103569%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count103543%_ '1))))
                          (let* ((_%rest103571103579%_ _%rest103568%_)
                                 (_%else103573103598%_
                                  (lambda ()
                                    (let ((_%prototype-key103587%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass103532%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass103533%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103592%_ ()
                                          (if (let ((__tmp104170
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp104170 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103592%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103587%_
                                       _%prototype103563%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103596%_)
                                         _%prototype103596%_)
                                       _%prototype103563%_))))
                                 (_%K103575103605%_
                                  (lambda (_%rest103601%_ _%method103602%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype103563%_
                                       _%method103602%_
                                       _%off103569%_
                                       _%klass103532%_
                                       '#f))
                                    (_%loop103566%_
                                     _%rest103601%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off103569%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest103571103579%_))
                                (let ((_%hd103576103608%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest103571103579%_)))
                                      (_%tl103577103610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103571103579%_))))
                                  (let* ((_%method103613%_ _%hd103576103608%_)
                                         (_%rest103615%_ _%tl103577103610%_))
                                    (_%K103575103605%_
                                     _%rest103615%_
                                     _%method103613%_)))
                                (_%else103573103598%_)))))))
                   (_%K103551103634%_
                    (lambda (_%rest103620%_ _%method-name103621%_)
                      (let ((_%$e103624%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table103535%_
                                _%method-name103621%_
                                '#f))))
                        (if _%$e103624%_
                            ((lambda (_%method103627%_)
                               (_%loop103538%_
                                _%rest103620%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count103543%_ '1))
                                (cons _%method103627%_ _%methods103545%_)))
                             _%$e103624%_)
                            ((lambda (_%klass103630%_
                                      _%obj-klass103631%_
                                      _%method-name103632%_)
                               '#f)
                             _%klass103532%_
                             _%obj-klass103533%_
                             _%method-name103621%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest103547103555%_))
                  (let ((_%hd103552103637%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103547103555%_)))
                        (_%tl103553103639%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103547103555%_))))
                    (let* ((_%method-name103642%_ _%hd103552103637%_)
                           (_%rest103644%_ _%tl103553103639%_))
                      (_%K103551103634%_
                       _%rest103644%_
                       _%method-name103642%_)))
                  (_%else103549103617%_)))))))
    (define cast
      (lambda (_%descriptor103489%_ _%obj103491%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103495%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103489%_ '1 '#f '#f)))
               (_%klass-id103498%_
                (let () (declare (not safe)) (##type-id _%klass103495%_)))
               (_%obj-klass103501%_
                (let () (declare (not safe)) (class-of _%obj103491%_)))
               (_%obj-klass-id103504%_
                (let () (declare (not safe)) (##type-id _%obj-klass103501%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103498%_ _%obj-klass-id103504%_))
              _%obj103491%_
              (if (interface-subclass? _%obj-klass103501%_)
                  (cast _%descriptor103489%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj103491%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103513%_ ()
                        (if (let ((__tmp104171
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp104171 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103513%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103498%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103504%_))
                    (let ((_%prototype103524%_
                           (let ((_%$e103517%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103517%_
                                 ((lambda (_%prototype103520%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103520%_)
                                  _%$e103517%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor103489%_
                                    _%klass103495%_
                                    _%obj-klass103501%_))))))
                      ((lambda (_%prototype103526%_ _%obj103527%_)
                         (let ((_%instance103529%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype103526%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance103529%_
                              _%obj103527%_
                              '1
                              '#f
                              'cast))
                           _%instance103529%_))
                       _%prototype103524%_
                       _%obj103491%_))))))))
    (define try-cast
      (lambda (_%descriptor103447%_ _%obj103449%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103453%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103447%_ '1 '#f '#f)))
               (_%klass-id103456%_
                (let () (declare (not safe)) (##type-id _%klass103453%_)))
               (_%obj-klass103459%_
                (let () (declare (not safe)) (class-of _%obj103449%_)))
               (_%obj-klass-id103462%_
                (let () (declare (not safe)) (##type-id _%obj-klass103459%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103456%_ _%obj-klass-id103462%_))
              _%obj103449%_
              (if (interface-subclass? _%obj-klass103459%_)
                  (try-cast
                   _%descriptor103447%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj103449%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103471%_ ()
                        (if (let ((__tmp104172
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp104172 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103471%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103456%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103462%_))
                    (let ((_%prototype103482%_
                           (let ((_%$e103475%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103475%_
                                 ((lambda (_%prototype103478%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103478%_)
                                  _%$e103475%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor103447%_
                                    _%klass103453%_
                                    _%obj-klass103459%_))))))
                      ((lambda (_%prototype103484%_ _%obj103485%_)
                         (if _%prototype103484%_
                             (let ((_%instance103487%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype103484%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance103487%_
                                  _%obj103485%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance103487%_)
                             '#f))
                       _%prototype103482%_
                       _%obj103449%_))))))))
    (define satisfies?
      (lambda (_%descriptor103407%_ _%obj103409%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass103413%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor103407%_ '1 '#f '#f)))
               (_%klass-id103416%_
                (let () (declare (not safe)) (##type-id _%klass103413%_)))
               (_%obj-klass103419%_
                (let () (declare (not safe)) (class-of _%obj103409%_)))
               (_%obj-klass-id103422%_
                (let () (declare (not safe)) (##type-id _%obj-klass103419%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id103416%_ _%obj-klass-id103422%_))
              _%obj103409%_
              (if (interface-subclass? _%obj-klass103419%_)
                  (satisfies?
                   _%descriptor103407%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj103409%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again103431%_ ()
                        (if (let ((__tmp104173
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp104173 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again103431%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id103416%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id103422%_))
                    (let ((_%prototype103442%_
                           (let ((_%$e103435%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e103435%_
                                 ((lambda (_%prototype103438%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype103438%_)
                                  _%$e103435%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor103407%_
                                    _%klass103413%_
                                    _%obj-klass103419%_))))))
                      ((lambda (_%prototype103444%_ _%obj103445%_)
                         (if _%prototype103444%_ '#t '#f))
                       _%prototype103442%_
                       _%obj103409%_))))))))))
