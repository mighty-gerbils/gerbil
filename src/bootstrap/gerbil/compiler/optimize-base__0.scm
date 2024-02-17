(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1708194428)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp213985 (list))
            (__tmp213983
             (let ((__tmp213984
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp213984 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp213985
         '(type ssxi methods)
         __tmp213983
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args209857_
        (apply make-instance gxc#optimizer-info::t _$args209857_)))
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
      (lambda (_self209855_)
        (if (let ((__tmp213986
                   (let ()
                     (declare (not safe))
                     (##structure-length _self209855_))))
              (declare (not safe))
              (##fx< '3 __tmp213986))
            (begin
              (let ((__tmp213988
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp213987
                     (let ()
                       (declare (not safe))
                       (##structure-type _self209855_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self209855_
                 __tmp213988
                 '1
                 __tmp213987
                 '#f))
              (let ((__tmp213990
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp213989
                     (let ()
                       (declare (not safe))
                       (##structure-type _self209855_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self209855_
                 __tmp213990
                 '2
                 __tmp213989
                 '#f))
              (let ((__tmp213992
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp213991
                     (let ()
                       (declare (not safe))
                       (##structure-type _self209855_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self209855_
                 __tmp213992
                 '3
                 __tmp213991
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self209855_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self209855_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp213995 (list))
            (__tmp213993
             (let ((__tmp213994
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp213994 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp213995
         '(id)
         __tmp213993
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args209730_ (apply make-instance gxc#!type::t _$args209730_)))
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
      (let ((__tmp213998 (list gxc#!type::t))
            (__tmp213996
             (let ((__tmp213997
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp213997 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp213998
         '()
         __tmp213996
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args209727_ (apply make-instance gxc#!alias::t _$args209727_)))
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
      (let ((__tmp214001 (list gxc#!type::t))
            (__tmp213999
             (let ((__tmp214000
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214000 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp214001
         '()
         __tmp213999
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args209724_
        (apply make-instance gxc#!procedure::t _$args209724_)))
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
      (let ((__tmp214004 (list gxc#!type::t))
            (__tmp214002
             (let ((__tmp214003
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214003 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp214004
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 metaclass
                 methods)
         __tmp214002
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args209721_ (apply make-instance gxc#!class::t _$args209721_)))
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
      (let ((__tmp214007 (list gxc#!procedure::t))
            (__tmp214005
             (let ((__tmp214006
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214006 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp214007
         '()
         __tmp214005
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args209718_
        (apply make-instance gxc#!predicate::t _$args209718_)))
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
      (let ((__tmp214010 (list gxc#!procedure::t))
            (__tmp214008
             (let ((__tmp214009
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214009 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp214010
         '()
         __tmp214008
         '#f)))
    (define gxc#!constructor?
      (let () (declare (not safe)) (make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args209715_
        (apply make-instance gxc#!constructor::t _$args209715_)))
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
      (let ((__tmp214013 (list gxc#!procedure::t))
            (__tmp214011
             (let ((__tmp214012
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214012 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp214013
         '(slot checked?)
         __tmp214011
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args209712_
        (apply make-instance gxc#!accessor::t _$args209712_)))
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
      (let ((__tmp214016 (list gxc#!procedure::t))
            (__tmp214014
             (let ((__tmp214015
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214015 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp214016
         '(slot checked?)
         __tmp214014
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args209709_
        (apply make-instance gxc#!mutator::t _$args209709_)))
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
      (let ((__tmp214019 (list gxc#!procedure::t))
            (__tmp214017
             (let ((__tmp214018
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214018 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp214019
         '(arity dispatch inline inline-typedecl)
         __tmp214017
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args209706_
        (apply make-instance gxc#!lambda::t _$args209706_)))
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
      (let ((__tmp214022 (list gxc#!procedure::t))
            (__tmp214020
             (let ((__tmp214021
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214021 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp214022
         '(clauses)
         __tmp214020
         '#f)))
    (define gxc#!case-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args209703_
        (apply make-instance gxc#!case-lambda::t _$args209703_)))
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
      (let ((__tmp214025 (list gxc#!procedure::t))
            (__tmp214023
             (let ((__tmp214024
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214024 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp214025
         '(table dispatch)
         __tmp214023
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args209700_
        (apply make-instance gxc#!kw-lambda::t _$args209700_)))
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
      (let ((__tmp214028 (list gxc#!procedure::t))
            (__tmp214026
             (let ((__tmp214027
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp214027 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp214028
         '(keys main)
         __tmp214026
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args209697_
        (apply make-instance gxc#!kw-lambda-primary::t _$args209697_)))
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
      (let ((__tmp214029 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp214029
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args209694_
        (apply make-instance gxc#!primitive::t _$args209694_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp214030 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp214030
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args209691_
        (apply make-instance gxc#!primitive-lambda::t _$args209691_)))
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
      (let ((__tmp214031 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp214031
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args209688_
        (apply make-instance gxc#!primitive-case-lambda::t _$args209688_)))
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
      (lambda (_self209570_
               _id209571_
               _super209572_
               _slots209573_
               _ctor-method209574_
               _struct?209575_
               _final?209576_
               _metaclass209577_)
        (let _lp209579_ ((_rest209581_ _super209572_))
          (let* ((_rest209582209590_ _rest209581_)
                 (_else209584209598_ (lambda () '#!void))
                 (_K209586209604_
                  (lambda (_rest209601_ _super-id209602_)
                    (if (##structure-ref
                         (let ((__tmp214032
                                (let ((__tmp214033
                                       (let ()
                                         (declare (not safe))
                                         (cons _id209571_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp214033))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp214032
                            _super-id209602_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp214034
                               (let ((__tmp214035
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209571_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214035))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp214034
                           _super-id209602_))
                        '#!void)
                    (let () (declare (not safe)) (_lp209579_ _rest209601_)))))
            (if (let () (declare (not safe)) (##pair? _rest209582209590_))
                (let ((_hd209587209607_
                       (let ()
                         (declare (not safe))
                         (##car _rest209582209590_)))
                      (_tl209588209609_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209582209590_))))
                  (let* ((_super-id209612_ _hd209587209607_)
                         (_rest209614_ _tl209588209609_))
                    (declare (not safe))
                    (_K209586209604_ _rest209614_ _super-id209612_)))
                '#!void)))
        (let* ((_ctor-method209664_
                (let ((_$e209616_ _ctor-method209574_))
                  (if _$e209616_
                      _$e209616_
                      (let _lp209619_ ((_rest209621_ _super209572_)
                                       (_method209622_ '#f))
                        (let* ((_rest209623209631_ _rest209621_)
                               (_else209625209639_ (lambda () _method209622_))
                               (_K209627209652_
                                (lambda (_rest209642_ _super-id209643_)
                                  (let* ((_klass209645_
                                          (let ((__tmp214036
                                                 (let ((__tmp214037
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id209571_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp214037))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp214036
                                             _super-id209643_)))
                                         (_$e209647_
                                          (##structure-ref
                                           _klass209645_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e209647_
                                        ((lambda (_ctor-method209650_)
                                           (if _method209622_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method209650_
                                                          _method209622_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp209619_
                                                      _rest209642_
                                                      _ctor-method209650_))
                                                   (let ((__tmp214038
                                                          (let ((__tmp214039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id209571_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp214039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp214038
                                                      _method209622_
                                                      _ctor-method209650_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp209619_
                                                  _rest209642_
                                                  _ctor-method209650_))))
                                         _$e209647_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp209619_
                                           _rest209642_
                                           _method209622_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest209623209631_))
                              (let ((_hd209628209655_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest209623209631_)))
                                    (_tl209629209657_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest209623209631_))))
                                (let* ((_super-id209660_ _hd209628209655_)
                                       (_rest209662_ _tl209629209657_))
                                  (declare (not safe))
                                  (_K209627209652_
                                   _rest209662_
                                   _super-id209660_)))
                              (let ()
                                (declare (not safe))
                                (_else209625209639_))))))))
               (_g214040_
                (let ((__tmp214045
                       (lambda (_klass-id209666_)
                         (let ((__tmp214046
                                (##structure-ref
                                 (let ((__tmp214047
                                        (let ((__tmp214048
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209571_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214048))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp214047
                                    _klass-id209666_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id209666_ __tmp214046))))
                      (__tmp214042
                       (lambda (_klass-id209668_)
                         (##structure-ref
                          (let ((__tmp214043
                                 (let ((__tmp214044
                                        (let ()
                                          (declare (not safe))
                                          (cons _id209571_ '()))))
                                   (declare (not safe))
                                   (cons '!class __tmp214044))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-class
                             __tmp214043
                             _klass-id209668_))
                          '7
                          gxc#!class::t
                          '#f))))
                  (declare (not safe))
                  (c4-linearize
                   '()
                   _super209572_
                   'get-precedence-list:
                   __tmp214045
                   'struct:
                   __tmp214042
                   'eq:
                   eq?
                   'get-name:
                   identity))))
          (begin
            (let ((_g214041_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g214040_)
                         (##vector-length _g214040_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g214041_ 2)))
                  (error "Context expects 2 values" _g214041_)))
            (let ((_precedence-list209670_
                   (let () (declare (not safe)) (##vector-ref _g214040_ 0)))
                  (_base-struct209671_
                   (let () (declare (not safe)) (##vector-ref _g214040_ 1))))
              (let ((_fields209673_
                     (let ((__tmp214049
                            (let ((__tmp214050
                                   (let ()
                                     (declare (not safe))
                                     (cons _id209571_ '()))))
                              (declare (not safe))
                              (cons '!class __tmp214050))))
                       (declare (not safe))
                       (gxc#compute-class-fields
                        __tmp214049
                        _base-struct209671_
                        _precedence-list209670_
                        _slots209573_))))
                (##structure-set! _self209570_ _id209571_ '1 gxc#!type::t '#f)
                (##structure-set!
                 _self209570_
                 _super209572_
                 '2
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _precedence-list209670_
                 '3
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _slots209573_
                 '4
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _fields209673_
                 '5
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _ctor-method209664_
                 '6
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _struct?209575_
                 '7
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _final?209576_
                 '8
                 gxc#!class::t
                 '#f)
                (##structure-set!
                 _self209570_
                 _metaclass209577_
                 '9
                 gxc#!class::t
                 '#f)))))))
    (define gxc#!class:::init!__1
      (lambda (_self209676_
               _id209677_
               _super209678_
               _precedence-list209679_
               _slots209680_
               _fields209681_
               _constructor209682_
               _struct?209683_
               _final?209684_
               _metaclass209685_
               _methods209686_)
        (##structure-set! _self209676_ _id209677_ '1 gxc#!type::t '#f)
        (##structure-set! _self209676_ _super209678_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self209676_
         _precedence-list209679_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self209676_ _slots209680_ '4 gxc#!class::t '#f)
        (##structure-set! _self209676_ _fields209681_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self209676_
         _constructor209682_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self209676_ _struct?209683_ '7 gxc#!class::t '#f)
        (##structure-set! _self209676_ _final?209684_ '8 gxc#!class::t '#f)
        (##structure-set! _self209676_ _metaclass209685_ '9 gxc#!class::t '#f)
        (if _methods209686_
            (##structure-set!
             _self209676_
             (let ()
               (declare (not safe))
               (list->hash-table-eq _methods209686_))
             '10
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g214052_
        (let ((_g214051_ (let () (declare (not safe)) (##length _g214052_))))
          (cond ((let () (declare (not safe)) (##fx= _g214051_ 8))
                 (apply (lambda (_self209570_
                                 _id209571_
                                 _super209572_
                                 _slots209573_
                                 _ctor-method209574_
                                 _struct?209575_
                                 _final?209576_
                                 _metaclass209577_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self209570_
                             _id209571_
                             _super209572_
                             _slots209573_
                             _ctor-method209574_
                             _struct?209575_
                             _final?209576_
                             _metaclass209577_)))
                        _g214052_))
                ((let () (declare (not safe)) (##fx= _g214051_ 11))
                 (apply (lambda (_self209676_
                                 _id209677_
                                 _super209678_
                                 _precedence-list209679_
                                 _slots209680_
                                 _fields209681_
                                 _constructor209682_
                                 _struct?209683_
                                 _final?209684_
                                 _metaclass209685_
                                 _methods209686_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self209676_
                             _id209677_
                             _super209678_
                             _precedence-list209679_
                             _slots209680_
                             _fields209681_
                             _constructor209682_
                             _struct?209683_
                             _final?209684_
                             _metaclass209685_
                             _methods209686_)))
                        _g214052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g214052_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t213926)
        (let ((__super213927
               (let ((__tmp213937
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'super))))
                 (if __tmp213937 __tmp213937 (error '"Unknown slot" 'super))))
              (__methods213928
               (let ((__tmp213938
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'methods))))
                 (if __tmp213938
                     __tmp213938
                     (error '"Unknown slot" 'methods))))
              (__metaclass213929
               (let ((__tmp213939
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'metaclass))))
                 (if __tmp213939
                     __tmp213939
                     (error '"Unknown slot" 'metaclass))))
              (__slots213930
               (let ((__tmp213940
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'slots))))
                 (if __tmp213940 __tmp213940 (error '"Unknown slot" 'slots))))
              (__fields213931
               (let ((__tmp213941
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'fields))))
                 (if __tmp213941 __tmp213941 (error '"Unknown slot" 'fields))))
              (__id213932
               (let ((__tmp213942
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'id))))
                 (if __tmp213942 __tmp213942 (error '"Unknown slot" 'id))))
              (__struct?213933
               (let ((__tmp213943
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'struct?))))
                 (if __tmp213943
                     __tmp213943
                     (error '"Unknown slot" 'struct?))))
              (__precedence-list213934
               (let ((__tmp213944
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'precedence-list))))
                 (if __tmp213944
                     __tmp213944
                     (error '"Unknown slot" 'precedence-list))))
              (__constructor213935
               (let ((__tmp213945
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'constructor))))
                 (if __tmp213945
                     __tmp213945
                     (error '"Unknown slot" 'constructor))))
              (__final?213936
               (let ((__tmp213946
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213926 'final?))))
                 (if __tmp213946
                     __tmp213946
                     (error '"Unknown slot" 'final?)))))
          (lambda _g214054_
            (let ((_g214053_
                   (let () (declare (not safe)) (##length _g214054_))))
              (cond ((let () (declare (not safe)) (##fx= _g214053_ 8))
                     (apply (lambda (_self209570_
                                     _id209571_
                                     _super209572_
                                     _slots209573_
                                     _ctor-method209574_
                                     _struct?209575_
                                     _final?209576_
                                     _metaclass209577_)
                              (let _lp209579_ ((_rest209581_ _super209572_))
                                (let* ((_rest209582209590_ _rest209581_)
                                       (_else209584209598_ (lambda () '#!void))
                                       (_K209586209604_
                                        (lambda (_rest209601_ _super-id209602_)
                                          (if (##structure-ref
                                               (let ((__tmp214055
                                                      (let ((__tmp214056
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id209571_ '()))))
                (declare (not safe))
                (cons '!class __tmp214056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp214055
                                                  _super-id209602_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp214057
                                                     (let ((__tmp214058
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id209571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp214058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp214057
                                                 _super-id209602_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp209579_ _rest209601_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest209582209590_))
                                      (let ((_hd209587209607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest209582209590_)))
                                            (_tl209588209609_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest209582209590_))))
                                        (let* ((_super-id209612_
                                                _hd209587209607_)
                                               (_rest209614_ _tl209588209609_))
                                          (declare (not safe))
                                          (_K209586209604_
                                           _rest209614_
                                           _super-id209612_)))
                                      '#!void)))
                              (let* ((_ctor-method209664_
                                      (let ((_$e209616_ _ctor-method209574_))
                                        (if _$e209616_
                                            _$e209616_
                                            (let _lp209619_ ((_rest209621_
                                                              _super209572_)
                                                             (_method209622_
                                                              '#f))
                                              (let* ((_rest209623209631_
                                                      _rest209621_)
                                                     (_else209625209639_
                                                      (lambda ()
                                                        _method209622_))
                                                     (_K209627209652_
                                                      (lambda (_rest209642_
                                                               _super-id209643_)
                                                        (let* ((_klass209645_
                                                                (let ((__tmp214059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp214060
                                      (let ()
                                        (declare (not safe))
                                        (cons _id209571_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp214060))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp214059
                           _super-id209643_)))
                       (_$e209647_
                        (##structure-ref _klass209645_ '6 gxc#!class::t '#f)))
                  (if _$e209647_
                      ((lambda (_ctor-method209650_)
                         (if _method209622_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method209650_ _method209622_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp209619_
                                    _rest209642_
                                    _ctor-method209650_))
                                 (let ((__tmp214061
                                        (let ((__tmp214062
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id209571_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp214062))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp214061
                                    _method209622_
                                    _ctor-method209650_)))
                             (let ()
                               (declare (not safe))
                               (_lp209619_ _rest209642_ _ctor-method209650_))))
                       _$e209647_)
                      (let ()
                        (declare (not safe))
                        (_lp209619_ _rest209642_ _method209622_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest209623209631_))
                                                    (let ((_hd209628209655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest209623209631_)))
                                                          (_tl209629209657_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest209623209631_))))
                                                      (let* ((_super-id209660_
                                                              _hd209628209655_)
                                                             (_rest209662_
                                                              _tl209629209657_))
                                                        (declare (not safe))
                                                        (_K209627209652_
                                                         _rest209662_
                                                         _super-id209660_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else209625209639_))))))))
                                     (_g214063_
                                      (let ((__tmp214068
                                             (lambda (_klass-id209666_)
                                               (let ((__tmp214069
                                                      (##structure-ref
                                                       (let ((__tmp214070
                                                              (let ((__tmp214071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id209571_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp214071))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp214070 _klass-id209666_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id209666_
                                                       __tmp214069))))
                                            (__tmp214065
                                             (lambda (_klass-id209668_)
                                               (##structure-ref
                                                (let ((__tmp214066
                                                       (let ((__tmp214067
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id209571_ '()))))
                 (declare (not safe))
                 (cons '!class __tmp214067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp214066
                                                   _klass-id209668_))
                                                '7
                                                gxc#!class::t
                                                '#f))))
                                        (declare (not safe))
                                        (c4-linearize
                                         '()
                                         _super209572_
                                         'get-precedence-list:
                                         __tmp214068
                                         'struct:
                                         __tmp214065
                                         'eq:
                                         eq?
                                         'get-name:
                                         identity))))
                                (begin
                                  (let ((_g214064_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g214063_)
                                               (##vector-length _g214063_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g214064_ 2)))
                                        (error "Context expects 2 values"
                                               _g214064_)))
                                  (let ((_precedence-list209670_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214063_ 0)))
                                        (_base-struct209671_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g214063_ 1))))
                                    (let ((_fields209673_
                                           (let ((__tmp214072
                                                  (let ((__tmp214073
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id209571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '!class
                                                          __tmp214073))))
                                             (declare (not safe))
                                             (gxc#compute-class-fields
                                              __tmp214072
                                              _base-struct209671_
                                              _precedence-list209670_
                                              _slots209573_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _id209571_
                                         __id213932
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _super209572_
                                         __super213927
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _precedence-list209670_
                                         __precedence-list213934
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _slots209573_
                                         __slots213930
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _fields209673_
                                         __fields213931
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _ctor-method209664_
                                         __constructor213935
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _struct?209575_
                                         __struct?213933
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _final?209576_
                                         __final?213936
                                         __t213926
                                         '#f))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _self209570_
                                         _metaclass209577_
                                         __metaclass213929
                                         __t213926
                                         '#f)))))))
                            _g214054_))
                    ((let () (declare (not safe)) (##fx= _g214053_ 11))
                     (apply (lambda (_self209676_
                                     _id209677_
                                     _super209678_
                                     _precedence-list209679_
                                     _slots209680_
                                     _fields209681_
                                     _constructor209682_
                                     _struct?209683_
                                     _final?209684_
                                     _metaclass209685_
                                     _methods209686_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _id209677_
                                 __id213932
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _super209678_
                                 __super213927
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _precedence-list209679_
                                 __precedence-list213934
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _slots209680_
                                 __slots213930
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _fields209681_
                                 __fields213931
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _constructor209682_
                                 __constructor213935
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _struct?209683_
                                 __struct?213933
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _final?209684_
                                 __final?213936
                                 __t213926
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self209676_
                                 _metaclass209685_
                                 __metaclass213929
                                 __t213926
                                 '#f))
                              (if _methods209686_
                                  (let ((__tmp214074
                                         (let ()
                                           (declare (not safe))
                                           (list->hash-table-eq
                                            _methods209686_))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self209676_
                                     __tmp214074
                                     __methods213928
                                     __t213926
                                     '#f))
                                  '#!void))
                            _g214054_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g214054_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where209422_
               _base-struct209423_
               _precedence-list209424_
               _direct-slots209425_)
        (let* ((_base-fields209427_
                (if _base-struct209423_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where209422_
                        _base-struct209423_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields209429_ (reverse _base-fields209427_))
               (_seen-slots209437_
                (let ((_tab209431_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_g209432209434_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab209431_ _g209432209434_ '#t)))
                   _base-fields209427_)
                  _tab209431_))
               (_process-slot209441_
                (lambda (_slot209439_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _seen-slots209437_ _slot209439_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots209437_ _slot209439_ '#t))
                        (set! _r-fields209429_
                              (let ()
                                (declare (not safe))
                                (cons _slot209439_ _r-fields209429_))))))))
          (for-each
           (lambda (_mixin209444_)
             (let ((_klass209446_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where209422_
                       _mixin209444_))))
               (if (##structure-ref _klass209446_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot209441_
                    (##structure-ref _klass209446_ '5 gxc#!class::t '#f)))))
           _precedence-list209424_)
          (for-each _process-slot209441_ _direct-slots209425_)
          (reverse _r-fields209429_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass209381_ _slot209382_)
        (let _lp209384_ ((_rest209386_
                          (##structure-ref _klass209381_ '5 gxc#!class::t '#f))
                         (_offset209387_ '1))
          (let* ((_rest209388209396_ _rest209386_)
                 (_else209390209404_
                  (lambda ()
                    (let ((__tmp214076
                           (##structure-ref _klass209381_ '1 gxc#!type::t '#f))
                          (__tmp214075
                           (##structure-ref
                            _klass209381_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp214076
                       __tmp214075
                       _slot209382_))))
                 (_K209392209410_
                  (lambda (_rest209407_ _s209408_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s209408_ _slot209382_))
                        _offset209387_
                        (let ((__tmp214077
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset209387_ '1))))
                          (declare (not safe))
                          (_lp209384_ _rest209407_ __tmp214077))))))
            (if (let () (declare (not safe)) (##pair? _rest209388209396_))
                (let ((_hd209393209413_
                       (let ()
                         (declare (not safe))
                         (##car _rest209388209396_)))
                      (_tl209394209415_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest209388209396_))))
                  (let* ((_s209418_ _hd209393209413_)
                         (_rest209420_ _tl209394209415_))
                    (declare (not safe))
                    (_K209392209410_ _rest209420_ _s209418_)))
                (let () (declare (not safe)) (_else209390209404_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass209339_ _slot209340_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass209339_ _slot209340_))
            _klass209339_
            (let _lp209342_ ((_rest209344_
                              (##structure-ref
                               _klass209339_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest209345209353_ _rest209344_)
                     (_else209347209361_ (lambda () '#f))
                     (_K209349209369_
                      (lambda (_rest209364_ _super209365_)
                        (let ((_super-class209367_
                               (let ((__tmp214078
                                      (let ((__tmp214079
                                             (let ((__tmp214081
                                                    (##structure-ref
                                                     _klass209339_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp214080
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot209340_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp214081
                                                     __tmp214080))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp214079))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp214078
                                  _super209365_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class209367_
                                 _slot209340_))
                              _super-class209367_
                              (let ()
                                (declare (not safe))
                                (_lp209342_ _rest209364_)))))))
                (if (let () (declare (not safe)) (##pair? _rest209345209353_))
                    (let ((_hd209350209372_
                           (let ()
                             (declare (not safe))
                             (##car _rest209345209353_)))
                          (_tl209351209374_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest209345209353_))))
                      (let* ((_super209377_ _hd209350209372_)
                             (_rest209379_ _tl209351209374_))
                        (declare (not safe))
                        (_K209349209369_ _rest209379_ _super209377_)))
                    (let () (declare (not safe)) (_else209347209361_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass209336_ _slot209337_)
        (if (##structure-ref _klass209336_ '7 gxc#!class::t '#f)
            (memq _slot209337_
                  (##structure-ref _klass209336_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self209333_ _id209334_)
        (##structure-set! _self209333_ _id209334_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t213947)
        (let ((__id213948
               (let ((__tmp213949
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213947 'id))))
                 (if __tmp213949 __tmp213949 (error '"Unknown slot" 'id)))))
          (lambda (_self209333_ _id209334_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209333_
               _id209334_
               __id213948
               __t213947
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
      (lambda (_self209208_ _id209209_)
        (##structure-set! _self209208_ _id209209_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t213950)
        (let ((__id213951
               (let ((__tmp213952
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213950 'id))))
                 (if __tmp213952 __tmp213952 (error '"Unknown slot" 'id)))))
          (lambda (_self209208_ _id209209_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209208_
               _id209209_
               __id213951
               __t213950
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
      (lambda (_self209081_ _id209082_ _slot209083_ _checked?209084_)
        (##structure-set! _self209081_ _id209082_ '1 gxc#!type::t '#f)
        (##structure-set! _self209081_ _slot209083_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self209081_
         _checked?209084_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t213953)
        (let ((__slot213954
               (let ((__tmp213957
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213953 'slot))))
                 (if __tmp213957 __tmp213957 (error '"Unknown slot" 'slot))))
              (__id213955
               (let ((__tmp213958
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213953 'id))))
                 (if __tmp213958 __tmp213958 (error '"Unknown slot" 'id))))
              (__checked?213956
               (let ((__tmp213959
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213953 'checked?))))
                 (if __tmp213959
                     __tmp213959
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self209081_ _id209082_ _slot209083_ _checked?209084_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209081_
               _id209082_
               __id213955
               __t213953
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209081_
               _slot209083_
               __slot213954
               __t213953
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self209081_
               _checked?209084_
               __checked?213956
               __t213953
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
      (lambda (_self208954_ _id208955_ _slot208956_ _checked?208957_)
        (##structure-set! _self208954_ _id208955_ '1 gxc#!type::t '#f)
        (##structure-set! _self208954_ _slot208956_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self208954_
         _checked?208957_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t213960)
        (let ((__slot213961
               (let ((__tmp213964
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213960 'slot))))
                 (if __tmp213964 __tmp213964 (error '"Unknown slot" 'slot))))
              (__id213962
               (let ((__tmp213965
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213960 'id))))
                 (if __tmp213965 __tmp213965 (error '"Unknown slot" 'id))))
              (__checked?213963
               (let ((__tmp213966
                      (let ()
                        (declare (not safe))
                        (class-slot-offset __t213960 'checked?))))
                 (if __tmp213966
                     __tmp213966
                     (error '"Unknown slot" 'checked?)))))
          (lambda (_self208954_ _id208955_ _slot208956_ _checked?208957_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self208954_
               _id208955_
               __id213962
               __t213960
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self208954_
               _slot208956_
               __slot213961
               __t213960
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self208954_
               _checked?208957_
               __checked?213963
               __t213960
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
      (lambda (_self208798_
               _id208799_
               _arity208800_
               _dispatch208801_
               _inline208802_
               _typedecl208803_)
        (if (let ((__tmp214082
                   (let ()
                     (declare (not safe))
                     (##structure-length _self208798_))))
              (declare (not safe))
              (##fx< '5 __tmp214082))
            (begin
              (let ((__tmp214083
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208798_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208798_
                 _id208799_
                 '1
                 __tmp214083
                 '#f))
              (let ((__tmp214084
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208798_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208798_
                 _arity208800_
                 '2
                 __tmp214084
                 '#f))
              (let ((__tmp214085
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208798_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208798_
                 _dispatch208801_
                 '3
                 __tmp214085
                 '#f))
              (let ((__tmp214086
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208798_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208798_
                 _inline208802_
                 '4
                 __tmp214086
                 '#f))
              (let ((__tmp214087
                     (let ()
                       (declare (not safe))
                       (##structure-type _self208798_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self208798_
                 _typedecl208803_
                 '5
                 __tmp214087
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self208798_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self208798_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self208808_ _id208809_ _arity208810_ _dispatch208811_)
        (let* ((_inline208813_ '#f) (_typedecl208815_ '#f))
          (if (let ((__tmp214088
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208808_))))
                (declare (not safe))
                (##fx< '5 __tmp214088))
              (begin
                (let ((__tmp214089
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208808_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208808_
                   _id208809_
                   '1
                   __tmp214089
                   '#f))
                (let ((__tmp214090
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208808_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208808_
                   _arity208810_
                   '2
                   __tmp214090
                   '#f))
                (let ((__tmp214091
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208808_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208808_
                   _dispatch208811_
                   '3
                   __tmp214091
                   '#f))
                (let ((__tmp214092
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208808_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208808_
                   _inline208813_
                   '4
                   __tmp214092
                   '#f))
                (let ((__tmp214093
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208808_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208808_
                   _typedecl208815_
                   '5
                   __tmp214093
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208808_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208808_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self208817_
               _id208818_
               _arity208819_
               _dispatch208820_
               _inline208821_)
        (let ((_typedecl208823_ '#f))
          (if (let ((__tmp214094
                     (let ()
                       (declare (not safe))
                       (##structure-length _self208817_))))
                (declare (not safe))
                (##fx< '5 __tmp214094))
              (begin
                (let ((__tmp214095
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208817_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208817_
                   _id208818_
                   '1
                   __tmp214095
                   '#f))
                (let ((__tmp214096
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208817_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208817_
                   _arity208819_
                   '2
                   __tmp214096
                   '#f))
                (let ((__tmp214097
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208817_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208817_
                   _dispatch208820_
                   '3
                   __tmp214097
                   '#f))
                (let ((__tmp214098
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208817_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208817_
                   _inline208821_
                   '4
                   __tmp214098
                   '#f))
                (let ((__tmp214099
                       (let ()
                         (declare (not safe))
                         (##structure-type _self208817_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _self208817_
                   _typedecl208823_
                   '5
                   __tmp214099
                   '#f)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self208817_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self208817_)))))))
    (define gxc#!lambda:::init!
      (lambda _g214101_
        (let ((_g214100_ (let () (declare (not safe)) (##length _g214101_))))
          (cond ((let () (declare (not safe)) (##fx= _g214100_ 4))
                 (apply (lambda (_self208808_
                                 _id208809_
                                 _arity208810_
                                 _dispatch208811_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self208808_
                             _id208809_
                             _arity208810_
                             _dispatch208811_)))
                        _g214101_))
                ((let () (declare (not safe)) (##fx= _g214100_ 5))
                 (apply (lambda (_self208817_
                                 _id208818_
                                 _arity208819_
                                 _dispatch208820_
                                 _inline208821_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self208817_
                             _id208818_
                             _arity208819_
                             _dispatch208820_
                             _inline208821_)))
                        _g214101_))
                ((let () (declare (not safe)) (##fx= _g214100_ 6))
                 (apply (lambda (_self208825_
                                 _id208826_
                                 _arity208827_
                                 _dispatch208828_
                                 _inline208829_
                                 _typedecl208830_)
                          (if (let ((__tmp214102
                                     (let ()
                                       (declare (not safe))
                                       (##structure-length _self208825_))))
                                (declare (not safe))
                                (##fx< '5 __tmp214102))
                              (begin
                                (let ((__tmp214103
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208825_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208825_
                                   _id208826_
                                   '1
                                   __tmp214103
                                   '#f))
                                (let ((__tmp214104
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208825_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208825_
                                   _arity208827_
                                   '2
                                   __tmp214104
                                   '#f))
                                (let ((__tmp214105
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208825_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208825_
                                   _dispatch208828_
                                   '3
                                   __tmp214105
                                   '#f))
                                (let ((__tmp214106
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208825_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208825_
                                   _inline208829_
                                   '4
                                   __tmp214106
                                   '#f))
                                (let ((__tmp214107
                                       (let ()
                                         (declare (not safe))
                                         (##structure-type _self208825_))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self208825_
                                   _typedecl208830_
                                   '5
                                   __tmp214107
                                   '#f)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self208825_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self208825_)))))
                        _g214101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g214101_))))))
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
      (lambda (_self208550_ . _args208551_)
        (apply struct-instance-init! _self208550_ _args208551_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!type-vtab
      (lambda (_type208425_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208425_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type208425_))
            '#f)))
    (define gxc#!class-method-table
      (lambda (_klass208418_)
        (let ((_$e208420_
               (##structure-ref _klass208418_ '10 gxc#!class::t '#f)))
          (if _$e208420_
              _$e208420_
              (let ((_tab208423_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _klass208418_
                 _tab208423_
                 '10
                 gxc#!class::t
                 '#f)
                _tab208423_)))))
    (define gxc#!class-lookup-method
      (lambda (_klass208409_ _method208410_)
        (let ((_tab208411208413_
               (##structure-ref _klass208409_ '10 gxc#!class::t '#f)))
          (if _tab208411208413_
              (let ((_tab208416_ _tab208411208413_))
                (declare (not safe))
                (hash-get _tab208416_ _method208410_))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type208406_ _method208407_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208406_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type208406_ _method208407_))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym208390_ _type208391_ _local?208392_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type208391_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym208390_
                   _type208391_))
        (let ((__tmp214108
               (let () (declare (not safe)) (struct->list _type208391_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym208390_ '" " __tmp214108))
        (let ((__tmp214109
               (if _local?208392_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214109 _sym208390_ _type208391_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym208397_ _type208398_)
        (let ((_local?208400_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym208397_
           _type208398_
           _local?208400_))))
    (define gxc#optimizer-declare-type!
      (lambda _g214111_
        (let ((_g214110_ (let () (declare (not safe)) (##length _g214111_))))
          (cond ((let () (declare (not safe)) (##fx= _g214110_ 2))
                 (apply (lambda (_sym208397_ _type208398_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym208397_
                             _type208398_)))
                        _g214111_))
                ((let () (declare (not safe)) (##fx= _g214110_ 3))
                 (apply (lambda (_sym208402_ _type208403_ _local?208404_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym208402_
                             _type208403_
                             _local?208404_)))
                        _g214111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g214111_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym208376_ _local?208377_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym208376_))
        (let ((__tmp214112
               (if _local?208377_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp214112 _sym208376_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym208382_)
        (let ((_local?208384_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym208382_ _local?208384_))))
    (define gxc#optimizer-clear-type!
      (lambda _g214114_
        (let ((_g214113_ (let () (declare (not safe)) (##length _g214114_))))
          (cond ((let () (declare (not safe)) (##fx= _g214113_ 1))
                 (apply (lambda (_sym208382_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym208382_)))
                        _g214114_))
                ((let () (declare (not safe)) (##fx= _g214113_ 2))
                 (apply (lambda (_sym208386_ _local?208387_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym208386_
                             _local?208387_)))
                        _g214114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g214114_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t208349_ _method208350_ _sym208351_ _rebind?208352_)
        (let* ((_type208354_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t208349_)))
               (_$e208356_
                (let () (declare (not safe)) (gxc#!type-vtab _type208354_))))
          (if _$e208356_
              ((lambda (_vtab208359_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab208359_ _method208350_))
                     (if _rebind?208352_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t208349_
                              '" "
                              _method208350_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab208359_
                              _method208350_
                              _sym208351_)))
                         (let ((__tmp214115
                                (let ((__tmp214116
                                       (let ((__tmp214117
                                              (let ((__tmp214118
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym208351_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method208350_
                                                      __tmp214118))))
                                         (declare (not safe))
                                         (cons _type-t208349_ __tmp214117))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp214116))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp214115
                            _method208350_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t208349_
                          '" "
                          _method208350_
                          '" => "
                          _sym208351_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab208359_
                          _method208350_
                          _sym208351_)))))
               _$e208356_)
              (if (let () (declare (not safe)) (not _type208354_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t208349_))
                  (let ((__tmp214119
                         (let ((__tmp214120
                                (let ((__tmp214121
                                       (let ((__tmp214122
                                              (let ()
                                                (declare (not safe))
                                                (cons _method208350_ '()))))
                                         (declare (not safe))
                                         (cons _sym208351_ __tmp214122))))
                                  (declare (not safe))
                                  (cons _type-t208349_ __tmp214121))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp214120))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp214119
                     _type208354_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t208364_ _method208365_ _sym208366_)
        (let ((_rebind?208368_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t208364_
           _method208365_
           _sym208366_
           _rebind?208368_))))
    (define gxc#optimizer-declare-method!
      (lambda _g214124_
        (let ((_g214123_ (let () (declare (not safe)) (##length _g214124_))))
          (cond ((let () (declare (not safe)) (##fx= _g214123_ 3))
                 (apply (lambda (_type-t208364_ _method208365_ _sym208366_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t208364_
                             _method208365_
                             _sym208366_)))
                        _g214124_))
                ((let () (declare (not safe)) (##fx= _g214123_ 4))
                 (apply (lambda (_type-t208370_
                                 _method208371_
                                 _sym208372_
                                 _rebind?208373_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t208370_
                             _method208371_
                             _sym208372_
                             _rebind?208373_)))
                        _g214124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g214124_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym208337_)
        (let ((_$e208345_
               (let ((_ht208338208340_ (gxc#current-compile-local-type)))
                 (if _ht208338208340_
                     (let ((_ht208343_ _ht208338208340_))
                       (declare (not safe))
                       (hash-get _ht208343_ _sym208337_))
                     '#f))))
          (if _$e208345_
              _$e208345_
              (let ((__tmp214125
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp214125 _sym208337_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym208329_)
        (let ((_type208330208332_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym208329_))))
          (if _type208330208332_
              (let ((_type208335_ _type208330208332_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type208335_ 'gxc#!alias::t))
                    (let ((__tmp214126
                           (##structure-ref _type208335_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp214126))
                    _type208335_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where208321_ _klass-id208322_)
        (let ((_$e208324_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id208322_))))
          (if _$e208324_
              ((lambda (_klass208327_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass208327_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where208321_
                        _klass-id208322_
                        _klass208327_)))
                 _klass208327_)
               _$e208324_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where208321_
                 _klass-id208322_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t208318_ _method208319_)
        (let ((__tmp214127
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t208318_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp214127 _method208319_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym208316_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym208316_))
        (let ((__tmp214128
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp214128 _sym208316_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym208314_)
        (let ((__tmp214129
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp214129 _sym208314_))))
    (define gxc#identifier-symbol
      (lambda (_stx208312_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx208312_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx208312_))
            (let () (declare (not safe)) (gx#stx-e _stx208312_)))))))
