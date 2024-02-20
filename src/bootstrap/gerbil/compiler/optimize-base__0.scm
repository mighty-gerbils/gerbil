(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708387689)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp113233 (list))
            (__tmp113231
             (let ((__tmp113232
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113232 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp113233
         '(type ssxi methods)
         __tmp113231
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args113172_
        (apply make-instance gxc#optimizer-info::t _$args113172_)))
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
      (lambda (_self113170_)
        (if (let ((__tmp113241
                   (let ()
                     (declare (not safe))
                     (##structure-length _self113170_))))
              (declare (not safe))
              (##fx< '3 __tmp113241))
            (begin
              (let ((__tmp113236
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113235
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113170_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113170_
                 __tmp113236
                 '1
                 __tmp113235
                 '#f))
              (let ((__tmp113238
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113237
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113170_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113170_
                 __tmp113238
                 '2
                 __tmp113237
                 '#f))
              (let ((__tmp113240
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113239
                     (let ()
                       (declare (not safe))
                       (##structure-type _self113170_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self113170_
                 __tmp113240
                 '3
                 __tmp113239
                 '#f)))
            (let ((__tmp113234
                   (let ()
                     (declare (not safe))
                     (##vector-length _self113170_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self113170_
                     '3
                     __tmp113234)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp113244 (list))
            (__tmp113242
             (let ((__tmp113243
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113243 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp113244
         '(id)
         __tmp113242
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args113045_ (apply make-instance gxc#!type::t _$args113045_)))
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
      (let ((__tmp113247 (list gxc#!type::t))
            (__tmp113245
             (let ((__tmp113246
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113246 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp113247
         '()
         __tmp113245
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args113042_ (apply make-instance gxc#!alias::t _$args113042_)))
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
      (let ((__tmp113250 (list gxc#!type::t))
            (__tmp113248
             (let ((__tmp113249
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113249 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp113250
         '()
         __tmp113248
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args113039_
        (apply make-instance gxc#!procedure::t _$args113039_)))
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
      (let ((__tmp113253 (list gxc#!type::t))
            (__tmp113251
             (let ((__tmp113252
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113252 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp113253
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp113251
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args113036_ (apply make-instance gxc#!class::t _$args113036_)))
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
      (let ((__tmp113256 (list gxc#!procedure::t))
            (__tmp113254
             (let ((__tmp113255
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113255 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp113256
         '()
         __tmp113254
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args113033_
        (apply make-instance gxc#!predicate::t _$args113033_)))
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
      (let ((__tmp113259 (list gxc#!procedure::t))
            (__tmp113257
             (let ((__tmp113258
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113258 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp113259
         '()
         __tmp113257
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args113030_
        (apply make-instance gxc#!constructor::t _$args113030_)))
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
      (let ((__tmp113262 (list gxc#!procedure::t))
            (__tmp113260
             (let ((__tmp113261
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113261 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp113262
         '(slot checked?)
         __tmp113260
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args113027_
        (apply make-instance gxc#!accessor::t _$args113027_)))
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
      (let ((__tmp113265 (list gxc#!procedure::t))
            (__tmp113263
             (let ((__tmp113264
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113264 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp113265
         '(slot checked?)
         __tmp113263
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args113024_
        (apply make-instance gxc#!mutator::t _$args113024_)))
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
      (let ((__tmp113268 (list gxc#!procedure::t))
            (__tmp113266
             (let ((__tmp113267
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113267 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp113268
         '(arity dispatch inline inline-typedecl)
         __tmp113266
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args113021_
        (apply make-instance gxc#!lambda::t _$args113021_)))
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
      (let ((__tmp113271 (list gxc#!procedure::t))
            (__tmp113269
             (let ((__tmp113270
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113270 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp113271
         '(clauses)
         __tmp113269
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args113018_
        (apply make-instance gxc#!case-lambda::t _$args113018_)))
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
      (let ((__tmp113274 (list gxc#!procedure::t))
            (__tmp113272
             (let ((__tmp113273
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113273 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp113274
         '(table dispatch)
         __tmp113272
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args113015_
        (apply make-instance gxc#!kw-lambda::t _$args113015_)))
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
      (let ((__tmp113277 (list gxc#!procedure::t))
            (__tmp113275
             (let ((__tmp113276
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113276 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp113277
         '(keys main)
         __tmp113275
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args113012_
        (apply make-instance gxc#!kw-lambda-primary::t _$args113012_)))
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
      (let ((__tmp113278 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp113278
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args113009_
        (apply make-instance gxc#!primitive::t _$args113009_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp113279 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp113279
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args113006_
        (apply make-instance gxc#!primitive-lambda::t _$args113006_)))
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
      (let ((__tmp113280 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp113280
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args113003_
        (apply make-instance gxc#!primitive-case-lambda::t _$args113003_)))
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
      (lambda (_self112885_
               _id112886_
               _super112887_
               _slots112888_
               _ctor-method112889_
               _struct?112890_
               _final?112891_
               _metaclass112892_)
        (let _lp112894_ ((_rest112896_ _super112887_))
          (let* ((_rest112897112905_ _rest112896_)
                 (_else112899112913_ (lambda () '#!void))
                 (_K112901112919_
                  (lambda (_rest112916_ _super-id112917_)
                    (if (##structure-ref
                         (let ((__tmp113283
                                (let ((__tmp113284
                                       (let ()
                                         (declare (not safe))
                                         (cons _id112886_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp113284))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp113283
                            _super-id112917_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp113281
                               (let ((__tmp113282
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112886_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113282))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp113281
                           _super-id112917_))
                        '#!void)
                    (let () (declare (not safe)) (_lp112894_ _rest112916_)))))
            (if (let () (declare (not safe)) (##pair? _rest112897112905_))
                (let ((_hd112902112922_
                       (let ()
                         (declare (not safe))
                         (##car _rest112897112905_)))
                      (_tl112903112924_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112897112905_))))
                  (let* ((_super-id112927_ _hd112902112922_)
                         (_rest112929_ _tl112903112924_))
                    (declare (not safe))
                    (_K112901112919_ _rest112929_ _super-id112927_)))
                '#!void)))
        (let* ((_ctor-method112979_
                (let ((_$e112931_ _ctor-method112889_))
                  (if _$e112931_
                      _$e112931_
                      (let _lp112934_ ((_rest112936_ _super112887_)
                                       (_method112937_ '#f))
                        (let* ((_rest112938112946_ _rest112936_)
                               (_else112940112954_ (lambda () _method112937_))
                               (_K112942112967_
                                (lambda (_rest112957_ _super-id112958_)
                                  (let* ((_klass112960_
                                          (let ((__tmp113285
                                                 (let ((__tmp113286
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id112886_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp113286))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp113285
                                             _super-id112958_)))
                                         (_$e112962_
                                          (##structure-ref
                                           _klass112960_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e112962_
                                        ((lambda (_ctor-method112965_)
                                           (if _method112937_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method112965_
                                                          _method112937_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp112934_
                                                      _rest112957_
                                                      _ctor-method112965_))
                                                   (let ((__tmp113287
                                                          (let ((__tmp113288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id112886_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp113288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp113287
                                                      _method112937_
                                                      _ctor-method112965_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112934_
                                                  _rest112957_
                                                  _ctor-method112965_))))
                                         _$e112962_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp112934_
                                           _rest112957_
                                           _method112937_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest112938112946_))
                              (let ((_hd112943112970_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest112938112946_)))
                                    (_tl112944112972_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest112938112946_))))
                                (let* ((_super-id112975_ _hd112943112970_)
                                       (_rest112977_ _tl112944112972_))
                                  (declare (not safe))
                                  (_K112942112967_
                                   _rest112977_
                                   _super-id112975_)))
                              (let ()
                                (declare (not safe))
                                (_else112940112954_))))))))
               (_g113289_
                (let ((__tmp113294
                       (lambda (_klass-id112981_)
                         (let ((__tmp113295
                                (##structure-ref
                                 (let ((__tmp113296
                                        (let ((__tmp113297
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112886_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113297))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp113296
                                    _klass-id112981_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id112981_ __tmp113295))))
                      (__tmp113291
                       (lambda (_klass-id112983_)
                         (##structure-ref
                          (let ((__tmp113292
                                 (let ((__tmp113293
                                        (let ()
                                          (declare (not safe))
                                          (cons _id112886_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp113293))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp113292
                             _klass-id112983_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super112887_
                   'get-precedence-list:
                   __tmp113294
                   'struct:
                   __tmp113291
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g113290_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g113289_)
                         (##vector-length _g113289_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g113290_ 2)))
                  (error "Context expects 2 values" _g113290_)))
            (let ((_precedence-list112985_
                   (let () (declare (not safe)) (##vector-ref _g113289_ 0)))
                  (_base-struct112986_
                   (let () (declare (not safe)) (##vector-ref _g113289_ 1))))
              (let ((_fields112988_
                     (let ((__tmp113298
                            (let ((__tmp113299
                                   (let ()
                                     (declare (not safe))
                                     (cons _id112886_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp113299))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp113298
                        _base-struct112986_
                        _precedence-list112985_
                        _slots112888_))))
                (##structure-set! _self112885_ _id112886_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self112885_
                 _super112887_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _precedence-list112985_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _slots112888_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _fields112988_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _ctor-method112979_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _struct?112890_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _final?112891_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self112885_
                 _metaclass112892_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self112991_
               _id112992_
               _super112993_
               _precedence-list112994_
               _slots112995_
               _fields112996_
               _constructor112997_
               _struct?112998_
               _final?112999_
               _metaclass113000_
               _methods113001_)
        (##structure-set! _self112991_ _id112992_ '1 gxc#!type::t '#f)
        (##structure-set! _self112991_ _super112993_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self112991_
         _precedence-list112994_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self112991_ _slots112995_ '4 gxc#!class::t '#f)
        (##structure-set! _self112991_ _fields112996_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self112991_
         _constructor112997_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self112991_ _struct?112998_ '7 gxc#!class::t '#f)
        (##structure-set! _self112991_ _final?112999_ '8 gxc#!class::t '#f)
        (##structure-set! _self112991_ _metaclass113000_ '9 gxc#!class::t '#f)
        (if _methods113001_
            (##structure-set!
             _self112991_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods113001_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g113301_
        (let ((_g113300_ (let () (declare (not safe)) (##length _g113301_))))
          (cond ((let () (declare (not safe)) (##fx= _g113300_ 8))
                 (apply (lambda (_self112885_
                                 _id112886_
                                 _super112887_
                                 _slots112888_
                                 _ctor-method112889_
                                 _struct?112890_
                                 _final?112891_
                                 _metaclass112892_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self112885_
                             _id112886_
                             _super112887_
                             _slots112888_
                             _ctor-method112889_
                             _struct?112890_
                             _final?112891_
                             _metaclass112892_)))
                        _g113301_))
                ((let () (declare (not safe)) (##fx= _g113300_ 11))
                 (apply (lambda (_self112991_
                                 _id112992_
                                 _super112993_
                                 _precedence-list112994_
                                 _slots112995_
                                 _fields112996_
                                 _constructor112997_
                                 _struct?112998_
                                 _final?112999_
                                 _metaclass113000_
                                 _methods113001_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self112991_
                             _id112992_
                             _super112993_
                             _precedence-list112994_
                             _slots112995_
                             _fields112996_
                             _constructor112997_
                             _struct?112998_
                             _final?112999_
                             _metaclass113000_
                             _methods113001_)))
                        _g113301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g113301_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t113174)
        (let ((__final?113175
               (let ((__tmp113185
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'final?))))
                 (if __tmp113185
                     __tmp113185
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__methods113176
               (let ((__tmp113186
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'methods))))
                 (if __tmp113186
                     __tmp113186
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__fields113177
               (let ((__tmp113187
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'fields))))
                 (if __tmp113187
                     __tmp113187
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass113178
               (let ((__tmp113188
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'metaclass))))
                 (if __tmp113188
                     __tmp113188
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass)))))
              (__super113179
               (let ((__tmp113189
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'super))))
                 (if __tmp113189
                     __tmp113189
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__precedence-list113180
               (let ((__tmp113190
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'precedence-list))))
                 (if __tmp113190
                     __tmp113190
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?113181
               (let ((__tmp113191
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'struct?))))
                 (if __tmp113191
                     __tmp113191
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__constructor113182
               (let ((__tmp113192
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'constructor))))
                 (if __tmp113192
                     __tmp113192
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__id113183
               (let ((__tmp113193
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'id))))
                 (if __tmp113193
                     __tmp113193
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slots113184
               (let ((__tmp113194
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113174 'slots))))
                 (if __tmp113194
                     __tmp113194
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots))))))
          (lambda _g113303_
            (let ((_g113302_
                   (let () (declare (not safe)) (##length _g113303_))))
              (cond ((let () (declare (not safe)) (##fx= _g113302_ 8))
                     (apply (lambda (_self112885_
                                     _id112886_
                                     _super112887_
                                     _slots112888_
                                     _ctor-method112889_
                                     _struct?112890_
                                     _final?112891_
                                     _metaclass112892_)
                              (let _lp112894_ ((_rest112896_ _super112887_))
                                (let* ((_rest112897112905_ _rest112896_)
                                       (_else112899112913_ (lambda () '#!void))
                                       (_K112901112919_
                                        (lambda (_rest112916_ _super-id112917_)
                                          (if (##structure-ref
                                               (let ((__tmp113306
                                                      (let ((__tmp113307
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id112886_ '()))))
                (declare (not safe))
                (cons '!class __tmp113307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp113306
                                                  _super-id112917_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp113304
                                                     (let ((__tmp113305
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id112886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp113305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp113304
                                                 _super-id112917_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp112894_ _rest112916_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest112897112905_))
                                      (let ((_hd112902112922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest112897112905_)))
                                            (_tl112903112924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest112897112905_))))
                                        (let* ((_super-id112927_
                                                _hd112902112922_)
                                               (_rest112929_ _tl112903112924_))
                                          (declare (not safe))
                                          (_K112901112919_
                                           _rest112929_
                                           _super-id112927_)))
                                      '#!void)))
                              (let* ((_ctor-method112979_
                                      (let ((_$e112931_ _ctor-method112889_))
                                        (if _$e112931_
                                            _$e112931_
                                            (let _lp112934_ ((_rest112936_
                                                              _super112887_)
                                                             (_method112937_
                                                              '#f))
                                              (let* ((_rest112938112946_
                                                      _rest112936_)
                                                     (_else112940112954_
                                                      (lambda ()
                                                        _method112937_))
                                                     (_K112942112967_
                                                      (lambda (_rest112957_
                                                               _super-id112958_)
                                                        (let* ((_klass112960_
                                                                (let ((__tmp113308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113309
                                      (let ()
                                        (declare (not safe))
                                        (cons _id112886_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp113309))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp113308
                           _super-id112958_)))
                       (_$e112962_
                        (##structure-ref _klass112960_ '6 gxc#!class::t '#f)))
                  (if _$e112962_
                      ((lambda (_ctor-method112965_)
                         (if _method112937_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method112965_ _method112937_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp112934_
                                    _rest112957_
                                    _ctor-method112965_))
                                 (let ((__tmp113310
                                        (let ((__tmp113311
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id112886_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp113311))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp113310
                                    _method112937_
                                    _ctor-method112965_)))
                             (let ()
                               (declare (not safe))
                               (_lp112934_ _rest112957_ _ctor-method112965_))))
                       _$e112962_)
                      (let ()
                        (declare (not safe))
                        (_lp112934_ _rest112957_ _method112937_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest112938112946_))
                                                    (let ((_hd112943112970_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest112938112946_)))
                                                          (_tl112944112972_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest112938112946_))))
                                                      (let* ((_super-id112975_
                                                              _hd112943112970_)
                                                             (_rest112977_
                                                              _tl112944112972_))
                                                        (declare (not safe))
                                                        (_K112942112967_
                                                         _rest112977_
                                                         _super-id112975_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else112940112954_))))))))
                                     (_g113312_
                                      (let ((__tmp113317
                                             (lambda (_klass-id112981_)
                                               (let ((__tmp113318
                                                      (##structure-ref
                                                       (let ((__tmp113319
                                                              (let ((__tmp113320
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id112886_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp113320))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp113319 _klass-id112981_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id112981_
                                                       __tmp113318))))
                                            (__tmp113314
                                             (lambda (_klass-id112983_)
                                               (##structure-ref
                                                (let ((__tmp113315
                                                       (let ((__tmp113316
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id112886_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp113316))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp113315
                                                   _klass-id112983_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super112887_
                                         'get-precedence-list:
                                         __tmp113317
                                         'struct:
                                         __tmp113314
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g113313_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113312_)
                                               (##vector-length _g113312_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113313_ 2)))
                                        (error "Context expects 2 values"
                                               _g113313_)))
                                  (let ((_precedence-list112985_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113312_ 0)))
                                        (_base-struct112986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113312_ 1))))
                                    (let ((_fields112988_
                                           (let ((__tmp113321
                                                  (let ((__tmp113322
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id112886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp113322))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp113321
                                              _base-struct112986_
                                              _precedence-list112985_
                                              _slots112888_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _id112886_
                                         __id113183
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _super112887_
                                         __super113179
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _precedence-list112985_
                                         __precedence-list113180
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _slots112888_
                                         __slots113184
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _fields112988_
                                         __fields113177
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _ctor-method112979_
                                         __constructor113182
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _struct?112890_
                                         __struct?113181
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _final?112891_
                                         __final?113175
                                         __t113174
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self112885_
                                         _metaclass112892_
                                         __metaclass113178
                                         __t113174
                                         '#f)))))))
                            _g113303_))
                    ((let () (declare (not safe)) (##fx= _g113302_ 11))
                     (apply (lambda (_self112991_
                                     _id112992_
                                     _super112993_
                                     _precedence-list112994_
                                     _slots112995_
                                     _fields112996_
                                     _constructor112997_
                                     _struct?112998_
                                     _final?112999_
                                     _metaclass113000_
                                     _methods113001_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _id112992_
                                 __id113183
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _super112993_
                                 __super113179
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _precedence-list112994_
                                 __precedence-list113180
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _slots112995_
                                 __slots113184
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _fields112996_
                                 __fields113177
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _constructor112997_
                                 __constructor113182
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _struct?112998_
                                 __struct?113181
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _final?112999_
                                 __final?113175
                                 __t113174
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self112991_
                                 _metaclass113000_
                                 __metaclass113178
                                 __t113174
                                 '#f))
                              (if _methods113001_
                                  (let ((__tmp113323
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods113001_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self112991_
                                     __tmp113323
                                     __methods113176
                                     __t113174
                                     '#f))
                                  '#!void))
                            _g113303_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g113303_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where112737_
               _base-struct112738_
               _precedence-list112739_
               _direct-slots112740_)
        (let* ((_base-fields112742_
                (if _base-struct112738_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where112737_
                        _base-struct112738_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields112744_ (reverse _base-fields112742_))
               (_seen-slots112752_
                (let ((_tab112746_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g112747112749_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab112746_ _g112747112749_ '#t)))
                   _base-fields112742_)
                  _tab112746_))
               (_process-slot112756_
                (lambda (_slot112754_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots112752_ _slot112754_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots112752_ _slot112754_ '#t))
                        (set! _r-fields112744_
                              (let ()
                                (declare (not safe))
                                (cons _slot112754_ _r-fields112744_))))))))
          (for-each
           (lambda (_mixin112759_)
             (let ((_klass112761_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where112737_
                       _mixin112759_))))
               (if (##structure-ref _klass112761_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot112756_
                    (##structure-ref _klass112761_ '5 gxc#!class::t '#f)))))
           _precedence-list112739_)
          (for-each _process-slot112756_ _direct-slots112740_)
          (reverse _r-fields112744_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass112696_ _slot112697_)
        (let _lp112699_ ((_rest112701_
                          (##structure-ref _klass112696_ '5 gxc#!class::t '#f))
                         (_offset112702_ '1))
          (let* ((_rest112703112711_ _rest112701_)
                 (_else112705112719_
                  (lambda ()
                    (let ((__tmp113325
                           (##structure-ref _klass112696_ '1 gxc#!type::t '#f))
                          (__tmp113324
                           (##structure-ref
                            _klass112696_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp113325
                       __tmp113324
                       _slot112697_))))
                 (_K112707112725_
                  (lambda (_rest112722_ _s112723_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s112723_ _slot112697_))
                        _offset112702_
                        (let ((__tmp113326
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset112702_ '1))))
                          (declare (not safe))
                          (_lp112699_ _rest112722_ __tmp113326))))))
            (if (let () (declare (not safe)) (##pair? _rest112703112711_))
                (let ((_hd112708112728_
                       (let ()
                         (declare (not safe))
                         (##car _rest112703112711_)))
                      (_tl112709112730_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest112703112711_))))
                  (let* ((_s112733_ _hd112708112728_)
                         (_rest112735_ _tl112709112730_))
                    (declare (not safe))
                    (_K112707112725_ _rest112735_ _s112733_)))
                (let () (declare (not safe)) (_else112705112719_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass112654_ _slot112655_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass112654_ _slot112655_))
            _klass112654_
            (let _lp112657_ ((_rest112659_
                              (##structure-ref
                               _klass112654_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest112660112668_ _rest112659_)
                     (_else112662112676_ (lambda () '#f))
                     (_K112664112684_
                      (lambda (_rest112679_ _super112680_)
                        (let ((_super-class112682_
                               (let ((__tmp113327
                                      (let ((__tmp113328
                                             (let ((__tmp113330
                                                    (##structure-ref
                                                     _klass112654_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp113329
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot112655_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp113330
                                                     __tmp113329))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp113328))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp113327
                                  _super112680_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class112682_
                                 _slot112655_))
                              _super-class112682_
                              (let ()
                                (declare (not safe))
                                (_lp112657_ _rest112679_)))))))
                (if (let () (declare (not safe)) (##pair? _rest112660112668_))
                    (let ((_hd112665112687_
                           (let ()
                             (declare (not safe))
                             (##car _rest112660112668_)))
                          (_tl112666112689_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest112660112668_))))
                      (let* ((_super112692_ _hd112665112687_)
                             (_rest112694_ _tl112666112689_))
                        (declare (not safe))
                        (_K112664112684_ _rest112694_ _super112692_)))
                    (let () (declare (not safe)) (_else112662112676_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass112651_ _slot112652_)
        (if (##structure-ref _klass112651_ '7 gxc#!class::t '#f)
            (memq _slot112652_
                  (##structure-ref _klass112651_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self112648_ _id112649_)
        (##structure-set! _self112648_ _id112649_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t113195)
        (let ((__id113196
               (let ((__tmp113197
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113195 'id))))
                 (if __tmp113197
                     __tmp113197
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112648_ _id112649_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112648_
               _id112649_
               __id113196
               __t113195
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
      (lambda (_self112523_ _id112524_)
        (##structure-set! _self112523_ _id112524_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t113198)
        (let ((__id113199
               (let ((__tmp113200
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113198 'id))))
                 (if __tmp113200
                     __tmp113200
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112523_ _id112524_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112523_
               _id112524_
               __id113199
               __t113198
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
      (lambda (_self112396_ _id112397_ _slot112398_ _checked?112399_)
        (##structure-set! _self112396_ _id112397_ '1 gxc#!type::t '#f)
        (##structure-set! _self112396_ _slot112398_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self112396_
         _checked?112399_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t113201)
        (let ((__id113202
               (let ((__tmp113205
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113201 'id))))
                 (if __tmp113205
                     __tmp113205
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__slot113203
               (let ((__tmp113206
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113201 'slot))))
                 (if __tmp113206
                     __tmp113206
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__checked?113204
               (let ((__tmp113207
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113201 'checked?))))
                 (if __tmp113207
                     __tmp113207
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?))))))
          (lambda (_self112396_ _id112397_ _slot112398_ _checked?112399_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112396_
               _id112397_
               __id113202
               __t113201
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112396_
               _slot112398_
               __slot113203
               __t113201
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112396_
               _checked?112399_
               __checked?113204
               __t113201
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
      (lambda (_self112269_ _id112270_ _slot112271_ _checked?112272_)
        (##structure-set! _self112269_ _id112270_ '1 gxc#!type::t '#f)
        (##structure-set! _self112269_ _slot112271_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self112269_
         _checked?112272_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t113208)
        (let ((__checked?113209
               (let ((__tmp113212
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113208 'checked?))))
                 (if __tmp113212
                     __tmp113212
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot113210
               (let ((__tmp113213
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113208 'slot))))
                 (if __tmp113213
                     __tmp113213
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot)))))
              (__id113211
               (let ((__tmp113214
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t113208 'id))))
                 (if __tmp113214
                     __tmp113214
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self112269_ _id112270_ _slot112271_ _checked?112272_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112269_
               _id112270_
               __id113211
               __t113208
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112269_
               _slot112271_
               __slot113210
               __t113208
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self112269_
               _checked?112272_
               __checked?113209
               __t113208
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
      (lambda (_self112113_
               _id112114_
               _arity112115_
               _dispatch112116_
               _inline112117_
               _typedecl112118_)
        (if (let ((__tmp113337
                   (let ()
                     (declare (not safe))
                     (##structure-length _self112113_))))
              (declare (not safe))
              (##fx< '5 __tmp113337))
            (begin
              (let ((__tmp113332
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112113_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112113_
                 _id112114_
                 '1
                 __tmp113332
                 '#f))
              (let ((__tmp113333
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112113_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112113_
                 _arity112115_
                 '2
                 __tmp113333
                 '#f))
              (let ((__tmp113334
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112113_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112113_
                 _dispatch112116_
                 '3
                 __tmp113334
                 '#f))
              (let ((__tmp113335
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112113_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112113_
                 _inline112117_
                 '4
                 __tmp113335
                 '#f))
              (let ((__tmp113336
                     (let ()
                       (declare (not safe))
                       (##structure-type _self112113_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self112113_
                 _typedecl112118_
                 '5
                 __tmp113336
                 '#f)))
            (let ((__tmp113331
                   (let ()
                     (declare (not safe))
                     (##vector-length _self112113_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self112113_
                     '5
                     __tmp113331)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self112123_ _id112124_ _arity112125_ _dispatch112126_)
        (let* ((_inline112128_ '#f) (_typedecl112130_ '#f))
          (if (let ((__tmp113344
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112123_))))
                (declare (not safe))
                (##fx< '5 __tmp113344))
              (begin
                (let ((__tmp113339
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112123_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112123_
                   _id112124_
                   '1
                   __tmp113339
                   '#f))
                (let ((__tmp113340
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112123_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112123_
                   _arity112125_
                   '2
                   __tmp113340
                   '#f))
                (let ((__tmp113341
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112123_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112123_
                   _dispatch112126_
                   '3
                   __tmp113341
                   '#f))
                (let ((__tmp113342
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112123_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112123_
                   _inline112128_
                   '4
                   __tmp113342
                   '#f))
                (let ((__tmp113343
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112123_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112123_
                   _typedecl112130_
                   '5
                   __tmp113343
                   '#f)))
              (let ((__tmp113338
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112123_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112123_
                       '5
                       __tmp113338))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self112132_
               _id112133_
               _arity112134_
               _dispatch112135_
               _inline112136_)
        (let ((_typedecl112138_ '#f))
          (if (let ((__tmp113351
                     (let ()
                       (declare (not safe))
                       (##structure-length _self112132_))))
                (declare (not safe))
                (##fx< '5 __tmp113351))
              (begin
                (let ((__tmp113346
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112132_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112132_
                   _id112133_
                   '1
                   __tmp113346
                   '#f))
                (let ((__tmp113347
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112132_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112132_
                   _arity112134_
                   '2
                   __tmp113347
                   '#f))
                (let ((__tmp113348
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112132_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112132_
                   _dispatch112135_
                   '3
                   __tmp113348
                   '#f))
                (let ((__tmp113349
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112132_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112132_
                   _inline112136_
                   '4
                   __tmp113349
                   '#f))
                (let ((__tmp113350
                       (let ()
                         (declare (not safe))
                         (##structure-type _self112132_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self112132_
                   _typedecl112138_
                   '5
                   __tmp113350
                   '#f)))
              (let ((__tmp113345
                     (let ()
                       (declare (not safe))
                       (##vector-length _self112132_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self112132_
                       '5
                       __tmp113345))))))
    (define gxc#!lambda:::init!
      (lambda _g113353_
        (let ((_g113352_ (let () (declare (not safe)) (##length _g113353_))))
          (cond ((let () (declare (not safe)) (##fx= _g113352_ 4))
                 (apply (lambda (_self112123_
                                 _id112124_
                                 _arity112125_
                                 _dispatch112126_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self112123_
                             _id112124_
                             _arity112125_
                             _dispatch112126_)))
                        _g113353_))
                ((let () (declare (not safe)) (##fx= _g113352_ 5))
                 (apply (lambda (_self112132_
                                 _id112133_
                                 _arity112134_
                                 _dispatch112135_
                                 _inline112136_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self112132_
                             _id112133_
                             _arity112134_
                             _dispatch112135_
                             _inline112136_)))
                        _g113353_))
                ((let () (declare (not safe)) (##fx= _g113352_ 6))
                 (apply (lambda (_self112140_
                                 _id112141_
                                 _arity112142_
                                 _dispatch112143_
                                 _inline112144_
                                 _typedecl112145_)
                          (if (let ((__tmp113360
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self112140_))))
                                (declare (not safe))
                                (##fx< '5 __tmp113360))
                              (begin
                                (let ((__tmp113355
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112140_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112140_
                                   _id112141_
                                   '1
                                   __tmp113355
                                   '#f))
                                (let ((__tmp113356
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112140_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112140_
                                   _arity112142_
                                   '2
                                   __tmp113356
                                   '#f))
                                (let ((__tmp113357
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112140_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112140_
                                   _dispatch112143_
                                   '3
                                   __tmp113357
                                   '#f))
                                (let ((__tmp113358
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112140_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112140_
                                   _inline112144_
                                   '4
                                   __tmp113358
                                   '#f))
                                (let ((__tmp113359
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self112140_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self112140_
                                   _typedecl112145_
                                   '5
                                   __tmp113359
                                   '#f)))
                              (let ((__tmp113354
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self112140_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self112140_
                                       '5
                                       __tmp113354))))
                        _g113353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g113353_))))))
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
      (lambda (_self111865_ . _args111866_)
        (apply struct-instance-init! _self111865_ _args111866_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type111740_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111740_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type111740_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass111733_)
        (let ((_$e111735_
               (##structure-ref _klass111733_ '10 gxc#!class::t '#f)))
          (if _$e111735_
              _$e111735_
              (let ((_tab111738_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass111733_
                 _tab111738_
                 '10
                 gxc#!class::t
                 '#f)
                _tab111738_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass111724_ _method111725_)
        (let ((_tab111726111728_
               (##structure-ref _klass111724_ '10 gxc#!class::t '#f)))
          (if _tab111726111728_
              (let ((_tab111731_ _tab111726111728_))
                (declare (not safe))
                (hash-get _tab111731_ _method111725_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type111721_ _method111722_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111721_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type111721_ _method111722_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym111705_ _type111706_ _local?111707_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type111706_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym111705_
                     _type111706_)))
        (let ((__tmp113361
               (let () (declare (not safe)) (struct->list _type111706_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym111705_ '" " __tmp113361))
        (let ((__tmp113362
               (if _local?111707_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp113362 _sym111705_ _type111706_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym111712_ _type111713_)
        (let ((_local?111715_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym111712_
           _type111713_
           _local?111715_))))
    (define gxc#optimizer-declare-type!
      (lambda _g113364_
        (let ((_g113363_ (let () (declare (not safe)) (##length _g113364_))))
          (cond ((let () (declare (not safe)) (##fx= _g113363_ 2))
                 (apply (lambda (_sym111712_ _type111713_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym111712_
                             _type111713_)))
                        _g113364_))
                ((let () (declare (not safe)) (##fx= _g113363_ 3))
                 (apply (lambda (_sym111717_ _type111718_ _local?111719_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym111717_
                             _type111718_
                             _local?111719_)))
                        _g113364_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g113364_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym111691_ _local?111692_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym111691_))
        (let ((__tmp113365
               (if _local?111692_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp113365 _sym111691_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym111697_)
        (let ((_local?111699_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym111697_ _local?111699_))))
    (define gxc#optimizer-clear-type!
      (lambda _g113367_
        (let ((_g113366_ (let () (declare (not safe)) (##length _g113367_))))
          (cond ((let () (declare (not safe)) (##fx= _g113366_ 1))
                 (apply (lambda (_sym111697_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym111697_)))
                        _g113367_))
                ((let () (declare (not safe)) (##fx= _g113366_ 2))
                 (apply (lambda (_sym111701_ _local?111702_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym111701_
                             _local?111702_)))
                        _g113367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g113367_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t111664_ _method111665_ _sym111666_ _rebind?111667_)
        (let* ((_type111669_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t111664_)))
               (_$e111671_
                (let () (declare (not safe)) (gxc#!type-vtab _type111669_))))
          (if _$e111671_
              ((lambda (_vtab111674_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab111674_ _method111665_))
                     (if _rebind?111667_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t111664_
                              '" "
                              _method111665_))
                           (let ()
                             (declare (not safe))
                             (hash-put!
                              _vtab111674_
                              _method111665_
                              _sym111666_)))
                         (let ((__tmp113372
                                (let ((__tmp113373
                                       (let ((__tmp113374
                                              (let ((__tmp113375
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym111666_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method111665_
                                                      __tmp113375))))
                                         (declare (not safe))
                                         (cons _type-t111664_ __tmp113374))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp113373))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp113372
                            _method111665_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t111664_
                          '" "
                          _method111665_
                          '" => "
                          _sym111666_))
                       (let ()
                         (declare (not safe))
                         (hash-put!
                          _vtab111674_
                          _method111665_
                          _sym111666_)))))
               _$e111671_)
              (if (let () (declare (not safe)) (not _type111669_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t111664_))
                  (let ((__tmp113368
                         (let ((__tmp113369
                                (let ((__tmp113370
                                       (let ((__tmp113371
                                              (let ()
                                                (declare (not safe))
                                                (cons _method111665_ '()))))
                                         (declare (not safe))
                                         (cons _sym111666_ __tmp113371))))
                                  (declare (not safe))
                                  (cons _type-t111664_ __tmp113370))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp113369))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp113368
                     _type111669_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t111679_ _method111680_ _sym111681_)
        (let ((_rebind?111683_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t111679_
           _method111680_
           _sym111681_
           _rebind?111683_))))
    (define gxc#optimizer-declare-method!
      (lambda _g113377_
        (let ((_g113376_ (let () (declare (not safe)) (##length _g113377_))))
          (cond ((let () (declare (not safe)) (##fx= _g113376_ 3))
                 (apply (lambda (_type-t111679_ _method111680_ _sym111681_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t111679_
                             _method111680_
                             _sym111681_)))
                        _g113377_))
                ((let () (declare (not safe)) (##fx= _g113376_ 4))
                 (apply (lambda (_type-t111685_
                                 _method111686_
                                 _sym111687_
                                 _rebind?111688_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t111685_
                             _method111686_
                             _sym111687_
                             _rebind?111688_)))
                        _g113377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g113377_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym111652_)
        (let ((_$e111660_
               (let ((_ht111653111655_ (gxc#current-compile-local-type)))
                 (if _ht111653111655_
                     (let ((_ht111658_ _ht111653111655_))
                       (declare (not safe))
                       (hash-get _ht111658_ _sym111652_))
                     '#f))))
          (if _$e111660_
              _$e111660_
              (let ((__tmp113378
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp113378 _sym111652_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym111644_)
        (let ((_type111645111647_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym111644_))))
          (if _type111645111647_
              (let ((_type111650_ _type111645111647_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type111650_ 'gxc#!alias::t))
                    (let ((__tmp113379
                           (##structure-ref _type111650_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp113379))
                    _type111650_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where111636_ _klass-id111637_)
        (let ((_$e111639_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id111637_))))
          (if _$e111639_
              ((lambda (_klass111642_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass111642_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where111636_
                        _klass-id111637_
                        _klass111642_)))
                 _klass111642_)
               _$e111639_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where111636_
                 _klass-id111637_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t111633_ _method111634_)
        (let ((__tmp113380
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t111633_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp113380 _method111634_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym111631_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym111631_))
        (let ((__tmp113381
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp113381 _sym111631_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym111629_)
        (let ((__tmp113382
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp113382 _sym111629_))))
    (define gxc#identifier-symbol
      (lambda (_stx111627_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx111627_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx111627_))
            (let () (declare (not safe)) (gx#stx-e _stx111627_)))))))
