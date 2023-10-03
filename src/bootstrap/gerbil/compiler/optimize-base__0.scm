(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1696371936)
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
      (lambda _$args19834_
        (apply make-struct-instance gxc#optimizer-info::t _$args19834_)))
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
      (lambda (_self19832_)
        (if (let ((__tmp19839
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19832_))))
              (declare (not safe))
              (##fx< '3 __tmp19839))
            (begin
              (let ((__tmp19836
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19832_ '1 __tmp19836))
              (let ((__tmp19837
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19832_ '2 __tmp19837))
              (let ((__tmp19838
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19832_ '3 __tmp19838)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19832_))))
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
      (lambda _$args19707_
        (apply make-struct-instance gxc#!type::t _$args19707_)))
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
      (lambda _$args19704_
        (apply make-struct-instance gxc#!alias::t _$args19704_)))
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
      (lambda _$args19701_
        (apply make-struct-instance gxc#!struct-type::t _$args19701_)))
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
      (lambda _$args19698_
        (apply make-struct-instance gxc#!class-type::t _$args19698_)))
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
      (lambda _$args19695_
        (apply make-struct-instance gxc#!procedure::t _$args19695_)))
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
      (lambda _$args19692_
        (apply make-struct-instance gxc#!struct-pred::t _$args19692_)))
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
      (lambda _$args19689_
        (apply make-struct-instance gxc#!struct-cons::t _$args19689_)))
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
      (lambda _$args19686_
        (apply make-struct-instance gxc#!struct-getf::t _$args19686_)))
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
      (lambda _$args19683_
        (apply make-struct-instance gxc#!struct-setf::t _$args19683_)))
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
      (lambda _$args19680_
        (apply make-struct-instance gxc#!class-pred::t _$args19680_)))
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
      (lambda _$args19677_
        (apply make-struct-instance gxc#!class-cons::t _$args19677_)))
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
      (lambda _$args19674_
        (apply make-struct-instance gxc#!class-getf::t _$args19674_)))
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
      (lambda _$args19671_
        (apply make-struct-instance gxc#!class-setf::t _$args19671_)))
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
      (lambda _$args19668_
        (apply make-struct-instance gxc#!lambda::t _$args19668_)))
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
      (lambda _$args19665_
        (apply make-struct-instance gxc#!case-lambda::t _$args19665_)))
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
      (lambda _$args19662_
        (apply make-struct-instance gxc#!kw-lambda::t _$args19662_)))
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
      (lambda _$args19659_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args19659_)))
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
      (lambda _$args19656_
        (apply make-class-instance gxc#!primitive::t _$args19656_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp19840
             (let ((__tmp19841
                    (let () (declare (not safe)) (cons gxc#!lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19841))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         __tmp19840
         '()
         '!primitive-lambda
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args19653_
        (apply make-class-instance gxc#!primitive-lambda::t _$args19653_)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp19842
             (let ((__tmp19843
                    (let ()
                      (declare (not safe))
                      (cons gxc#!case-lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19843))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         __tmp19842
         '()
         '!primitive-case-lambda
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args19650_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args19650_)))
    (define gxc#!struct-type:::init!
      (lambda (_self19642_
               _id19643_
               _super19644_
               _fields19645_
               _xfields19646_
               _ctor19647_
               _plist19648_)
        (if (let ((__tmp19844
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19642_))))
              (declare (not safe))
              (##fx< '7 __tmp19844))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '1 _id19643_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '2 _super19644_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '3 _fields19645_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '4 _xfields19646_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '5 _ctor19647_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19642_ '6 _plist19648_))
              (let () (declare (not safe)) (##vector-set! _self19642_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19642_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self19511_
               _id19512_
               _super19513_
               _mixin19514_
               _slots19515_
               _xslots19516_
               _ctor19517_
               _plist19518_)
        (if (let ((__tmp19845
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19511_))))
              (declare (not safe))
              (##fx< '8 __tmp19845))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '1 _id19512_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '2 _super19513_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '3 _mixin19514_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '4 _slots19515_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '5 _xslots19516_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '6 _ctor19517_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19511_ '7 _plist19518_))
              (let () (declare (not safe)) (##vector-set! _self19511_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19511_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self19355_
               _id19356_
               _arity19357_
               _dispatch19358_
               _inline19359_
               _typedecl19360_)
        (if (let ((__tmp19846
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19355_))))
              (declare (not safe))
              (##fx< '5 __tmp19846))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19355_ '1 _id19356_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19355_ '2 _arity19357_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19355_ '3 _dispatch19358_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19355_ '4 _inline19359_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19355_ '5 _typedecl19360_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19355_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self19365_ _id19366_ _arity19367_ _dispatch19368_)
        (let* ((_inline19370_ '#f) (_typedecl19372_ '#f))
          (if (let ((__tmp19847
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19365_))))
                (declare (not safe))
                (##fx< '5 __tmp19847))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19365_ '1 _id19366_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19365_ '2 _arity19367_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19365_ '3 _dispatch19368_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19365_ '4 _inline19370_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19365_ '5 _typedecl19372_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19365_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self19374_
               _id19375_
               _arity19376_
               _dispatch19377_
               _inline19378_)
        (let ((_typedecl19380_ '#f))
          (if (let ((__tmp19848
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19374_))))
                (declare (not safe))
                (##fx< '5 __tmp19848))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19374_ '1 _id19375_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19374_ '2 _arity19376_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19374_ '3 _dispatch19377_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19374_ '4 _inline19378_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19374_ '5 _typedecl19380_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19374_)))))
    (define gxc#!lambda:::init!
      (lambda _g19850_
        (let ((_g19849_ (let () (declare (not safe)) (##length _g19850_))))
          (cond ((let () (declare (not safe)) (##fx= _g19849_ 4))
                 (apply (lambda (_self19365_
                                 _id19366_
                                 _arity19367_
                                 _dispatch19368_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self19365_
                             _id19366_
                             _arity19367_
                             _dispatch19368_)))
                        _g19850_))
                ((let () (declare (not safe)) (##fx= _g19849_ 5))
                 (apply (lambda (_self19374_
                                 _id19375_
                                 _arity19376_
                                 _dispatch19377_
                                 _inline19378_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self19374_
                             _id19375_
                             _arity19376_
                             _dispatch19377_
                             _inline19378_)))
                        _g19850_))
                ((let () (declare (not safe)) (##fx= _g19849_ 6))
                 (apply (lambda (_self19382_
                                 _id19383_
                                 _arity19384_
                                 _dispatch19385_
                                 _inline19386_
                                 _typedecl19387_)
                          (if (let ((__tmp19851
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self19382_))))
                                (declare (not safe))
                                (##fx< '5 __tmp19851))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19382_ '1 _id19383_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19382_ '2 _arity19384_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19382_
                                   '3
                                   _dispatch19385_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19382_ '4 _inline19386_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19382_
                                   '5
                                   _typedecl19387_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self19382_)))
                        _g19850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g19850_))))))
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
      (lambda (_self19107_ . _args19108_)
        (apply struct-instance-init! _self19107_ _args19108_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type18977_)
        (let ((_$e18979_
               (##structure-ref _type18977_ '7 gxc#!struct-type::t '#f)))
          (if _$e18979_
              (values _$e18979_)
              (let ((_vtab18982_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18977_
                 _vtab18982_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18982_)))))
    (define gxc#!class-type-vtab
      (lambda (_type18970_)
        (let ((_$e18972_
               (##structure-ref _type18970_ '8 gxc#!class-type::t '#f)))
          (if _$e18972_
              (values _$e18972_)
              (let ((_vtab18975_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18970_
                 _vtab18975_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab18975_)))))
    (define gxc#!type-vtab
      (lambda (_type18968_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18968_ 'gxc#!struct-type::t))
            (let () (declare (not safe)) (gxc#!struct-type-vtab _type18968_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18968_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-vtab _type18968_))
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type18959_ _method18960_)
        (let ((_vtab1896118963_
               (##structure-ref _type18959_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1896118963_
              (let ((_vtab18966_ _vtab1896118963_))
                (declare (not safe))
                (table-ref _vtab18966_ _method18960_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type18950_ _method18951_)
        (let ((_vtab1895218954_
               (##structure-ref _type18950_ '8 gxc#!class-type::t '#f)))
          (if _vtab1895218954_
              (let ((_vtab18957_ _vtab1895218954_))
                (declare (not safe))
                (table-ref _vtab18957_ _method18951_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type18947_ _method18948_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18947_ 'gxc#!struct-type::t))
            (let ()
              (declare (not safe))
              (gxc#!struct-type-lookup-method _type18947_ _method18948_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18947_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-lookup-method _type18947_ _method18948_))
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type18938_)
        (if (##structure-ref _type18938_ '4 gxc#!class-type::t '#f)
            (let ((_super18940_
                   (##structure-ref _type18938_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super18940_))
                  '#t
                  (let ((_$e18942_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super18940_))))
                    (if _$e18942_
                        ((lambda (_super-t18945_)
                           (if (##structure-ref
                                _super-t18945_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e18942_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym18922_ _type18923_ _local?18924_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18923_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym18922_ _type18923_))
        (let ((__tmp19852
               (let () (declare (not safe)) (struct->list _type18923_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym18922_ '" " __tmp19852))
        (let ((__tmp19853
               (if _local?18924_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19853 _sym18922_ _type18923_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym18929_ _type18930_)
        (let ((_local?18932_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym18929_
           _type18930_
           _local?18932_))))
    (define gxc#optimizer-declare-type!
      (lambda _g19855_
        (let ((_g19854_ (let () (declare (not safe)) (##length _g19855_))))
          (cond ((let () (declare (not safe)) (##fx= _g19854_ 2))
                 (apply (lambda (_sym18929_ _type18930_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym18929_
                             _type18930_)))
                        _g19855_))
                ((let () (declare (not safe)) (##fx= _g19854_ 3))
                 (apply (lambda (_sym18934_ _type18935_ _local?18936_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym18934_
                             _type18935_
                             _local?18936_)))
                        _g19855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g19855_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym18908_ _local?18909_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym18908_))
        (let ((__tmp19856
               (if _local?18909_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19856 _sym18908_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym18914_)
        (let ((_local?18916_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym18914_ _local?18916_))))
    (define gxc#optimizer-clear-type!
      (lambda _g19858_
        (let ((_g19857_ (let () (declare (not safe)) (##length _g19858_))))
          (cond ((let () (declare (not safe)) (##fx= _g19857_ 1))
                 (apply (lambda (_sym18914_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym18914_)))
                        _g19858_))
                ((let () (declare (not safe)) (##fx= _g19857_ 2))
                 (apply (lambda (_sym18918_ _local?18919_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym18918_
                             _local?18919_)))
                        _g19858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g19858_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t18881_ _method18882_ _sym18883_ _rebind?18884_)
        (let* ((_type18886_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t18881_)))
               (_$e18888_
                (let () (declare (not safe)) (gxc#!type-vtab _type18886_))))
          (if _$e18888_
              ((lambda (_vtab18891_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab18891_ _method18882_))
                     (if _rebind?18884_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t18881_
                              '" "
                              _method18882_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab18891_
                              _method18882_
                              _sym18883_)))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t18881_
                          '" "
                          _method18882_
                          '" => "
                          _sym18883_))
                       (let ()
                         (declare (not safe))
                         (table-set! _vtab18891_ _method18882_ _sym18883_)))))
               _$e18888_)
              (if (let () (declare (not safe)) (not _type18886_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t18881_))
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18881_
                         _type18886_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t18896_ _method18897_ _sym18898_)
        (let ((_rebind?18900_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t18896_
           _method18897_
           _sym18898_
           _rebind?18900_))))
    (define gxc#optimizer-declare-method!
      (lambda _g19860_
        (let ((_g19859_ (let () (declare (not safe)) (##length _g19860_))))
          (cond ((let () (declare (not safe)) (##fx= _g19859_ 3))
                 (apply (lambda (_type-t18896_ _method18897_ _sym18898_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t18896_
                             _method18897_
                             _sym18898_)))
                        _g19860_))
                ((let () (declare (not safe)) (##fx= _g19859_ 4))
                 (apply (lambda (_type-t18902_
                                 _method18903_
                                 _sym18904_
                                 _rebind?18905_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t18902_
                             _method18903_
                             _sym18904_
                             _rebind?18905_)))
                        _g19860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g19860_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym18869_)
        (let ((_$e18877_
               (let ((_ht1887018872_ (gxc#current-compile-local-type)))
                 (if _ht1887018872_
                     (let ((_ht18875_ _ht1887018872_))
                       (declare (not safe))
                       (table-ref _ht18875_ _sym18869_ '#f))
                     '#f))))
          (if _$e18877_
              _$e18877_
              (let ((__tmp19861
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp19861 _sym18869_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym18861_)
        (let ((_type1886218864_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym18861_))))
          (if _type1886218864_
              (let ((_type18867_ _type1886218864_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type18867_ 'gxc#!alias::t))
                    (let ((__tmp19862
                           (##structure-ref _type18867_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp19862))
                    _type18867_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t18858_ _method18859_)
        (let ((__tmp19863
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t18858_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp19863 _method18859_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym18856_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym18856_))
        (let ((__tmp19864
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp19864 _sym18856_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym18854_)
        (let ((__tmp19865
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp19865 _sym18854_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx18852_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx18852_ 'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx18852_))
            (let () (declare (not safe)) (gx#stx-e _stx18852_)))))))
