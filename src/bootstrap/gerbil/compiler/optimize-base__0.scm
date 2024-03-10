(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1710064749)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp111185 (list))
            (__tmp111183
             (let ((__tmp111184
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111184 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp111185
         '(type ssxi methods)
         __tmp111183
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args111119_
        (apply make-instance gxc#optimizer-info::t _$args111119_)))
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
      (lambda (_self111117_)
        (if (let ((__tmp111186
                   (let ()
                     (declare (not safe))
                     (##structure-length _self111117_))))
              (declare (not safe))
              (##fx< '3 __tmp111186))
            (begin
              (let ((__tmp111188
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp111187
                     (let ()
                       (declare (not safe))
                       (##structure-type _self111117_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self111117_
                 __tmp111188
                 '1
                 __tmp111187
                 '#f))
              (let ((__tmp111190
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp111189
                     (let ()
                       (declare (not safe))
                       (##structure-type _self111117_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self111117_
                 __tmp111190
                 '2
                 __tmp111189
                 '#f))
              (let ((__tmp111192
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp111191
                     (let ()
                       (declare (not safe))
                       (##structure-type _self111117_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self111117_
                 __tmp111192
                 '3
                 __tmp111191
                 '#f)))
            (let ((__tmp111193
                   (let ()
                     (declare (not safe))
                     (##vector-length _self111117_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self111117_
                     '3
                     __tmp111193)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp111196 (list))
            (__tmp111194
             (let ((__tmp111195
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111195 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp111196
         '(id)
         __tmp111194
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args110992_ (apply make-instance gxc#!type::t _$args110992_)))
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
      (let ((__tmp111199 (list gxc#!type::t))
            (__tmp111197
             (let ((__tmp111198
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111198 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp111199
         '()
         __tmp111197
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args110989_ (apply make-instance gxc#!alias::t _$args110989_)))
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
      (let ((__tmp111202 (list gxc#!type::t))
            (__tmp111200
             (let ((__tmp111201
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111201 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp111202
         '()
         __tmp111200
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args110986_
        (apply make-instance gxc#!procedure::t _$args110986_)))
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
      (let ((__tmp111205 (list gxc#!type::t))
            (__tmp111203
             (let ((__tmp111204
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111204 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp111205
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp111203
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args110983_ (apply make-instance gxc#!class::t _$args110983_)))
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
      (let ((__tmp111208 (list gxc#!procedure::t))
            (__tmp111206
             (let ((__tmp111207
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111207 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp111208
         '()
         __tmp111206
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args110980_
        (apply make-instance gxc#!predicate::t _$args110980_)))
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
      (let ((__tmp111211 (list gxc#!procedure::t))
            (__tmp111209
             (let ((__tmp111210
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111210 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp111211
         '()
         __tmp111209
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args110977_
        (apply make-instance gxc#!constructor::t _$args110977_)))
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
      (let ((__tmp111214 (list gxc#!procedure::t))
            (__tmp111212
             (let ((__tmp111213
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111213 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp111214
         '(slot checked?)
         __tmp111212
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args110974_
        (apply make-instance gxc#!accessor::t _$args110974_)))
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
      (let ((__tmp111217 (list gxc#!procedure::t))
            (__tmp111215
             (let ((__tmp111216
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111216 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp111217
         '(slot checked?)
         __tmp111215
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args110971_
        (apply make-instance gxc#!mutator::t _$args110971_)))
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
      (let ((__tmp111220 (list gxc#!procedure::t))
            (__tmp111218
             (let ((__tmp111219
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111219 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp111220
         '(arity dispatch inline inline-typedecl)
         __tmp111218
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args110968_
        (apply make-instance gxc#!lambda::t _$args110968_)))
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
      (let ((__tmp111223 (list gxc#!procedure::t))
            (__tmp111221
             (let ((__tmp111222
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111222 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp111223
         '(clauses)
         __tmp111221
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args110965_
        (apply make-instance gxc#!case-lambda::t _$args110965_)))
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
      (let ((__tmp111226 (list gxc#!procedure::t))
            (__tmp111224
             (let ((__tmp111225
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111225 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp111226
         '(table dispatch)
         __tmp111224
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args110962_
        (apply make-instance gxc#!kw-lambda::t _$args110962_)))
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
      (let ((__tmp111229 (list gxc#!procedure::t))
            (__tmp111227
             (let ((__tmp111228
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111228 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp111229
         '(keys main)
         __tmp111227
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args110959_
        (apply make-instance gxc#!kw-lambda-primary::t _$args110959_)))
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
      (let ((__tmp111230 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp111230
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args110956_
        (apply make-instance gxc#!primitive::t _$args110956_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp111231 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp111231
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args110953_
        (apply make-instance gxc#!primitive-lambda::t _$args110953_)))
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
      (let ((__tmp111232 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp111232
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args110950_
        (apply make-instance gxc#!primitive-case-lambda::t _$args110950_)))
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
      (lambda (_self110832_
               _id110833_
               _super110834_
               _slots110835_
               _ctor-method110836_
               _struct?110837_
               _final?110838_
               _metaclass110839_)
        (let _lp110841_ ((_rest110843_ _super110834_))
          (let* ((_rest110844110852_ _rest110843_)
                 (_else110846110860_ (lambda () '#!void))
                 (_K110848110866_
                  (lambda (_rest110863_ _super-id110864_)
                    (if (##structure-ref
                         (let ((__tmp111233
                                (let ((__tmp111234
                                       (let ()
                                         (declare (not safe))
                                         (cons _id110833_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp111234))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp111233
                            _super-id110864_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp111235
                               (let ((__tmp111236
                                      (let ()
                                        (declare (not safe))
                                        (cons _id110833_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp111236))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp111235
                           _super-id110864_))
                        '#!void)
                    (let () (declare (not safe)) (_lp110841_ _rest110863_)))))
            (if (let () (declare (not safe)) (##pair? _rest110844110852_))
                (let ((_hd110849110869_
                       (let ()
                         (declare (not safe))
                         (##car _rest110844110852_)))
                      (_tl110850110871_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest110844110852_))))
                  (let* ((_super-id110874_ _hd110849110869_)
                         (_rest110876_ _tl110850110871_))
                    (declare (not safe))
                    (_K110848110866_ _rest110876_ _super-id110874_)))
                '#!void)))
        (let* ((_ctor-method110926_
                (let ((_$e110878_ _ctor-method110836_))
                  (if _$e110878_
                      _$e110878_
                      (let _lp110881_ ((_rest110883_ _super110834_)
                                       (_method110884_ '#f))
                        (let* ((_rest110885110893_ _rest110883_)
                               (_else110887110901_ (lambda () _method110884_))
                               (_K110889110914_
                                (lambda (_rest110904_ _super-id110905_)
                                  (let* ((_klass110907_
                                          (let ((__tmp111237
                                                 (let ((__tmp111238
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id110833_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp111238))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp111237
                                             _super-id110905_)))
                                         (_$e110909_
                                          (##structure-ref
                                           _klass110907_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e110909_
                                        ((lambda (_ctor-method110912_)
                                           (if _method110884_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method110912_
                                                          _method110884_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp110881_
                                                      _rest110904_
                                                      _ctor-method110912_))
                                                   (let ((__tmp111239
                                                          (let ((__tmp111240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id110833_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp111240))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp111239
                                                      _method110884_
                                                      _ctor-method110912_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110881_
                                                  _rest110904_
                                                  _ctor-method110912_))))
                                         _$e110909_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp110881_
                                           _rest110904_
                                           _method110884_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest110885110893_))
                              (let ((_hd110890110917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest110885110893_)))
                                    (_tl110891110919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest110885110893_))))
                                (let* ((_super-id110922_ _hd110890110917_)
                                       (_rest110924_ _tl110891110919_))
                                  (declare (not safe))
                                  (_K110889110914_
                                   _rest110924_
                                   _super-id110922_)))
                              (let ()
                                (declare (not safe))
                                (_else110887110901_))))))))
               (_g111241_
                (let ((__tmp111246
                       (lambda (_klass-id110928_)
                         (let ((__tmp111247
                                (##structure-ref
                                 (let ((__tmp111248
                                        (let ((__tmp111249
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id110833_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp111249))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp111248
                                    _klass-id110928_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id110928_ __tmp111247))))
                      (__tmp111243
                       (lambda (_klass-id110930_)
                         (##structure-ref
                          (let ((__tmp111244
                                 (let ((__tmp111245
                                        (let ()
                                          (declare (not safe))
                                          (cons _id110833_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp111245))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp111244
                             _klass-id110930_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super110834_
                   'get-precedence-list:
                   __tmp111246
                   'struct:
                   __tmp111243
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g111242_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g111241_)
                         (##vector-length _g111241_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g111242_ 2)))
                  (error "Context expects 2 values" _g111242_)))
            (let ((_precedence-list110932_
                   (let () (declare (not safe)) (##vector-ref _g111241_ 0)))
                  (_base-struct110933_
                   (let () (declare (not safe)) (##vector-ref _g111241_ 1))))
              (let ((_fields110935_
                     (let ((__tmp111250
                            (let ((__tmp111251
                                   (let ()
                                     (declare (not safe))
                                     (cons _id110833_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp111251))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp111250
                        _base-struct110933_
                        _precedence-list110932_
                        _slots110835_))))
                (##structure-set! _self110832_ _id110833_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self110832_
                 _super110834_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _precedence-list110932_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _slots110835_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _fields110935_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _ctor-method110926_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _struct?110837_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _final?110838_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self110832_
                 _metaclass110839_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self110938_
               _id110939_
               _super110940_
               _precedence-list110941_
               _slots110942_
               _fields110943_
               _constructor110944_
               _struct?110945_
               _final?110946_
               _metaclass110947_
               _methods110948_)
        (##structure-set! _self110938_ _id110939_ '1 gxc#!type::t '#f)
        (##structure-set! _self110938_ _super110940_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self110938_
         _precedence-list110941_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self110938_ _slots110942_ '4 gxc#!class::t '#f)
        (##structure-set! _self110938_ _fields110943_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self110938_
         _constructor110944_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self110938_ _struct?110945_ '7 gxc#!class::t '#f)
        (##structure-set! _self110938_ _final?110946_ '8 gxc#!class::t '#f)
        (##structure-set! _self110938_ _metaclass110947_ '9 gxc#!class::t '#f)
        (if _methods110948_
            (##structure-set!
             _self110938_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods110948_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g111253_
        (let ((_g111252_ (let () (declare (not safe)) (##length _g111253_))))
          (cond ((let () (declare (not safe)) (##fx= _g111252_ 8))
                 (apply (lambda (_self110832_
                                 _id110833_
                                 _super110834_
                                 _slots110835_
                                 _ctor-method110836_
                                 _struct?110837_
                                 _final?110838_
                                 _metaclass110839_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self110832_
                             _id110833_
                             _super110834_
                             _slots110835_
                             _ctor-method110836_
                             _struct?110837_
                             _final?110838_
                             _metaclass110839_)))
                        _g111253_))
                ((let () (declare (not safe)) (##fx= _g111252_ 11))
                 (apply (lambda (_self110938_
                                 _id110939_
                                 _super110940_
                                 _precedence-list110941_
                                 _slots110942_
                                 _fields110943_
                                 _constructor110944_
                                 _struct?110945_
                                 _final?110946_
                                 _metaclass110947_
                                 _methods110948_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self110938_
                             _id110939_
                             _super110940_
                             _precedence-list110941_
                             _slots110942_
                             _fields110943_
                             _constructor110944_
                             _struct?110945_
                             _final?110946_
                             _metaclass110947_
                             _methods110948_)))
                        _g111253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g111253_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__klass111121 __method-table111122)
        (let ((__precedence-list111123
               (let ((__slot111133
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'precedence-list))))
                 (if __slot111133
                     __slot111133
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'precedence-list)))))
              (__struct?111124
               (let ((__slot111134
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'struct?))))
                 (if __slot111134
                     __slot111134
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'struct?)))))
              (__final?111125
               (let ((__slot111135
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'final?))))
                 (if __slot111135
                     __slot111135
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'final?)))))
              (__id111126
               (let ((__slot111136
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'id))))
                 (if __slot111136
                     __slot111136
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__super111127
               (let ((__slot111137
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'super))))
                 (if __slot111137
                     __slot111137
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'super)))))
              (__slots111128
               (let ((__slot111138
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'slots))))
                 (if __slot111138
                     __slot111138
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slots)))))
              (__methods111129
               (let ((__slot111139
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'methods))))
                 (if __slot111139
                     __slot111139
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'methods)))))
              (__constructor111130
               (let ((__slot111140
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'constructor))))
                 (if __slot111140
                     __slot111140
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'constructor)))))
              (__fields111131
               (let ((__slot111141
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'fields))))
                 (if __slot111141
                     __slot111141
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'fields)))))
              (__metaclass111132
               (let ((__slot111142
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111121 'metaclass))))
                 (if __slot111142
                     __slot111142
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'metaclass))))))
          (lambda _g111255_
            (let ((_g111254_
                   (let () (declare (not safe)) (##length _g111255_))))
              (cond ((let () (declare (not safe)) (##fx= _g111254_ 8))
                     (apply (lambda (_self110832_
                                     _id110833_
                                     _super110834_
                                     _slots110835_
                                     _ctor-method110836_
                                     _struct?110837_
                                     _final?110838_
                                     _metaclass110839_)
                              (let _lp110841_ ((_rest110843_ _super110834_))
                                (let* ((_rest110844110852_ _rest110843_)
                                       (_else110846110860_ (lambda () '#!void))
                                       (_K110848110866_
                                        (lambda (_rest110863_ _super-id110864_)
                                          (if (##structure-ref
                                               (let ((__tmp111256
                                                      (let ((__tmp111257
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id110833_ '()))))
                (declare (not safe))
                (cons '!class __tmp111257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp111256
                                                  _super-id110864_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp111258
                                                     (let ((__tmp111259
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id110833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp111259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp111258
                                                 _super-id110864_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp110841_ _rest110863_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest110844110852_))
                                      (let ((_hd110849110869_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest110844110852_)))
                                            (_tl110850110871_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest110844110852_))))
                                        (let* ((_super-id110874_
                                                _hd110849110869_)
                                               (_rest110876_ _tl110850110871_))
                                          (declare (not safe))
                                          (_K110848110866_
                                           _rest110876_
                                           _super-id110874_)))
                                      '#!void)))
                              (let* ((_ctor-method110926_
                                      (let ((_$e110878_ _ctor-method110836_))
                                        (if _$e110878_
                                            _$e110878_
                                            (let _lp110881_ ((_rest110883_
                                                              _super110834_)
                                                             (_method110884_
                                                              '#f))
                                              (let* ((_rest110885110893_
                                                      _rest110883_)
                                                     (_else110887110901_
                                                      (lambda ()
                                                        _method110884_))
                                                     (_K110889110914_
                                                      (lambda (_rest110904_
                                                               _super-id110905_)
                                                        (let* ((_klass110907_
                                                                (let ((__tmp111260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111261
                                      (let ()
                                        (declare (not safe))
                                        (cons _id110833_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp111261))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp111260
                           _super-id110905_)))
                       (_$e110909_
                        (##structure-ref _klass110907_ '6 gxc#!class::t '#f)))
                  (if _$e110909_
                      ((lambda (_ctor-method110912_)
                         (if _method110884_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method110912_ _method110884_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp110881_
                                    _rest110904_
                                    _ctor-method110912_))
                                 (let ((__tmp111262
                                        (let ((__tmp111263
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id110833_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp111263))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp111262
                                    _method110884_
                                    _ctor-method110912_)))
                             (let ()
                               (declare (not safe))
                               (_lp110881_ _rest110904_ _ctor-method110912_))))
                       _$e110909_)
                      (let ()
                        (declare (not safe))
                        (_lp110881_ _rest110904_ _method110884_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest110885110893_))
                                                    (let ((_hd110890110917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest110885110893_)))
                                                          (_tl110891110919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest110885110893_))))
                                                      (let* ((_super-id110922_
                                                              _hd110890110917_)
                                                             (_rest110924_
                                                              _tl110891110919_))
                                                        (declare (not safe))
                                                        (_K110889110914_
                                                         _rest110924_
                                                         _super-id110922_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else110887110901_))))))))
                                     (_g111264_
                                      (let ((__tmp111269
                                             (lambda (_klass-id110928_)
                                               (let ((__tmp111270
                                                      (##structure-ref
                                                       (let ((__tmp111271
                                                              (let ((__tmp111272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id110833_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp111272))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp111271 _klass-id110928_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id110928_
                                                       __tmp111270))))
                                            (__tmp111266
                                             (lambda (_klass-id110930_)
                                               (##structure-ref
                                                (let ((__tmp111267
                                                       (let ((__tmp111268
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id110833_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp111268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp111267
                                                   _klass-id110930_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super110834_
                                         'get-precedence-list:
                                         __tmp111269
                                         'struct:
                                         __tmp111266
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g111265_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g111264_)
                                               (##vector-length _g111264_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g111265_ 2)))
                                        (error "Context expects 2 values"
                                               _g111265_)))
                                  (let ((_precedence-list110932_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g111264_ 0)))
                                        (_base-struct110933_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g111264_ 1))))
                                    (let ((_fields110935_
                                           (let ((__tmp111273
                                                  (let ((__tmp111274
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id110833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp111274))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp111273
                                              _base-struct110933_
                                              _precedence-list110932_
                                              _slots110835_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _id110833_
                                         __id111126
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _super110834_
                                         __super111127
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _precedence-list110932_
                                         __precedence-list111123
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _slots110835_
                                         __slots111128
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _fields110935_
                                         __fields111131
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _ctor-method110926_
                                         __constructor111130
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _struct?110837_
                                         __struct?111124
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _final?110838_
                                         __final?111125
                                         __klass111121
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self110832_
                                         _metaclass110839_
                                         __metaclass111132
                                         __klass111121
                                         '#f)))))))
                            _g111255_))
                    ((let () (declare (not safe)) (##fx= _g111254_ 11))
                     (apply (lambda (_self110938_
                                     _id110939_
                                     _super110940_
                                     _precedence-list110941_
                                     _slots110942_
                                     _fields110943_
                                     _constructor110944_
                                     _struct?110945_
                                     _final?110946_
                                     _metaclass110947_
                                     _methods110948_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _id110939_
                                 __id111126
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _super110940_
                                 __super111127
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _precedence-list110941_
                                 __precedence-list111123
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _slots110942_
                                 __slots111128
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _fields110943_
                                 __fields111131
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _constructor110944_
                                 __constructor111130
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _struct?110945_
                                 __struct?111124
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _final?110946_
                                 __final?111125
                                 __klass111121
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self110938_
                                 _metaclass110947_
                                 __metaclass111132
                                 __klass111121
                                 '#f))
                              (if _methods110948_
                                  (let ((__tmp111275
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods110948_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self110938_
                                     __tmp111275
                                     __methods111129
                                     __klass111121
                                     '#f))
                                  '#!void))
                            _g111255_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g111255_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where110684_
               _base-struct110685_
               _precedence-list110686_
               _direct-slots110687_)
        (let* ((_base-fields110689_
                (if _base-struct110685_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where110684_
                        _base-struct110685_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields110691_ (reverse _base-fields110689_))
               (_seen-slots110699_
                (let ((_tab110693_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g110694110696_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _tab110693_ _g110694110696_ '#t)))
                   _base-fields110689_)
                  _tab110693_))
               (_process-slot110703_
                (lambda (_slot110701_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots110699_ _slot110701_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _seen-slots110699_ _slot110701_ '#t))
                        (set! _r-fields110691_
                              (let ()
                                (declare (not safe))
                                (cons _slot110701_ _r-fields110691_))))))))
          (for-each
           (lambda (_mixin110706_)
             (let ((_klass110708_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where110684_
                       _mixin110706_))))
               (if (##structure-ref _klass110708_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot110703_
                    (##structure-ref _klass110708_ '5 gxc#!class::t '#f)))))
           _precedence-list110686_)
          (for-each _process-slot110703_ _direct-slots110687_)
          (reverse _r-fields110691_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass110643_ _slot110644_)
        (let _lp110646_ ((_rest110648_
                          (##structure-ref _klass110643_ '5 gxc#!class::t '#f))
                         (_offset110649_ '1))
          (let* ((_rest110650110658_ _rest110648_)
                 (_else110652110666_
                  (lambda ()
                    (let ((__tmp111277
                           (##structure-ref _klass110643_ '1 gxc#!type::t '#f))
                          (__tmp111276
                           (##structure-ref
                            _klass110643_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp111277
                       __tmp111276
                       _slot110644_))))
                 (_K110654110672_
                  (lambda (_rest110669_ _s110670_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s110670_ _slot110644_))
                        _offset110649_
                        (let ((__tmp111278
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset110649_ '1))))
                          (declare (not safe))
                          (_lp110646_ _rest110669_ __tmp111278))))))
            (if (let () (declare (not safe)) (##pair? _rest110650110658_))
                (let ((_hd110655110675_
                       (let ()
                         (declare (not safe))
                         (##car _rest110650110658_)))
                      (_tl110656110677_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest110650110658_))))
                  (let* ((_s110680_ _hd110655110675_)
                         (_rest110682_ _tl110656110677_))
                    (declare (not safe))
                    (_K110654110672_ _rest110682_ _s110680_)))
                (let () (declare (not safe)) (_else110652110666_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass110601_ _slot110602_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass110601_ _slot110602_))
            _klass110601_
            (let _lp110604_ ((_rest110606_
                              (##structure-ref
                               _klass110601_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest110607110615_ _rest110606_)
                     (_else110609110623_ (lambda () '#f))
                     (_K110611110631_
                      (lambda (_rest110626_ _super110627_)
                        (let ((_super-class110629_
                               (let ((__tmp111279
                                      (let ((__tmp111280
                                             (let ((__tmp111282
                                                    (##structure-ref
                                                     _klass110601_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp111281
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot110602_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp111282
                                                     __tmp111281))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp111280))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp111279
                                  _super110627_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class110629_
                                 _slot110602_))
                              _super-class110629_
                              (let ()
                                (declare (not safe))
                                (_lp110604_ _rest110626_)))))))
                (if (let () (declare (not safe)) (##pair? _rest110607110615_))
                    (let ((_hd110612110634_
                           (let ()
                             (declare (not safe))
                             (##car _rest110607110615_)))
                          (_tl110613110636_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest110607110615_))))
                      (let* ((_super110639_ _hd110612110634_)
                             (_rest110641_ _tl110613110636_))
                        (declare (not safe))
                        (_K110611110631_ _rest110641_ _super110639_)))
                    (let () (declare (not safe)) (_else110609110623_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass110598_ _slot110599_)
        (if (##structure-ref _klass110598_ '7 gxc#!class::t '#f)
            (memq _slot110599_
                  (##structure-ref _klass110598_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self110595_ _id110596_)
        (##structure-set! _self110595_ _id110596_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__klass111143 __method-table111144)
        (let ((__id111145
               (let ((__slot111146
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111143 'id))))
                 (if __slot111146
                     __slot111146
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self110595_ _id110596_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110595_
               _id110596_
               __id111145
               __klass111143
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
      (lambda (_self110470_ _id110471_)
        (##structure-set! _self110470_ _id110471_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__klass111147 __method-table111148)
        (let ((__id111149
               (let ((__slot111150
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111147 'id))))
                 (if __slot111150
                     __slot111150
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id))))))
          (lambda (_self110470_ _id110471_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110470_
               _id110471_
               __id111149
               __klass111147
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
      (lambda (_self110343_ _id110344_ _slot110345_ _checked?110346_)
        (##structure-set! _self110343_ _id110344_ '1 gxc#!type::t '#f)
        (##structure-set! _self110343_ _slot110345_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self110343_
         _checked?110346_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__klass111151 __method-table111152)
        (let ((__id111153
               (let ((__slot111156
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111151 'id))))
                 (if __slot111156
                     __slot111156
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?111154
               (let ((__slot111157
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111151 'checked?))))
                 (if __slot111157
                     __slot111157
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot111155
               (let ((__slot111158
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111151 'slot))))
                 (if __slot111158
                     __slot111158
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self110343_ _id110344_ _slot110345_ _checked?110346_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110343_
               _id110344_
               __id111153
               __klass111151
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110343_
               _slot110345_
               __slot111155
               __klass111151
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110343_
               _checked?110346_
               __checked?111154
               __klass111151
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
      (lambda (_self110216_ _id110217_ _slot110218_ _checked?110219_)
        (##structure-set! _self110216_ _id110217_ '1 gxc#!type::t '#f)
        (##structure-set! _self110216_ _slot110218_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self110216_
         _checked?110219_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__klass111159 __method-table111160)
        (let ((__id111161
               (let ((__slot111164
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111159 'id))))
                 (if __slot111164
                     __slot111164
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'id)))))
              (__checked?111162
               (let ((__slot111165
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111159 'checked?))))
                 (if __slot111165
                     __slot111165
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'checked?)))))
              (__slot111163
               (let ((__slot111166
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __klass111159 'slot))))
                 (if __slot111166
                     __slot111166
                     (let ()
                       (declare (not safe))
                       (error '"Unknown slot" 'slot))))))
          (lambda (_self110216_ _id110217_ _slot110218_ _checked?110219_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110216_
               _id110217_
               __id111161
               __klass111159
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110216_
               _slot110218_
               __slot111163
               __klass111159
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self110216_
               _checked?110219_
               __checked?111162
               __klass111159
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
      (lambda (_self110060_
               _id110061_
               _arity110062_
               _dispatch110063_
               _inline110064_
               _typedecl110065_)
        (if (let ((__tmp111283
                   (let ()
                     (declare (not safe))
                     (##structure-length _self110060_))))
              (declare (not safe))
              (##fx< '5 __tmp111283))
            (begin
              (let ((__tmp111284
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110060_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110060_
                 _id110061_
                 '1
                 __tmp111284
                 '#f))
              (let ((__tmp111285
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110060_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110060_
                 _arity110062_
                 '2
                 __tmp111285
                 '#f))
              (let ((__tmp111286
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110060_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110060_
                 _dispatch110063_
                 '3
                 __tmp111286
                 '#f))
              (let ((__tmp111287
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110060_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110060_
                 _inline110064_
                 '4
                 __tmp111287
                 '#f))
              (let ((__tmp111288
                     (let ()
                       (declare (not safe))
                       (##structure-type _self110060_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self110060_
                 _typedecl110065_
                 '5
                 __tmp111288
                 '#f)))
            (let ((__tmp111289
                   (let ()
                     (declare (not safe))
                     (##vector-length _self110060_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self110060_
                     '5
                     __tmp111289)))))
    (define gxc#!lambda:::init!__0
      (lambda (_self110070_ _id110071_ _arity110072_ _dispatch110073_)
        (let* ((_inline110075_ '#f) (_typedecl110077_ '#f))
          (if (let ((__tmp111290
                     (let ()
                       (declare (not safe))
                       (##structure-length _self110070_))))
                (declare (not safe))
                (##fx< '5 __tmp111290))
              (begin
                (let ((__tmp111291
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110070_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110070_
                   _id110071_
                   '1
                   __tmp111291
                   '#f))
                (let ((__tmp111292
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110070_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110070_
                   _arity110072_
                   '2
                   __tmp111292
                   '#f))
                (let ((__tmp111293
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110070_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110070_
                   _dispatch110073_
                   '3
                   __tmp111293
                   '#f))
                (let ((__tmp111294
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110070_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110070_
                   _inline110075_
                   '4
                   __tmp111294
                   '#f))
                (let ((__tmp111295
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110070_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110070_
                   _typedecl110077_
                   '5
                   __tmp111295
                   '#f)))
              (let ((__tmp111296
                     (let ()
                       (declare (not safe))
                       (##vector-length _self110070_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self110070_
                       '5
                       __tmp111296))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self110079_
               _id110080_
               _arity110081_
               _dispatch110082_
               _inline110083_)
        (let ((_typedecl110085_ '#f))
          (if (let ((__tmp111297
                     (let ()
                       (declare (not safe))
                       (##structure-length _self110079_))))
                (declare (not safe))
                (##fx< '5 __tmp111297))
              (begin
                (let ((__tmp111298
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110079_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110079_
                   _id110080_
                   '1
                   __tmp111298
                   '#f))
                (let ((__tmp111299
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110079_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110079_
                   _arity110081_
                   '2
                   __tmp111299
                   '#f))
                (let ((__tmp111300
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110079_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110079_
                   _dispatch110082_
                   '3
                   __tmp111300
                   '#f))
                (let ((__tmp111301
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110079_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110079_
                   _inline110083_
                   '4
                   __tmp111301
                   '#f))
                (let ((__tmp111302
                       (let ()
                         (declare (not safe))
                         (##structure-type _self110079_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self110079_
                   _typedecl110085_
                   '5
                   __tmp111302
                   '#f)))
              (let ((__tmp111303
                     (let ()
                       (declare (not safe))
                       (##vector-length _self110079_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self110079_
                       '5
                       __tmp111303))))))
    (define gxc#!lambda:::init!
      (lambda _g111305_
        (let ((_g111304_ (let () (declare (not safe)) (##length _g111305_))))
          (cond ((let () (declare (not safe)) (##fx= _g111304_ 4))
                 (apply (lambda (_self110070_
                                 _id110071_
                                 _arity110072_
                                 _dispatch110073_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self110070_
                             _id110071_
                             _arity110072_
                             _dispatch110073_)))
                        _g111305_))
                ((let () (declare (not safe)) (##fx= _g111304_ 5))
                 (apply (lambda (_self110079_
                                 _id110080_
                                 _arity110081_
                                 _dispatch110082_
                                 _inline110083_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self110079_
                             _id110080_
                             _arity110081_
                             _dispatch110082_
                             _inline110083_)))
                        _g111305_))
                ((let () (declare (not safe)) (##fx= _g111304_ 6))
                 (apply (lambda (_self110087_
                                 _id110088_
                                 _arity110089_
                                 _dispatch110090_
                                 _inline110091_
                                 _typedecl110092_)
                          (if (let ((__tmp111306
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self110087_))))
                                (declare (not safe))
                                (##fx< '5 __tmp111306))
                              (begin
                                (let ((__tmp111307
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self110087_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self110087_
                                   _id110088_
                                   '1
                                   __tmp111307
                                   '#f))
                                (let ((__tmp111308
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self110087_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self110087_
                                   _arity110089_
                                   '2
                                   __tmp111308
                                   '#f))
                                (let ((__tmp111309
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self110087_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self110087_
                                   _dispatch110090_
                                   '3
                                   __tmp111309
                                   '#f))
                                (let ((__tmp111310
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self110087_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self110087_
                                   _inline110091_
                                   '4
                                   __tmp111310
                                   '#f))
                                (let ((__tmp111311
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self110087_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self110087_
                                   _typedecl110092_
                                   '5
                                   __tmp111311
                                   '#f)))
                              (let ((__tmp111312
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self110087_))))
                                (declare (not safe))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self110087_
                                       '5
                                       __tmp111312))))
                        _g111305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g111305_))))))
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
      (lambda (_self109812_ . _args109813_)
        (apply struct-instance-init! _self109812_ _args109813_)))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type109687_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109687_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type109687_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass109680_)
        (let ((_$e109682_
               (##structure-ref _klass109680_ '10 gxc#!class::t '#f)))
          (if _$e109682_
              _$e109682_
              (let ((_tab109685_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass109680_
                 _tab109685_
                 '10
                 gxc#!class::t
                 '#f)
                _tab109685_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass109671_ _method109672_)
        (let ((_tab109673109675_
               (##structure-ref _klass109671_ '10 gxc#!class::t '#f)))
          (if _tab109673109675_
              (let ((_tab109678_ _tab109673109675_))
                (declare (not safe))
                (hash-get _tab109678_ _method109672_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type109668_ _method109669_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109668_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type109668_ _method109669_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym109652_ _type109653_ _local?109654_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type109653_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _sym109652_
                     _type109653_)))
        (let ((__tmp111313
               (let () (declare (not safe)) (struct->list _type109653_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym109652_ '" " __tmp111313))
        (let ((__tmp111314
               (if _local?109654_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! __tmp111314 _sym109652_ _type109653_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym109659_ _type109660_)
        (let ((_local?109662_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym109659_
           _type109660_
           _local?109662_))))
    (define gxc#optimizer-declare-type!
      (lambda _g111316_
        (let ((_g111315_ (let () (declare (not safe)) (##length _g111316_))))
          (cond ((let () (declare (not safe)) (##fx= _g111315_ 2))
                 (apply (lambda (_sym109659_ _type109660_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym109659_
                             _type109660_)))
                        _g111316_))
                ((let () (declare (not safe)) (##fx= _g111315_ 3))
                 (apply (lambda (_sym109664_ _type109665_ _local?109666_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym109664_
                             _type109665_
                             _local?109666_)))
                        _g111316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g111316_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym109638_ _local?109639_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym109638_))
        (let ((__tmp111317
               (if _local?109639_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-remove! __tmp111317 _sym109638_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym109644_)
        (let ((_local?109646_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym109644_ _local?109646_))))
    (define gxc#optimizer-clear-type!
      (lambda _g111319_
        (let ((_g111318_ (let () (declare (not safe)) (##length _g111319_))))
          (cond ((let () (declare (not safe)) (##fx= _g111318_ 1))
                 (apply (lambda (_sym109644_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym109644_)))
                        _g111319_))
                ((let () (declare (not safe)) (##fx= _g111318_ 2))
                 (apply (lambda (_sym109648_ _local?109649_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym109648_
                             _local?109649_)))
                        _g111319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g111319_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t109606_ _method109607_ _sym109608_ _rebind?109609_)
        (let* ((_type109611_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t109606_)))
               (_$e109613_
                (let () (declare (not safe)) (gxc#!type-vtab _type109611_))))
          (if _$e109613_
              ((lambda (_vtab109616_)
                 (let ((_$e109618_
                        (let ()
                          (declare (not safe))
                          (hash-get _vtab109616_ _method109607_))))
                   (if _$e109618_
                       ((lambda (_existing109621_)
                          (if _rebind?109609_
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (gxc#verbose
                                   '"declare-method: rebind existing method"
                                   _type-t109606_
                                   '" "
                                   _method109607_))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _vtab109616_
                                   _method109607_
                                   _sym109608_)))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _existing109621_ _sym109608_))
                                  '#!void
                                  (let ((__tmp111320
                                         (let ((__tmp111321
                                                (let ((__tmp111322
                                                       (let ((__tmp111323
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _sym109608_ '()))))
                 (declare (not safe))
                 (cons _method109607_ __tmp111323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _type-t109606_
                                                        __tmp111322))))
                                           (declare (not safe))
                                           (cons 'bind-method! __tmp111321))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"declare-method: duplicate method declaration"
                                     __tmp111320
                                     _method109607_)))))
                        _$e109618_)
                       (begin
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"declare-method "
                            _type-t109606_
                            '" "
                            _method109607_
                            '" => "
                            _sym109608_))
                         (let ()
                           (declare (not safe))
                           (hash-put!
                            _vtab109616_
                            _method109607_
                            _sym109608_))))))
               _$e109613_)
              (if (let () (declare (not safe)) (not _type109611_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t109606_))
                  (let ((__tmp111324
                         (let ((__tmp111325
                                (let ((__tmp111326
                                       (let ((__tmp111327
                                              (let ()
                                                (declare (not safe))
                                                (cons _method109607_ '()))))
                                         (declare (not safe))
                                         (cons _sym109608_ __tmp111327))))
                                  (declare (not safe))
                                  (cons _type-t109606_ __tmp111326))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp111325))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp111324
                     _type109611_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t109626_ _method109627_ _sym109628_)
        (let ((_rebind?109630_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t109626_
           _method109627_
           _sym109628_
           _rebind?109630_))))
    (define gxc#optimizer-declare-method!
      (lambda _g111329_
        (let ((_g111328_ (let () (declare (not safe)) (##length _g111329_))))
          (cond ((let () (declare (not safe)) (##fx= _g111328_ 3))
                 (apply (lambda (_type-t109626_ _method109627_ _sym109628_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t109626_
                             _method109627_
                             _sym109628_)))
                        _g111329_))
                ((let () (declare (not safe)) (##fx= _g111328_ 4))
                 (apply (lambda (_type-t109632_
                                 _method109633_
                                 _sym109634_
                                 _rebind?109635_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t109632_
                             _method109633_
                             _sym109634_
                             _rebind?109635_)))
                        _g111329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g111329_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym109594_)
        (let ((_$e109602_
               (let ((_ht109595109597_ (gxc#current-compile-local-type)))
                 (if _ht109595109597_
                     (let ((_ht109600_ _ht109595109597_))
                       (declare (not safe))
                       (hash-get _ht109600_ _sym109594_))
                     '#f))))
          (if _$e109602_
              _$e109602_
              (let ((__tmp111330
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp111330 _sym109594_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym109586_)
        (let ((_type109587109589_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym109586_))))
          (if _type109587109589_
              (let ((_type109592_ _type109587109589_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type109592_ 'gxc#!alias::t))
                    (let ((__tmp111331
                           (##structure-ref _type109592_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp111331))
                    _type109592_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where109578_ _klass-id109579_)
        (let ((_$e109581_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id109579_))))
          (if _$e109581_
              ((lambda (_klass109584_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass109584_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where109578_
                        _klass-id109579_
                        _klass109584_)))
                 _klass109584_)
               _$e109581_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where109578_
                 _klass-id109579_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t109575_ _method109576_)
        (let ((__tmp111332
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t109575_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp111332 _method109576_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym109573_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym109573_))
        (let ((__tmp111333
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp111333 _sym109573_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym109571_)
        (let ((__tmp111334
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp111334 _sym109571_))))
    (define gxc#identifier-symbol
      (lambda (_stx109569_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx109569_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx109569_))
            (let () (declare (not safe)) (gx#stx-e _stx109569_)))))))
