(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1701718670)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#optimizer-info::t
         '#f
         '3
         'optimizer-info
         '()
         ':init!
         '(type ssxi methods))))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _$args20722_
        (apply make-struct-instance gxc#optimizer-info::t _$args20722_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#optimizer-info::t '0)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#optimizer-info::t '1)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#optimizer-info::t '2)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#optimizer-info::t '0)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#optimizer-info::t '1)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#optimizer-info::t '2)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#optimizer-info::t '0)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#optimizer-info::t '1)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#optimizer-info::t '2)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#optimizer-info::t '0)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#optimizer-info::t '1)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#optimizer-info::t '2)))
    (define gxc#optimizer-info:::init!
      (lambda (_self20720_)
        (if (let ((__tmp20727
                   (let ()
                     (declare (not safe))
                     (##vector-length _self20720_))))
              (declare (not safe))
              (##fx< '3 __tmp20727))
            (begin
              (let ((__tmp20724
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self20720_ '1 __tmp20724))
              (let ((__tmp20725
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self20720_ '2 __tmp20725))
              (let ((__tmp20726
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self20720_ '3 __tmp20726)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self20720_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ()
        (declare (not safe))
        (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id))))
    (define gxc#!type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _$args20595_
        (apply make-struct-instance gxc#!type::t _$args20595_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!type::t '0)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!type::t '0)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!type::t '0)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!type::t '0)))
    (define gxc#!alias::t
      (let ()
        (declare (not safe))
        (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '())))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args20592_
        (apply make-struct-instance gxc#!alias::t _$args20592_)))
    (define gxc#!struct-type::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!struct-type::t
         gxc#!type::t
         '6
         '!struct-type
         '()
         ':init!
         '(super fields xfields ctor plist methods))))
    (define gxc#!struct-type?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-type::t)))
    (define gxc#make-!struct-type
      (lambda _$args20589_
        (apply make-struct-instance gxc#!struct-type::t _$args20589_)))
    (define gxc#!struct-type-super
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '0)))
    (define gxc#!struct-type-fields
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '1)))
    (define gxc#!struct-type-xfields
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '2)))
    (define gxc#!struct-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '3)))
    (define gxc#!struct-type-plist
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '4)))
    (define gxc#!struct-type-methods
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-type::t '5)))
    (define gxc#!struct-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '0)))
    (define gxc#!struct-type-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '1)))
    (define gxc#!struct-type-xfields-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '2)))
    (define gxc#!struct-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '3)))
    (define gxc#!struct-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '4)))
    (define gxc#!struct-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-type::t '5)))
    (define gxc#&!struct-type-super
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '0)))
    (define gxc#&!struct-type-fields
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '1)))
    (define gxc#&!struct-type-xfields
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '2)))
    (define gxc#&!struct-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '3)))
    (define gxc#&!struct-type-plist
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '4)))
    (define gxc#&!struct-type-methods
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-type::t '5)))
    (define gxc#&!struct-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '0)))
    (define gxc#&!struct-type-fields-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '1)))
    (define gxc#&!struct-type-xfields-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '2)))
    (define gxc#&!struct-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '3)))
    (define gxc#&!struct-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '4)))
    (define gxc#&!struct-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-type::t '5)))
    (define gxc#!class-type::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!class-type::t
         gxc#!type::t
         '7
         '!class-type
         '()
         ':init!
         '(super mixin slots xslots ctor plist methods))))
    (define gxc#!class-type?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-type::t)))
    (define gxc#make-!class-type
      (lambda _$args20586_
        (apply make-struct-instance gxc#!class-type::t _$args20586_)))
    (define gxc#!class-type-super
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '0)))
    (define gxc#!class-type-mixin
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '1)))
    (define gxc#!class-type-slots
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '2)))
    (define gxc#!class-type-xslots
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '3)))
    (define gxc#!class-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '4)))
    (define gxc#!class-type-plist
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '5)))
    (define gxc#!class-type-methods
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-type::t '6)))
    (define gxc#!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '0)))
    (define gxc#!class-type-mixin-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '1)))
    (define gxc#!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '2)))
    (define gxc#!class-type-xslots-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '3)))
    (define gxc#!class-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '4)))
    (define gxc#!class-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '5)))
    (define gxc#!class-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-type::t '6)))
    (define gxc#&!class-type-super
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '0)))
    (define gxc#&!class-type-mixin
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '1)))
    (define gxc#&!class-type-slots
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '2)))
    (define gxc#&!class-type-xslots
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '3)))
    (define gxc#&!class-type-ctor
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '4)))
    (define gxc#&!class-type-plist
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '5)))
    (define gxc#&!class-type-methods
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-type::t '6)))
    (define gxc#&!class-type-super-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '0)))
    (define gxc#&!class-type-mixin-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '1)))
    (define gxc#&!class-type-slots-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '2)))
    (define gxc#&!class-type-xslots-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '3)))
    (define gxc#&!class-type-ctor-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '4)))
    (define gxc#&!class-type-plist-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '5)))
    (define gxc#&!class-type-methods-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-type::t '6)))
    (define gxc#!procedure::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!procedure::t
         gxc#!type::t
         '0
         '!procedure
         '()
         '#f
         '())))
    (define gxc#!procedure?
      (let () (declare (not safe)) (make-struct-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _$args20583_
        (apply make-struct-instance gxc#!procedure::t _$args20583_)))
    (define gxc#!struct-pred::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!struct-pred::t
         gxc#!procedure::t
         '0
         '!struct-pred
         '()
         '#f
         '())))
    (define gxc#!struct-pred?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-pred::t)))
    (define gxc#make-!struct-pred
      (lambda _$args20580_
        (apply make-struct-instance gxc#!struct-pred::t _$args20580_)))
    (define gxc#!struct-cons::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!struct-cons::t
         gxc#!procedure::t
         '0
         '!struct-cons
         '()
         '#f
         '())))
    (define gxc#!struct-cons?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-cons::t)))
    (define gxc#make-!struct-cons
      (lambda _$args20577_
        (apply make-struct-instance gxc#!struct-cons::t _$args20577_)))
    (define gxc#!struct-getf::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!struct-getf::t
         gxc#!procedure::t
         '2
         '!struct-getf
         '()
         '#f
         '(off unchecked?))))
    (define gxc#!struct-getf?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-getf::t)))
    (define gxc#make-!struct-getf
      (lambda _$args20574_
        (apply make-struct-instance gxc#!struct-getf::t _$args20574_)))
    (define gxc#!struct-getf-off
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-getf::t '0)))
    (define gxc#!struct-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-getf::t '1)))
    (define gxc#!struct-getf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-getf::t '0)))
    (define gxc#!struct-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-getf::t '1)))
    (define gxc#&!struct-getf-off
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-getf::t '0)))
    (define gxc#&!struct-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-getf::t '1)))
    (define gxc#&!struct-getf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-getf::t '0)))
    (define gxc#&!struct-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-getf::t '1)))
    (define gxc#!struct-setf::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!struct-setf::t
         gxc#!procedure::t
         '2
         '!struct-setf
         '()
         '#f
         '(off unchecked?))))
    (define gxc#!struct-setf?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!struct-setf::t)))
    (define gxc#make-!struct-setf
      (lambda _$args20571_
        (apply make-struct-instance gxc#!struct-setf::t _$args20571_)))
    (define gxc#!struct-setf-off
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-setf::t '0)))
    (define gxc#!struct-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!struct-setf::t '1)))
    (define gxc#!struct-setf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-setf::t '0)))
    (define gxc#!struct-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!struct-setf::t '1)))
    (define gxc#&!struct-setf-off
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-setf::t '0)))
    (define gxc#&!struct-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!struct-setf::t '1)))
    (define gxc#&!struct-setf-off-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-setf::t '0)))
    (define gxc#&!struct-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!struct-setf::t '1)))
    (define gxc#!class-pred::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!class-pred::t
         gxc#!procedure::t
         '0
         '!class-pred
         '()
         '#f
         '())))
    (define gxc#!class-pred?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-pred::t)))
    (define gxc#make-!class-pred
      (lambda _$args20568_
        (apply make-struct-instance gxc#!class-pred::t _$args20568_)))
    (define gxc#!class-cons::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!class-cons::t
         gxc#!procedure::t
         '0
         '!class-cons
         '()
         '#f
         '())))
    (define gxc#!class-cons?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-cons::t)))
    (define gxc#make-!class-cons
      (lambda _$args20565_
        (apply make-struct-instance gxc#!class-cons::t _$args20565_)))
    (define gxc#!class-getf::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!class-getf::t
         gxc#!procedure::t
         '2
         '!class-getf
         '()
         '#f
         '(slot unchecked?))))
    (define gxc#!class-getf?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-getf::t)))
    (define gxc#make-!class-getf
      (lambda _$args20562_
        (apply make-struct-instance gxc#!class-getf::t _$args20562_)))
    (define gxc#!class-getf-slot
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-getf::t '0)))
    (define gxc#!class-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-getf::t '1)))
    (define gxc#!class-getf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-getf::t '0)))
    (define gxc#!class-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-getf::t '1)))
    (define gxc#&!class-getf-slot
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-getf::t '0)))
    (define gxc#&!class-getf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-getf::t '1)))
    (define gxc#&!class-getf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-getf::t '0)))
    (define gxc#&!class-getf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-getf::t '1)))
    (define gxc#!class-setf::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!class-setf::t
         gxc#!procedure::t
         '2
         '!class-setf
         '()
         '#f
         '(slot unchecked?))))
    (define gxc#!class-setf?
      (let () (declare (not safe)) (make-struct-predicate gxc#!class-setf::t)))
    (define gxc#make-!class-setf
      (lambda _$args20559_
        (apply make-struct-instance gxc#!class-setf::t _$args20559_)))
    (define gxc#!class-setf-slot
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-setf::t '0)))
    (define gxc#!class-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!class-setf::t '1)))
    (define gxc#!class-setf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-setf::t '0)))
    (define gxc#!class-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!class-setf::t '1)))
    (define gxc#&!class-setf-slot
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-setf::t '0)))
    (define gxc#&!class-setf-unchecked?
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!class-setf::t '1)))
    (define gxc#&!class-setf-slot-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-setf::t '0)))
    (define gxc#&!class-setf-unchecked?-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!class-setf::t '1)))
    (define gxc#!lambda::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!lambda::t
         gxc#!procedure::t
         '4
         '!lambda
         '()
         ':init!
         '(arity dispatch inline inline-typedecl))))
    (define gxc#!lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _$args20556_
        (apply make-struct-instance gxc#!lambda::t _$args20556_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!lambda::t '0)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!lambda::t '1)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!lambda::t '2)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!lambda::t '3)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!lambda::t '0)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!lambda::t '1)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!lambda::t '2)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!lambda::t '3)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!lambda::t '0)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!lambda::t '1)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!lambda::t '2)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!lambda::t '3)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!lambda::t '0)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!lambda::t '1)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!lambda::t '2)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!lambda::t '3)))
    (define gxc#!case-lambda::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!case-lambda::t
         gxc#!procedure::t
         '1
         '!case-lambda
         '()
         '#f
         '(clauses))))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _$args20553_
        (apply make-struct-instance gxc#!case-lambda::t _$args20553_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!case-lambda::t '0)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!case-lambda::t '0)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!case-lambda::t '0)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!case-lambda::t '0)))
    (define gxc#!kw-lambda::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda::t
         gxc#!procedure::t
         '2
         '!kw-lambda
         '()
         '#f
         '(table dispatch))))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (make-struct-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _$args20550_
        (apply make-struct-instance gxc#!kw-lambda::t _$args20550_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!kw-lambda::t '0)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!kw-lambda::t '1)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!kw-lambda::t '0)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!kw-lambda::t '1)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!kw-lambda::t '0)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!kw-lambda::t '1)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!kw-lambda::t '0)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!kw-lambda::t '1)))
    (define gxc#!kw-lambda-primary::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#!kw-lambda-primary::t
         gxc#!procedure::t
         '2
         '!kw-lambda-primary
         '()
         '#f
         '(keys main))))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args20547_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args20547_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!kw-lambda-primary::t '0)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!kw-lambda-primary::t '1)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!kw-lambda-primary::t '0)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!kw-lambda-primary::t '1)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!kw-lambda-primary::t '0)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#!kw-lambda-primary::t '1)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!kw-lambda-primary::t '0)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#!kw-lambda-primary::t '1)))
    (define gxc#!primitive::t
      (let ()
        (declare (not safe))
        (make-class-type 'gxc#!primitive::t '() '() '!primitive '() '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args20544_
        (apply make-class-instance gxc#!primitive::t _$args20544_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp20728
             (let ((__tmp20729
                    (let () (declare (not safe)) (cons gxc#!lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp20729))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         __tmp20728
         '()
         '!primitive-lambda
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args20541_
        (apply make-class-instance gxc#!primitive-lambda::t _$args20541_)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp20730
             (let ((__tmp20731
                    (let ()
                      (declare (not safe))
                      (cons gxc#!case-lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp20731))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         __tmp20730
         '()
         '!primitive-case-lambda
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args20538_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args20538_)))
    (define gxc#!struct-type:::init!
      (lambda (_self20530_
               _id20531_
               _super20532_
               _fields20533_
               _xfields20534_
               _ctor20535_
               _plist20536_)
        (if (let ((__tmp20732
                   (let ()
                     (declare (not safe))
                     (##vector-length _self20530_))))
              (declare (not safe))
              (##fx< '7 __tmp20732))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '1 _id20531_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '2 _super20532_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '3 _fields20533_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '4 _xfields20534_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '5 _ctor20535_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20530_ '6 _plist20536_))
              (let () (declare (not safe)) (##vector-set! _self20530_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self20530_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self20399_
               _id20400_
               _super20401_
               _mixin20402_
               _slots20403_
               _xslots20404_
               _ctor20405_
               _plist20406_)
        (if (let ((__tmp20733
                   (let ()
                     (declare (not safe))
                     (##vector-length _self20399_))))
              (declare (not safe))
              (##fx< '8 __tmp20733))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '1 _id20400_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '2 _super20401_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '3 _mixin20402_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '4 _slots20403_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '5 _xslots20404_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '6 _ctor20405_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20399_ '7 _plist20406_))
              (let () (declare (not safe)) (##vector-set! _self20399_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self20399_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self20243_
               _id20244_
               _arity20245_
               _dispatch20246_
               _inline20247_
               _typedecl20248_)
        (if (let ((__tmp20734
                   (let ()
                     (declare (not safe))
                     (##vector-length _self20243_))))
              (declare (not safe))
              (##fx< '5 __tmp20734))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self20243_ '1 _id20244_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20243_ '2 _arity20245_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20243_ '3 _dispatch20246_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20243_ '4 _inline20247_))
              (let ()
                (declare (not safe))
                (##vector-set! _self20243_ '5 _typedecl20248_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self20243_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self20253_ _id20254_ _arity20255_ _dispatch20256_)
        (let* ((_inline20258_ '#f) (_typedecl20260_ '#f))
          (if (let ((__tmp20735
                     (let ()
                       (declare (not safe))
                       (##vector-length _self20253_))))
                (declare (not safe))
                (##fx< '5 __tmp20735))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20253_ '1 _id20254_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20253_ '2 _arity20255_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20253_ '3 _dispatch20256_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20253_ '4 _inline20258_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20253_ '5 _typedecl20260_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self20253_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self20262_
               _id20263_
               _arity20264_
               _dispatch20265_
               _inline20266_)
        (let ((_typedecl20268_ '#f))
          (if (let ((__tmp20736
                     (let ()
                       (declare (not safe))
                       (##vector-length _self20262_))))
                (declare (not safe))
                (##fx< '5 __tmp20736))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20262_ '1 _id20263_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20262_ '2 _arity20264_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20262_ '3 _dispatch20265_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20262_ '4 _inline20266_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self20262_ '5 _typedecl20268_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self20262_)))))
    (define gxc#!lambda:::init!
      (lambda _g20738_
        (let ((_g20737_ (let () (declare (not safe)) (##length _g20738_))))
          (cond ((let () (declare (not safe)) (##fx= _g20737_ 4))
                 (apply (lambda (_self20253_
                                 _id20254_
                                 _arity20255_
                                 _dispatch20256_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self20253_
                             _id20254_
                             _arity20255_
                             _dispatch20256_)))
                        _g20738_))
                ((let () (declare (not safe)) (##fx= _g20737_ 5))
                 (apply (lambda (_self20262_
                                 _id20263_
                                 _arity20264_
                                 _dispatch20265_
                                 _inline20266_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self20262_
                             _id20263_
                             _arity20264_
                             _dispatch20265_
                             _inline20266_)))
                        _g20738_))
                ((let () (declare (not safe)) (##fx= _g20737_ 6))
                 (apply (lambda (_self20270_
                                 _id20271_
                                 _arity20272_
                                 _dispatch20273_
                                 _inline20274_
                                 _typedecl20275_)
                          (if (let ((__tmp20739
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self20270_))))
                                (declare (not safe))
                                (##fx< '5 __tmp20739))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self20270_ '1 _id20271_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self20270_ '2 _arity20272_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self20270_
                                   '3
                                   _dispatch20273_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self20270_ '4 _inline20274_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self20270_
                                   '5
                                   _typedecl20275_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self20270_)))
                        _g20738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g20738_))))))
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
      (lambda (_self19995_ . _args19996_)
        (apply struct-instance-init! _self19995_ _args19996_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type19865_)
        (let ((_$e19867_
               (##structure-ref _type19865_ '7 gxc#!struct-type::t '#f)))
          (if _$e19867_
              (values _$e19867_)
              (let ((_vtab19870_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type19865_
                 _vtab19870_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab19870_)))))
    (define gxc#!class-type-vtab
      (lambda (_type19858_)
        (let ((_$e19860_
               (##structure-ref _type19858_ '8 gxc#!class-type::t '#f)))
          (if _$e19860_
              (values _$e19860_)
              (let ((_vtab19863_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type19858_
                 _vtab19863_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab19863_)))))
    (define gxc#!type-vtab
      (lambda (_type19856_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type19856_ 'gxc#!struct-type::t))
            (let () (declare (not safe)) (gxc#!struct-type-vtab _type19856_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type19856_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-vtab _type19856_))
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type19847_ _method19848_)
        (let ((_vtab1984919851_
               (##structure-ref _type19847_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1984919851_
              (let ((_vtab19854_ _vtab1984919851_))
                (declare (not safe))
                (table-ref _vtab19854_ _method19848_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type19838_ _method19839_)
        (let ((_vtab1984019842_
               (##structure-ref _type19838_ '8 gxc#!class-type::t '#f)))
          (if _vtab1984019842_
              (let ((_vtab19845_ _vtab1984019842_))
                (declare (not safe))
                (table-ref _vtab19845_ _method19839_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type19835_ _method19836_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type19835_ 'gxc#!struct-type::t))
            (let ()
              (declare (not safe))
              (gxc#!struct-type-lookup-method _type19835_ _method19836_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type19835_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-lookup-method _type19835_ _method19836_))
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type19826_)
        (if (##structure-ref _type19826_ '4 gxc#!class-type::t '#f)
            (let ((_super19828_
                   (##structure-ref _type19826_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super19828_))
                  '#t
                  (let ((_$e19830_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super19828_))))
                    (if _$e19830_
                        ((lambda (_super-t19833_)
                           (if (##structure-ref
                                _super-t19833_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e19830_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym19810_ _type19811_ _local?19812_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type19811_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym19810_ _type19811_))
        (let ((__tmp20740
               (let () (declare (not safe)) (struct->list _type19811_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym19810_ '" " __tmp20740))
        (let ((__tmp20741
               (if _local?19812_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp20741 _sym19810_ _type19811_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym19817_ _type19818_)
        (let ((_local?19820_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym19817_
           _type19818_
           _local?19820_))))
    (define gxc#optimizer-declare-type!
      (lambda _g20743_
        (let ((_g20742_ (let () (declare (not safe)) (##length _g20743_))))
          (cond ((let () (declare (not safe)) (##fx= _g20742_ 2))
                 (apply (lambda (_sym19817_ _type19818_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym19817_
                             _type19818_)))
                        _g20743_))
                ((let () (declare (not safe)) (##fx= _g20742_ 3))
                 (apply (lambda (_sym19822_ _type19823_ _local?19824_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym19822_
                             _type19823_
                             _local?19824_)))
                        _g20743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g20743_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym19796_ _local?19797_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym19796_))
        (let ((__tmp20744
               (if _local?19797_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp20744 _sym19796_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym19802_)
        (let ((_local?19804_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym19802_ _local?19804_))))
    (define gxc#optimizer-clear-type!
      (lambda _g20746_
        (let ((_g20745_ (let () (declare (not safe)) (##length _g20746_))))
          (cond ((let () (declare (not safe)) (##fx= _g20745_ 1))
                 (apply (lambda (_sym19802_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym19802_)))
                        _g20746_))
                ((let () (declare (not safe)) (##fx= _g20745_ 2))
                 (apply (lambda (_sym19806_ _local?19807_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym19806_
                             _local?19807_)))
                        _g20746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g20746_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t19769_ _method19770_ _sym19771_ _rebind?19772_)
        (let* ((_type19774_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t19769_)))
               (_$e19776_
                (let () (declare (not safe)) (gxc#!type-vtab _type19774_))))
          (if _$e19776_
              ((lambda (_vtab19779_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab19779_ _method19770_))
                     (if _rebind?19772_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t19769_
                              '" "
                              _method19770_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab19779_
                              _method19770_
                              _sym19771_)))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t19769_
                          '" "
                          _method19770_
                          '" => "
                          _sym19771_))
                       (let ()
                         (declare (not safe))
                         (table-set! _vtab19779_ _method19770_ _sym19771_)))))
               _$e19776_)
              (if (let () (declare (not safe)) (not _type19774_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t19769_))
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t19769_
                         _type19774_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t19784_ _method19785_ _sym19786_)
        (let ((_rebind?19788_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t19784_
           _method19785_
           _sym19786_
           _rebind?19788_))))
    (define gxc#optimizer-declare-method!
      (lambda _g20748_
        (let ((_g20747_ (let () (declare (not safe)) (##length _g20748_))))
          (cond ((let () (declare (not safe)) (##fx= _g20747_ 3))
                 (apply (lambda (_type-t19784_ _method19785_ _sym19786_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t19784_
                             _method19785_
                             _sym19786_)))
                        _g20748_))
                ((let () (declare (not safe)) (##fx= _g20747_ 4))
                 (apply (lambda (_type-t19790_
                                 _method19791_
                                 _sym19792_
                                 _rebind?19793_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t19790_
                             _method19791_
                             _sym19792_
                             _rebind?19793_)))
                        _g20748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g20748_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym19757_)
        (let ((_$e19765_
               (let ((_ht1975819760_ (gxc#current-compile-local-type)))
                 (if _ht1975819760_
                     (let ((_ht19763_ _ht1975819760_))
                       (declare (not safe))
                       (table-ref _ht19763_ _sym19757_ '#f))
                     '#f))))
          (if _$e19765_
              _$e19765_
              (let ((__tmp20749
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp20749 _sym19757_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym19749_)
        (let ((_type1975019752_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym19749_))))
          (if _type1975019752_
              (let ((_type19755_ _type1975019752_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type19755_ 'gxc#!alias::t))
                    (let ((__tmp20750
                           (##structure-ref _type19755_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp20750))
                    _type19755_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t19746_ _method19747_)
        (let ((__tmp20751
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t19746_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp20751 _method19747_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym19744_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym19744_))
        (let ((__tmp20752
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp20752 _sym19744_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym19742_)
        (let ((__tmp20753
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp20753 _sym19742_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx19740_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx19740_ 'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx19740_))
            (let () (declare (not safe)) (gx#stx-e _stx19740_)))))))
