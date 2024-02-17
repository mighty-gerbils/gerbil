(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708203247)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp214157 (list))
            (__tmp214155
             (let ((__tmp214156
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214156 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp214157
         '(type ssxi methods)
         __tmp214155
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args210029_
        (apply make-instance gxc#optimizer-info::t _$args210029_)))
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
      (lambda (_self210027_)
        (if (let ((__tmp214164
                   (let ()
                     (declare (not safe))
                     (##structure-length _self210027_))))
              (declare (not safe))
              (##fx< '3 __tmp214164))
            (begin
              (let ((__tmp214159
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214158
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210027_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210027_
                 __tmp214159
                 '1
                 __tmp214158
                 '#f))
              (let ((__tmp214161
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214160
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210027_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210027_
                 __tmp214161
                 '2
                 __tmp214160
                 '#f))
              (let ((__tmp214163
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp214162
                     (let ()
                       (declare (not safe))
                       (##structure-type _self210027_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self210027_
                 __tmp214163
                 '3
                 __tmp214162
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self210027_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self210027_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp214167 (list))
            (__tmp214165
             (let ((__tmp214166
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214166 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp214167
         '(id)
         __tmp214165
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args209902_ (apply make-instance gxc#!type::t _$args209902_)))
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
      (let ((__tmp214170 (list gxc#!type::t))
            (__tmp214168
             (let ((__tmp214169
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214169 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp214170
         '()
         __tmp214168
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args209899_ (apply make-instance gxc#!alias::t _$args209899_)))
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
      (let ((__tmp214173 (list gxc#!type::t))
            (__tmp214171
             (let ((__tmp214172
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214172 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp214173
         '()
         __tmp214171
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args209896_
        (apply make-instance gxc#!procedure::t _$args209896_)))
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
      (let ((__tmp214176 (list gxc#!type::t))
            (__tmp214174
             (let ((__tmp214175
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214175 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp214176
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp214174
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args209893_ (apply make-instance gxc#!class::t _$args209893_)))
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
      (let ((__tmp214179 (list gxc#!procedure::t))
            (__tmp214177
             (let ((__tmp214178
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214178 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp214179
         '()
         __tmp214177
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args209890_
        (apply make-instance gxc#!predicate::t _$args209890_)))
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
      (let ((__tmp214182 (list gxc#!procedure::t))
            (__tmp214180
             (let ((__tmp214181
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214181 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp214182
         '()
         __tmp214180
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args209887_
        (apply make-instance gxc#!constructor::t _$args209887_)))
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
      (let ((__tmp214185 (list gxc#!procedure::t))
            (__tmp214183
             (let ((__tmp214184
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214184 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp214185
         '(slot checked?)
         __tmp214183
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args209884_
        (apply make-instance gxc#!accessor::t _$args209884_)))
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
      (let ((__tmp214188 (list gxc#!procedure::t))
            (__tmp214186
             (let ((__tmp214187
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214187 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp214188
         '(slot checked?)
         __tmp214186
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args209881_
        (apply make-instance gxc#!mutator::t _$args209881_)))
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
      (let ((__tmp214191 (list gxc#!procedure::t))
            (__tmp214189
             (let ((__tmp214190
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214190 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp214191
         '(arity dispatch inline inline-typedecl)
         __tmp214189
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args209878_
        (apply make-instance gxc#!lambda::t _$args209878_)))
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
      (let ((__tmp214194 (list gxc#!procedure::t))
            (__tmp214192
             (let ((__tmp214193
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214193 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp214194
         '(clauses)
         __tmp214192
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args209875_
        (apply make-instance gxc#!case-lambda::t _$args209875_)))
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
      (let ((__tmp214197 (list gxc#!procedure::t))
            (__tmp214195
             (let ((__tmp214196
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214196 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp214197
         '(table dispatch)
         __tmp214195
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args209872_
        (apply make-instance gxc#!kw-lambda::t _$args209872_)))
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
      (let ((__tmp214200 (list gxc#!procedure::t))
            (__tmp214198
             (let ((__tmp214199
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214199 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp214200
         '(keys main)
         __tmp214198
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args209869_
        (apply make-instance gxc#!kw-lambda-primary::t _$args209869_)))
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
      (let ((__tmp214201 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp214201
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args209866_
        (apply make-instance gxc#!primitive::t _$args209866_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp214202 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp214202
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args209863_
        (apply make-instance gxc#!primitive-lambda::t _$args209863_)))
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
      (let ((__tmp214203 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp214203
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args209860_
        (apply make-instance gxc#!primitive-case-lambda::t _$args209860_)))
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
      (lambda (_self209742_
               _id209743_
               _super209744_
               _slots209745_
               _ctor-method209746_
               _struct?209747_
               _final?209748_
               _metaclass209749_)
        (let _lp209751_ ((_rest209753_ _super209744_))
          (let* ((_rest209754209762_ _rest209753_)
                 (_else209756209770_ (lambda () '#!void))
                 (_K209758209776_
                  (lambda (_rest209773_ _super-id209774_)
                    (if (##structure-ref
                         (let ((__tmp214206
                                (let ((__tmp214207
                                       (let ()
                                         (declare (not safe))
                                         (cons _id209743_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp214207))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp214206
                            _super-id209774_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp214204
                               (let ((__tmp214205
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209743_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214205))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp214204
                           _super-id209774_))
                        '#!void)
                    (let () (declare (not safe)) (_lp209751_ _rest209773_)))))
            (if (let () (declare (not safe)) (##pair? _rest209754209762_))
                (let ((_hd209759209779_
                       (let ()
                         (declare (not safe))
                         (##car _rest209754209762_)))
                      (_tl209760209781_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209754209762_))))
                  (let* ((_super-id209784_ _hd209759209779_)
                         (_rest209786_ _tl209760209781_))
                    (declare (not safe))
                    (_K209758209776_ _rest209786_ _super-id209784_)))
                '#!void)))
        (let* ((_ctor-method209836_
                (let ((_$e209788_ _ctor-method209746_))
                  (if _$e209788_
                      _$e209788_
                      (let _lp209791_ ((_rest209793_ _super209744_)
                                       (_method209794_ '#f))
                        (let* ((_rest209795209803_ _rest209793_)
                               (_else209797209811_ (lambda () _method209794_))
                               (_K209799209824_
                                (lambda (_rest209814_ _super-id209815_)
                                  (let* ((_klass209817_
                                          (let ((__tmp214208
                                                 (let ((__tmp214209
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id209743_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp214209))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp214208
                                             _super-id209815_)))
                                         (_$e209819_
                                          (##structure-ref
                                           _klass209817_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e209819_
                                        ((lambda (_ctor-method209822_)
                                           (if _method209794_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method209822_
                                                          _method209794_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp209791_
                                                      _rest209814_
                                                      _ctor-method209822_))
                                                   (let ((__tmp214210
                                                          (let ((__tmp214211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id209743_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp214211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp214210
                                                      _method209794_
                                                      _ctor-method209822_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp209791_
                                                  _rest209814_
                                                  _ctor-method209822_))))
                                         _$e209819_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp209791_
                                           _rest209814_
                                           _method209794_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest209795209803_))
                              (let ((_hd209800209827_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest209795209803_)))
                                    (_tl209801209829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest209795209803_))))
                                (let* ((_super-id209832_ _hd209800209827_)
                                       (_rest209834_ _tl209801209829_))
                                  (declare (not safe))
                                  (_K209799209824_
                                   _rest209834_
                                   _super-id209832_)))
                              (let ()
                                (declare (not safe))
                                (_else209797209811_))))))))
               (_g214212_
                (let ((__tmp214217
                       (lambda (_klass-id209838_)
                         (let ((__tmp214218
                                (##structure-ref
                                 (let ((__tmp214219
                                        (let ((__tmp214220
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209743_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214220))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp214219
                                    _klass-id209838_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id209838_ __tmp214218))))
                      (__tmp214214
                       (lambda (_klass-id209840_)
                         (##structure-ref
                          (let ((__tmp214215
                                 (let ((__tmp214216
                                        (let ()
                                          (declare (not safe))
                                          (cons _id209743_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp214216))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp214215
                             _klass-id209840_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super209744_
                   'get-precedence-list:
                   __tmp214217
                   'struct:
                   __tmp214214
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g214213_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g214212_)
                         (##vector-length _g214212_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g214213_ 2)))
                  (error "Context expects 2 values" _g214213_)))
            (let ((_precedence-list209842_
                   (let () (declare (not safe)) (##vector-ref _g214212_ 0)))
                  (_base-struct209843_
                   (let () (declare (not safe)) (##vector-ref _g214212_ 1))))
              (let ((_fields209845_
                     (let ((__tmp214221
                            (let ((__tmp214222
                                   (let ()
                                     (declare (not safe))
                                     (cons _id209743_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp214222))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp214221
                        _base-struct209843_
                        _precedence-list209842_
                        _slots209745_))))
                (##structure-set! _self209742_ _id209743_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self209742_
                 _super209744_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _precedence-list209842_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _slots209745_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _fields209845_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _ctor-method209836_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _struct?209747_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _final?209748_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209742_
                 _metaclass209749_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self209848_
               _id209849_
               _super209850_
               _precedence-list209851_
               _slots209852_
               _fields209853_
               _constructor209854_
               _struct?209855_
               _final?209856_
               _metaclass209857_
               _methods209858_)
        (##structure-set! _self209848_ _id209849_ '1 gxc#!type::t '#f)
        (##structure-set! _self209848_ _super209850_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self209848_
         _precedence-list209851_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self209848_ _slots209852_ '4 gxc#!class::t '#f)
        (##structure-set! _self209848_ _fields209853_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self209848_
         _constructor209854_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self209848_ _struct?209855_ '7 gxc#!class::t '#f)
        (##structure-set! _self209848_ _final?209856_ '8 gxc#!class::t '#f)
        (##structure-set! _self209848_ _metaclass209857_ '9 gxc#!class::t '#f)
        (if _methods209858_
            (##structure-set!
             _self209848_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods209858_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g214224_
        (let ((_g214223_ (let () (declare (not safe)) (##length _g214224_))))
          (cond ((let () (declare (not safe)) (##fx= _g214223_ 8))
                 (apply (lambda (_self209742_
                                 _id209743_
                                 _super209744_
                                 _slots209745_
                                 _ctor-method209746_
                                 _struct?209747_
                                 _final?209748_
                                 _metaclass209749_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self209742_
                             _id209743_
                             _super209744_
                             _slots209745_
                             _ctor-method209746_
                             _struct?209747_
                             _final?209748_
                             _metaclass209749_)))
                        _g214224_))
                ((let () (declare (not safe)) (##fx= _g214223_ 11))
                 (apply (lambda (_self209848_
                                 _id209849_
                                 _super209850_
                                 _precedence-list209851_
                                 _slots209852_
                                 _fields209853_
                                 _constructor209854_
                                 _struct?209855_
                                 _final?209856_
                                 _metaclass209857_
                                 _methods209858_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self209848_
                             _id209849_
                             _super209850_
                             _precedence-list209851_
                             _slots209852_
                             _fields209853_
                             _constructor209854_
                             _struct?209855_
                             _final?209856_
                             _metaclass209857_
                             _methods209858_)))
                        _g214224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g214224_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t214098)
        (let ((__slots214099
               (let ((__tmp214109
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'slots))))
                 (if __tmp214109 __tmp214109 (error '"Unknown slot" 'slots))))
              (__super214100
               (let ((__tmp214110
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'super))))
                 (if __tmp214110 __tmp214110 (error '"Unknown slot" 'super))))
              (__id214101
               (let ((__tmp214111
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'id))))
                 (if __tmp214111 __tmp214111 (error '"Unknown slot" 'id))))
              (__metaclass214102
               (let ((__tmp214112
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'metaclass))))
                 (if __tmp214112
                     __tmp214112
                     (error '"Unknown slot" 'metaclass))))
              (__methods214103
               (let ((__tmp214113
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'methods))))
                 (if __tmp214113
                     __tmp214113
                     (error '"Unknown slot" 'methods))))
              (__final?214104
               (let ((__tmp214114
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'final?))))
                 (if __tmp214114 __tmp214114 (error '"Unknown slot" 'final?))))
              (__fields214105
               (let ((__tmp214115
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'fields))))
                 (if __tmp214115 __tmp214115 (error '"Unknown slot" 'fields))))
              (__struct?214106
               (let ((__tmp214116
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'struct?))))
                 (if __tmp214116
                     __tmp214116
                     (error '"Unknown slot" 'struct?))))
              (__precedence-list214107
               (let ((__tmp214117
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'precedence-list))))
                 (if __tmp214117
                     __tmp214117
                     (error '"Unknown slot" 'precedence-list))))
              (__constructor214108
               (let ((__tmp214118
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214098 'constructor))))
                 (if __tmp214118
                     __tmp214118
                     (error '"Unknown slot" 'constructor)))))
          (lambda _g214226_
            (let ((_g214225_
                   (let () (declare (not safe)) (##length _g214226_))))
              (cond ((let () (declare (not safe)) (##fx= _g214225_ 8))
                     (apply (lambda (_self209742_
                                     _id209743_
                                     _super209744_
                                     _slots209745_
                                     _ctor-method209746_
                                     _struct?209747_
                                     _final?209748_
                                     _metaclass209749_)
                              (let _lp209751_ ((_rest209753_ _super209744_))
                                (let* ((_rest209754209762_ _rest209753_)
                                       (_else209756209770_ (lambda () '#!void))
                                       (_K209758209776_
                                        (lambda (_rest209773_ _super-id209774_)
                                          (if (##structure-ref
                                               (let ((__tmp214229
                                                      (let ((__tmp214230
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id209743_ '()))))
                (declare (not safe))
                (cons '!class __tmp214230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp214229
                                                  _super-id209774_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp214227
                                                     (let ((__tmp214228
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id209743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp214228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp214227
                                                 _super-id209774_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp209751_ _rest209773_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest209754209762_))
                                      (let ((_hd209759209779_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest209754209762_)))
                                            (_tl209760209781_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest209754209762_))))
                                        (let* ((_super-id209784_
                                                _hd209759209779_)
                                               (_rest209786_ _tl209760209781_))
                                          (declare (not safe))
                                          (_K209758209776_
                                           _rest209786_
                                           _super-id209784_)))
                                      '#!void)))
                              (let* ((_ctor-method209836_
                                      (let ((_$e209788_ _ctor-method209746_))
                                        (if _$e209788_
                                            _$e209788_
                                            (let _lp209791_ ((_rest209793_
                                                              _super209744_)
                                                             (_method209794_
                                                              '#f))
                                              (let* ((_rest209795209803_
                                                      _rest209793_)
                                                     (_else209797209811_
                                                      (lambda ()
                                                        _method209794_))
                                                     (_K209799209824_
                                                      (lambda (_rest209814_
                                                               _super-id209815_)
                                                        (let* ((_klass209817_
                                                                (let ((__tmp214231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp214232
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209743_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214232))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp214231
                           _super-id209815_)))
                       (_$e209819_
                        (##structure-ref _klass209817_ '6 gxc#!class::t '#f)))
                  (if _$e209819_
                      ((lambda (_ctor-method209822_)
                         (if _method209794_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method209822_ _method209794_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp209791_
                                    _rest209814_
                                    _ctor-method209822_))
                                 (let ((__tmp214233
                                        (let ((__tmp214234
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209743_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214234))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp214233
                                    _method209794_
                                    _ctor-method209822_)))
                             (let ()
                               (declare (not safe))
                               (_lp209791_ _rest209814_ _ctor-method209822_))))
                       _$e209819_)
                      (let ()
                        (declare (not safe))
                        (_lp209791_ _rest209814_ _method209794_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest209795209803_))
                                                    (let ((_hd209800209827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest209795209803_)))
                                                          (_tl209801209829_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest209795209803_))))
                                                      (let* ((_super-id209832_
                                                              _hd209800209827_)
                                                             (_rest209834_
                                                              _tl209801209829_))
                                                        (declare (not safe))
                                                        (_K209799209824_
                                                         _rest209834_
                                                         _super-id209832_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else209797209811_))))))))
                                     (_g214235_
                                      (let ((__tmp214240
                                             (lambda (_klass-id209838_)
                                               (let ((__tmp214241
                                                      (##structure-ref
                                                       (let ((__tmp214242
                                                              (let ((__tmp214243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id209743_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp214243))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp214242 _klass-id209838_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id209838_
                                                       __tmp214241))))
                                            (__tmp214237
                                             (lambda (_klass-id209840_)
                                               (##structure-ref
                                                (let ((__tmp214238
                                                       (let ((__tmp214239
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id209743_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp214239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp214238
                                                   _klass-id209840_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super209744_
                                         'get-precedence-list:
                                         __tmp214240
                                         'struct:
                                         __tmp214237
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g214236_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g214235_)
                                               (##vector-length _g214235_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g214236_ 2)))
                                        (error "Context expects 2 values"
                                               _g214236_)))
                                  (let ((_precedence-list209842_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214235_ 0)))
                                        (_base-struct209843_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214235_ 1))))
                                    (let ((_fields209845_
                                           (let ((__tmp214244
                                                  (let ((__tmp214245
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id209743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp214245))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp214244
                                              _base-struct209843_
                                              _precedence-list209842_
                                              _slots209745_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _id209743_
                                         __id214101
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _super209744_
                                         __super214100
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _precedence-list209842_
                                         __precedence-list214107
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _slots209745_
                                         __slots214099
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _fields209845_
                                         __fields214105
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _ctor-method209836_
                                         __constructor214108
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _struct?209747_
                                         __struct?214106
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _final?209748_
                                         __final?214104
                                         __t214098
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209742_
                                         _metaclass209749_
                                         __metaclass214102
                                         __t214098
                                         '#f)))))))
                            _g214226_))
                    ((let () (declare (not safe)) (##fx= _g214225_ 11))
                     (apply (lambda (_self209848_
                                     _id209849_
                                     _super209850_
                                     _precedence-list209851_
                                     _slots209852_
                                     _fields209853_
                                     _constructor209854_
                                     _struct?209855_
                                     _final?209856_
                                     _metaclass209857_
                                     _methods209858_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _id209849_
                                 __id214101
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _super209850_
                                 __super214100
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _precedence-list209851_
                                 __precedence-list214107
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _slots209852_
                                 __slots214099
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _fields209853_
                                 __fields214105
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _constructor209854_
                                 __constructor214108
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _struct?209855_
                                 __struct?214106
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _final?209856_
                                 __final?214104
                                 __t214098
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209848_
                                 _metaclass209857_
                                 __metaclass214102
                                 __t214098
                                 '#f))
                              (if _methods209858_
                                  (let ((__tmp214246
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods209858_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self209848_
                                     __tmp214246
                                     __methods214103
                                     __t214098
                                     '#f))
                                  '#!void))
                            _g214226_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g214226_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where209594_
               _base-struct209595_
               _precedence-list209596_
               _direct-slots209597_)
        (let* ((_base-fields209599_
                (if _base-struct209595_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where209594_
                        _base-struct209595_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields209601_ (reverse _base-fields209599_))
               (_seen-slots209609_
                (let ((_tab209603_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g209604209606_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab209603_ _g209604209606_ '#t)))
                   _base-fields209599_)
                  _tab209603_))
               (_process-slot209613_
                (lambda (_slot209611_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots209609_ _slot209611_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots209609_ _slot209611_ '#t))
                        (set! _r-fields209601_
                              (let ()
                                (declare (not safe))
                                (cons _slot209611_ _r-fields209601_))))))))
          (for-each
           (lambda (_mixin209616_)
             (let ((_klass209618_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where209594_
                       _mixin209616_))))
               (if (##structure-ref _klass209618_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot209613_
                    (##structure-ref _klass209618_ '5 gxc#!class::t '#f)))))
           _precedence-list209596_)
          (for-each _process-slot209613_ _direct-slots209597_)
          (reverse _r-fields209601_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass209553_ _slot209554_)
        (let _lp209556_ ((_rest209558_
                          (##structure-ref _klass209553_ '5 gxc#!class::t '#f))
                         (_offset209559_ '1))
          (let* ((_rest209560209568_ _rest209558_)
                 (_else209562209576_
                  (lambda ()
                    (let ((__tmp214248
                           (##structure-ref _klass209553_ '1 gxc#!type::t '#f))
                          (__tmp214247
                           (##structure-ref
                            _klass209553_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp214248
                       __tmp214247
                       _slot209554_))))
                 (_K209564209582_
                  (lambda (_rest209579_ _s209580_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s209580_ _slot209554_))
                        _offset209559_
                        (let ((__tmp214249
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset209559_ '1))))
                          (declare (not safe))
                          (_lp209556_ _rest209579_ __tmp214249))))))
            (if (let () (declare (not safe)) (##pair? _rest209560209568_))
                (let ((_hd209565209585_
                       (let ()
                         (declare (not safe))
                         (##car _rest209560209568_)))
                      (_tl209566209587_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209560209568_))))
                  (let* ((_s209590_ _hd209565209585_)
                         (_rest209592_ _tl209566209587_))
                    (declare (not safe))
                    (_K209564209582_ _rest209592_ _s209590_)))
                (let () (declare (not safe)) (_else209562209576_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass209511_ _slot209512_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass209511_ _slot209512_))
            _klass209511_
            (let _lp209514_ ((_rest209516_
                              (##structure-ref
                               _klass209511_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest209517209525_ _rest209516_)
                     (_else209519209533_ (lambda () '#f))
                     (_K209521209541_
                      (lambda (_rest209536_ _super209537_)
                        (let ((_super-class209539_
                               (let ((__tmp214250
                                      (let ((__tmp214251
                                             (let ((__tmp214253
                                                    (##structure-ref
                                                     _klass209511_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp214252
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot209512_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp214253
                                                     __tmp214252))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp214251))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp214250
                                  _super209537_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class209539_
                                 _slot209512_))
                              _super-class209539_
                              (let ()
                                (declare (not safe))
                                (_lp209514_ _rest209536_)))))))
                (if (let () (declare (not safe)) (##pair? _rest209517209525_))
                    (let ((_hd209522209544_
                           (let ()
                             (declare (not safe))
                             (##car _rest209517209525_)))
                          (_tl209523209546_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest209517209525_))))
                      (let* ((_super209549_ _hd209522209544_)
                             (_rest209551_ _tl209523209546_))
                        (declare (not safe))
                        (_K209521209541_ _rest209551_ _super209549_)))
                    (let () (declare (not safe)) (_else209519209533_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass209508_ _slot209509_)
        (if (##structure-ref _klass209508_ '7 gxc#!class::t '#f)
            (memq _slot209509_
                  (##structure-ref _klass209508_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self209505_ _id209506_)
        (##structure-set! _self209505_ _id209506_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t214119)
        (let ((__id214120
               (let ((__tmp214121
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214119 'id))))
                 (if __tmp214121 __tmp214121 (error '"Unknown slot" 'id)))))
          (lambda (_self209505_ _id209506_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209505_
               _id209506_
               __id214120
               __t214119
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
      (lambda (_self209380_ _id209381_)
        (##structure-set! _self209380_ _id209381_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t214122)
        (let ((__id214123
               (let ((__tmp214124
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214122 'id))))
                 (if __tmp214124 __tmp214124 (error '"Unknown slot" 'id)))))
          (lambda (_self209380_ _id209381_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209380_
               _id209381_
               __id214123
               __t214122
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
      (lambda (_self209253_ _id209254_ _slot209255_ _checked?209256_)
        (##structure-set! _self209253_ _id209254_ '1 gxc#!type::t '#f)
        (##structure-set! _self209253_ _slot209255_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self209253_
         _checked?209256_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t214125)
        (let ((__id214126
               (let ((__tmp214129
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214125 'id))))
                 (if __tmp214129 __tmp214129 (error '"Unknown slot" 'id))))
              (__checked?214127
               (let ((__tmp214130
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214125 'checked?))))
                 (if __tmp214130
                     __tmp214130
                     (error '"Unknown slot" 'checked?))))
              (__slot214128
               (let ((__tmp214131
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214125 'slot))))
                 (if __tmp214131 __tmp214131 (error '"Unknown slot" 'slot)))))
          (lambda (_self209253_ _id209254_ _slot209255_ _checked?209256_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209253_
               _id209254_
               __id214126
               __t214125
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209253_
               _slot209255_
               __slot214128
               __t214125
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209253_
               _checked?209256_
               __checked?214127
               __t214125
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
      (lambda (_self209126_ _id209127_ _slot209128_ _checked?209129_)
        (##structure-set! _self209126_ _id209127_ '1 gxc#!type::t '#f)
        (##structure-set! _self209126_ _slot209128_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self209126_
         _checked?209129_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t214132)
        (let ((__id214133
               (let ((__tmp214136
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214132 'id))))
                 (if __tmp214136 __tmp214136 (error '"Unknown slot" 'id))))
              (__checked?214134
               (let ((__tmp214137
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214132 'checked?))))
                 (if __tmp214137
                     __tmp214137
                     (error '"Unknown slot" 'checked?))))
              (__slot214135
               (let ((__tmp214138
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t214132 'slot))))
                 (if __tmp214138 __tmp214138 (error '"Unknown slot" 'slot)))))
          (lambda (_self209126_ _id209127_ _slot209128_ _checked?209129_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209126_
               _id209127_
               __id214133
               __t214132
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209126_
               _slot209128_
               __slot214135
               __t214132
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209126_
               _checked?209129_
               __checked?214134
               __t214132
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
      (lambda (_self208970_
               _id208971_
               _arity208972_
               _dispatch208973_
               _inline208974_
               _typedecl208975_)
        (if (let ((__tmp214259
                   (let ()
                     (declare (not safe))
                     (##structure-length _self208970_))))
              (declare (not safe))
              (##fx< '5 __tmp214259))
            (begin
              (let ((__tmp214254
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208970_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208970_
                 _id208971_
                 '1
                 __tmp214254
                 '#f))
              (let ((__tmp214255
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208970_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208970_
                 _arity208972_
                 '2
                 __tmp214255
                 '#f))
              (let ((__tmp214256
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208970_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208970_
                 _dispatch208973_
                 '3
                 __tmp214256
                 '#f))
              (let ((__tmp214257
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208970_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208970_
                 _inline208974_
                 '4
                 __tmp214257
                 '#f))
              (let ((__tmp214258
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208970_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208970_
                 _typedecl208975_
                 '5
                 __tmp214258
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self208970_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self208970_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self208980_ _id208981_ _arity208982_ _dispatch208983_)
        (let* ((_inline208985_ '#f) (_typedecl208987_ '#f))
          (if (let ((__tmp214265
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208980_))))
                (declare (not safe))
                (##fx< '5 __tmp214265))
              (begin
                (let ((__tmp214260
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208980_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208980_
                   _id208981_
                   '1
                   __tmp214260
                   '#f))
                (let ((__tmp214261
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208980_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208980_
                   _arity208982_
                   '2
                   __tmp214261
                   '#f))
                (let ((__tmp214262
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208980_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208980_
                   _dispatch208983_
                   '3
                   __tmp214262
                   '#f))
                (let ((__tmp214263
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208980_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208980_
                   _inline208985_
                   '4
                   __tmp214263
                   '#f))
                (let ((__tmp214264
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208980_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208980_
                   _typedecl208987_
                   '5
                   __tmp214264
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208980_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208980_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self208989_
               _id208990_
               _arity208991_
               _dispatch208992_
               _inline208993_)
        (let ((_typedecl208995_ '#f))
          (if (let ((__tmp214271
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208989_))))
                (declare (not safe))
                (##fx< '5 __tmp214271))
              (begin
                (let ((__tmp214266
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208989_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208989_
                   _id208990_
                   '1
                   __tmp214266
                   '#f))
                (let ((__tmp214267
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208989_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208989_
                   _arity208991_
                   '2
                   __tmp214267
                   '#f))
                (let ((__tmp214268
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208989_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208989_
                   _dispatch208992_
                   '3
                   __tmp214268
                   '#f))
                (let ((__tmp214269
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208989_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208989_
                   _inline208993_
                   '4
                   __tmp214269
                   '#f))
                (let ((__tmp214270
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208989_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208989_
                   _typedecl208995_
                   '5
                   __tmp214270
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208989_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208989_)))))))
    (define gxc#!lambda:::init!
      (lambda _g214273_
        (let ((_g214272_ (let () (declare (not safe)) (##length _g214273_))))
          (cond ((let () (declare (not safe)) (##fx= _g214272_ 4))
                 (apply (lambda (_self208980_
                                 _id208981_
                                 _arity208982_
                                 _dispatch208983_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self208980_
                             _id208981_
                             _arity208982_
                             _dispatch208983_)))
                        _g214273_))
                ((let () (declare (not safe)) (##fx= _g214272_ 5))
                 (apply (lambda (_self208989_
                                 _id208990_
                                 _arity208991_
                                 _dispatch208992_
                                 _inline208993_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self208989_
                             _id208990_
                             _arity208991_
                             _dispatch208992_
                             _inline208993_)))
                        _g214273_))
                ((let () (declare (not safe)) (##fx= _g214272_ 6))
                 (apply (lambda (_self208997_
                                 _id208998_
                                 _arity208999_
                                 _dispatch209000_
                                 _inline209001_
                                 _typedecl209002_)
                          (if (let ((__tmp214279
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self208997_))))
                                (declare (not safe))
                                (##fx< '5 __tmp214279))
                              (begin
                                (let ((__tmp214274
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208997_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208997_
                                   _id208998_
                                   '1
                                   __tmp214274
                                   '#f))
                                (let ((__tmp214275
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208997_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208997_
                                   _arity208999_
                                   '2
                                   __tmp214275
                                   '#f))
                                (let ((__tmp214276
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208997_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208997_
                                   _dispatch209000_
                                   '3
                                   __tmp214276
                                   '#f))
                                (let ((__tmp214277
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208997_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208997_
                                   _inline209001_
                                   '4
                                   __tmp214277
                                   '#f))
                                (let ((__tmp214278
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208997_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208997_
                                   _typedecl209002_
                                   '5
                                   __tmp214278
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self208997_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self208997_)))))
                        _g214273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g214273_))))))
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
      (lambda (_self208722_ . _args208723_)
        (apply struct-instance-init! _self208722_ _args208723_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type208597_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208597_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type208597_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass208590_)
        (let ((_$e208592_
               (##structure-ref _klass208590_ '10 gxc#!class::t '#f)))
          (if _$e208592_
              _$e208592_
              (let ((_tab208595_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass208590_
                 _tab208595_
                 '10
                 gxc#!class::t
                 '#f)
                _tab208595_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass208581_ _method208582_)
        (let ((_tab208583208585_
               (##structure-ref _klass208581_ '10 gxc#!class::t '#f)))
          (if _tab208583208585_
              (let ((_tab208588_ _tab208583208585_))
                (declare (not safe))
                (hash-get _tab208588_ _method208582_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type208578_ _method208579_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208578_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type208578_ _method208579_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym208562_ _type208563_ _local?208564_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208563_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym208562_
                   _type208563_))
        (let ((__tmp214280
               (let () (declare (not safe)) (struct->list _type208563_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym208562_ '" " __tmp214280))
        (let ((__tmp214281
               (if _local?208564_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214281 _sym208562_ _type208563_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym208569_ _type208570_)
        (let ((_local?208572_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym208569_
           _type208570_
           _local?208572_))))
    (define gxc#optimizer-declare-type!
      (lambda _g214283_
        (let ((_g214282_ (let () (declare (not safe)) (##length _g214283_))))
          (cond ((let () (declare (not safe)) (##fx= _g214282_ 2))
                 (apply (lambda (_sym208569_ _type208570_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym208569_
                             _type208570_)))
                        _g214283_))
                ((let () (declare (not safe)) (##fx= _g214282_ 3))
                 (apply (lambda (_sym208574_ _type208575_ _local?208576_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym208574_
                             _type208575_
                             _local?208576_)))
                        _g214283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g214283_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym208548_ _local?208549_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym208548_))
        (let ((__tmp214284
               (if _local?208549_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214284 _sym208548_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym208554_)
        (let ((_local?208556_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym208554_ _local?208556_))))
    (define gxc#optimizer-clear-type!
      (lambda _g214286_
        (let ((_g214285_ (let () (declare (not safe)) (##length _g214286_))))
          (cond ((let () (declare (not safe)) (##fx= _g214285_ 1))
                 (apply (lambda (_sym208554_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym208554_)))
                        _g214286_))
                ((let () (declare (not safe)) (##fx= _g214285_ 2))
                 (apply (lambda (_sym208558_ _local?208559_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym208558_
                             _local?208559_)))
                        _g214286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g214286_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t208521_ _method208522_ _sym208523_ _rebind?208524_)
        (let* ((_type208526_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t208521_)))
               (_$e208528_
                (let () (declare (not safe)) (gxc#!type-vtab _type208526_))))
          (if _$e208528_
              ((lambda (_vtab208531_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab208531_ _method208522_))
                     (if _rebind?208524_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t208521_
                              '" "
                              _method208522_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab208531_
                              _method208522_
                              _sym208523_)))
                         (let ((__tmp214291
                                (let ((__tmp214292
                                       (let ((__tmp214293
                                              (let ((__tmp214294
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym208523_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method208522_
                                                      __tmp214294))))
                                         (declare (not safe))
                                         (cons _type-t208521_ __tmp214293))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp214292))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp214291
                            _method208522_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t208521_
                          '" "
                          _method208522_
                          '" => "
                          _sym208523_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab208531_
                          _method208522_
                          _sym208523_)))))
               _$e208528_)
              (if (let () (declare (not safe)) (not _type208526_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t208521_))
                  (let ((__tmp214287
                         (let ((__tmp214288
                                (let ((__tmp214289
                                       (let ((__tmp214290
                                              (let ()
                                                (declare (not safe))
                                                (cons _method208522_ '()))))
                                         (declare (not safe))
                                         (cons _sym208523_ __tmp214290))))
                                  (declare (not safe))
                                  (cons _type-t208521_ __tmp214289))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp214288))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp214287
                     _type208526_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t208536_ _method208537_ _sym208538_)
        (let ((_rebind?208540_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t208536_
           _method208537_
           _sym208538_
           _rebind?208540_))))
    (define gxc#optimizer-declare-method!
      (lambda _g214296_
        (let ((_g214295_ (let () (declare (not safe)) (##length _g214296_))))
          (cond ((let () (declare (not safe)) (##fx= _g214295_ 3))
                 (apply (lambda (_type-t208536_ _method208537_ _sym208538_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t208536_
                             _method208537_
                             _sym208538_)))
                        _g214296_))
                ((let () (declare (not safe)) (##fx= _g214295_ 4))
                 (apply (lambda (_type-t208542_
                                 _method208543_
                                 _sym208544_
                                 _rebind?208545_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t208542_
                             _method208543_
                             _sym208544_
                             _rebind?208545_)))
                        _g214296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g214296_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym208509_)
        (let ((_$e208517_
               (let ((_ht208510208512_ (gxc#current-compile-local-type)))
                 (if _ht208510208512_
                     (let ((_ht208515_ _ht208510208512_))
                       (declare (not safe))
                       (hash-get _ht208515_ _sym208509_))
                     '#f))))
          (if _$e208517_
              _$e208517_
              (let ((__tmp214297
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp214297 _sym208509_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym208501_)
        (let ((_type208502208504_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym208501_))))
          (if _type208502208504_
              (let ((_type208507_ _type208502208504_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type208507_ 'gxc#!alias::t))
                    (let ((__tmp214298
                           (##structure-ref _type208507_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp214298))
                    _type208507_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where208493_ _klass-id208494_)
        (let ((_$e208496_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id208494_))))
          (if _$e208496_
              ((lambda (_klass208499_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass208499_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where208493_
                        _klass-id208494_
                        _klass208499_)))
                 _klass208499_)
               _$e208496_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where208493_
                 _klass-id208494_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t208490_ _method208491_)
        (let ((__tmp214299
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t208490_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp214299 _method208491_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym208488_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym208488_))
        (let ((__tmp214300
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp214300 _sym208488_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym208486_)
        (let ((__tmp214301
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp214301 _sym208486_))))
    (define gxc#identifier-symbol
      (lambda (_stx208484_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx208484_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx208484_))
            (let () (declare (not safe)) (gx#stx-e _stx208484_)))))))
