(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708210943)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp214160 (list))
            (__tmp214158
             (let ((__tmp214159
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214159 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp214160
         '(type ssxi methods)
         __tmp214158
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args210032_
        (apply make-instance gxc#optimizer-info::t _$args210032_)))
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
      (lambda (_self210030_)
        (if (let ((__tmp214167
                   (let ()
                     (declare (not safe))
                     (##structure-length _self210030_))))
              (declare (not safe))
              (##fx< '3 __tmp214167))
            (begin
              (let ((__tmp214162
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214161
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210030_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210030_
                 __tmp214162
                 '1
                 __tmp214161
                 '#f))
              (let ((__tmp214164
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214163
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210030_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210030_
                 __tmp214164
                 '2
                 __tmp214163
                 '#f))
              (let ((__tmp214166
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214165
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210030_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210030_
                 __tmp214166
                 '3
                 __tmp214165
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self210030_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self210030_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp214170 (list))
            (__tmp214168
             (let ((__tmp214169
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214169 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp214170
         '(id)
         __tmp214168
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args209905_ (apply make-instance gxc#!type::t _$args209905_)))
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
      (let ((__tmp214173 (list gxc#!type::t))
            (__tmp214171
             (let ((__tmp214172
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214172 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp214173
         '()
         __tmp214171
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args209902_ (apply make-instance gxc#!alias::t _$args209902_)))
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
      (let ((__tmp214176 (list gxc#!type::t))
            (__tmp214174
             (let ((__tmp214175
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214175 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp214176
         '()
         __tmp214174
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args209899_
        (apply make-instance gxc#!procedure::t _$args209899_)))
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
      (let ((__tmp214179 (list gxc#!type::t))
            (__tmp214177
             (let ((__tmp214178
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214178 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp214179
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp214177
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args209896_ (apply make-instance gxc#!class::t _$args209896_)))
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
      (let ((__tmp214182 (list gxc#!procedure::t))
            (__tmp214180
             (let ((__tmp214181
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214181 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp214182
         '()
         __tmp214180
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args209893_
        (apply make-instance gxc#!predicate::t _$args209893_)))
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
      (let ((__tmp214185 (list gxc#!procedure::t))
            (__tmp214183
             (let ((__tmp214184
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214184 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp214185
         '()
         __tmp214183
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args209890_
        (apply make-instance gxc#!constructor::t _$args209890_)))
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
      (let ((__tmp214188 (list gxc#!procedure::t))
            (__tmp214186
             (let ((__tmp214187
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214187 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp214188
         '(slot checked?)
         __tmp214186
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args209887_
        (apply make-instance gxc#!accessor::t _$args209887_)))
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
      (let ((__tmp214191 (list gxc#!procedure::t))
            (__tmp214189
             (let ((__tmp214190
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214190 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp214191
         '(slot checked?)
         __tmp214189
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args209884_
        (apply make-instance gxc#!mutator::t _$args209884_)))
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
      (let ((__tmp214194 (list gxc#!procedure::t))
            (__tmp214192
             (let ((__tmp214193
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214193 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp214194
         '(arity dispatch inline inline-typedecl)
         __tmp214192
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args209881_
        (apply make-instance gxc#!lambda::t _$args209881_)))
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
      (let ((__tmp214197 (list gxc#!procedure::t))
            (__tmp214195
             (let ((__tmp214196
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214196 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp214197
         '(clauses)
         __tmp214195
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args209878_
        (apply make-instance gxc#!case-lambda::t _$args209878_)))
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
      (let ((__tmp214200 (list gxc#!procedure::t))
            (__tmp214198
             (let ((__tmp214199
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214199 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp214200
         '(table dispatch)
         __tmp214198
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args209875_
        (apply make-instance gxc#!kw-lambda::t _$args209875_)))
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
      (let ((__tmp214203 (list gxc#!procedure::t))
            (__tmp214201
             (let ((__tmp214202
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214202 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp214203
         '(keys main)
         __tmp214201
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args209872_
        (apply make-instance gxc#!kw-lambda-primary::t _$args209872_)))
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
      (let ((__tmp214204 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp214204
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args209869_
        (apply make-instance gxc#!primitive::t _$args209869_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp214205 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp214205
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args209866_
        (apply make-instance gxc#!primitive-lambda::t _$args209866_)))
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
      (let ((__tmp214206 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp214206
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args209863_
        (apply make-instance gxc#!primitive-case-lambda::t _$args209863_)))
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
      (lambda (_self209745_
               _id209746_
               _super209747_
               _slots209748_
               _ctor-method209749_
               _struct?209750_
               _final?209751_
               _metaclass209752_)
        (let _lp209754_ ((_rest209756_ _super209747_))
          (let* ((_rest209757209765_ _rest209756_)
                 (_else209759209773_ (lambda () '#!void))
                 (_K209761209779_
                  (lambda (_rest209776_ _super-id209777_)
                    (if (##structure-ref
                         (let ((__tmp214209
                                (let ((__tmp214210
                                       (let ()
                                         (declare (not safe))
                                         (cons _id209746_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp214210))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp214209
                            _super-id209777_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp214207
                               (let ((__tmp214208
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209746_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214208))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp214207
                           _super-id209777_))
                        '#!void)
                    (let () (declare (not safe)) (_lp209754_ _rest209776_)))))
            (if (let () (declare (not safe)) (##pair? _rest209757209765_))
                (let ((_hd209762209782_
                       (let ()
                         (declare (not safe))
                         (##car _rest209757209765_)))
                      (_tl209763209784_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209757209765_))))
                  (let* ((_super-id209787_ _hd209762209782_)
                         (_rest209789_ _tl209763209784_))
                    (declare (not safe))
                    (_K209761209779_ _rest209789_ _super-id209787_)))
                '#!void)))
        (let* ((_ctor-method209839_
                (let ((_$e209791_ _ctor-method209749_))
                  (if _$e209791_
                      _$e209791_
                      (let _lp209794_ ((_rest209796_ _super209747_)
                                       (_method209797_ '#f))
                        (let* ((_rest209798209806_ _rest209796_)
                               (_else209800209814_ (lambda () _method209797_))
                               (_K209802209827_
                                (lambda (_rest209817_ _super-id209818_)
                                  (let* ((_klass209820_
                                          (let ((__tmp214211
                                                 (let ((__tmp214212
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id209746_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp214212))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp214211
                                             _super-id209818_)))
                                         (_$e209822_
                                          (##structure-ref
                                           _klass209820_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e209822_
                                        ((lambda (_ctor-method209825_)
                                           (if _method209797_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method209825_
                                                          _method209797_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp209794_
                                                      _rest209817_
                                                      _ctor-method209825_))
                                                   (let ((__tmp214213
                                                          (let ((__tmp214214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id209746_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp214214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp214213
                                                      _method209797_
                                                      _ctor-method209825_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp209794_
                                                  _rest209817_
                                                  _ctor-method209825_))))
                                         _$e209822_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp209794_
                                           _rest209817_
                                           _method209797_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest209798209806_))
                              (let ((_hd209803209830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest209798209806_)))
                                    (_tl209804209832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest209798209806_))))
                                (let* ((_super-id209835_ _hd209803209830_)
                                       (_rest209837_ _tl209804209832_))
                                  (declare (not safe))
                                  (_K209802209827_
                                   _rest209837_
                                   _super-id209835_)))
                              (let ()
                                (declare (not safe))
                                (_else209800209814_))))))))
               (_g214215_
                (let ((__tmp214220
                       (lambda (_klass-id209841_)
                         (let ((__tmp214221
                                (##structure-ref
                                 (let ((__tmp214222
                                        (let ((__tmp214223
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209746_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214223))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp214222
                                    _klass-id209841_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id209841_ __tmp214221))))
                      (__tmp214217
                       (lambda (_klass-id209843_)
                         (##structure-ref
                          (let ((__tmp214218
                                 (let ((__tmp214219
                                        (let ()
                                          (declare (not safe))
                                          (cons _id209746_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp214219))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp214218
                             _klass-id209843_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super209747_
                   'get-precedence-list:
                   __tmp214220
                   'struct:
                   __tmp214217
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g214216_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g214215_)
                         (##vector-length _g214215_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g214216_ 2)))
                  (error "Context expects 2 values" _g214216_)))
            (let ((_precedence-list209845_
                   (let () (declare (not safe)) (##vector-ref _g214215_ 0)))
                  (_base-struct209846_
                   (let () (declare (not safe)) (##vector-ref _g214215_ 1))))
              (let ((_fields209848_
                     (let ((__tmp214224
                            (let ((__tmp214225
                                   (let ()
                                     (declare (not safe))
                                     (cons _id209746_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp214225))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp214224
                        _base-struct209846_
                        _precedence-list209845_
                        _slots209748_))))
                (##structure-set! _self209745_ _id209746_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self209745_
                 _super209747_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _precedence-list209845_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _slots209748_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _fields209848_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _ctor-method209839_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _struct?209750_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _final?209751_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209745_
                 _metaclass209752_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self209851_
               _id209852_
               _super209853_
               _precedence-list209854_
               _slots209855_
               _fields209856_
               _constructor209857_
               _struct?209858_
               _final?209859_
               _metaclass209860_
               _methods209861_)
        (##structure-set! _self209851_ _id209852_ '1 gxc#!type::t '#f)
        (##structure-set! _self209851_ _super209853_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self209851_
         _precedence-list209854_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self209851_ _slots209855_ '4 gxc#!class::t '#f)
        (##structure-set! _self209851_ _fields209856_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self209851_
         _constructor209857_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self209851_ _struct?209858_ '7 gxc#!class::t '#f)
        (##structure-set! _self209851_ _final?209859_ '8 gxc#!class::t '#f)
        (##structure-set! _self209851_ _metaclass209860_ '9 gxc#!class::t '#f)
        (if _methods209861_
            (##structure-set!
             _self209851_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods209861_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g214227_
        (let ((_g214226_ (let () (declare (not safe)) (##length _g214227_))))
          (cond ((let () (declare (not safe)) (##fx= _g214226_ 8))
                 (apply (lambda (_self209745_
                                 _id209746_
                                 _super209747_
                                 _slots209748_
                                 _ctor-method209749_
                                 _struct?209750_
                                 _final?209751_
                                 _metaclass209752_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self209745_
                             _id209746_
                             _super209747_
                             _slots209748_
                             _ctor-method209749_
                             _struct?209750_
                             _final?209751_
                             _metaclass209752_)))
                        _g214227_))
                ((let () (declare (not safe)) (##fx= _g214226_ 11))
                 (apply (lambda (_self209851_
                                 _id209852_
                                 _super209853_
                                 _precedence-list209854_
                                 _slots209855_
                                 _fields209856_
                                 _constructor209857_
                                 _struct?209858_
                                 _final?209859_
                                 _metaclass209860_
                                 _methods209861_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self209851_
                             _id209852_
                             _super209853_
                             _precedence-list209854_
                             _slots209855_
                             _fields209856_
                             _constructor209857_
                             _struct?209858_
                             _final?209859_
                             _metaclass209860_
                             _methods209861_)))
                        _g214227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g214227_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t214101)
        (let ((__fields214102
               (let ((__tmp214112
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'fields))))
                 (if __tmp214112 __tmp214112 (error '"Unknown slot" 'fields))))
              (__constructor214103
               (let ((__tmp214113
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'constructor))))
                 (if __tmp214113
                     __tmp214113
                     (error '"Unknown slot" 'constructor))))
              (__struct?214104
               (let ((__tmp214114
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'struct?))))
                 (if __tmp214114
                     __tmp214114
                     (error '"Unknown slot" 'struct?))))
              (__metaclass214105
               (let ((__tmp214115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'metaclass))))
                 (if __tmp214115
                     __tmp214115
                     (error '"Unknown slot" 'metaclass))))
              (__super214106
               (let ((__tmp214116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'super))))
                 (if __tmp214116 __tmp214116 (error '"Unknown slot" 'super))))
              (__id214107
               (let ((__tmp214117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'id))))
                 (if __tmp214117 __tmp214117 (error '"Unknown slot" 'id))))
              (__final?214108
               (let ((__tmp214118
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'final?))))
                 (if __tmp214118 __tmp214118 (error '"Unknown slot" 'final?))))
              (__precedence-list214109
               (let ((__tmp214119
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'precedence-list))))
                 (if __tmp214119
                     __tmp214119
                     (error '"Unknown slot" 'precedence-list))))
              (__slots214110
               (let ((__tmp214120
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'slots))))
                 (if __tmp214120 __tmp214120 (error '"Unknown slot" 'slots))))
              (__methods214111
               (let ((__tmp214121
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214101 'methods))))
                 (if __tmp214121
                     __tmp214121
                     (error '"Unknown slot" 'methods)))))
          (lambda _g214229_
            (let ((_g214228_
                   (let () (declare (not safe)) (##length _g214229_))))
              (cond ((let () (declare (not safe)) (##fx= _g214228_ 8))
                     (apply (lambda (_self209745_
                                     _id209746_
                                     _super209747_
                                     _slots209748_
                                     _ctor-method209749_
                                     _struct?209750_
                                     _final?209751_
                                     _metaclass209752_)
                              (let _lp209754_ ((_rest209756_ _super209747_))
                                (let* ((_rest209757209765_ _rest209756_)
                                       (_else209759209773_ (lambda () '#!void))
                                       (_K209761209779_
                                        (lambda (_rest209776_ _super-id209777_)
                                          (if (##structure-ref
                                               (let ((__tmp214232
                                                      (let ((__tmp214233
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id209746_ '()))))
                (declare (not safe))
                (cons '!class __tmp214233))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp214232
                                                  _super-id209777_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp214230
                                                     (let ((__tmp214231
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id209746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp214231))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp214230
                                                 _super-id209777_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp209754_ _rest209776_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest209757209765_))
                                      (let ((_hd209762209782_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest209757209765_)))
                                            (_tl209763209784_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest209757209765_))))
                                        (let* ((_super-id209787_
                                                _hd209762209782_)
                                               (_rest209789_ _tl209763209784_))
                                          (declare (not safe))
                                          (_K209761209779_
                                           _rest209789_
                                           _super-id209787_)))
                                      '#!void)))
                              (let* ((_ctor-method209839_
                                      (let ((_$e209791_ _ctor-method209749_))
                                        (if _$e209791_
                                            _$e209791_
                                            (let _lp209794_ ((_rest209796_
                                                              _super209747_)
                                                             (_method209797_
                                                              '#f))
                                              (let* ((_rest209798209806_
                                                      _rest209796_)
                                                     (_else209800209814_
                                                      (lambda ()
                                                        _method209797_))
                                                     (_K209802209827_
                                                      (lambda (_rest209817_
                                                               _super-id209818_)
                                                        (let* ((_klass209820_
                                                                (let ((__tmp214234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp214235
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209746_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214235))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp214234
                           _super-id209818_)))
                       (_$e209822_
                        (##structure-ref _klass209820_ '6 gxc#!class::t '#f)))
                  (if _$e209822_
                      ((lambda (_ctor-method209825_)
                         (if _method209797_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method209825_ _method209797_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp209794_
                                    _rest209817_
                                    _ctor-method209825_))
                                 (let ((__tmp214236
                                        (let ((__tmp214237
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209746_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214237))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp214236
                                    _method209797_
                                    _ctor-method209825_)))
                             (let ()
                               (declare (not safe))
                               (_lp209794_ _rest209817_ _ctor-method209825_))))
                       _$e209822_)
                      (let ()
                        (declare (not safe))
                        (_lp209794_ _rest209817_ _method209797_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest209798209806_))
                                                    (let ((_hd209803209830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest209798209806_)))
                                                          (_tl209804209832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest209798209806_))))
                                                      (let* ((_super-id209835_
                                                              _hd209803209830_)
                                                             (_rest209837_
                                                              _tl209804209832_))
                                                        (declare (not safe))
                                                        (_K209802209827_
                                                         _rest209837_
                                                         _super-id209835_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else209800209814_))))))))
                                     (_g214238_
                                      (let ((__tmp214243
                                             (lambda (_klass-id209841_)
                                               (let ((__tmp214244
                                                      (##structure-ref
                                                       (let ((__tmp214245
                                                              (let ((__tmp214246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id209746_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp214246))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp214245 _klass-id209841_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id209841_
                                                       __tmp214244))))
                                            (__tmp214240
                                             (lambda (_klass-id209843_)
                                               (##structure-ref
                                                (let ((__tmp214241
                                                       (let ((__tmp214242
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id209746_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp214242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp214241
                                                   _klass-id209843_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super209747_
                                         'get-precedence-list:
                                         __tmp214243
                                         'struct:
                                         __tmp214240
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g214239_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g214238_)
                                               (##vector-length _g214238_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g214239_ 2)))
                                        (error "Context expects 2 values"
                                               _g214239_)))
                                  (let ((_precedence-list209845_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214238_ 0)))
                                        (_base-struct209846_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214238_ 1))))
                                    (let ((_fields209848_
                                           (let ((__tmp214247
                                                  (let ((__tmp214248
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id209746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp214248))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp214247
                                              _base-struct209846_
                                              _precedence-list209845_
                                              _slots209748_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _id209746_
                                         __id214107
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _super209747_
                                         __super214106
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _precedence-list209845_
                                         __precedence-list214109
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _slots209748_
                                         __slots214110
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _fields209848_
                                         __fields214102
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _ctor-method209839_
                                         __constructor214103
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _struct?209750_
                                         __struct?214104
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _final?209751_
                                         __final?214108
                                         __t214101
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209745_
                                         _metaclass209752_
                                         __metaclass214105
                                         __t214101
                                         '#f)))))))
                            _g214229_))
                    ((let () (declare (not safe)) (##fx= _g214228_ 11))
                     (apply (lambda (_self209851_
                                     _id209852_
                                     _super209853_
                                     _precedence-list209854_
                                     _slots209855_
                                     _fields209856_
                                     _constructor209857_
                                     _struct?209858_
                                     _final?209859_
                                     _metaclass209860_
                                     _methods209861_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _id209852_
                                 __id214107
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _super209853_
                                 __super214106
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _precedence-list209854_
                                 __precedence-list214109
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _slots209855_
                                 __slots214110
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _fields209856_
                                 __fields214102
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _constructor209857_
                                 __constructor214103
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _struct?209858_
                                 __struct?214104
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _final?209859_
                                 __final?214108
                                 __t214101
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209851_
                                 _metaclass209860_
                                 __metaclass214105
                                 __t214101
                                 '#f))
                              (if _methods209861_
                                  (let ((__tmp214249
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods209861_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self209851_
                                     __tmp214249
                                     __methods214111
                                     __t214101
                                     '#f))
                                  '#!void))
                            _g214229_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g214229_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where209597_
               _base-struct209598_
               _precedence-list209599_
               _direct-slots209600_)
        (let* ((_base-fields209602_
                (if _base-struct209598_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where209597_
                        _base-struct209598_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields209604_ (reverse _base-fields209602_))
               (_seen-slots209612_
                (let ((_tab209606_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g209607209609_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab209606_ _g209607209609_ '#t)))
                   _base-fields209602_)
                  _tab209606_))
               (_process-slot209616_
                (lambda (_slot209614_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots209612_ _slot209614_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots209612_ _slot209614_ '#t))
                        (set! _r-fields209604_
                              (let ()
                                (declare (not safe))
                                (cons _slot209614_ _r-fields209604_))))))))
          (for-each
           (lambda (_mixin209619_)
             (let ((_klass209621_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where209597_
                       _mixin209619_))))
               (if (##structure-ref _klass209621_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot209616_
                    (##structure-ref _klass209621_ '5 gxc#!class::t '#f)))))
           _precedence-list209599_)
          (for-each _process-slot209616_ _direct-slots209600_)
          (reverse _r-fields209604_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass209556_ _slot209557_)
        (let _lp209559_ ((_rest209561_
                          (##structure-ref _klass209556_ '5 gxc#!class::t '#f))
                         (_offset209562_ '1))
          (let* ((_rest209563209571_ _rest209561_)
                 (_else209565209579_
                  (lambda ()
                    (let ((__tmp214251
                           (##structure-ref _klass209556_ '1 gxc#!type::t '#f))
                          (__tmp214250
                           (##structure-ref
                            _klass209556_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp214251
                       __tmp214250
                       _slot209557_))))
                 (_K209567209585_
                  (lambda (_rest209582_ _s209583_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s209583_ _slot209557_))
                        _offset209562_
                        (let ((__tmp214252
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset209562_ '1))))
                          (declare (not safe))
                          (_lp209559_ _rest209582_ __tmp214252))))))
            (if (let () (declare (not safe)) (##pair? _rest209563209571_))
                (let ((_hd209568209588_
                       (let ()
                         (declare (not safe))
                         (##car _rest209563209571_)))
                      (_tl209569209590_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209563209571_))))
                  (let* ((_s209593_ _hd209568209588_)
                         (_rest209595_ _tl209569209590_))
                    (declare (not safe))
                    (_K209567209585_ _rest209595_ _s209593_)))
                (let () (declare (not safe)) (_else209565209579_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass209514_ _slot209515_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass209514_ _slot209515_))
            _klass209514_
            (let _lp209517_ ((_rest209519_
                              (##structure-ref
                               _klass209514_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest209520209528_ _rest209519_)
                     (_else209522209536_ (lambda () '#f))
                     (_K209524209544_
                      (lambda (_rest209539_ _super209540_)
                        (let ((_super-class209542_
                               (let ((__tmp214253
                                      (let ((__tmp214254
                                             (let ((__tmp214256
                                                    (##structure-ref
                                                     _klass209514_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp214255
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot209515_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp214256
                                                     __tmp214255))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp214254))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp214253
                                  _super209540_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class209542_
                                 _slot209515_))
                              _super-class209542_
                              (let ()
                                (declare (not safe))
                                (_lp209517_ _rest209539_)))))))
                (if (let () (declare (not safe)) (##pair? _rest209520209528_))
                    (let ((_hd209525209547_
                           (let ()
                             (declare (not safe))
                             (##car _rest209520209528_)))
                          (_tl209526209549_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest209520209528_))))
                      (let* ((_super209552_ _hd209525209547_)
                             (_rest209554_ _tl209526209549_))
                        (declare (not safe))
                        (_K209524209544_ _rest209554_ _super209552_)))
                    (let () (declare (not safe)) (_else209522209536_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass209511_ _slot209512_)
        (if (##structure-ref _klass209511_ '7 gxc#!class::t '#f)
            (memq _slot209512_
                  (##structure-ref _klass209511_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self209508_ _id209509_)
        (##structure-set! _self209508_ _id209509_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t214122)
        (let ((__id214123
               (let ((__tmp214124
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214122 'id))))
                 (if __tmp214124 __tmp214124 (error '"Unknown slot" 'id)))))
          (lambda (_self209508_ _id209509_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209508_
               _id209509_
               __id214123
               __t214122
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!predicate:::init!
       gxc#!predicate:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_self209383_ _id209384_)
        (##structure-set! _self209383_ _id209384_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t214125)
        (let ((__id214126
               (let ((__tmp214127
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214125 'id))))
                 (if __tmp214127 __tmp214127 (error '"Unknown slot" 'id)))))
          (lambda (_self209383_ _id209384_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209383_
               _id209384_
               __id214126
               __t214125
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!constructor:::init!
       gxc#!constructor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!constructor::t ':init! gxc#!constructor:::init! '#f))
    (define gxc#!accessor:::init!
      (lambda (_self209256_ _id209257_ _slot209258_ _checked?209259_)
        (##structure-set! _self209256_ _id209257_ '1 gxc#!type::t '#f)
        (##structure-set! _self209256_ _slot209258_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self209256_
         _checked?209259_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t214128)
        (let ((__checked?214129
               (let ((__tmp214132
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214128 'checked?))))
                 (if __tmp214132
                     __tmp214132
                     (error '"Unknown slot" 'checked?))))
              (__slot214130
               (let ((__tmp214133
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214128 'slot))))
                 (if __tmp214133 __tmp214133 (error '"Unknown slot" 'slot))))
              (__id214131
               (let ((__tmp214134
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214128 'id))))
                 (if __tmp214134 __tmp214134 (error '"Unknown slot" 'id)))))
          (lambda (_self209256_ _id209257_ _slot209258_ _checked?209259_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209256_
               _id209257_
               __id214131
               __t214128
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209256_
               _slot209258_
               __slot214130
               __t214128
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209256_
               _checked?209259_
               __checked?214129
               __t214128
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!accessor:::init!
       gxc#!accessor:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_self209129_ _id209130_ _slot209131_ _checked?209132_)
        (##structure-set! _self209129_ _id209130_ '1 gxc#!type::t '#f)
        (##structure-set! _self209129_ _slot209131_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self209129_
         _checked?209132_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t214135)
        (let ((__checked?214136
               (let ((__tmp214139
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214135 'checked?))))
                 (if __tmp214139
                     __tmp214139
                     (error '"Unknown slot" 'checked?))))
              (__slot214137
               (let ((__tmp214140
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214135 'slot))))
                 (if __tmp214140 __tmp214140 (error '"Unknown slot" 'slot))))
              (__id214138
               (let ((__tmp214141
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214135 'id))))
                 (if __tmp214141 __tmp214141 (error '"Unknown slot" 'id)))))
          (lambda (_self209129_ _id209130_ _slot209131_ _checked?209132_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209129_
               _id209130_
               __id214138
               __t214135
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209129_
               _slot209131_
               __slot214137
               __t214135
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209129_
               _checked?209132_
               __checked?214136
               __t214135
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self208973_
               _id208974_
               _arity208975_
               _dispatch208976_
               _inline208977_
               _typedecl208978_)
        (if (let ((__tmp214262
                   (let ()
                     (declare (not safe))
                     (##structure-length _self208973_))))
              (declare (not safe))
              (##fx< '5 __tmp214262))
            (begin
              (let ((__tmp214257
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208973_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208973_
                 _id208974_
                 '1
                 __tmp214257
                 '#f))
              (let ((__tmp214258
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208973_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208973_
                 _arity208975_
                 '2
                 __tmp214258
                 '#f))
              (let ((__tmp214259
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208973_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208973_
                 _dispatch208976_
                 '3
                 __tmp214259
                 '#f))
              (let ((__tmp214260
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208973_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208973_
                 _inline208977_
                 '4
                 __tmp214260
                 '#f))
              (let ((__tmp214261
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208973_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208973_
                 _typedecl208978_
                 '5
                 __tmp214261
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self208973_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self208973_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self208983_ _id208984_ _arity208985_ _dispatch208986_)
        (let* ((_inline208988_ '#f) (_typedecl208990_ '#f))
          (if (let ((__tmp214268
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208983_))))
                (declare (not safe))
                (##fx< '5 __tmp214268))
              (begin
                (let ((__tmp214263
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208983_
                   _id208984_
                   '1
                   __tmp214263
                   '#f))
                (let ((__tmp214264
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208983_
                   _arity208985_
                   '2
                   __tmp214264
                   '#f))
                (let ((__tmp214265
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208983_
                   _dispatch208986_
                   '3
                   __tmp214265
                   '#f))
                (let ((__tmp214266
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208983_
                   _inline208988_
                   '4
                   __tmp214266
                   '#f))
                (let ((__tmp214267
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208983_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208983_
                   _typedecl208990_
                   '5
                   __tmp214267
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208983_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208983_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self208992_
               _id208993_
               _arity208994_
               _dispatch208995_
               _inline208996_)
        (let ((_typedecl208998_ '#f))
          (if (let ((__tmp214274
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208992_))))
                (declare (not safe))
                (##fx< '5 __tmp214274))
              (begin
                (let ((__tmp214269
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208992_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208992_
                   _id208993_
                   '1
                   __tmp214269
                   '#f))
                (let ((__tmp214270
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208992_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208992_
                   _arity208994_
                   '2
                   __tmp214270
                   '#f))
                (let ((__tmp214271
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208992_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208992_
                   _dispatch208995_
                   '3
                   __tmp214271
                   '#f))
                (let ((__tmp214272
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208992_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208992_
                   _inline208996_
                   '4
                   __tmp214272
                   '#f))
                (let ((__tmp214273
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208992_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208992_
                   _typedecl208998_
                   '5
                   __tmp214273
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208992_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208992_)))))))
    (define gxc#!lambda:::init!
      (lambda _g214276_
        (let ((_g214275_ (let () (declare (not safe)) (##length _g214276_))))
          (cond ((let () (declare (not safe)) (##fx= _g214275_ 4))
                 (apply (lambda (_self208983_
                                 _id208984_
                                 _arity208985_
                                 _dispatch208986_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self208983_
                             _id208984_
                             _arity208985_
                             _dispatch208986_)))
                        _g214276_))
                ((let () (declare (not safe)) (##fx= _g214275_ 5))
                 (apply (lambda (_self208992_
                                 _id208993_
                                 _arity208994_
                                 _dispatch208995_
                                 _inline208996_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self208992_
                             _id208993_
                             _arity208994_
                             _dispatch208995_
                             _inline208996_)))
                        _g214276_))
                ((let () (declare (not safe)) (##fx= _g214275_ 6))
                 (apply (lambda (_self209000_
                                 _id209001_
                                 _arity209002_
                                 _dispatch209003_
                                 _inline209004_
                                 _typedecl209005_)
                          (if (let ((__tmp214282
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self209000_))))
                                (declare (not safe))
                                (##fx< '5 __tmp214282))
                              (begin
                                (let ((__tmp214277
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self209000_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self209000_
                                   _id209001_
                                   '1
                                   __tmp214277
                                   '#f))
                                (let ((__tmp214278
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self209000_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self209000_
                                   _arity209002_
                                   '2
                                   __tmp214278
                                   '#f))
                                (let ((__tmp214279
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self209000_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self209000_
                                   _dispatch209003_
                                   '3
                                   __tmp214279
                                   '#f))
                                (let ((__tmp214280
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self209000_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self209000_
                                   _inline209004_
                                   '4
                                   __tmp214280
                                   '#f))
                                (let ((__tmp214281
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self209000_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self209000_
                                   _typedecl209005_
                                   '5
                                   __tmp214281
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self209000_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self209000_)))))
                        _g214276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g214276_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init!
      (lambda (_self208725_ . _args208726_)
        (apply struct-instance-init! _self208725_ _args208726_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type208600_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208600_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type208600_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass208593_)
        (let ((_$e208595_
               (##structure-ref _klass208593_ '10 gxc#!class::t '#f)))
          (if _$e208595_
              _$e208595_
              (let ((_tab208598_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass208593_
                 _tab208598_
                 '10
                 gxc#!class::t
                 '#f)
                _tab208598_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass208584_ _method208585_)
        (let ((_tab208586208588_
               (##structure-ref _klass208584_ '10 gxc#!class::t '#f)))
          (if _tab208586208588_
              (let ((_tab208591_ _tab208586208588_))
                (declare (not safe))
                (hash-get _tab208591_ _method208585_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type208581_ _method208582_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208581_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type208581_ _method208582_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym208565_ _type208566_ _local?208567_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208566_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym208565_
                   _type208566_))
        (let ((__tmp214283
               (let () (declare (not safe)) (struct->list _type208566_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym208565_ '" " __tmp214283))
        (let ((__tmp214284
               (if _local?208567_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214284 _sym208565_ _type208566_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym208572_ _type208573_)
        (let ((_local?208575_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym208572_
           _type208573_
           _local?208575_))))
    (define gxc#optimizer-declare-type!
      (lambda _g214286_
        (let ((_g214285_ (let () (declare (not safe)) (##length _g214286_))))
          (cond ((let () (declare (not safe)) (##fx= _g214285_ 2))
                 (apply (lambda (_sym208572_ _type208573_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym208572_
                             _type208573_)))
                        _g214286_))
                ((let () (declare (not safe)) (##fx= _g214285_ 3))
                 (apply (lambda (_sym208577_ _type208578_ _local?208579_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym208577_
                             _type208578_
                             _local?208579_)))
                        _g214286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g214286_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym208551_ _local?208552_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym208551_))
        (let ((__tmp214287
               (if _local?208552_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214287 _sym208551_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym208557_)
        (let ((_local?208559_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym208557_ _local?208559_))))
    (define gxc#optimizer-clear-type!
      (lambda _g214289_
        (let ((_g214288_ (let () (declare (not safe)) (##length _g214289_))))
          (cond ((let () (declare (not safe)) (##fx= _g214288_ 1))
                 (apply (lambda (_sym208557_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym208557_)))
                        _g214289_))
                ((let () (declare (not safe)) (##fx= _g214288_ 2))
                 (apply (lambda (_sym208561_ _local?208562_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym208561_
                             _local?208562_)))
                        _g214289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g214289_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t208524_ _method208525_ _sym208526_ _rebind?208527_)
        (let* ((_type208529_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t208524_)))
               (_$e208531_
                (let () (declare (not safe)) (gxc#!type-vtab _type208529_))))
          (if _$e208531_
              ((lambda (_vtab208534_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab208534_ _method208525_))
                     (if _rebind?208527_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t208524_
                              '" "
                              _method208525_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab208534_
                              _method208525_
                              _sym208526_)))
                         (let ((__tmp214294
                                (let ((__tmp214295
                                       (let ((__tmp214296
                                              (let ((__tmp214297
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym208526_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method208525_
                                                      __tmp214297))))
                                         (declare (not safe))
                                         (cons _type-t208524_ __tmp214296))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp214295))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp214294
                            _method208525_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t208524_
                          '" "
                          _method208525_
                          '" => "
                          _sym208526_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab208534_
                          _method208525_
                          _sym208526_)))))
               _$e208531_)
              (if (let () (declare (not safe)) (not _type208529_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t208524_))
                  (let ((__tmp214290
                         (let ((__tmp214291
                                (let ((__tmp214292
                                       (let ((__tmp214293
                                              (let ()
                                                (declare (not safe))
                                                (cons _method208525_ '()))))
                                         (declare (not safe))
                                         (cons _sym208526_ __tmp214293))))
                                  (declare (not safe))
                                  (cons _type-t208524_ __tmp214292))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp214291))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp214290
                     _type208529_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t208539_ _method208540_ _sym208541_)
        (let ((_rebind?208543_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t208539_
           _method208540_
           _sym208541_
           _rebind?208543_))))
    (define gxc#optimizer-declare-method!
      (lambda _g214299_
        (let ((_g214298_ (let () (declare (not safe)) (##length _g214299_))))
          (cond ((let () (declare (not safe)) (##fx= _g214298_ 3))
                 (apply (lambda (_type-t208539_ _method208540_ _sym208541_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t208539_
                             _method208540_
                             _sym208541_)))
                        _g214299_))
                ((let () (declare (not safe)) (##fx= _g214298_ 4))
                 (apply (lambda (_type-t208545_
                                 _method208546_
                                 _sym208547_
                                 _rebind?208548_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t208545_
                             _method208546_
                             _sym208547_
                             _rebind?208548_)))
                        _g214299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g214299_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym208512_)
        (let ((_$e208520_
               (let ((_ht208513208515_ (gxc#current-compile-local-type)))
                 (if _ht208513208515_
                     (let ((_ht208518_ _ht208513208515_))
                       (declare (not safe))
                       (hash-get _ht208518_ _sym208512_))
                     '#f))))
          (if _$e208520_
              _$e208520_
              (let ((__tmp214300
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp214300 _sym208512_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym208504_)
        (let ((_type208505208507_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym208504_))))
          (if _type208505208507_
              (let ((_type208510_ _type208505208507_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type208510_ 'gxc#!alias::t))
                    (let ((__tmp214301
                           (##structure-ref _type208510_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp214301))
                    _type208510_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where208496_ _klass-id208497_)
        (let ((_$e208499_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id208497_))))
          (if _$e208499_
              ((lambda (_klass208502_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass208502_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where208496_
                        _klass-id208497_
                        _klass208502_)))
                 _klass208502_)
               _$e208499_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where208496_
                 _klass-id208497_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t208493_ _method208494_)
        (let ((__tmp214302
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t208493_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp214302 _method208494_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym208491_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym208491_))
        (let ((__tmp214303
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp214303 _sym208491_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym208489_)
        (let ((__tmp214304
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp214304 _sym208489_))))
    (define gxc#identifier-symbol
      (lambda (_stx208487_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx208487_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx208487_))
            (let () (declare (not safe)) (gx#stx-e _stx208487_)))))))
