(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708352925)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113222 (list))
            (__tmp113220
             (let ((__tmp113221
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113221 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113222
         '(type ssxi methods)
         __tmp113220
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113161_
        (apply make-instance gxc#optimizer-info::t _$args113161_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self113159_)
        (if (let ((__tmp113230
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113159_))))
              (declare (not safe))
              (##fx< '3 __tmp113230))
            (begin
              (let ((__tmp113225
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113224
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113159_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113159_
                 __tmp113225
                 '1
                 __tmp113224
                 '#f))
              (let ((__tmp113227
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113226
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113159_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113159_
                 __tmp113227
                 '2
                 __tmp113226
                 '#f))
              (let ((__tmp113229
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113228
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113159_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113159_
                 __tmp113229
                 '3
                 __tmp113228
                 '#f)))
            (let ((__tmp113223
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113159_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113159_
                     '3
                     __tmp113223)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113233 (list))
            (__tmp113231
             (let ((__tmp113232
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113232 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113233
         '(id)
         __tmp113231
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113034_ (apply make-instance gxc#!type::t _$args113034_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp113236 (list gxc#!type::t))
            (__tmp113234
             (let ((__tmp113235
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113235 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113236
         '()
         __tmp113234
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113031_ (apply make-instance gxc#!alias::t _$args113031_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp113239 (list gxc#!type::t))
            (__tmp113237
             (let ((__tmp113238
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113238 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113239
         '()
         __tmp113237
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113028_
        (apply make-instance gxc#!procedure::t _$args113028_)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!class::t
      (let ((__tmp113242 (list gxc#!type::t))
            (__tmp113240
             (let ((__tmp113241
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113241 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113242
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113240
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113025_ (apply make-instance gxc#!class::t _$args113025_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'metaclass)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'metaclass)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-metaclass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-metaclass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp113245 (list gxc#!procedure::t))
            (__tmp113243
             (let ((__tmp113244
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113244 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113245
         '()
         __tmp113243
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113022_
        (apply make-instance gxc#!predicate::t _$args113022_)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp113248 (list gxc#!procedure::t))
            (__tmp113246
             (let ((__tmp113247
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113247 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113248
         '()
         __tmp113246
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113019_
        (apply make-instance gxc#!constructor::t _$args113019_)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp113251 (list gxc#!procedure::t))
            (__tmp113249
             (let ((__tmp113250
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113250 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113251
         '(slot checked?)
         __tmp113249
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113016_
        (apply make-instance gxc#!accessor::t _$args113016_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp113254 (list gxc#!procedure::t))
            (__tmp113252
             (let ((__tmp113253
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113253 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113254
         '(slot checked?)
         __tmp113252
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113013_
        (apply make-instance gxc#!mutator::t _$args113013_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp113257 (list gxc#!procedure::t))
            (__tmp113255
             (let ((__tmp113256
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113256 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113257
         '(arity dispatch inline inline-typedecl)
         __tmp113255
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113010_
        (apply make-instance gxc#!lambda::t _$args113010_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp113260 (list gxc#!procedure::t))
            (__tmp113258
             (let ((__tmp113259
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113259 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113260
         '(clauses)
         __tmp113258
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113007_
        (apply make-instance gxc#!case-lambda::t _$args113007_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp113263 (list gxc#!procedure::t))
            (__tmp113261
             (let ((__tmp113262
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113262 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113263
         '(table dispatch)
         __tmp113261
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113004_
        (apply make-instance gxc#!kw-lambda::t _$args113004_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp113266 (list gxc#!procedure::t))
            (__tmp113264
             (let ((__tmp113265
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113265 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113266
         '(keys main)
         __tmp113264
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113001_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113001_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp113267 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113267
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args112998_
        (apply make-instance gxc#!primitive::t _$args112998_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113268 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113268
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args112995_
        (apply make-instance gxc#!primitive-lambda::t _$args112995_)))
    (define gxc#!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp113269 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113269
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args112992_
        (apply make-instance gxc#!primitive-case-lambda::t _$args112992_)))
    (define gxc#!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#&!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#&!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!class:::init!__0
      (lambda (_self112874_
               _id112875_
               _super112876_
               _slots112877_
               _ctor-method112878_
               _struct?112879_
               _final?112880_
               _metaclass112881_)
        (let _lp112883_ ((_rest112885_ _super112876_))
          (let* ((_rest112886112894_ _rest112885_)
                 (_else112888112902_ (lambda () '#!void))
                 (_K112890112908_
                  (lambda (_rest112905_ _super-id112906_)
                    (if (##structure-ref
                         (let ((__tmp113272
                                (let ((__tmp113273
                                       (let ()
                                         (declare (not safe))
                                         (cons _id112875_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113273))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113272
                            _super-id112906_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113270
                               (let ((__tmp113271
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112875_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113271))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113270
                           _super-id112906_))
                        '#!void)
                    (let () (declare (not safe)) (_lp112883_ _rest112905_)))))
            (if (let () (declare (not safe)) (##pair? _rest112886112894_))
                (let ((_hd112891112911_
                       (let ()
                         (declare (not safe))
                         (##car _rest112886112894_)))
                      (_tl112892112913_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112886112894_))))
                  (let* ((_super-id112916_ _hd112891112911_)
                         (_rest112918_ _tl112892112913_))
                    (declare (not safe))
                    (_K112890112908_ _rest112918_ _super-id112916_)))
                '#!void)))
        (let* ((_ctor-method112968_
                (let ((_$e112920_ _ctor-method112878_))
                  (if _$e112920_
                      _$e112920_
                      (let _lp112923_ ((_rest112925_ _super112876_)
                                       (_method112926_ '#f))
                        (let* ((_rest112927112935_ _rest112925_)
                               (_else112929112943_ (lambda () _method112926_))
                               (_K112931112956_
                                (lambda (_rest112946_ _super-id112947_)
                                  (let* ((_klass112949_
                                          (let ((__tmp113274
                                                 (let ((__tmp113275
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id112875_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113275))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113274
                                             _super-id112947_)))
                                         (_$e112951_
                                          (##structure-ref
                                           _klass112949_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e112951_
                                        ((lambda (_ctor-method112954_)
                                           (if _method112926_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method112954_
                                                          _method112926_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp112923_
                                                      _rest112946_
                                                      _ctor-method112954_))
                                                   (let ((__tmp113276
                                                          (let ((__tmp113277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id112875_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113277))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113276
                                                      _method112926_
                                                      _ctor-method112954_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112923_
                                                  _rest112946_
                                                  _ctor-method112954_))))
                                         _$e112951_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp112923_
                                           _rest112946_
                                           _method112926_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112927112935_))
                              (let ((_hd112932112959_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112927112935_)))
                                    (_tl112933112961_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112927112935_))))
                                (let* ((_super-id112964_ _hd112932112959_)
                                       (_rest112966_ _tl112933112961_))
                                  (declare (not safe))
                                  (_K112931112956_
                                   _rest112966_
                                   _super-id112964_)))
                              (let ()
                                (declare (not safe))
                                (_else112929112943_))))))))
               (_g113278_
                (let ((__tmp113283
                       (lambda (_klass-id112970_)
                         (let ((__tmp113284
                                (##structure-ref
                                 (let ((__tmp113285
                                        (let ((__tmp113286
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112875_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113286))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113285
                                    _klass-id112970_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id112970_ __tmp113284))))
                      (__tmp113280
                       (lambda (_klass-id112972_)
                         (##structure-ref
                          (let ((__tmp113281
                                 (let ((__tmp113282
                                        (let ()
                                          (declare (not safe))
                                          (cons _id112875_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113282))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113281
                             _klass-id112972_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super112876_
                   'get-precedence-list:
                   __tmp113283
                   'struct:
                   __tmp113280
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113279_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113278_)
                         (##vector-length _g113278_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113279_ 2)))
                  (error "Context expects 2 values" _g113279_)))
            (let ((_precedence-list112974_
                   (let () (declare (not safe)) (##vector-ref _g113278_ 0)))
                  (_base-struct112975_
                   (let () (declare (not safe)) (##vector-ref _g113278_ 1))))
              (let ((_fields112977_
                     (let ((__tmp113287
                            (let ((__tmp113288
                                   (let ()
                                     (declare (not safe))
                                     (cons _id112875_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113288))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113287
                        _base-struct112975_
                        _precedence-list112974_
                        _slots112877_))))
                (##structure-set! _self112874_ _id112875_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self112874_
                 _super112876_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _precedence-list112974_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _slots112877_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _fields112977_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _ctor-method112968_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _struct?112879_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _final?112880_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112874_
                 _metaclass112881_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self112980_
               _id112981_
               _super112982_
               _precedence-list112983_
               _slots112984_
               _fields112985_
               _constructor112986_
               _struct?112987_
               _final?112988_
               _metaclass112989_
               _methods112990_)
        (##structure-set! _self112980_ _id112981_ '1 gxc#!type::t '#f)
        (##structure-set! _self112980_ _super112982_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self112980_
         _precedence-list112983_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self112980_ _slots112984_ '4 gxc#!class::t '#f)
        (##structure-set! _self112980_ _fields112985_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self112980_
         _constructor112986_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self112980_ _struct?112987_ '7 gxc#!class::t '#f)
        (##structure-set! _self112980_ _final?112988_ '8 gxc#!class::t '#f)
        (##structure-set! _self112980_ _metaclass112989_ '9 gxc#!class::t '#f)
        (if _methods112990_
            (##structure-set!
             _self112980_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods112990_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113290_
        (let ((_g113289_ (let () (declare (not safe)) (##length _g113290_))))
          (cond ((let () (declare (not safe)) (##fx= _g113289_ 8))
                 (apply (lambda (_self112874_
                                 _id112875_
                                 _super112876_
                                 _slots112877_
                                 _ctor-method112878_
                                 _struct?112879_
                                 _final?112880_
                                 _metaclass112881_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self112874_
                             _id112875_
                             _super112876_
                             _slots112877_
                             _ctor-method112878_
                             _struct?112879_
                             _final?112880_
                             _metaclass112881_)))
                        _g113290_))
                ((let () (declare (not safe)) (##fx= _g113289_ 11))
                 (apply (lambda (_self112980_
                                 _id112981_
                                 _super112982_
                                 _precedence-list112983_
                                 _slots112984_
                                 _fields112985_
                                 _constructor112986_
                                 _struct?112987_
                                 _final?112988_
                                 _metaclass112989_
                                 _methods112990_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self112980_
                             _id112981_
                             _super112982_
                             _precedence-list112983_
                             _slots112984_
                             _fields112985_
                             _constructor112986_
                             _struct?112987_
                             _final?112988_
                             _metaclass112989_
                             _methods112990_)))
                        _g113290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113290_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t113163)
        (let ((__precedence-list113164
               (let ((__tmp113174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'precedence-list))))
                 (if __tmp113174
                     __tmp113174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__constructor113165
               (let ((__tmp113175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'constructor))))
                 (if __tmp113175
                     __tmp113175
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?113166
               (let ((__tmp113176
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'struct?))))
                 (if __tmp113176
                     __tmp113176
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__id113167
               (let ((__tmp113177
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'id))))
                 (if __tmp113177
                     __tmp113177
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slots113168
               (let ((__tmp113178
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'slots))))
                 (if __tmp113178
                     __tmp113178
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__final?113169
               (let ((__tmp113179
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'final?))))
                 (if __tmp113179
                     __tmp113179
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods113170
               (let ((__tmp113180
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'methods))))
                 (if __tmp113180
                     __tmp113180
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__fields113171
               (let ((__tmp113181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'fields))))
                 (if __tmp113181
                     __tmp113181
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass113172
               (let ((__tmp113182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'metaclass))))
                 (if __tmp113182
                     __tmp113182
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__super113173
               (let ((__tmp113183
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113163 'super))))
                 (if __tmp113183
                     __tmp113183
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super))))))
          (lambda _g113292_
            (let ((_g113291_
                   (let () (declare (not safe)) (##length _g113292_))))
              (cond ((let () (declare (not safe)) (##fx= _g113291_ 8))
                     (apply (lambda (_self112874_
                                     _id112875_
                                     _super112876_
                                     _slots112877_
                                     _ctor-method112878_
                                     _struct?112879_
                                     _final?112880_
                                     _metaclass112881_)
                              (let _lp112883_ ((_rest112885_ _super112876_))
                                (let* ((_rest112886112894_ _rest112885_)
                                       (_else112888112902_ (lambda () '#!void))
                                       (_K112890112908_
                                        (lambda (_rest112905_ _super-id112906_)
                                          (if (##structure-ref
                                               (let ((__tmp113295
                                                      (let ((__tmp113296
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id112875_ '()))))
                (declare (not safe))
                (cons '!class __tmp113296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113295
                                                  _super-id112906_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113293
                                                     (let ((__tmp113294
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id112875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113293
                                                 _super-id112906_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp112883_ _rest112905_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest112886112894_))
                                      (let ((_hd112891112911_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest112886112894_)))
                                            (_tl112892112913_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest112886112894_))))
                                        (let* ((_super-id112916_
                                                _hd112891112911_)
                                               (_rest112918_ _tl112892112913_))
                                          (declare (not safe))
                                          (_K112890112908_
                                           _rest112918_
                                           _super-id112916_)))
                                      '#!void)))
                              (let* ((_ctor-method112968_
                                      (let ((_$e112920_ _ctor-method112878_))
                                        (if _$e112920_
                                            _$e112920_
                                            (let _lp112923_ ((_rest112925_
                                                              _super112876_)
                                                             (_method112926_
                                                              '#f))
                                              (let* ((_rest112927112935_
                                                      _rest112925_)
                                                     (_else112929112943_
                                                      (lambda ()
                                                        _method112926_))
                                                     (_K112931112956_
                                                      (lambda (_rest112946_
                                                               _super-id112947_)
                                                        (let* ((_klass112949_
                                                                (let ((__tmp113297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113298
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112875_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113298))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113297
                           _super-id112947_)))
                       (_$e112951_
                        (##structure-ref _klass112949_ '6 gxc#!class::t '#f)))
                  (if _$e112951_
                      ((lambda (_ctor-method112954_)
                         (if _method112926_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method112954_ _method112926_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp112923_
                                    _rest112946_
                                    _ctor-method112954_))
                                 (let ((__tmp113299
                                        (let ((__tmp113300
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112875_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113300))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113299
                                    _method112926_
                                    _ctor-method112954_)))
                             (let ()
                               (declare (not safe))
                               (_lp112923_ _rest112946_ _ctor-method112954_))))
                       _$e112951_)
                      (let ()
                        (declare (not safe))
                        (_lp112923_ _rest112946_ _method112926_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest112927112935_))
                                                    (let ((_hd112932112959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest112927112935_)))
                                                          (_tl112933112961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest112927112935_))))
                                                      (let* ((_super-id112964_
                                                              _hd112932112959_)
                                                             (_rest112966_
                                                              _tl112933112961_))
                                                        (declare (not safe))
                                                        (_K112931112956_
                                                         _rest112966_
                                                         _super-id112964_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else112929112943_))))))))
                                     (_g113301_
                                      (let ((__tmp113306
                                             (lambda (_klass-id112970_)
                                               (let ((__tmp113307
                                                      (##structure-ref
                                                       (let ((__tmp113308
                                                              (let ((__tmp113309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id112875_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113309))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113308 _klass-id112970_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id112970_
                                                       __tmp113307))))
                                            (__tmp113303
                                             (lambda (_klass-id112972_)
                                               (##structure-ref
                                                (let ((__tmp113304
                                                       (let ((__tmp113305
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id112875_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113304
                                                   _klass-id112972_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super112876_
                                         'get-precedence-list:
                                         __tmp113306
                                         'struct:
                                         __tmp113303
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113302_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113301_)
                                               (##vector-length _g113301_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113302_ 2)))
                                        (error "Context expects 2 values"
                                               _g113302_)))
                                  (let ((_precedence-list112974_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113301_ 0)))
                                        (_base-struct112975_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113301_ 1))))
                                    (let ((_fields112977_
                                           (let ((__tmp113310
                                                  (let ((__tmp113311
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id112875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113311))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113310
                                              _base-struct112975_
                                              _precedence-list112974_
                                              _slots112877_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _id112875_
                                         __id113167
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _super112876_
                                         __super113173
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _precedence-list112974_
                                         __precedence-list113164
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _slots112877_
                                         __slots113168
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _fields112977_
                                         __fields113171
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _ctor-method112968_
                                         __constructor113165
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _struct?112879_
                                         __struct?113166
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _final?112880_
                                         __final?113169
                                         __t113163
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112874_
                                         _metaclass112881_
                                         __metaclass113172
                                         __t113163
                                         '#f)))))))
                            _g113292_))
                    ((let () (declare (not safe)) (##fx= _g113291_ 11))
                     (apply (lambda (_self112980_
                                     _id112981_
                                     _super112982_
                                     _precedence-list112983_
                                     _slots112984_
                                     _fields112985_
                                     _constructor112986_
                                     _struct?112987_
                                     _final?112988_
                                     _metaclass112989_
                                     _methods112990_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _id112981_
                                 __id113167
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _super112982_
                                 __super113173
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _precedence-list112983_
                                 __precedence-list113164
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _slots112984_
                                 __slots113168
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _fields112985_
                                 __fields113171
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _constructor112986_
                                 __constructor113165
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _struct?112987_
                                 __struct?113166
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _final?112988_
                                 __final?113169
                                 __t113163
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112980_
                                 _metaclass112989_
                                 __metaclass113172
                                 __t113163
                                 '#f))
                              (if _methods112990_
                                  (let ((__tmp113312
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods112990_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self112980_
                                     __tmp113312
                                     __methods113170
                                     __t113163
                                     '#f))
                                  '#!void))
                            _g113292_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113292_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where112726_
               _base-struct112727_
               _precedence-list112728_
               _direct-slots112729_)
        (let* ((_base-fields112731_
                (if _base-struct112727_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where112726_
                        _base-struct112727_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields112733_ (reverse _base-fields112731_))
               (_seen-slots112741_
                (let ((_tab112735_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g112736112738_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab112735_ _g112736112738_ '#t)))
                   _base-fields112731_)
                  _tab112735_))
               (_process-slot112745_
                (lambda (_slot112743_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots112741_ _slot112743_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots112741_ _slot112743_ '#t))
                        (set! _r-fields112733_
                              (let ()
                                (declare (not safe))
                                (cons _slot112743_ _r-fields112733_))))))))
          (for-each
           (lambda (_mixin112748_)
             (let ((_klass112750_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where112726_
                       _mixin112748_))))
               (if (##structure-ref _klass112750_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot112745_
                    (##structure-ref _klass112750_ '5 gxc#!class::t '#f)))))
           _precedence-list112728_)
          (for-each _process-slot112745_ _direct-slots112729_)
          (reverse _r-fields112733_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass112685_ _slot112686_)
        (let _lp112688_ ((_rest112690_
                          (##structure-ref _klass112685_ '5 gxc#!class::t '#f))
                         (_offset112691_ '1))
          (let* ((_rest112692112700_ _rest112690_)
                 (_else112694112708_
                  (lambda ()
                    (let ((__tmp113314
                           (##structure-ref _klass112685_ '1 gxc#!type::t '#f))
                          (__tmp113313
                           (##structure-ref
                            _klass112685_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113314
                       __tmp113313
                       _slot112686_))))
                 (_K112696112714_
                  (lambda (_rest112711_ _s112712_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s112712_ _slot112686_))
                        _offset112691_
                        (let ((__tmp113315
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset112691_ '1))))
                          (declare (not safe))
                          (_lp112688_ _rest112711_ __tmp113315))))))
            (if (let () (declare (not safe)) (##pair? _rest112692112700_))
                (let ((_hd112697112717_
                       (let ()
                         (declare (not safe))
                         (##car _rest112692112700_)))
                      (_tl112698112719_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112692112700_))))
                  (let* ((_s112722_ _hd112697112717_)
                         (_rest112724_ _tl112698112719_))
                    (declare (not safe))
                    (_K112696112714_ _rest112724_ _s112722_)))
                (let () (declare (not safe)) (_else112694112708_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass112643_ _slot112644_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass112643_ _slot112644_))
            _klass112643_
            (let _lp112646_ ((_rest112648_
                              (##structure-ref
                               _klass112643_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest112649112657_ _rest112648_)
                     (_else112651112665_ (lambda () '#f))
                     (_K112653112673_
                      (lambda (_rest112668_ _super112669_)
                        (let ((_super-class112671_
                               (let ((__tmp113316
                                      (let ((__tmp113317
                                             (let ((__tmp113319
                                                    (##structure-ref
                                                     _klass112643_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113318
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot112644_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113319
                                                     __tmp113318))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113317))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113316
                                  _super112669_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class112671_
                                 _slot112644_))
                              _super-class112671_
                              (let ()
                                (declare (not safe))
                                (_lp112646_ _rest112668_)))))))
                (if (let () (declare (not safe)) (##pair? _rest112649112657_))
                    (let ((_hd112654112676_
                           (let ()
                             (declare (not safe))
                             (##car _rest112649112657_)))
                          (_tl112655112678_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest112649112657_))))
                      (let* ((_super112681_ _hd112654112676_)
                             (_rest112683_ _tl112655112678_))
                        (declare (not safe))
                        (_K112653112673_ _rest112683_ _super112681_)))
                    (let () (declare (not safe)) (_else112651112665_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass112640_ _slot112641_)
        (if (##structure-ref _klass112640_ '7 gxc#!class::t '#f)
            (memq _slot112641_
                  (##structure-ref _klass112640_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self112637_ _id112638_)
        (##structure-set! _self112637_ _id112638_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t113184)
        (let ((__id113185
               (let ((__tmp113186
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113184 'id))))
                 (if __tmp113186
                     __tmp113186
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112637_ _id112638_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112637_
               _id112638_
               __id113185
               __t113184
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self112512_ _id112513_)
        (##structure-set! _self112512_ _id112513_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t113187)
        (let ((__id113188
               (let ((__tmp113189
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113187 'id))))
                 (if __tmp113189
                     __tmp113189
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112512_ _id112513_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112512_
               _id112513_
               __id113188
               __t113187
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_self112385_ _id112386_ _slot112387_ _checked?112388_)
        (##structure-set! _self112385_ _id112386_ '1 gxc#!type::t '#f)
        (##structure-set! _self112385_ _slot112387_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self112385_
         _checked?112388_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t113190)
        (let ((__checked?113191
               (let ((__tmp113194
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113190 'checked?))))
                 (if __tmp113194
                     __tmp113194
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot113192
               (let ((__tmp113195
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113190 'slot))))
                 (if __tmp113195
                     __tmp113195
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113193
               (let ((__tmp113196
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113190 'id))))
                 (if __tmp113196
                     __tmp113196
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112385_ _id112386_ _slot112387_ _checked?112388_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112385_
               _id112386_
               __id113193
               __t113190
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112385_
               _slot112387_
               __slot113192
               __t113190
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112385_
               _checked?112388_
               __checked?113191
               __t113190
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self112258_ _id112259_ _slot112260_ _checked?112261_)
        (##structure-set! _self112258_ _id112259_ '1 gxc#!type::t '#f)
        (##structure-set! _self112258_ _slot112260_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112258_
         _checked?112261_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t113197)
        (let ((__id113198
               (let ((__tmp113201
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113197 'id))))
                 (if __tmp113201
                     __tmp113201
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113199
               (let ((__tmp113202
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113197 'slot))))
                 (if __tmp113202
                     __tmp113202
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?113200
               (let ((__tmp113203
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113197 'checked?))))
                 (if __tmp113203
                     __tmp113203
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self112258_ _id112259_ _slot112260_ _checked?112261_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112258_
               _id112259_
               __id113198
               __t113197
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112258_
               _slot112260_
               __slot113199
               __t113197
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112258_
               _checked?112261_
               __checked?113200
               __t113197
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self112102_
               _id112103_
               _arity112104_
               _dispatch112105_
               _inline112106_
               _typedecl112107_)
        (if (let ((__tmp113326
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112102_))))
              (declare (not safe))
              (##fx< '5 __tmp113326))
            (begin
              (let ((__tmp113321
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112102_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112102_
                 _id112103_
                 '1
                 __tmp113321
                 '#f))
              (let ((__tmp113322
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112102_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112102_
                 _arity112104_
                 '2
                 __tmp113322
                 '#f))
              (let ((__tmp113323
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112102_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112102_
                 _dispatch112105_
                 '3
                 __tmp113323
                 '#f))
              (let ((__tmp113324
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112102_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112102_
                 _inline112106_
                 '4
                 __tmp113324
                 '#f))
              (let ((__tmp113325
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112102_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112102_
                 _typedecl112107_
                 '5
                 __tmp113325
                 '#f)))
            (let ((__tmp113320
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112102_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112102_
                     '5
                     __tmp113320)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112112_ _id112113_ _arity112114_ _dispatch112115_)
        (let* ((_inline112117_ '#f) (_typedecl112119_ '#f))
          (if (let ((__tmp113333
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112112_))))
                (declare (not safe))
                (##fx< '5 __tmp113333))
              (begin
                (let ((__tmp113328
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112112_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112112_
                   _id112113_
                   '1
                   __tmp113328
                   '#f))
                (let ((__tmp113329
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112112_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112112_
                   _arity112114_
                   '2
                   __tmp113329
                   '#f))
                (let ((__tmp113330
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112112_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112112_
                   _dispatch112115_
                   '3
                   __tmp113330
                   '#f))
                (let ((__tmp113331
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112112_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112112_
                   _inline112117_
                   '4
                   __tmp113331
                   '#f))
                (let ((__tmp113332
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112112_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112112_
                   _typedecl112119_
                   '5
                   __tmp113332
                   '#f)))
              (let ((__tmp113327
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112112_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112112_
                       '5
                       __tmp113327))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112121_
               _id112122_
               _arity112123_
               _dispatch112124_
               _inline112125_)
        (let ((_typedecl112127_ '#f))
          (if (let ((__tmp113340
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112121_))))
                (declare (not safe))
                (##fx< '5 __tmp113340))
              (begin
                (let ((__tmp113335
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112121_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112121_
                   _id112122_
                   '1
                   __tmp113335
                   '#f))
                (let ((__tmp113336
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112121_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112121_
                   _arity112123_
                   '2
                   __tmp113336
                   '#f))
                (let ((__tmp113337
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112121_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112121_
                   _dispatch112124_
                   '3
                   __tmp113337
                   '#f))
                (let ((__tmp113338
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112121_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112121_
                   _inline112125_
                   '4
                   __tmp113338
                   '#f))
                (let ((__tmp113339
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112121_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112121_
                   _typedecl112127_
                   '5
                   __tmp113339
                   '#f)))
              (let ((__tmp113334
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112121_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112121_
                       '5
                       __tmp113334))))))
    (define gxc#!lambda:::init!
      (lambda _g113342_
        (let ((_g113341_ (let () (declare (not safe)) (##length _g113342_))))
          (cond ((let () (declare (not safe)) (##fx= _g113341_ 4))
                 (apply (lambda (_self112112_
                                 _id112113_
                                 _arity112114_
                                 _dispatch112115_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112112_
                             _id112113_
                             _arity112114_
                             _dispatch112115_)))
                        _g113342_))
                ((let () (declare (not safe)) (##fx= _g113341_ 5))
                 (apply (lambda (_self112121_
                                 _id112122_
                                 _arity112123_
                                 _dispatch112124_
                                 _inline112125_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112121_
                             _id112122_
                             _arity112123_
                             _dispatch112124_
                             _inline112125_)))
                        _g113342_))
                ((let () (declare (not safe)) (##fx= _g113341_ 6))
                 (apply (lambda (_self112129_
                                 _id112130_
                                 _arity112131_
                                 _dispatch112132_
                                 _inline112133_
                                 _typedecl112134_)
                          (if (let ((__tmp113349
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112129_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113349))
                              (begin
                                (let ((__tmp113344
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112129_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112129_
                                   _id112130_
                                   '1
                                   __tmp113344
                                   '#f))
                                (let ((__tmp113345
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112129_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112129_
                                   _arity112131_
                                   '2
                                   __tmp113345
                                   '#f))
                                (let ((__tmp113346
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112129_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112129_
                                   _dispatch112132_
                                   '3
                                   __tmp113346
                                   '#f))
                                (let ((__tmp113347
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112129_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112129_
                                   _inline112133_
                                   '4
                                   __tmp113347
                                   '#f))
                                (let ((__tmp113348
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112129_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112129_
                                   _typedecl112134_
                                   '5
                                   __tmp113348
                                   '#f)))
                              (let ((__tmp113343
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112129_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112129_
                                       '5
                                       __tmp113343))))
                        _g113342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113342_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self111854_ . _args111855_)
        (apply struct-instance-init! _self111854_ _args111855_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type111729_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111729_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type111729_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass111722_)
        (let ((_$e111724_
               (##structure-ref _klass111722_ '10 gxc#!class::t '#f)))
          (if _$e111724_
              _$e111724_
              (let ((_tab111727_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass111722_
                 _tab111727_
                 '10
                 gxc#!class::t
                 '#f)
                _tab111727_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass111713_ _method111714_)
        (let ((_tab111715111717_
               (##structure-ref _klass111713_ '10 gxc#!class::t '#f)))
          (if _tab111715111717_
              (let ((_tab111720_ _tab111715111717_))
                (declare (not safe))
                (hash-get _tab111720_ _method111714_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type111710_ _method111711_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111710_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type111710_ _method111711_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym111694_ _type111695_ _local?111696_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111695_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym111694_
                     _type111695_)))
        (let ((__tmp113350
               (let () (declare (not safe)) (struct->list _type111695_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym111694_ '" " __tmp113350))
        (let ((__tmp113351
               (if _local?111696_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113351 _sym111694_ _type111695_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym111701_ _type111702_)
        (let ((_local?111704_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym111701_
           _type111702_
           _local?111704_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113353_
        (let ((_g113352_ (let () (declare (not safe)) (##length _g113353_))))
          (cond ((let () (declare (not safe)) (##fx= _g113352_ 2))
                 (apply (lambda (_sym111701_ _type111702_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym111701_
                             _type111702_)))
                        _g113353_))
                ((let () (declare (not safe)) (##fx= _g113352_ 3))
                 (apply (lambda (_sym111706_ _type111707_ _local?111708_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym111706_
                             _type111707_
                             _local?111708_)))
                        _g113353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113353_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym111680_ _local?111681_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym111680_))
        (let ((__tmp113354
               (if _local?111681_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113354 _sym111680_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym111686_)
        (let ((_local?111688_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym111686_ _local?111688_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113356_
        (let ((_g113355_ (let () (declare (not safe)) (##length _g113356_))))
          (cond ((let () (declare (not safe)) (##fx= _g113355_ 1))
                 (apply (lambda (_sym111686_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym111686_)))
                        _g113356_))
                ((let () (declare (not safe)) (##fx= _g113355_ 2))
                 (apply (lambda (_sym111690_ _local?111691_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym111690_
                             _local?111691_)))
                        _g113356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113356_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t111653_ _method111654_ _sym111655_ _rebind?111656_)
        (let* ((_type111658_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t111653_)))
               (_$e111660_
                (let () (declare (not safe)) (gxc#!type-vtab _type111658_))))
          (if _$e111660_
              ((lambda (_vtab111663_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab111663_ _method111654_))
                     (if _rebind?111656_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t111653_
                              '" "
                              _method111654_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab111663_
                              _method111654_
                              _sym111655_)))
                         (let ((__tmp113361
                                (let ((__tmp113362
                                       (let ((__tmp113363
                                              (let ((__tmp113364
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym111655_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method111654_
                                                      __tmp113364))))
                                         (declare (not safe))
                                         (cons _type-t111653_ __tmp113363))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp113362))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp113361
                            _method111654_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t111653_
                          '" "
                          _method111654_
                          '" => "
                          _sym111655_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab111663_
                          _method111654_
                          _sym111655_)))))
               _$e111660_)
              (if (let () (declare (not safe)) (not _type111658_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t111653_))
                  (let ((__tmp113357
                         (let ((__tmp113358
                                (let ((__tmp113359
                                       (let ((__tmp113360
                                              (let ()
                                                (declare (not safe))
                                                (cons _method111654_ '()))))
                                         (declare (not safe))
                                         (cons _sym111655_ __tmp113360))))
                                  (declare (not safe))
                                  (cons _type-t111653_ __tmp113359))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113358))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113357
                     _type111658_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t111668_ _method111669_ _sym111670_)
        (let ((_rebind?111672_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t111668_
           _method111669_
           _sym111670_
           _rebind?111672_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113366_
        (let ((_g113365_ (let () (declare (not safe)) (##length _g113366_))))
          (cond ((let () (declare (not safe)) (##fx= _g113365_ 3))
                 (apply (lambda (_type-t111668_ _method111669_ _sym111670_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t111668_
                             _method111669_
                             _sym111670_)))
                        _g113366_))
                ((let () (declare (not safe)) (##fx= _g113365_ 4))
                 (apply (lambda (_type-t111674_
                                 _method111675_
                                 _sym111676_
                                 _rebind?111677_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t111674_
                             _method111675_
                             _sym111676_
                             _rebind?111677_)))
                        _g113366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113366_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym111641_)
        (let ((_$e111649_
               (let ((_ht111642111644_ (gxc#current-compile-local-type)))
                 (if _ht111642111644_
                     (let ((_ht111647_ _ht111642111644_))
                       (declare (not safe))
                       (hash-get _ht111647_ _sym111641_))
                     '#f))))
          (if _$e111649_
              _$e111649_
              (let ((__tmp113367
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113367 _sym111641_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym111633_)
        (let ((_type111634111636_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym111633_))))
          (if _type111634111636_
              (let ((_type111639_ _type111634111636_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type111639_ 'gxc#!alias::t))
                    (let ((__tmp113368
                           (##structure-ref _type111639_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113368))
                    _type111639_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where111625_ _klass-id111626_)
        (let ((_$e111628_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id111626_))))
          (if _$e111628_
              ((lambda (_klass111631_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass111631_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where111625_
                        _klass-id111626_
                        _klass111631_)))
                 _klass111631_)
               _$e111628_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where111625_
                 _klass-id111626_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t111622_ _method111623_)
        (let ((__tmp113369
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t111622_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113369 _method111623_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym111620_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym111620_))
        (let ((__tmp113370
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113370 _sym111620_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym111618_)
        (let ((__tmp113371
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113371 _sym111618_))))
    (define gxc#identifier-symbol
      (lambda (_stx111616_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx111616_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx111616_))
            (let () (declare (not safe)) (gx#stx-e _stx111616_)))))))
