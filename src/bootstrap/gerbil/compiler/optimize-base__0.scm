(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708343717)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113221 (list))
            (__tmp113219
             (let ((__tmp113220
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113220 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113221
         '(type ssxi methods)
         __tmp113219
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113160_
        (apply make-instance gxc#optimizer-info::t _$args113160_)))
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
      (lambda (_self113158_)
        (if (let ((__tmp113229
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113158_))))
              (declare (not safe))
              (##fx< '3 __tmp113229))
            (begin
              (let ((__tmp113224
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113223
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113158_
                 __tmp113224
                 '1
                 __tmp113223
                 '#f))
              (let ((__tmp113226
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113225
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113158_
                 __tmp113226
                 '2
                 __tmp113225
                 '#f))
              (let ((__tmp113228
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113227
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113158_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113158_
                 __tmp113228
                 '3
                 __tmp113227
                 '#f)))
            (let ((__tmp113222
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113158_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113158_
                     '3
                     __tmp113222)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113232 (list))
            (__tmp113230
             (let ((__tmp113231
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113231 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113232
         '(id)
         __tmp113230
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113033_ (apply make-instance gxc#!type::t _$args113033_)))
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
      (let ((__tmp113235 (list gxc#!type::t))
            (__tmp113233
             (let ((__tmp113234
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113235
         '()
         __tmp113233
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113030_ (apply make-instance gxc#!alias::t _$args113030_)))
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
      (let ((__tmp113238 (list gxc#!type::t))
            (__tmp113236
             (let ((__tmp113237
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113237 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113238
         '()
         __tmp113236
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113027_
        (apply make-instance gxc#!procedure::t _$args113027_)))
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
      (let ((__tmp113241 (list gxc#!type::t))
            (__tmp113239
             (let ((__tmp113240
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113240 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113241
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113239
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113024_ (apply make-instance gxc#!class::t _$args113024_)))
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
      (let ((__tmp113244 (list gxc#!procedure::t))
            (__tmp113242
             (let ((__tmp113243
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113243 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113244
         '()
         __tmp113242
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113021_
        (apply make-instance gxc#!predicate::t _$args113021_)))
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
      (let ((__tmp113247 (list gxc#!procedure::t))
            (__tmp113245
             (let ((__tmp113246
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113246 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113247
         '()
         __tmp113245
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113018_
        (apply make-instance gxc#!constructor::t _$args113018_)))
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
      (let ((__tmp113250 (list gxc#!procedure::t))
            (__tmp113248
             (let ((__tmp113249
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113249 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113250
         '(slot checked?)
         __tmp113248
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113015_
        (apply make-instance gxc#!accessor::t _$args113015_)))
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
      (let ((__tmp113253 (list gxc#!procedure::t))
            (__tmp113251
             (let ((__tmp113252
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113252 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113253
         '(slot checked?)
         __tmp113251
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113012_
        (apply make-instance gxc#!mutator::t _$args113012_)))
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
      (let ((__tmp113256 (list gxc#!procedure::t))
            (__tmp113254
             (let ((__tmp113255
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113255 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113256
         '(arity dispatch inline inline-typedecl)
         __tmp113254
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113009_
        (apply make-instance gxc#!lambda::t _$args113009_)))
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
      (let ((__tmp113259 (list gxc#!procedure::t))
            (__tmp113257
             (let ((__tmp113258
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113258 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113259
         '(clauses)
         __tmp113257
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113006_
        (apply make-instance gxc#!case-lambda::t _$args113006_)))
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
      (let ((__tmp113262 (list gxc#!procedure::t))
            (__tmp113260
             (let ((__tmp113261
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113261 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113262
         '(table dispatch)
         __tmp113260
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113003_
        (apply make-instance gxc#!kw-lambda::t _$args113003_)))
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
      (let ((__tmp113265 (list gxc#!procedure::t))
            (__tmp113263
             (let ((__tmp113264
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113264 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113265
         '(keys main)
         __tmp113263
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113000_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113000_)))
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
      (let ((__tmp113266 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113266
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args112997_
        (apply make-instance gxc#!primitive::t _$args112997_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113267 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113267
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args112994_
        (apply make-instance gxc#!primitive-lambda::t _$args112994_)))
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
      (let ((__tmp113268 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113268
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args112991_
        (apply make-instance gxc#!primitive-case-lambda::t _$args112991_)))
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
      (lambda (_self112873_
               _id112874_
               _super112875_
               _slots112876_
               _ctor-method112877_
               _struct?112878_
               _final?112879_
               _metaclass112880_)
        (let _lp112882_ ((_rest112884_ _super112875_))
          (let* ((_rest112885112893_ _rest112884_)
                 (_else112887112901_ (lambda () '#!void))
                 (_K112889112907_
                  (lambda (_rest112904_ _super-id112905_)
                    (if (##structure-ref
                         (let ((__tmp113271
                                (let ((__tmp113272
                                       (let ()
                                         (declare (not safe))
                                         (cons _id112874_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113272))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113271
                            _super-id112905_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113269
                               (let ((__tmp113270
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112874_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113270))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113269
                           _super-id112905_))
                        '#!void)
                    (let () (declare (not safe)) (_lp112882_ _rest112904_)))))
            (if (let () (declare (not safe)) (##pair? _rest112885112893_))
                (let ((_hd112890112910_
                       (let ()
                         (declare (not safe))
                         (##car _rest112885112893_)))
                      (_tl112891112912_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112885112893_))))
                  (let* ((_super-id112915_ _hd112890112910_)
                         (_rest112917_ _tl112891112912_))
                    (declare (not safe))
                    (_K112889112907_ _rest112917_ _super-id112915_)))
                '#!void)))
        (let* ((_ctor-method112967_
                (let ((_$e112919_ _ctor-method112877_))
                  (if _$e112919_
                      _$e112919_
                      (let _lp112922_ ((_rest112924_ _super112875_)
                                       (_method112925_ '#f))
                        (let* ((_rest112926112934_ _rest112924_)
                               (_else112928112942_ (lambda () _method112925_))
                               (_K112930112955_
                                (lambda (_rest112945_ _super-id112946_)
                                  (let* ((_klass112948_
                                          (let ((__tmp113273
                                                 (let ((__tmp113274
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id112874_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113274))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113273
                                             _super-id112946_)))
                                         (_$e112950_
                                          (##structure-ref
                                           _klass112948_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e112950_
                                        ((lambda (_ctor-method112953_)
                                           (if _method112925_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method112953_
                                                          _method112925_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp112922_
                                                      _rest112945_
                                                      _ctor-method112953_))
                                                   (let ((__tmp113275
                                                          (let ((__tmp113276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id112874_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113275
                                                      _method112925_
                                                      _ctor-method112953_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112922_
                                                  _rest112945_
                                                  _ctor-method112953_))))
                                         _$e112950_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp112922_
                                           _rest112945_
                                           _method112925_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112926112934_))
                              (let ((_hd112931112958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112926112934_)))
                                    (_tl112932112960_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112926112934_))))
                                (let* ((_super-id112963_ _hd112931112958_)
                                       (_rest112965_ _tl112932112960_))
                                  (declare (not safe))
                                  (_K112930112955_
                                   _rest112965_
                                   _super-id112963_)))
                              (let ()
                                (declare (not safe))
                                (_else112928112942_))))))))
               (_g113277_
                (let ((__tmp113282
                       (lambda (_klass-id112969_)
                         (let ((__tmp113283
                                (##structure-ref
                                 (let ((__tmp113284
                                        (let ((__tmp113285
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112874_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113285))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113284
                                    _klass-id112969_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id112969_ __tmp113283))))
                      (__tmp113279
                       (lambda (_klass-id112971_)
                         (##structure-ref
                          (let ((__tmp113280
                                 (let ((__tmp113281
                                        (let ()
                                          (declare (not safe))
                                          (cons _id112874_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113281))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113280
                             _klass-id112971_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super112875_
                   'get-precedence-list:
                   __tmp113282
                   'struct:
                   __tmp113279
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113278_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113277_)
                         (##vector-length _g113277_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113278_ 2)))
                  (error "Context expects 2 values" _g113278_)))
            (let ((_precedence-list112973_
                   (let () (declare (not safe)) (##vector-ref _g113277_ 0)))
                  (_base-struct112974_
                   (let () (declare (not safe)) (##vector-ref _g113277_ 1))))
              (let ((_fields112976_
                     (let ((__tmp113286
                            (let ((__tmp113287
                                   (let ()
                                     (declare (not safe))
                                     (cons _id112874_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113287))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113286
                        _base-struct112974_
                        _precedence-list112973_
                        _slots112876_))))
                (##structure-set! _self112873_ _id112874_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self112873_
                 _super112875_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _precedence-list112973_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _slots112876_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _fields112976_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _ctor-method112967_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _struct?112878_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _final?112879_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112873_
                 _metaclass112880_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self112979_
               _id112980_
               _super112981_
               _precedence-list112982_
               _slots112983_
               _fields112984_
               _constructor112985_
               _struct?112986_
               _final?112987_
               _metaclass112988_
               _methods112989_)
        (##structure-set! _self112979_ _id112980_ '1 gxc#!type::t '#f)
        (##structure-set! _self112979_ _super112981_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self112979_
         _precedence-list112982_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self112979_ _slots112983_ '4 gxc#!class::t '#f)
        (##structure-set! _self112979_ _fields112984_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self112979_
         _constructor112985_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self112979_ _struct?112986_ '7 gxc#!class::t '#f)
        (##structure-set! _self112979_ _final?112987_ '8 gxc#!class::t '#f)
        (##structure-set! _self112979_ _metaclass112988_ '9 gxc#!class::t '#f)
        (if _methods112989_
            (##structure-set!
             _self112979_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods112989_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113289_
        (let ((_g113288_ (let () (declare (not safe)) (##length _g113289_))))
          (cond ((let () (declare (not safe)) (##fx= _g113288_ 8))
                 (apply (lambda (_self112873_
                                 _id112874_
                                 _super112875_
                                 _slots112876_
                                 _ctor-method112877_
                                 _struct?112878_
                                 _final?112879_
                                 _metaclass112880_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self112873_
                             _id112874_
                             _super112875_
                             _slots112876_
                             _ctor-method112877_
                             _struct?112878_
                             _final?112879_
                             _metaclass112880_)))
                        _g113289_))
                ((let () (declare (not safe)) (##fx= _g113288_ 11))
                 (apply (lambda (_self112979_
                                 _id112980_
                                 _super112981_
                                 _precedence-list112982_
                                 _slots112983_
                                 _fields112984_
                                 _constructor112985_
                                 _struct?112986_
                                 _final?112987_
                                 _metaclass112988_
                                 _methods112989_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self112979_
                             _id112980_
                             _super112981_
                             _precedence-list112982_
                             _slots112983_
                             _fields112984_
                             _constructor112985_
                             _struct?112986_
                             _final?112987_
                             _metaclass112988_
                             _methods112989_)))
                        _g113289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113289_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t113162)
        (let ((__slots113163
               (let ((__tmp113173
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'slots))))
                 (if __tmp113173
                     __tmp113173
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__id113164
               (let ((__tmp113174
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'id))))
                 (if __tmp113174
                     __tmp113174
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__constructor113165
               (let ((__tmp113175
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'constructor))))
                 (if __tmp113175
                     __tmp113175
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__struct?113166
               (let ((__tmp113176
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'struct?))))
                 (if __tmp113176
                     __tmp113176
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__precedence-list113167
               (let ((__tmp113177
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'precedence-list))))
                 (if __tmp113177
                     __tmp113177
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__super113168
               (let ((__tmp113178
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'super))))
                 (if __tmp113178
                     __tmp113178
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__metaclass113169
               (let ((__tmp113179
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'metaclass))))
                 (if __tmp113179
                     __tmp113179
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__fields113170
               (let ((__tmp113180
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'fields))))
                 (if __tmp113180
                     __tmp113180
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__final?113171
               (let ((__tmp113181
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'final?))))
                 (if __tmp113181
                     __tmp113181
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods113172
               (let ((__tmp113182
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113162 'methods))))
                 (if __tmp113182
                     __tmp113182
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods))))))
          (lambda _g113291_
            (let ((_g113290_
                   (let () (declare (not safe)) (##length _g113291_))))
              (cond ((let () (declare (not safe)) (##fx= _g113290_ 8))
                     (apply (lambda (_self112873_
                                     _id112874_
                                     _super112875_
                                     _slots112876_
                                     _ctor-method112877_
                                     _struct?112878_
                                     _final?112879_
                                     _metaclass112880_)
                              (let _lp112882_ ((_rest112884_ _super112875_))
                                (let* ((_rest112885112893_ _rest112884_)
                                       (_else112887112901_ (lambda () '#!void))
                                       (_K112889112907_
                                        (lambda (_rest112904_ _super-id112905_)
                                          (if (##structure-ref
                                               (let ((__tmp113294
                                                      (let ((__tmp113295
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id112874_ '()))))
                (declare (not safe))
                (cons '!class __tmp113295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113294
                                                  _super-id112905_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113292
                                                     (let ((__tmp113293
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id112874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113292
                                                 _super-id112905_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp112882_ _rest112904_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest112885112893_))
                                      (let ((_hd112890112910_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest112885112893_)))
                                            (_tl112891112912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest112885112893_))))
                                        (let* ((_super-id112915_
                                                _hd112890112910_)
                                               (_rest112917_ _tl112891112912_))
                                          (declare (not safe))
                                          (_K112889112907_
                                           _rest112917_
                                           _super-id112915_)))
                                      '#!void)))
                              (let* ((_ctor-method112967_
                                      (let ((_$e112919_ _ctor-method112877_))
                                        (if _$e112919_
                                            _$e112919_
                                            (let _lp112922_ ((_rest112924_
                                                              _super112875_)
                                                             (_method112925_
                                                              '#f))
                                              (let* ((_rest112926112934_
                                                      _rest112924_)
                                                     (_else112928112942_
                                                      (lambda ()
                                                        _method112925_))
                                                     (_K112930112955_
                                                      (lambda (_rest112945_
                                                               _super-id112946_)
                                                        (let* ((_klass112948_
                                                                (let ((__tmp113296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113297
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112874_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113297))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113296
                           _super-id112946_)))
                       (_$e112950_
                        (##structure-ref _klass112948_ '6 gxc#!class::t '#f)))
                  (if _$e112950_
                      ((lambda (_ctor-method112953_)
                         (if _method112925_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method112953_ _method112925_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp112922_
                                    _rest112945_
                                    _ctor-method112953_))
                                 (let ((__tmp113298
                                        (let ((__tmp113299
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112874_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113299))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113298
                                    _method112925_
                                    _ctor-method112953_)))
                             (let ()
                               (declare (not safe))
                               (_lp112922_ _rest112945_ _ctor-method112953_))))
                       _$e112950_)
                      (let ()
                        (declare (not safe))
                        (_lp112922_ _rest112945_ _method112925_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest112926112934_))
                                                    (let ((_hd112931112958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest112926112934_)))
                                                          (_tl112932112960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest112926112934_))))
                                                      (let* ((_super-id112963_
                                                              _hd112931112958_)
                                                             (_rest112965_
                                                              _tl112932112960_))
                                                        (declare (not safe))
                                                        (_K112930112955_
                                                         _rest112965_
                                                         _super-id112963_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else112928112942_))))))))
                                     (_g113300_
                                      (let ((__tmp113305
                                             (lambda (_klass-id112969_)
                                               (let ((__tmp113306
                                                      (##structure-ref
                                                       (let ((__tmp113307
                                                              (let ((__tmp113308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id112874_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113308))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113307 _klass-id112969_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id112969_
                                                       __tmp113306))))
                                            (__tmp113302
                                             (lambda (_klass-id112971_)
                                               (##structure-ref
                                                (let ((__tmp113303
                                                       (let ((__tmp113304
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id112874_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113303
                                                   _klass-id112971_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super112875_
                                         'get-precedence-list:
                                         __tmp113305
                                         'struct:
                                         __tmp113302
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113301_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113300_)
                                               (##vector-length _g113300_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113301_ 2)))
                                        (error "Context expects 2 values"
                                               _g113301_)))
                                  (let ((_precedence-list112973_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113300_ 0)))
                                        (_base-struct112974_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113300_ 1))))
                                    (let ((_fields112976_
                                           (let ((__tmp113309
                                                  (let ((__tmp113310
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id112874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113310))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113309
                                              _base-struct112974_
                                              _precedence-list112973_
                                              _slots112876_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _id112874_
                                         __id113164
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _super112875_
                                         __super113168
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _precedence-list112973_
                                         __precedence-list113167
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _slots112876_
                                         __slots113163
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _fields112976_
                                         __fields113170
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _ctor-method112967_
                                         __constructor113165
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _struct?112878_
                                         __struct?113166
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _final?112879_
                                         __final?113171
                                         __t113162
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112873_
                                         _metaclass112880_
                                         __metaclass113169
                                         __t113162
                                         '#f)))))))
                            _g113291_))
                    ((let () (declare (not safe)) (##fx= _g113290_ 11))
                     (apply (lambda (_self112979_
                                     _id112980_
                                     _super112981_
                                     _precedence-list112982_
                                     _slots112983_
                                     _fields112984_
                                     _constructor112985_
                                     _struct?112986_
                                     _final?112987_
                                     _metaclass112988_
                                     _methods112989_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _id112980_
                                 __id113164
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _super112981_
                                 __super113168
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _precedence-list112982_
                                 __precedence-list113167
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _slots112983_
                                 __slots113163
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _fields112984_
                                 __fields113170
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _constructor112985_
                                 __constructor113165
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _struct?112986_
                                 __struct?113166
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _final?112987_
                                 __final?113171
                                 __t113162
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112979_
                                 _metaclass112988_
                                 __metaclass113169
                                 __t113162
                                 '#f))
                              (if _methods112989_
                                  (let ((__tmp113311
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods112989_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self112979_
                                     __tmp113311
                                     __methods113172
                                     __t113162
                                     '#f))
                                  '#!void))
                            _g113291_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113291_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where112725_
               _base-struct112726_
               _precedence-list112727_
               _direct-slots112728_)
        (let* ((_base-fields112730_
                (if _base-struct112726_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where112725_
                        _base-struct112726_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields112732_ (reverse _base-fields112730_))
               (_seen-slots112740_
                (let ((_tab112734_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g112735112737_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab112734_ _g112735112737_ '#t)))
                   _base-fields112730_)
                  _tab112734_))
               (_process-slot112744_
                (lambda (_slot112742_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots112740_ _slot112742_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots112740_ _slot112742_ '#t))
                        (set! _r-fields112732_
                              (let ()
                                (declare (not safe))
                                (cons _slot112742_ _r-fields112732_))))))))
          (for-each
           (lambda (_mixin112747_)
             (let ((_klass112749_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where112725_
                       _mixin112747_))))
               (if (##structure-ref _klass112749_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot112744_
                    (##structure-ref _klass112749_ '5 gxc#!class::t '#f)))))
           _precedence-list112727_)
          (for-each _process-slot112744_ _direct-slots112728_)
          (reverse _r-fields112732_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass112684_ _slot112685_)
        (let _lp112687_ ((_rest112689_
                          (##structure-ref _klass112684_ '5 gxc#!class::t '#f))
                         (_offset112690_ '1))
          (let* ((_rest112691112699_ _rest112689_)
                 (_else112693112707_
                  (lambda ()
                    (let ((__tmp113313
                           (##structure-ref _klass112684_ '1 gxc#!type::t '#f))
                          (__tmp113312
                           (##structure-ref
                            _klass112684_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113313
                       __tmp113312
                       _slot112685_))))
                 (_K112695112713_
                  (lambda (_rest112710_ _s112711_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s112711_ _slot112685_))
                        _offset112690_
                        (let ((__tmp113314
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset112690_ '1))))
                          (declare (not safe))
                          (_lp112687_ _rest112710_ __tmp113314))))))
            (if (let () (declare (not safe)) (##pair? _rest112691112699_))
                (let ((_hd112696112716_
                       (let ()
                         (declare (not safe))
                         (##car _rest112691112699_)))
                      (_tl112697112718_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112691112699_))))
                  (let* ((_s112721_ _hd112696112716_)
                         (_rest112723_ _tl112697112718_))
                    (declare (not safe))
                    (_K112695112713_ _rest112723_ _s112721_)))
                (let () (declare (not safe)) (_else112693112707_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass112642_ _slot112643_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass112642_ _slot112643_))
            _klass112642_
            (let _lp112645_ ((_rest112647_
                              (##structure-ref
                               _klass112642_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest112648112656_ _rest112647_)
                     (_else112650112664_ (lambda () '#f))
                     (_K112652112672_
                      (lambda (_rest112667_ _super112668_)
                        (let ((_super-class112670_
                               (let ((__tmp113315
                                      (let ((__tmp113316
                                             (let ((__tmp113318
                                                    (##structure-ref
                                                     _klass112642_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113317
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot112643_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113318
                                                     __tmp113317))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113316))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113315
                                  _super112668_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class112670_
                                 _slot112643_))
                              _super-class112670_
                              (let ()
                                (declare (not safe))
                                (_lp112645_ _rest112667_)))))))
                (if (let () (declare (not safe)) (##pair? _rest112648112656_))
                    (let ((_hd112653112675_
                           (let ()
                             (declare (not safe))
                             (##car _rest112648112656_)))
                          (_tl112654112677_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest112648112656_))))
                      (let* ((_super112680_ _hd112653112675_)
                             (_rest112682_ _tl112654112677_))
                        (declare (not safe))
                        (_K112652112672_ _rest112682_ _super112680_)))
                    (let () (declare (not safe)) (_else112650112664_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass112639_ _slot112640_)
        (if (##structure-ref _klass112639_ '7 gxc#!class::t '#f)
            (memq _slot112640_
                  (##structure-ref _klass112639_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self112636_ _id112637_)
        (##structure-set! _self112636_ _id112637_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t113183)
        (let ((__id113184
               (let ((__tmp113185
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113183 'id))))
                 (if __tmp113185
                     __tmp113185
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112636_ _id112637_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112636_
               _id112637_
               __id113184
               __t113183
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
      (lambda (_self112511_ _id112512_)
        (##structure-set! _self112511_ _id112512_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t113186)
        (let ((__id113187
               (let ((__tmp113188
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113186 'id))))
                 (if __tmp113188
                     __tmp113188
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112511_ _id112512_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112511_
               _id112512_
               __id113187
               __t113186
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
      (lambda (_self112384_ _id112385_ _slot112386_ _checked?112387_)
        (##structure-set! _self112384_ _id112385_ '1 gxc#!type::t '#f)
        (##structure-set! _self112384_ _slot112386_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self112384_
         _checked?112387_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t113189)
        (let ((__id113190
               (let ((__tmp113193
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113189 'id))))
                 (if __tmp113193
                     __tmp113193
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113191
               (let ((__tmp113194
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113189 'slot))))
                 (if __tmp113194
                     __tmp113194
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?113192
               (let ((__tmp113195
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113189 'checked?))))
                 (if __tmp113195
                     __tmp113195
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self112384_ _id112385_ _slot112386_ _checked?112387_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112384_
               _id112385_
               __id113190
               __t113189
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112384_
               _slot112386_
               __slot113191
               __t113189
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112384_
               _checked?112387_
               __checked?113192
               __t113189
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
      (lambda (_self112257_ _id112258_ _slot112259_ _checked?112260_)
        (##structure-set! _self112257_ _id112258_ '1 gxc#!type::t '#f)
        (##structure-set! _self112257_ _slot112259_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112257_
         _checked?112260_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t113196)
        (let ((__checked?113197
               (let ((__tmp113200
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113196 'checked?))))
                 (if __tmp113200
                     __tmp113200
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__id113198
               (let ((__tmp113201
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113196 'id))))
                 (if __tmp113201
                     __tmp113201
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113199
               (let ((__tmp113202
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113196 'slot))))
                 (if __tmp113202
                     __tmp113202
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self112257_ _id112258_ _slot112259_ _checked?112260_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112257_
               _id112258_
               __id113198
               __t113196
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112257_
               _slot112259_
               __slot113199
               __t113196
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112257_
               _checked?112260_
               __checked?113197
               __t113196
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
      (lambda (_self112101_
               _id112102_
               _arity112103_
               _dispatch112104_
               _inline112105_
               _typedecl112106_)
        (if (let ((__tmp113325
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112101_))))
              (declare (not safe))
              (##fx< '5 __tmp113325))
            (begin
              (let ((__tmp113320
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112101_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112101_
                 _id112102_
                 '1
                 __tmp113320
                 '#f))
              (let ((__tmp113321
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112101_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112101_
                 _arity112103_
                 '2
                 __tmp113321
                 '#f))
              (let ((__tmp113322
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112101_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112101_
                 _dispatch112104_
                 '3
                 __tmp113322
                 '#f))
              (let ((__tmp113323
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112101_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112101_
                 _inline112105_
                 '4
                 __tmp113323
                 '#f))
              (let ((__tmp113324
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112101_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112101_
                 _typedecl112106_
                 '5
                 __tmp113324
                 '#f)))
            (let ((__tmp113319
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112101_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112101_
                     '5
                     __tmp113319)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112111_ _id112112_ _arity112113_ _dispatch112114_)
        (let* ((_inline112116_ '#f) (_typedecl112118_ '#f))
          (if (let ((__tmp113332
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112111_))))
                (declare (not safe))
                (##fx< '5 __tmp113332))
              (begin
                (let ((__tmp113327
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112111_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112111_
                   _id112112_
                   '1
                   __tmp113327
                   '#f))
                (let ((__tmp113328
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112111_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112111_
                   _arity112113_
                   '2
                   __tmp113328
                   '#f))
                (let ((__tmp113329
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112111_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112111_
                   _dispatch112114_
                   '3
                   __tmp113329
                   '#f))
                (let ((__tmp113330
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112111_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112111_
                   _inline112116_
                   '4
                   __tmp113330
                   '#f))
                (let ((__tmp113331
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112111_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112111_
                   _typedecl112118_
                   '5
                   __tmp113331
                   '#f)))
              (let ((__tmp113326
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112111_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112111_
                       '5
                       __tmp113326))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112120_
               _id112121_
               _arity112122_
               _dispatch112123_
               _inline112124_)
        (let ((_typedecl112126_ '#f))
          (if (let ((__tmp113339
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112120_))))
                (declare (not safe))
                (##fx< '5 __tmp113339))
              (begin
                (let ((__tmp113334
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112120_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112120_
                   _id112121_
                   '1
                   __tmp113334
                   '#f))
                (let ((__tmp113335
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112120_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112120_
                   _arity112122_
                   '2
                   __tmp113335
                   '#f))
                (let ((__tmp113336
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112120_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112120_
                   _dispatch112123_
                   '3
                   __tmp113336
                   '#f))
                (let ((__tmp113337
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112120_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112120_
                   _inline112124_
                   '4
                   __tmp113337
                   '#f))
                (let ((__tmp113338
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112120_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112120_
                   _typedecl112126_
                   '5
                   __tmp113338
                   '#f)))
              (let ((__tmp113333
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112120_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112120_
                       '5
                       __tmp113333))))))
    (define gxc#!lambda:::init!
      (lambda _g113341_
        (let ((_g113340_ (let () (declare (not safe)) (##length _g113341_))))
          (cond ((let () (declare (not safe)) (##fx= _g113340_ 4))
                 (apply (lambda (_self112111_
                                 _id112112_
                                 _arity112113_
                                 _dispatch112114_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112111_
                             _id112112_
                             _arity112113_
                             _dispatch112114_)))
                        _g113341_))
                ((let () (declare (not safe)) (##fx= _g113340_ 5))
                 (apply (lambda (_self112120_
                                 _id112121_
                                 _arity112122_
                                 _dispatch112123_
                                 _inline112124_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112120_
                             _id112121_
                             _arity112122_
                             _dispatch112123_
                             _inline112124_)))
                        _g113341_))
                ((let () (declare (not safe)) (##fx= _g113340_ 6))
                 (apply (lambda (_self112128_
                                 _id112129_
                                 _arity112130_
                                 _dispatch112131_
                                 _inline112132_
                                 _typedecl112133_)
                          (if (let ((__tmp113348
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112128_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113348))
                              (begin
                                (let ((__tmp113343
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112128_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112128_
                                   _id112129_
                                   '1
                                   __tmp113343
                                   '#f))
                                (let ((__tmp113344
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112128_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112128_
                                   _arity112130_
                                   '2
                                   __tmp113344
                                   '#f))
                                (let ((__tmp113345
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112128_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112128_
                                   _dispatch112131_
                                   '3
                                   __tmp113345
                                   '#f))
                                (let ((__tmp113346
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112128_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112128_
                                   _inline112132_
                                   '4
                                   __tmp113346
                                   '#f))
                                (let ((__tmp113347
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112128_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112128_
                                   _typedecl112133_
                                   '5
                                   __tmp113347
                                   '#f)))
                              (let ((__tmp113342
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112128_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112128_
                                       '5
                                       __tmp113342))))
                        _g113341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113341_))))))
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
      (lambda (_self111853_ . _args111854_)
        (apply struct-instance-init! _self111853_ _args111854_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type111728_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111728_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type111728_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass111721_)
        (let ((_$e111723_
               (##structure-ref _klass111721_ '10 gxc#!class::t '#f)))
          (if _$e111723_
              _$e111723_
              (let ((_tab111726_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass111721_
                 _tab111726_
                 '10
                 gxc#!class::t
                 '#f)
                _tab111726_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass111712_ _method111713_)
        (let ((_tab111714111716_
               (##structure-ref _klass111712_ '10 gxc#!class::t '#f)))
          (if _tab111714111716_
              (let ((_tab111719_ _tab111714111716_))
                (declare (not safe))
                (hash-get _tab111719_ _method111713_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type111709_ _method111710_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111709_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type111709_ _method111710_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym111693_ _type111694_ _local?111695_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111694_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym111693_
                     _type111694_)))
        (let ((__tmp113349
               (let () (declare (not safe)) (struct->list _type111694_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym111693_ '" " __tmp113349))
        (let ((__tmp113350
               (if _local?111695_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113350 _sym111693_ _type111694_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym111700_ _type111701_)
        (let ((_local?111703_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym111700_
           _type111701_
           _local?111703_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113352_
        (let ((_g113351_ (let () (declare (not safe)) (##length _g113352_))))
          (cond ((let () (declare (not safe)) (##fx= _g113351_ 2))
                 (apply (lambda (_sym111700_ _type111701_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym111700_
                             _type111701_)))
                        _g113352_))
                ((let () (declare (not safe)) (##fx= _g113351_ 3))
                 (apply (lambda (_sym111705_ _type111706_ _local?111707_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym111705_
                             _type111706_
                             _local?111707_)))
                        _g113352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113352_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym111679_ _local?111680_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym111679_))
        (let ((__tmp113353
               (if _local?111680_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113353 _sym111679_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym111685_)
        (let ((_local?111687_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym111685_ _local?111687_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113355_
        (let ((_g113354_ (let () (declare (not safe)) (##length _g113355_))))
          (cond ((let () (declare (not safe)) (##fx= _g113354_ 1))
                 (apply (lambda (_sym111685_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym111685_)))
                        _g113355_))
                ((let () (declare (not safe)) (##fx= _g113354_ 2))
                 (apply (lambda (_sym111689_ _local?111690_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym111689_
                             _local?111690_)))
                        _g113355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113355_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t111652_ _method111653_ _sym111654_ _rebind?111655_)
        (let* ((_type111657_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t111652_)))
               (_$e111659_
                (let () (declare (not safe)) (gxc#!type-vtab _type111657_))))
          (if _$e111659_
              ((lambda (_vtab111662_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab111662_ _method111653_))
                     (if _rebind?111655_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t111652_
                              '" "
                              _method111653_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab111662_
                              _method111653_
                              _sym111654_)))
                         (let ((__tmp113360
                                (let ((__tmp113361
                                       (let ((__tmp113362
                                              (let ((__tmp113363
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym111654_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method111653_
                                                      __tmp113363))))
                                         (declare (not safe))
                                         (cons _type-t111652_ __tmp113362))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp113361))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp113360
                            _method111653_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t111652_
                          '" "
                          _method111653_
                          '" => "
                          _sym111654_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab111662_
                          _method111653_
                          _sym111654_)))))
               _$e111659_)
              (if (let () (declare (not safe)) (not _type111657_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t111652_))
                  (let ((__tmp113356
                         (let ((__tmp113357
                                (let ((__tmp113358
                                       (let ((__tmp113359
                                              (let ()
                                                (declare (not safe))
                                                (cons _method111653_ '()))))
                                         (declare (not safe))
                                         (cons _sym111654_ __tmp113359))))
                                  (declare (not safe))
                                  (cons _type-t111652_ __tmp113358))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113357))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113356
                     _type111657_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t111667_ _method111668_ _sym111669_)
        (let ((_rebind?111671_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t111667_
           _method111668_
           _sym111669_
           _rebind?111671_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113365_
        (let ((_g113364_ (let () (declare (not safe)) (##length _g113365_))))
          (cond ((let () (declare (not safe)) (##fx= _g113364_ 3))
                 (apply (lambda (_type-t111667_ _method111668_ _sym111669_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t111667_
                             _method111668_
                             _sym111669_)))
                        _g113365_))
                ((let () (declare (not safe)) (##fx= _g113364_ 4))
                 (apply (lambda (_type-t111673_
                                 _method111674_
                                 _sym111675_
                                 _rebind?111676_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t111673_
                             _method111674_
                             _sym111675_
                             _rebind?111676_)))
                        _g113365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113365_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym111640_)
        (let ((_$e111648_
               (let ((_ht111641111643_ (gxc#current-compile-local-type)))
                 (if _ht111641111643_
                     (let ((_ht111646_ _ht111641111643_))
                       (declare (not safe))
                       (hash-get _ht111646_ _sym111640_))
                     '#f))))
          (if _$e111648_
              _$e111648_
              (let ((__tmp113366
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113366 _sym111640_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym111632_)
        (let ((_type111633111635_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym111632_))))
          (if _type111633111635_
              (let ((_type111638_ _type111633111635_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type111638_ 'gxc#!alias::t))
                    (let ((__tmp113367
                           (##structure-ref _type111638_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113367))
                    _type111638_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where111624_ _klass-id111625_)
        (let ((_$e111627_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id111625_))))
          (if _$e111627_
              ((lambda (_klass111630_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass111630_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where111624_
                        _klass-id111625_
                        _klass111630_)))
                 _klass111630_)
               _$e111627_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where111624_
                 _klass-id111625_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t111621_ _method111622_)
        (let ((__tmp113368
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t111621_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113368 _method111622_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym111619_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym111619_))
        (let ((__tmp113369
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113369 _sym111619_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym111617_)
        (let ((__tmp113370
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113370 _sym111617_))))
    (define gxc#identifier-symbol
      (lambda (_stx111615_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx111615_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx111615_))
            (let () (declare (not safe)) (gx#stx-e _stx111615_)))))))
