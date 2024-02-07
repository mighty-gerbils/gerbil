(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1707346618)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp210604
             (let ((__tmp210605
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210605 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#optimizer-info::t
         'optimizer-info
         '#f
         '(type ssxi methods)
         __tmp210604
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args206325_
        (apply make-struct-instance gxc#optimizer-info::t _$args206325_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_self206323_)
        (if (let ((__tmp210609
                   (let ()
                     (declare (not safe))
                     (##vector-length _self206323_))))
              (declare (not safe))
              (##fx< '3 __tmp210609))
            (begin
              (let ((__tmp210606
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self206323_ '1 __tmp210606))
              (let ((__tmp210607
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self206323_ '2 __tmp210607))
              (let ((__tmp210608
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self206323_ '3 __tmp210608)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self206323_
                   '3
                   (let ()
                     (declare (not safe))
                     (##vector-length _self206323_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210610
             (let ((__tmp210611
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210611 '()))))
        (declare (not safe))
        (make-struct-type* 'gxc#!type::t '!type '#f '(id) __tmp210610 '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args206198_
        (apply make-struct-instance gxc#!type::t _$args206198_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp210612
             (let ((__tmp210613
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210613 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!alias::t
         '!alias
         gxc#!type::t
         '()
         __tmp210612
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args206195_
        (apply make-struct-instance gxc#!alias::t _$args206195_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!procedure::t
      (let ((__tmp210614
             (let ((__tmp210615
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210615 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!procedure::t
         '!procedure
         gxc#!type::t
         '()
         __tmp210614
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args206192_
        (apply make-struct-instance gxc#!procedure::t _$args206192_)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!struct-type::t
      (let ((__tmp210616
             (let ((__tmp210617
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210617 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!struct-type::t
         '!struct-type
         gxc#!type::t
         '(super fields xfields ctor plist methods)
         __tmp210616
         ':init!)))
    (define gxc#!struct-type?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-type::t)))
    (define gxc#make-!struct-type
      (lambda _$args206189_
        (apply make-struct-instance gxc#!struct-type::t _$args206189_)))
    (define gxc#!struct-type-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'super)))
    (define gxc#!struct-type-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'fields)))
    (define gxc#!struct-type-xfields
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'xfields)))
    (define gxc#!struct-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'ctor)))
    (define gxc#!struct-type-plist
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'plist)))
    (define gxc#!struct-type-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'methods)))
    (define gxc#!struct-type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-type::t 'id)))
    (define gxc#!struct-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'super)))
    (define gxc#!struct-type-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'fields)))
    (define gxc#!struct-type-xfields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'xfields)))
    (define gxc#!struct-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'ctor)))
    (define gxc#!struct-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'plist)))
    (define gxc#!struct-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'methods)))
    (define gxc#!struct-type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-type::t 'id)))
    (define gxc#&!struct-type-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'super)))
    (define gxc#&!struct-type-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'fields)))
    (define gxc#&!struct-type-xfields
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'xfields)))
    (define gxc#&!struct-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'ctor)))
    (define gxc#&!struct-type-plist
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'plist)))
    (define gxc#&!struct-type-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'methods)))
    (define gxc#&!struct-type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-type::t 'id)))
    (define gxc#&!struct-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'super)))
    (define gxc#&!struct-type-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'fields)))
    (define gxc#&!struct-type-xfields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'xfields)))
    (define gxc#&!struct-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'ctor)))
    (define gxc#&!struct-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'plist)))
    (define gxc#&!struct-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'methods)))
    (define gxc#&!struct-type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-type::t 'id)))
    (define gxc#!class-type::t
      (let ((__tmp210618
             (let ((__tmp210619
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210619 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class-type::t
         '!class-type
         gxc#!type::t
         '(super mixin slots xslots ctor plist methods)
         __tmp210618
         ':init!)))
    (define gxc#!class-type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-type::t)))
    (define gxc#make-!class-type
      (lambda _$args206186_
        (apply make-struct-instance gxc#!class-type::t _$args206186_)))
    (define gxc#!class-type-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'super)))
    (define gxc#!class-type-mixin
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'mixin)))
    (define gxc#!class-type-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'slots)))
    (define gxc#!class-type-xslots
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'xslots)))
    (define gxc#!class-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'ctor)))
    (define gxc#!class-type-plist
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'plist)))
    (define gxc#!class-type-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'methods)))
    (define gxc#!class-type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-type::t 'id)))
    (define gxc#!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'super)))
    (define gxc#!class-type-mixin-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'mixin)))
    (define gxc#!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'slots)))
    (define gxc#!class-type-xslots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'xslots)))
    (define gxc#!class-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'ctor)))
    (define gxc#!class-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'plist)))
    (define gxc#!class-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'methods)))
    (define gxc#!class-type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-type::t 'id)))
    (define gxc#&!class-type-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'super)))
    (define gxc#&!class-type-mixin
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'mixin)))
    (define gxc#&!class-type-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'slots)))
    (define gxc#&!class-type-xslots
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'xslots)))
    (define gxc#&!class-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'ctor)))
    (define gxc#&!class-type-plist
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'plist)))
    (define gxc#&!class-type-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'methods)))
    (define gxc#&!class-type-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-type::t 'id)))
    (define gxc#&!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'super)))
    (define gxc#&!class-type-mixin-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'mixin)))
    (define gxc#&!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'slots)))
    (define gxc#&!class-type-xslots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'xslots)))
    (define gxc#&!class-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'ctor)))
    (define gxc#&!class-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'plist)))
    (define gxc#&!class-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'methods)))
    (define gxc#&!class-type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-type::t 'id)))
    (define gxc#!struct-pred::t
      (let ((__tmp210620
             (let ((__tmp210621
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210621 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!struct-pred::t
         '!struct-pred
         gxc#!procedure::t
         '()
         __tmp210620
         '#f)))
    (define gxc#!struct-pred?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-pred::t)))
    (define gxc#make-!struct-pred
      (lambda _$args206183_
        (apply make-struct-instance gxc#!struct-pred::t _$args206183_)))
    (define gxc#!struct-pred-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-pred::t 'id)))
    (define gxc#!struct-pred-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-pred::t 'id)))
    (define gxc#&!struct-pred-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-pred::t 'id)))
    (define gxc#&!struct-pred-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-pred::t 'id)))
    (define gxc#!struct-cons::t
      (let ((__tmp210622
             (let ((__tmp210623
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210623 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!struct-cons::t
         '!struct-cons
         gxc#!procedure::t
         '()
         __tmp210622
         '#f)))
    (define gxc#!struct-cons?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-cons::t)))
    (define gxc#make-!struct-cons
      (lambda _$args206180_
        (apply make-struct-instance gxc#!struct-cons::t _$args206180_)))
    (define gxc#!struct-cons-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-cons::t 'id)))
    (define gxc#!struct-cons-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-cons::t 'id)))
    (define gxc#&!struct-cons-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-cons::t 'id)))
    (define gxc#&!struct-cons-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-cons::t 'id)))
    (define gxc#!struct-getf::t
      (let ((__tmp210624
             (let ((__tmp210625
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210625 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!struct-getf::t
         '!struct-getf
         gxc#!procedure::t
         '(off unchecked?)
         __tmp210624
         '#f)))
    (define gxc#!struct-getf?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-getf::t)))
    (define gxc#make-!struct-getf
      (lambda _$args206177_
        (apply make-struct-instance gxc#!struct-getf::t _$args206177_)))
    (define gxc#!struct-getf-off
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-getf::t 'off)))
    (define gxc#!struct-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-getf::t 'unchecked?)))
    (define gxc#!struct-getf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-getf::t 'id)))
    (define gxc#!struct-getf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-getf::t 'off)))
    (define gxc#!struct-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-getf::t 'unchecked?)))
    (define gxc#!struct-getf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-getf::t 'id)))
    (define gxc#&!struct-getf-off
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-getf::t 'off)))
    (define gxc#&!struct-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-getf::t 'unchecked?)))
    (define gxc#&!struct-getf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-getf::t 'id)))
    (define gxc#&!struct-getf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-getf::t 'off)))
    (define gxc#&!struct-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-getf::t 'unchecked?)))
    (define gxc#&!struct-getf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-getf::t 'id)))
    (define gxc#!struct-setf::t
      (let ((__tmp210626
             (let ((__tmp210627
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210627 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!struct-setf::t
         '!struct-setf
         gxc#!procedure::t
         '(off unchecked?)
         __tmp210626
         '#f)))
    (define gxc#!struct-setf?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-setf::t)))
    (define gxc#make-!struct-setf
      (lambda _$args206174_
        (apply make-struct-instance gxc#!struct-setf::t _$args206174_)))
    (define gxc#!struct-setf-off
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-setf::t 'off)))
    (define gxc#!struct-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-setf::t 'unchecked?)))
    (define gxc#!struct-setf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!struct-setf::t 'id)))
    (define gxc#!struct-setf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-setf::t 'off)))
    (define gxc#!struct-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-setf::t 'unchecked?)))
    (define gxc#!struct-setf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!struct-setf::t 'id)))
    (define gxc#&!struct-setf-off
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-setf::t 'off)))
    (define gxc#&!struct-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-setf::t 'unchecked?)))
    (define gxc#&!struct-setf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!struct-setf::t 'id)))
    (define gxc#&!struct-setf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-setf::t 'off)))
    (define gxc#&!struct-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-setf::t 'unchecked?)))
    (define gxc#&!struct-setf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!struct-setf::t 'id)))
    (define gxc#!class-pred::t
      (let ((__tmp210628
             (let ((__tmp210629
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210629 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class-pred::t
         '!class-pred
         gxc#!procedure::t
         '()
         __tmp210628
         '#f)))
    (define gxc#!class-pred?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-pred::t)))
    (define gxc#make-!class-pred
      (lambda _$args206171_
        (apply make-struct-instance gxc#!class-pred::t _$args206171_)))
    (define gxc#!class-pred-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-pred::t 'id)))
    (define gxc#!class-pred-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-pred::t 'id)))
    (define gxc#&!class-pred-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-pred::t 'id)))
    (define gxc#&!class-pred-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-pred::t 'id)))
    (define gxc#!class-cons::t
      (let ((__tmp210630
             (let ((__tmp210631
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210631 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class-cons::t
         '!class-cons
         gxc#!procedure::t
         '()
         __tmp210630
         '#f)))
    (define gxc#!class-cons?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-cons::t)))
    (define gxc#make-!class-cons
      (lambda _$args206168_
        (apply make-struct-instance gxc#!class-cons::t _$args206168_)))
    (define gxc#!class-cons-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-cons::t 'id)))
    (define gxc#!class-cons-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-cons::t 'id)))
    (define gxc#&!class-cons-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-cons::t 'id)))
    (define gxc#&!class-cons-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-cons::t 'id)))
    (define gxc#!class-getf::t
      (let ((__tmp210632
             (let ((__tmp210633
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210633 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class-getf::t
         '!class-getf
         gxc#!procedure::t
         '(slot unchecked?)
         __tmp210632
         '#f)))
    (define gxc#!class-getf?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-getf::t)))
    (define gxc#make-!class-getf
      (lambda _$args206165_
        (apply make-struct-instance gxc#!class-getf::t _$args206165_)))
    (define gxc#!class-getf-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-getf::t 'slot)))
    (define gxc#!class-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-getf::t 'unchecked?)))
    (define gxc#!class-getf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-getf::t 'id)))
    (define gxc#!class-getf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-getf::t 'slot)))
    (define gxc#!class-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-getf::t 'unchecked?)))
    (define gxc#!class-getf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-getf::t 'id)))
    (define gxc#&!class-getf-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-getf::t 'slot)))
    (define gxc#&!class-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-getf::t 'unchecked?)))
    (define gxc#&!class-getf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-getf::t 'id)))
    (define gxc#&!class-getf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-getf::t 'slot)))
    (define gxc#&!class-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-getf::t 'unchecked?)))
    (define gxc#&!class-getf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-getf::t 'id)))
    (define gxc#!class-setf::t
      (let ((__tmp210634
             (let ((__tmp210635
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210635 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class-setf::t
         '!class-setf
         gxc#!procedure::t
         '(slot unchecked?)
         __tmp210634
         '#f)))
    (define gxc#!class-setf?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-setf::t)))
    (define gxc#make-!class-setf
      (lambda _$args206162_
        (apply make-struct-instance gxc#!class-setf::t _$args206162_)))
    (define gxc#!class-setf-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-setf::t 'slot)))
    (define gxc#!class-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-setf::t 'unchecked?)))
    (define gxc#!class-setf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class-setf::t 'id)))
    (define gxc#!class-setf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-setf::t 'slot)))
    (define gxc#!class-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-setf::t 'unchecked?)))
    (define gxc#!class-setf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class-setf::t 'id)))
    (define gxc#&!class-setf-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-setf::t 'slot)))
    (define gxc#&!class-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-setf::t 'unchecked?)))
    (define gxc#&!class-setf-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class-setf::t 'id)))
    (define gxc#&!class-setf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-setf::t 'slot)))
    (define gxc#&!class-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-setf::t 'unchecked?)))
    (define gxc#&!class-setf-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class-setf::t 'id)))
    (define gxc#!class::t
      (let ((__tmp210636
             (let ((__tmp210637
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210637 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!class::t
         '!class
         gxc#!type::t
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 methods)
         __tmp210636
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _$args206159_
        (apply make-struct-instance gxc#!class::t _$args206159_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp210638
             (let ((__tmp210639
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210639 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!predicate::t
         '!predicate
         gxc#!procedure::t
         '()
         __tmp210638
         '#f)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (make-struct-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _$args206156_
        (apply make-struct-instance gxc#!predicate::t _$args206156_)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#!constructor::t
      (let ((__tmp210640
             (let ((__tmp210641
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210641 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!constructor::t
         '!constructor
         gxc#!procedure::t
         '()
         __tmp210640
         '#f)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _$args206153_
        (apply make-struct-instance gxc#!constructor::t _$args206153_)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#!accessor::t
      (let ((__tmp210642
             (let ((__tmp210643
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210643 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!accessor::t
         '!accessor
         gxc#!procedure::t
         '(slot checked?)
         __tmp210642
         '#f)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (make-struct-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _$args206150_
        (apply make-struct-instance gxc#!accessor::t _$args206150_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#!mutator::t
      (let ((__tmp210644
             (let ((__tmp210645
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210645 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!mutator::t
         '!mutator
         gxc#!procedure::t
         '(slot checked?)
         __tmp210644
         '#f)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (make-struct-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _$args206147_
        (apply make-struct-instance gxc#!mutator::t _$args206147_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp210646
             (let ((__tmp210647
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210647 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!lambda::t
         '!lambda
         gxc#!procedure::t
         '(arity dispatch inline inline-typedecl)
         __tmp210646
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args206144_
        (apply make-struct-instance gxc#!lambda::t _$args206144_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#!case-lambda::t
      (let ((__tmp210648
             (let ((__tmp210649
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210649 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!case-lambda::t
         '!case-lambda
         gxc#!procedure::t
         '(clauses)
         __tmp210648
         '#f)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args206141_
        (apply make-struct-instance gxc#!case-lambda::t _$args206141_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#!kw-lambda::t
      (let ((__tmp210650
             (let ((__tmp210651
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210651 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda::t
         '!kw-lambda
         gxc#!procedure::t
         '(table dispatch)
         __tmp210650
         '#f)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args206138_
        (apply make-struct-instance gxc#!kw-lambda::t _$args206138_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp210652
             (let ((__tmp210653
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp210653 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         gxc#!procedure::t
         '(keys main)
         __tmp210652
         '#f)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args206135_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args206135_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!primitive::t
      (let ((__tmp210654 (list)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive::t
         '!primitive
         __tmp210654
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args206132_
        (apply make-class-instance gxc#!primitive::t _$args206132_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp210655 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210655
         '()
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args206129_
        (apply make-class-instance gxc#!primitive-lambda::t _$args206129_)))
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
      (let ((__tmp210656 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type*
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210656
         '()
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args206126_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args206126_)))
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
      (lambda (_self205967_
               _id205968_
               _super205969_
               _slots205970_
               _ctor-method205971_
               _struct?205972_
               _final?205973_)
        (let _lp205975_ ((_rest205977_ _super205969_))
          (let* ((_rest205978205986_ _rest205977_)
                 (_else205980205994_ (lambda () '#!void))
                 (_K205982206000_
                  (lambda (_rest205997_ _super-id205998_)
                    (if (##structure-ref
                         (let ((__tmp210659
                                (let ((__tmp210660
                                       (let ()
                                         (declare (not safe))
                                         (cons _id205968_ '()))))
                                  (declare (not safe))
                                  (cons '!class __tmp210660))))
                           (declare (not safe))
                           (gxc#optimizer-resolve-class
                            __tmp210659
                            _super-id205998_))
                         '8
                         gxc#!class::t
                         '#f)
                        (let ((__tmp210657
                               (let ((__tmp210658
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205968_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210658))))
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"cannot extend final class"
                           __tmp210657
                           _super-id205998_))
                        '#!void)
                    (let () (declare (not safe)) (_lp205975_ _rest205997_)))))
            (if (let () (declare (not safe)) (##pair? _rest205978205986_))
                (let ((_hd205983206003_
                       (let ()
                         (declare (not safe))
                         (##car _rest205978205986_)))
                      (_tl205984206005_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205978205986_))))
                  (let* ((_super-id206008_ _hd205983206003_)
                         (_rest206010_ _tl205984206005_))
                    (declare (not safe))
                    (_K205982206000_ _rest206010_ _super-id206008_)))
                '#!void)))
        (if _struct?205972_
            (let* ((_super206011206021_ _super205969_)
                   (_else206014206029_
                    (lambda ()
                      (let ((__tmp210661
                             (let ((__tmp210662
                                    (let ()
                                      (declare (not safe))
                                      (cons _id205968_ '()))))
                               (declare (not safe))
                               (cons '!class __tmp210662))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"bad class; struct can only extend a single struct"
                         __tmp210661
                         _super205969_)))))
              (let ((_K206019206051_ (lambda () '#!void))
                    (_K206016206037_
                     (lambda (_super-id206033_)
                       (let ((_klass206035_
                              (let ((__tmp210663
                                     (let ((__tmp210664
                                            (let ()
                                              (declare (not safe))
                                              (cons _id205968_ '()))))
                                       (declare (not safe))
                                       (cons '!class __tmp210664))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-class
                                 __tmp210663
                                 _super-id206033_))))
                         (if (##structure-ref
                              _klass206035_
                              '7
                              gxc#!class::t
                              '#f)
                             '#!void
                             (let ((__tmp210665
                                    (let ((__tmp210666
                                           (let ()
                                             (declare (not safe))
                                             (cons _id205968_ '()))))
                                      (declare (not safe))
                                      (cons '!class __tmp210666))))
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"bad class; struct extending non struct"
                                __tmp210665
                                _super-id206033_)))))))
                (let ((_try-match206013206047_
                       (lambda ()
                         (if (let ()
                               (declare (not safe))
                               (##pair? _super206011206021_))
                             (let ((_tl206018206042_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _super206011206021_)))
                                   (_hd206017206040_
                                    (let ()
                                      (declare (not safe))
                                      (##car _super206011206021_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _tl206018206042_))
                                   (let ((_super-id206045_ _hd206017206040_))
                                     (declare (not safe))
                                     (_K206016206037_ _super-id206045_))
                                   (let ()
                                     (declare (not safe))
                                     (_else206014206029_))))
                             (let ()
                               (declare (not safe))
                               (_else206014206029_))))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _super206011206021_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (_try-match206013206047_))))))
            '#!void)
        (let* ((_ctor-method206102_
                (let ((_$e206054_ _ctor-method205971_))
                  (if _$e206054_
                      _$e206054_
                      (let _lp206057_ ((_rest206059_ _super205969_)
                                       (_method206060_ '#f))
                        (let* ((_rest206061206069_ _rest206059_)
                               (_else206063206077_ (lambda () _method206060_))
                               (_K206065206090_
                                (lambda (_rest206080_ _super-id206081_)
                                  (let* ((_klass206083_
                                          (let ((__tmp210667
                                                 (let ((__tmp210668
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _id205968_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '!class
                                                         __tmp210668))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             __tmp210667
                                             _super-id206081_)))
                                         (_$e206085_
                                          (##structure-ref
                                           _klass206083_
                                           '6
                                           gxc#!class::t
                                           '#f)))
                                    (if _$e206085_
                                        ((lambda (_ctor-method206088_)
                                           (if _method206060_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (eq? _ctor-method206088_
                                                          _method206060_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_lp206057_
                                                      _rest206080_
                                                      _ctor-method206088_))
                                                   (let ((__tmp210669
                                                          (let ((__tmp210670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205968_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"conflicting implicit constructor methods"
                                                      __tmp210669
                                                      _method206060_
                                                      _ctor-method206088_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp206057_
                                                  _rest206080_
                                                  _ctor-method206088_))))
                                         _$e206085_)
                                        (let ()
                                          (declare (not safe))
                                          (_lp206057_
                                           _rest206080_
                                           _method206060_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest206061206069_))
                              (let ((_hd206066206093_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest206061206069_)))
                                    (_tl206067206095_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest206061206069_))))
                                (let* ((_super-id206098_ _hd206066206093_)
                                       (_rest206100_ _tl206067206095_))
                                  (declare (not safe))
                                  (_K206065206090_
                                   _rest206100_
                                   _super-id206098_)))
                              (let ()
                                (declare (not safe))
                                (_else206063206077_))))))))
               (_precedence-list206106_
                (let ((__tmp210671
                       (lambda (_klass-id206104_)
                         (let ((__tmp210672
                                (##structure-ref
                                 (let ((__tmp210673
                                        (let ((__tmp210674
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205968_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210674))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp210673
                                    _klass-id206104_))
                                 '3
                                 gxc#!class::t
                                 '#f)))
                           (declare (not safe))
                           (cons _klass-id206104_ __tmp210672)))))
                  (declare (not safe))
                  (c3-linearize__%
                   '()
                   _super205969_
                   __tmp210671
                   eq?
                   identity)))
               (_fields206112_
                (let* ((_base-struct206110_
                        (let ((__tmp210675
                               (lambda (_klass-id206108_)
                                 (##structure-ref
                                  (let ((__tmp210676
                                         (let ((__tmp210677
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id205968_ '()))))
                                           (declare (not safe))
                                           (cons '!class __tmp210677))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp210676
                                     _klass-id206108_))
                                  '7
                                  gxc#!class::t
                                  '#f))))
                          (declare (not safe))
                          (find __tmp210675 _precedence-list206106_)))
                       (__tmp210678
                        (let ((__tmp210679
                               (let ()
                                 (declare (not safe))
                                 (cons _id205968_ '()))))
                          (declare (not safe))
                          (cons '!class __tmp210679))))
                  (declare (not safe))
                  (gxc#compute-class-fields
                   __tmp210678
                   _base-struct206110_
                   _precedence-list206106_
                   _slots205970_))))
          (##structure-set! _self205967_ _id205968_ '1 gxc#!type::t '#f)
          (##structure-set! _self205967_ _super205969_ '2 gxc#!class::t '#f)
          (##structure-set!
           _self205967_
           _precedence-list206106_
           '3
           gxc#!class::t
           '#f)
          (##structure-set! _self205967_ _slots205970_ '4 gxc#!class::t '#f)
          (##structure-set! _self205967_ _fields206112_ '5 gxc#!class::t '#f)
          (##structure-set!
           _self205967_
           _ctor-method206102_
           '6
           gxc#!class::t
           '#f)
          (##structure-set! _self205967_ _struct?205972_ '7 gxc#!class::t '#f)
          (##structure-set!
           _self205967_
           _final?205973_
           '8
           gxc#!class::t
           '#f))))
    (define gxc#!class:::init!__1
      (lambda (_self206115_
               _id206116_
               _super206117_
               _precedence-list206118_
               _slots206119_
               _fields206120_
               _constructor206121_
               _struct?206122_
               _final?206123_
               _methods206124_)
        (##structure-set! _self206115_ _id206116_ '1 gxc#!type::t '#f)
        (##structure-set! _self206115_ _super206117_ '2 gxc#!class::t '#f)
        (##structure-set!
         _self206115_
         _precedence-list206118_
         '3
         gxc#!class::t
         '#f)
        (##structure-set! _self206115_ _slots206119_ '4 gxc#!class::t '#f)
        (##structure-set! _self206115_ _fields206120_ '5 gxc#!class::t '#f)
        (##structure-set!
         _self206115_
         _constructor206121_
         '6
         gxc#!class::t
         '#f)
        (##structure-set! _self206115_ _struct?206122_ '7 gxc#!class::t '#f)
        (##structure-set! _self206115_ _final?206123_ '8 gxc#!class::t '#f)
        (if _methods206124_
            (##structure-set!
             _self206115_
             (let ()
               (declare (not safe))
               (list->table _methods206124_ 'test: eq?))
             '9
             gxc#!class::t
             '#f)
            '#!void)))
    (define gxc#!class:::init!
      (lambda _g210681_
        (let ((_g210680_ (let () (declare (not safe)) (##length _g210681_))))
          (cond ((let () (declare (not safe)) (##fx= _g210680_ 7))
                 (apply (lambda (_self205967_
                                 _id205968_
                                 _super205969_
                                 _slots205970_
                                 _ctor-method205971_
                                 _struct?205972_
                                 _final?205973_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _self205967_
                             _id205968_
                             _super205969_
                             _slots205970_
                             _ctor-method205971_
                             _struct?205972_
                             _final?205973_)))
                        _g210681_))
                ((let () (declare (not safe)) (##fx= _g210680_ 10))
                 (apply (lambda (_self206115_
                                 _id206116_
                                 _super206117_
                                 _precedence-list206118_
                                 _slots206119_
                                 _fields206120_
                                 _constructor206121_
                                 _struct?206122_
                                 _final?206123_
                                 _methods206124_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _self206115_
                             _id206116_
                             _super206117_
                             _precedence-list206118_
                             _slots206119_
                             _fields206120_
                             _constructor206121_
                             _struct?206122_
                             _final?206123_
                             _methods206124_)))
                        _g210681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210681_))))))
    (define gxc#!class:::init!::specialize
      (lambda (__t210521)
        (let ((__constructor210522
               (let ((__tmp210531
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'constructor))))
                 (if __tmp210531
                     __tmp210531
                     (error '"Unknown slot" 'constructor))))
              (__slots210523
               (let ((__tmp210532
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'slots))))
                 (if __tmp210532 __tmp210532 (error '"Unknown slot" 'slots))))
              (__fields210524
               (let ((__tmp210533
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'fields))))
                 (if __tmp210533 __tmp210533 (error '"Unknown slot" 'fields))))
              (__struct?210525
               (let ((__tmp210534
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'struct?))))
                 (if __tmp210534
                     __tmp210534
                     (error '"Unknown slot" 'struct?))))
              (__id210526
               (let ((__tmp210535
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'id))))
                 (if __tmp210535 __tmp210535 (error '"Unknown slot" 'id))))
              (__final?210527
               (let ((__tmp210536
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'final?))))
                 (if __tmp210536 __tmp210536 (error '"Unknown slot" 'final?))))
              (__methods210528
               (let ((__tmp210537
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'methods))))
                 (if __tmp210537
                     __tmp210537
                     (error '"Unknown slot" 'methods))))
              (__super210529
               (let ((__tmp210538
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'super))))
                 (if __tmp210538 __tmp210538 (error '"Unknown slot" 'super))))
              (__precedence-list210530
               (let ((__tmp210539
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210521 'precedence-list))))
                 (if __tmp210539
                     __tmp210539
                     (error '"Unknown slot" 'precedence-list)))))
          (lambda _g210683_
            (let ((_g210682_
                   (let () (declare (not safe)) (##length _g210683_))))
              (cond ((let () (declare (not safe)) (##fx= _g210682_ 7))
                     (apply (lambda (_self205967_
                                     _id205968_
                                     _super205969_
                                     _slots205970_
                                     _ctor-method205971_
                                     _struct?205972_
                                     _final?205973_)
                              (let _lp205975_ ((_rest205977_ _super205969_))
                                (let* ((_rest205978205986_ _rest205977_)
                                       (_else205980205994_ (lambda () '#!void))
                                       (_K205982206000_
                                        (lambda (_rest205997_ _super-id205998_)
                                          (if (##structure-ref
                                               (let ((__tmp210686
                                                      (let ((__tmp210687
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _id205968_ '()))))
                (declare (not safe))
                (cons '!class __tmp210687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp210686
                                                  _super-id205998_))
                                               '8
                                               gxc#!class::t
                                               '#f)
                                              (let ((__tmp210684
                                                     (let ((__tmp210685
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _id205968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons '!class __tmp210685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"cannot extend final class"
                                                 __tmp210684
                                                 _super-id205998_))
                                              '#!void)
                                          (let ()
                                            (declare (not safe))
                                            (_lp205975_ _rest205997_)))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _rest205978205986_))
                                      (let ((_hd205983206003_
                                             (let ()
                                               (declare (not safe))
                                               (##car _rest205978205986_)))
                                            (_tl205984206005_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest205978205986_))))
                                        (let* ((_super-id206008_
                                                _hd205983206003_)
                                               (_rest206010_ _tl205984206005_))
                                          (declare (not safe))
                                          (_K205982206000_
                                           _rest206010_
                                           _super-id206008_)))
                                      '#!void)))
                              (if _struct?205972_
                                  (let* ((_super206011206021_ _super205969_)
                                         (_else206014206029_
                                          (lambda ()
                                            (let ((__tmp210688
                                                   (let ((__tmp210689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _id205968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '!class
                                                           __tmp210689))))
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"bad class; struct can only extend a single struct"
                                               __tmp210688
                                               _super205969_)))))
                                    (let ((_K206019206051_ (lambda () '#!void))
                                          (_K206016206037_
                                           (lambda (_super-id206033_)
                                             (let ((_klass206035_
                                                    (let ((__tmp210690
                                                           (let ((__tmp210691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id205968_ '()))))
                     (declare (not safe))
                     (cons '!class __tmp210691))))
              (declare (not safe))
              (gxc#optimizer-resolve-class __tmp210690 _super-id206033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (##structure-ref
                                                    _klass206035_
                                                    '7
                                                    gxc#!class::t
                                                    '#f)
                                                   '#!void
                                                   (let ((__tmp210692
                                                          (let ((__tmp210693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _id205968_ '()))))
                    (declare (not safe))
                    (cons '!class __tmp210693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#raise-compile-error
                                                      '"bad class; struct extending non struct"
                                                      __tmp210692
                                                      _super-id206033_)))))))
                                      (let ((_try-match206013206047_
                                             (lambda ()
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _super206011206021_))
                                                   (let ((_tl206018206042_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _super206011206021_)))
                                                         (_hd206017206040_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _super206011206021_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _tl206018206042_))
                                                         (let ((_super-id206045_
                                                                _hd206017206040_))
                                                           (declare (not safe))
                                                           (_K206016206037_
                                                            _super-id206045_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (_else206014206029_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_else206014206029_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _super206011206021_))
                                            '#!void
                                            (let ()
                                              (declare (not safe))
                                              (_try-match206013206047_))))))
                                  '#!void)
                              (let* ((_ctor-method206102_
                                      (let ((_$e206054_ _ctor-method205971_))
                                        (if _$e206054_
                                            _$e206054_
                                            (let _lp206057_ ((_rest206059_
                                                              _super205969_)
                                                             (_method206060_
                                                              '#f))
                                              (let* ((_rest206061206069_
                                                      _rest206059_)
                                                     (_else206063206077_
                                                      (lambda ()
                                                        _method206060_))
                                                     (_K206065206090_
                                                      (lambda (_rest206080_
                                                               _super-id206081_)
                                                        (let* ((_klass206083_
                                                                (let ((__tmp210694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp210695
                                      (let ()
                                        (declare (not safe))
                                        (cons _id205968_ '()))))
                                 (declare (not safe))
                                 (cons '!class __tmp210695))))
                          (declare (not safe))
                          (gxc#optimizer-resolve-class
                           __tmp210694
                           _super-id206081_)))
                       (_$e206085_
                        (##structure-ref _klass206083_ '6 gxc#!class::t '#f)))
                  (if _$e206085_
                      ((lambda (_ctor-method206088_)
                         (if _method206060_
                             (if (let ()
                                   (declare (not safe))
                                   (eq? _ctor-method206088_ _method206060_))
                                 (let ()
                                   (declare (not safe))
                                   (_lp206057_
                                    _rest206080_
                                    _ctor-method206088_))
                                 (let ((__tmp210696
                                        (let ((__tmp210697
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _id205968_ '()))))
                                          (declare (not safe))
                                          (cons '!class __tmp210697))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"conflicting implicit constructor methods"
                                    __tmp210696
                                    _method206060_
                                    _ctor-method206088_)))
                             (let ()
                               (declare (not safe))
                               (_lp206057_ _rest206080_ _ctor-method206088_))))
                       _$e206085_)
                      (let ()
                        (declare (not safe))
                        (_lp206057_ _rest206080_ _method206060_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _rest206061206069_))
                                                    (let ((_hd206066206093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _rest206061206069_)))
                                                          (_tl206067206095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _rest206061206069_))))
                                                      (let* ((_super-id206098_
                                                              _hd206066206093_)
                                                             (_rest206100_
                                                              _tl206067206095_))
                                                        (declare (not safe))
                                                        (_K206065206090_
                                                         _rest206100_
                                                         _super-id206098_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else206063206077_))))))))
                                     (_precedence-list206106_
                                      (let ((__tmp210698
                                             (lambda (_klass-id206104_)
                                               (let ((__tmp210699
                                                      (##structure-ref
                                                       (let ((__tmp210700
                                                              (let ((__tmp210701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _id205968_ '()))))
                        (declare (not safe))
                        (cons '!class __tmp210701))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class __tmp210700 _klass-id206104_))
               '3
               gxc#!class::t
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _klass-id206104_
                                                       __tmp210699)))))
                                        (declare (not safe))
                                        (c3-linearize__%
                                         '()
                                         _super205969_
                                         __tmp210698
                                         eq?
                                         identity)))
                                     (_fields206112_
                                      (let* ((_base-struct206110_
                                              (let ((__tmp210702
                                                     (lambda (_klass-id206108_)
                                                       (##structure-ref
                                                        (let ((__tmp210703
                                                               (let ((__tmp210704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _id205968_ '()))))
                         (declare (not safe))
                         (cons '!class __tmp210704))))
                  (declare (not safe))
                  (gxc#optimizer-resolve-class __tmp210703 _klass-id206108_))
                '7
                gxc#!class::t
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (find __tmp210702
                                                      _precedence-list206106_)))
                                             (__tmp210705
                                              (let ((__tmp210706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _id205968_ '()))))
                                                (declare (not safe))
                                                (cons '!class __tmp210706))))
                                        (declare (not safe))
                                        (gxc#compute-class-fields
                                         __tmp210705
                                         _base-struct206110_
                                         _precedence-list206106_
                                         _slots205970_))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _id205968_
                                   __id210526
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _super205969_
                                   __super210529
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _precedence-list206106_
                                   __precedence-list210530
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _slots205970_
                                   __slots210523
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _fields206112_
                                   __fields210524
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _ctor-method206102_
                                   __constructor210522
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _struct?205972_
                                   __struct?210525
                                   __t210521
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _self205967_
                                   _final?205973_
                                   __final?210527
                                   __t210521
                                   '#f))))
                            _g210683_))
                    ((let () (declare (not safe)) (##fx= _g210682_ 10))
                     (apply (lambda (_self206115_
                                     _id206116_
                                     _super206117_
                                     _precedence-list206118_
                                     _slots206119_
                                     _fields206120_
                                     _constructor206121_
                                     _struct?206122_
                                     _final?206123_
                                     _methods206124_)
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _id206116_
                                 __id210526
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _super206117_
                                 __super210529
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _precedence-list206118_
                                 __precedence-list210530
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _slots206119_
                                 __slots210523
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _fields206120_
                                 __fields210524
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _constructor206121_
                                 __constructor210522
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _struct?206122_
                                 __struct?210525
                                 __t210521
                                 '#f))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _self206115_
                                 _final?206123_
                                 __final?210527
                                 __t210521
                                 '#f))
                              (if _methods206124_
                                  (let ((__tmp210707
                                         (let ()
                                           (declare (not safe))
                                           (list->table
                                            _methods206124_
                                            'test:
                                            eq?))))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _self206115_
                                     __tmp210707
                                     __methods210528
                                     __t210521
                                     '#f))
                                  '#!void))
                            _g210683_))
                    (else
                     (##raise-wrong-number-of-arguments-exception
                      'case-lambda-dispatch
                      _g210683_))))))))
    (let ()
      (declare (not safe))
      (bind-specializer! gxc#!class:::init! gxc#!class:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_where205819_
               _base-struct205820_
               _precedence-list205821_
               _direct-slots205822_)
        (let* ((_base-fields205824_
                (if _base-struct205820_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-resolve-class
                        _where205819_
                        _base-struct205820_))
                     '5
                     gxc#!class::t
                     '#f)
                    '()))
               (_r-fields205826_ (reverse _base-fields205824_))
               (_seen-slots205834_
                (let ((_tab205828_
                       (let () (declare (not safe)) (make-table 'test: eq?))))
                  (for-each
                   (lambda (_g205829205831_)
                     (let ()
                       (declare (not safe))
                       (table-set! _tab205828_ _g205829205831_ '#t)))
                   _base-fields205824_)
                  _tab205828_))
               (_process-slot205838_
                (lambda (_slot205836_)
                  (if (let ()
                        (declare (not safe))
                        (table-ref _seen-slots205834_ _slot205836_ '#f))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set! _seen-slots205834_ _slot205836_ '#t))
                        (set! _r-fields205826_
                              (let ()
                                (declare (not safe))
                                (cons _slot205836_ _r-fields205826_))))))))
          (for-each
           (lambda (_mixin205841_)
             (let ((_klass205843_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _where205819_
                       _mixin205841_))))
               (if (##structure-ref _klass205843_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _process-slot205838_
                    (##structure-ref _klass205843_ '5 gxc#!class::t '#f)))))
           _precedence-list205821_)
          (for-each _process-slot205838_ _direct-slots205822_)
          (reverse _r-fields205826_))))
    (define gxc#!class-slot->field-offset
      (lambda (_klass205778_ _slot205779_)
        (let _lp205781_ ((_rest205783_
                          (##structure-ref _klass205778_ '5 gxc#!class::t '#f))
                         (_offset205784_ '1))
          (let* ((_rest205785205793_ _rest205783_)
                 (_else205787205801_
                  (lambda ()
                    (let ((__tmp210709
                           (##structure-ref _klass205778_ '1 gxc#!type::t '#f))
                          (__tmp210708
                           (##structure-ref
                            _klass205778_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210709
                       __tmp210708
                       _slot205779_))))
                 (_K205789205807_
                  (lambda (_rest205804_ _s205805_)
                    (if (let ()
                          (declare (not safe))
                          (eq? _s205805_ _slot205779_))
                        _offset205784_
                        (let ((__tmp210710
                               (let ()
                                 (declare (not safe))
                                 (fx+ _offset205784_ '1))))
                          (declare (not safe))
                          (_lp205781_ _rest205804_ __tmp210710))))))
            (if (let () (declare (not safe)) (##pair? _rest205785205793_))
                (let ((_hd205790205810_
                       (let ()
                         (declare (not safe))
                         (##car _rest205785205793_)))
                      (_tl205791205812_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest205785205793_))))
                  (let* ((_s205815_ _hd205790205810_)
                         (_rest205817_ _tl205791205812_))
                    (declare (not safe))
                    (_K205789205807_ _rest205817_ _s205815_)))
                (let () (declare (not safe)) (_else205787205801_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_klass205736_ _slot205737_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _klass205736_ _slot205737_))
            _klass205736_
            (let _lp205739_ ((_rest205741_
                              (##structure-ref
                               _klass205736_
                               '3
                               gxc#!class::t
                               '#f)))
              (let* ((_rest205742205750_ _rest205741_)
                     (_else205744205758_ (lambda () '#f))
                     (_K205746205766_
                      (lambda (_rest205761_ _super205762_)
                        (let ((_super-class205764_
                               (let ((__tmp210711
                                      (let ((__tmp210712
                                             (let ((__tmp210714
                                                    (##structure-ref
                                                     _klass205736_
                                                     '1
                                                     gxc#!type::t
                                                     '#f))
                                                   (__tmp210713
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _slot205737_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp210714
                                                     __tmp210713))))
                                        (declare (not safe))
                                        (cons '!class-slot-find-struct
                                              __tmp210712))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp210711
                                  _super205762_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _super-class205764_
                                 _slot205737_))
                              _super-class205764_
                              (let ()
                                (declare (not safe))
                                (_lp205739_ _rest205761_)))))))
                (if (let () (declare (not safe)) (##pair? _rest205742205750_))
                    (let ((_hd205747205769_
                           (let ()
                             (declare (not safe))
                             (##car _rest205742205750_)))
                          (_tl205748205771_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest205742205750_))))
                      (let* ((_super205774_ _hd205747205769_)
                             (_rest205776_ _tl205748205771_))
                        (declare (not safe))
                        (_K205746205766_ _rest205776_ _super205774_)))
                    (let () (declare (not safe)) (_else205744205758_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_klass205733_ _slot205734_)
        (if (##structure-ref _klass205733_ '7 gxc#!class::t '#f)
            (memq _slot205734_
                  (##structure-ref _klass205733_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_self205730_ _id205731_)
        (##structure-set! _self205730_ _id205731_ '1 gxc#!type::t '#f)))
    (define gxc#!predicate:::init!::specialize
      (lambda (__t210540)
        (let ((__id210541
               (let ((__tmp210542
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210540 'id))))
                 (if __tmp210542 __tmp210542 (error '"Unknown slot" 'id)))))
          (lambda (_self205730_ _id205731_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205730_
               _id205731_
               __id210541
               __t210540
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
      (lambda (_self205605_ _id205606_)
        (##structure-set! _self205605_ _id205606_ '1 gxc#!type::t '#f)))
    (define gxc#!constructor:::init!::specialize
      (lambda (__t210543)
        (let ((__id210544
               (let ((__tmp210545
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210543 'id))))
                 (if __tmp210545 __tmp210545 (error '"Unknown slot" 'id)))))
          (lambda (_self205605_ _id205606_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205605_
               _id205606_
               __id210544
               __t210543
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
      (lambda (_self205478_ _id205479_ _slot205480_ _checked?205481_)
        (##structure-set! _self205478_ _id205479_ '1 gxc#!type::t '#f)
        (##structure-set! _self205478_ _slot205480_ '2 gxc#!accessor::t '#f)
        (##structure-set!
         _self205478_
         _checked?205481_
         '3
         gxc#!accessor::t
         '#f)))
    (define gxc#!accessor:::init!::specialize
      (lambda (__t210546)
        (let ((__id210547
               (let ((__tmp210550
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210546 'id))))
                 (if __tmp210550 __tmp210550 (error '"Unknown slot" 'id))))
              (__checked?210548
               (let ((__tmp210551
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210546 'checked?))))
                 (if __tmp210551
                     __tmp210551
                     (error '"Unknown slot" 'checked?))))
              (__slot210549
               (let ((__tmp210552
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210546 'slot))))
                 (if __tmp210552 __tmp210552 (error '"Unknown slot" 'slot)))))
          (lambda (_self205478_ _id205479_ _slot205480_ _checked?205481_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205478_
               _id205479_
               __id210547
               __t210546
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205478_
               _slot205480_
               __slot210549
               __t210546
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205478_
               _checked?205481_
               __checked?210548
               __t210546
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
      (lambda (_self205351_ _id205352_ _slot205353_ _checked?205354_)
        (##structure-set! _self205351_ _id205352_ '1 gxc#!type::t '#f)
        (##structure-set! _self205351_ _slot205353_ '2 gxc#!mutator::t '#f)
        (##structure-set!
         _self205351_
         _checked?205354_
         '3
         gxc#!mutator::t
         '#f)))
    (define gxc#!mutator:::init!::specialize
      (lambda (__t210553)
        (let ((__id210554
               (let ((__tmp210557
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210553 'id))))
                 (if __tmp210557 __tmp210557 (error '"Unknown slot" 'id))))
              (__checked?210555
               (let ((__tmp210558
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210553 'checked?))))
                 (if __tmp210558
                     __tmp210558
                     (error '"Unknown slot" 'checked?))))
              (__slot210556
               (let ((__tmp210559
                      (let ()
                        (declare (not safe))
                        (class-slot-offset* __t210553 'slot))))
                 (if __tmp210559 __tmp210559 (error '"Unknown slot" 'slot)))))
          (lambda (_self205351_ _id205352_ _slot205353_ _checked?205354_)
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205351_
               _id205352_
               __id210554
               __t210553
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205351_
               _slot205353_
               __slot210556
               __t210553
               '#f))
            (let ()
              (declare (not safe))
              (##unchecked-structure-set!
               _self205351_
               _checked?205354_
               __checked?210555
               __t210553
               '#f))))))
    (let ()
      (declare (not safe))
      (bind-specializer!
       gxc#!mutator:::init!
       gxc#!mutator:::init!::specialize))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!struct-type:::init!
      (lambda (_self205221_
               _id205222_
               _super205223_
               _fields205224_
               _xfields205225_
               _ctor205226_
               _plist205227_)
        (if (let ((__tmp210715
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205221_))))
              (declare (not safe))
              (##fx< '7 __tmp210715))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '1 _id205222_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '2 _super205223_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '3 _fields205224_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '4 _xfields205225_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '5 _ctor205226_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '6 _plist205227_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205221_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self205221_
                   '7
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205221_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self205090_
               _id205091_
               _super205092_
               _mixin205093_
               _slots205094_
               _xslots205095_
               _ctor205096_
               _plist205097_)
        (if (let ((__tmp210716
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205090_))))
              (declare (not safe))
              (##fx< '8 __tmp210716))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '1 _id205091_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '2 _super205092_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '3 _mixin205093_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '4 _slots205094_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '5 _xslots205095_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '6 _ctor205096_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '7 _plist205097_))
              (let ()
                (declare (not safe))
                (##vector-set! _self205090_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self205090_
                   '8
                   (let ()
                     (declare (not safe))
                     (##vector-length _self205090_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self204934_
               _id204935_
               _arity204936_
               _dispatch204937_
               _inline204938_
               _typedecl204939_)
        (if (let ((__tmp210717
                   (let ()
                     (declare (not safe))
                     (##vector-length _self204934_))))
              (declare (not safe))
              (##fx< '5 __tmp210717))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self204934_ '1 _id204935_))
              (let ()
                (declare (not safe))
                (##vector-set! _self204934_ '2 _arity204936_))
              (let ()
                (declare (not safe))
                (##vector-set! _self204934_ '3 _dispatch204937_))
              (let ()
                (declare (not safe))
                (##vector-set! _self204934_ '4 _inline204938_))
              (let ()
                (declare (not safe))
                (##vector-set! _self204934_ '5 _typedecl204939_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self204934_
                   '5
                   (let ()
                     (declare (not safe))
                     (##vector-length _self204934_))))))
    (define gxc#!lambda:::init!__0
      (lambda (_self204944_ _id204945_ _arity204946_ _dispatch204947_)
        (let* ((_inline204949_ '#f) (_typedecl204951_ '#f))
          (if (let ((__tmp210718
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204944_))))
                (declare (not safe))
                (##fx< '5 __tmp210718))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204944_ '1 _id204945_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204944_ '2 _arity204946_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204944_ '3 _dispatch204947_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204944_ '4 _inline204949_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204944_ '5 _typedecl204951_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204944_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204944_)))))))
    (define gxc#!lambda:::init!__1
      (lambda (_self204953_
               _id204954_
               _arity204955_
               _dispatch204956_
               _inline204957_)
        (let ((_typedecl204959_ '#f))
          (if (let ((__tmp210719
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204953_))))
                (declare (not safe))
                (##fx< '5 __tmp210719))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204953_ '1 _id204954_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204953_ '2 _arity204955_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204953_ '3 _dispatch204956_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204953_ '4 _inline204957_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self204953_ '5 _typedecl204959_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self204953_
                     '5
                     (let ()
                       (declare (not safe))
                       (##vector-length _self204953_)))))))
    (define gxc#!lambda:::init!
      (lambda _g210721_
        (let ((_g210720_ (let () (declare (not safe)) (##length _g210721_))))
          (cond ((let () (declare (not safe)) (##fx= _g210720_ 4))
                 (apply (lambda (_self204944_
                                 _id204945_
                                 _arity204946_
                                 _dispatch204947_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self204944_
                             _id204945_
                             _arity204946_
                             _dispatch204947_)))
                        _g210721_))
                ((let () (declare (not safe)) (##fx= _g210720_ 5))
                 (apply (lambda (_self204953_
                                 _id204954_
                                 _arity204955_
                                 _dispatch204956_
                                 _inline204957_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self204953_
                             _id204954_
                             _arity204955_
                             _dispatch204956_
                             _inline204957_)))
                        _g210721_))
                ((let () (declare (not safe)) (##fx= _g210720_ 6))
                 (apply (lambda (_self204961_
                                 _id204962_
                                 _arity204963_
                                 _dispatch204964_
                                 _inline204965_
                                 _typedecl204966_)
                          (if (let ((__tmp210722
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self204961_))))
                                (declare (not safe))
                                (##fx< '5 __tmp210722))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self204961_ '1 _id204962_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self204961_
                                   '2
                                   _arity204963_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self204961_
                                   '3
                                   _dispatch204964_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self204961_
                                   '4
                                   _inline204965_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self204961_
                                   '5
                                   _typedecl204966_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self204961_
                                     '5
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self204961_)))))
                        _g210721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g210721_))))))
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
      (lambda (_self204686_ . _args204687_)
        (apply struct-instance-init! _self204686_ _args204687_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type204556_)
        (let ((_$e204558_
               (##structure-ref _type204556_ '7 gxc#!struct-type::t '#f)))
          (if _$e204558_
              (values _$e204558_)
              (let ((_vtab204561_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type204556_
                 _vtab204561_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab204561_)))))
    (define gxc#!class-type-vtab
      (lambda (_type204549_)
        (let ((_$e204551_
               (##structure-ref _type204549_ '8 gxc#!class-type::t '#f)))
          (if _$e204551_
              (values _$e204551_)
              (let ((_vtab204554_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type204549_
                 _vtab204554_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab204554_)))))
    (define gxc#!class-method-table
      (lambda (_klass204542_)
        (let ((_$e204544_
               (##structure-ref _klass204542_ '9 gxc#!class::t '#f)))
          (if _$e204544_
              _$e204544_
              (let ((_tab204547_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _klass204542_
                 _tab204547_
                 '9
                 gxc#!class::t
                 '#f)
                _tab204547_)))))
    (define gxc#!type-vtab
      (lambda (_type204540_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204540_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-method-table _type204540_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type204540_ 'gxc#!struct-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!struct-type-vtab _type204540_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _type204540_
                       'gxc#!class-type::t))
                    (let ()
                      (declare (not safe))
                      (gxc#!class-type-vtab _type204540_))
                    '#f)))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type204531_ _method204532_)
        (let ((_vtab204533204535_
               (##structure-ref _type204531_ '7 gxc#!struct-type::t '#f)))
          (if _vtab204533204535_
              (let ((_vtab204538_ _vtab204533204535_))
                (declare (not safe))
                (table-ref _vtab204538_ _method204532_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type204522_ _method204523_)
        (let ((_vtab204524204526_
               (##structure-ref _type204522_ '8 gxc#!class-type::t '#f)))
          (if _vtab204524204526_
              (let ((_vtab204529_ _vtab204524204526_))
                (declare (not safe))
                (table-ref _vtab204529_ _method204523_ '#f))
              '#f))))
    (define gxc#!class-lookup-method
      (lambda (_klass204513_ _method204514_)
        (let ((_tab204515204517_
               (##structure-ref _klass204513_ '9 gxc#!class::t '#f)))
          (if _tab204515204517_
              (let ((_tab204520_ _tab204515204517_))
                (declare (not safe))
                (table-ref _tab204520_ _method204514_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type204510_ _method204511_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204510_ 'gxc#!class::t))
            (let ()
              (declare (not safe))
              (gxc#!class-lookup-method _type204510_ _method204511_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type204510_ 'gxc#!struct-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!struct-type-lookup-method _type204510_ _method204511_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _type204510_
                       'gxc#!class-type::t))
                    (let ()
                      (declare (not safe))
                      (gxc#!class-type-lookup-method
                       _type204510_
                       _method204511_))
                    '#f)))))
    (define gxc#!class-type-complete?
      (lambda (_type204501_)
        (if (##structure-ref _type204501_ '4 gxc#!class-type::t '#f)
            (let ((_super204503_
                   (##structure-ref _type204501_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super204503_))
                  '#t
                  (let ((_$e204505_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super204503_))))
                    (if _$e204505_
                        ((lambda (_super-t204508_)
                           (if (##structure-ref
                                _super-t204508_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e204505_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym204485_ _type204486_ _local?204487_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type204486_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type"
                   _sym204485_
                   _type204486_))
        (let ((__tmp210723
               (let () (declare (not safe)) (struct->list _type204486_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym204485_ '" " __tmp210723))
        (let ((__tmp210724
               (if _local?204487_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210724 _sym204485_ _type204486_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym204492_ _type204493_)
        (let ((_local?204495_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym204492_
           _type204493_
           _local?204495_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210726_
        (let ((_g210725_ (let () (declare (not safe)) (##length _g210726_))))
          (cond ((let () (declare (not safe)) (##fx= _g210725_ 2))
                 (apply (lambda (_sym204492_ _type204493_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym204492_
                             _type204493_)))
                        _g210726_))
                ((let () (declare (not safe)) (##fx= _g210725_ 3))
                 (apply (lambda (_sym204497_ _type204498_ _local?204499_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym204497_
                             _type204498_
                             _local?204499_)))
                        _g210726_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210726_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym204471_ _local?204472_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym204471_))
        (let ((__tmp210727
               (if _local?204472_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp210727 _sym204471_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym204477_)
        (let ((_local?204479_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym204477_ _local?204479_))))
    (define gxc#optimizer-clear-type!
      (lambda _g210729_
        (let ((_g210728_ (let () (declare (not safe)) (##length _g210729_))))
          (cond ((let () (declare (not safe)) (##fx= _g210728_ 1))
                 (apply (lambda (_sym204477_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym204477_)))
                        _g210729_))
                ((let () (declare (not safe)) (##fx= _g210728_ 2))
                 (apply (lambda (_sym204481_ _local?204482_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym204481_
                             _local?204482_)))
                        _g210729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g210729_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t204444_ _method204445_ _sym204446_ _rebind?204447_)
        (let* ((_type204449_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t204444_)))
               (_$e204451_
                (let () (declare (not safe)) (gxc#!type-vtab _type204449_))))
          (if _$e204451_
              ((lambda (_vtab204454_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab204454_ _method204445_))
                     (if _rebind?204447_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t204444_
                              '" "
                              _method204445_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab204454_
                              _method204445_
                              _sym204446_)))
                         (let ((__tmp210734
                                (let ((__tmp210735
                                       (let ((__tmp210736
                                              (let ((__tmp210737
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _sym204446_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _method204445_
                                                      __tmp210737))))
                                         (declare (not safe))
                                         (cons _type-t204444_ __tmp210736))))
                                  (declare (not safe))
                                  (cons 'bind-method! __tmp210735))))
                           (declare (not safe))
                           (gxc#raise-compile-error
                            '"declare-method: duplicate method declaration"
                            __tmp210734
                            _method204445_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t204444_
                          '" "
                          _method204445_
                          '" => "
                          _sym204446_))
                       (let ()
                         (declare (not safe))
                         (table-set!
                          _vtab204454_
                          _method204445_
                          _sym204446_)))))
               _$e204451_)
              (if (let () (declare (not safe)) (not _type204449_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t204444_))
                  (let ((__tmp210730
                         (let ((__tmp210731
                                (let ((__tmp210732
                                       (let ((__tmp210733
                                              (let ()
                                                (declare (not safe))
                                                (cons _method204445_ '()))))
                                         (declare (not safe))
                                         (cons _sym204446_ __tmp210733))))
                                  (declare (not safe))
                                  (cons _type-t204444_ __tmp210732))))
                           (declare (not safe))
                           (cons 'bind-method! __tmp210731))))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"declare-method: bad method declaration; no method table"
                     __tmp210730
                     _type204449_)))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t204459_ _method204460_ _sym204461_)
        (let ((_rebind?204463_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t204459_
           _method204460_
           _sym204461_
           _rebind?204463_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210739_
        (let ((_g210738_ (let () (declare (not safe)) (##length _g210739_))))
          (cond ((let () (declare (not safe)) (##fx= _g210738_ 3))
                 (apply (lambda (_type-t204459_ _method204460_ _sym204461_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t204459_
                             _method204460_
                             _sym204461_)))
                        _g210739_))
                ((let () (declare (not safe)) (##fx= _g210738_ 4))
                 (apply (lambda (_type-t204465_
                                 _method204466_
                                 _sym204467_
                                 _rebind?204468_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t204465_
                             _method204466_
                             _sym204467_
                             _rebind?204468_)))
                        _g210739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210739_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym204432_)
        (let ((_$e204440_
               (let ((_ht204433204435_ (gxc#current-compile-local-type)))
                 (if _ht204433204435_
                     (let ((_ht204438_ _ht204433204435_))
                       (declare (not safe))
                       (table-ref _ht204438_ _sym204432_ '#f))
                     '#f))))
          (if _$e204440_
              _$e204440_
              (let ((__tmp210740
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp210740 _sym204432_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym204424_)
        (let ((_type204425204427_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym204424_))))
          (if _type204425204427_
              (let ((_type204430_ _type204425204427_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type204430_ 'gxc#!alias::t))
                    (let ((__tmp210741
                           (##structure-ref _type204430_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp210741))
                    _type204430_))
              '#f))))
    (define gxc#optimizer-resolve-class
      (lambda (_where204416_ _klass-id204417_)
        (let ((_$e204419_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _klass-id204417_))))
          (if _$e204419_
              ((lambda (_klass204422_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _klass204422_ 'gxc#!class::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"bad class reference; not a class type"
                        _where204416_
                        _klass-id204417_
                        _klass204422_)))
                 _klass204422_)
               _$e204419_)
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _where204416_
                 _klass-id204417_))))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t204413_ _method204414_)
        (let ((__tmp210742
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t204413_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp210742 _method204414_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym204411_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym204411_))
        (let ((__tmp210743
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp210743 _sym204411_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym204409_)
        (let ((__tmp210744
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp210744 _sym204409_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx204407_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _stx204407_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx204407_))
            (let () (declare (not safe)) (gx#stx-e _stx204407_)))))))
