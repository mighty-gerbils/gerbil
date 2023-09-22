(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1695377617)
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
      (lambda _$args19694_
        (apply make-struct-instance gxc#optimizer-info::t _$args19694_)))
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
    (define gxc#optimizer-info:::init!
      (lambda (_self19692_)
        (if (let ((__tmp19699
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19692_))))
              (declare (not safe))
              (##fx< '3 __tmp19699))
            (begin
              (let ((__tmp19696
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19692_ '1 __tmp19696))
              (let ((__tmp19697
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19692_ '2 __tmp19697))
              (let ((__tmp19698
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19692_ '3 __tmp19698)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19692_))))
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
      (lambda _$args19567_
        (apply make-struct-instance gxc#!type::t _$args19567_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!type::t '0)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!type::t '0)))
    (define gxc#!alias::t
      (let ()
        (declare (not safe))
        (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '())))
    (define gxc#!alias?
      (let () (declare (not safe)) (make-struct-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _$args19564_
        (apply make-struct-instance gxc#!alias::t _$args19564_)))
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
      (lambda _$args19561_
        (apply make-struct-instance gxc#!struct-type::t _$args19561_)))
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
      (lambda _$args19558_
        (apply make-struct-instance gxc#!class-type::t _$args19558_)))
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
      (lambda _$args19555_
        (apply make-struct-instance gxc#!procedure::t _$args19555_)))
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
      (lambda _$args19552_
        (apply make-struct-instance gxc#!struct-pred::t _$args19552_)))
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
      (lambda _$args19549_
        (apply make-struct-instance gxc#!struct-cons::t _$args19549_)))
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
      (lambda _$args19546_
        (apply make-struct-instance gxc#!struct-getf::t _$args19546_)))
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
      (lambda _$args19543_
        (apply make-struct-instance gxc#!struct-setf::t _$args19543_)))
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
      (lambda _$args19540_
        (apply make-struct-instance gxc#!class-pred::t _$args19540_)))
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
      (lambda _$args19537_
        (apply make-struct-instance gxc#!class-cons::t _$args19537_)))
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
      (lambda _$args19534_
        (apply make-struct-instance gxc#!class-getf::t _$args19534_)))
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
      (lambda _$args19531_
        (apply make-struct-instance gxc#!class-setf::t _$args19531_)))
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
      (lambda _$args19528_
        (apply make-struct-instance gxc#!lambda::t _$args19528_)))
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
      (lambda _$args19525_
        (apply make-struct-instance gxc#!case-lambda::t _$args19525_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#!case-lambda::t '0)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#!case-lambda::t '0)))
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
      (lambda _$args19522_
        (apply make-struct-instance gxc#!kw-lambda::t _$args19522_)))
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
      (lambda _$args19519_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args19519_)))
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
    (define gxc#!primitive::t
      (let ()
        (declare (not safe))
        (make-class-type 'gxc#!primitive::t '() '() '!primitive '() '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _$args19516_
        (apply make-class-instance gxc#!primitive::t _$args19516_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp19700
             (let ((__tmp19701
                    (let () (declare (not safe)) (cons gxc#!lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19701))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         __tmp19700
         '()
         '!primitive-lambda
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args19513_
        (apply make-class-instance gxc#!primitive-lambda::t _$args19513_)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp19702
             (let ((__tmp19703
                    (let ()
                      (declare (not safe))
                      (cons gxc#!case-lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19703))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         __tmp19702
         '()
         '!primitive-case-lambda
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args19510_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args19510_)))
    (define gxc#!struct-type:::init!
      (lambda (_self19502_
               _id19503_
               _super19504_
               _fields19505_
               _xfields19506_
               _ctor19507_
               _plist19508_)
        (if (let ((__tmp19704
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19502_))))
              (declare (not safe))
              (##fx< '7 __tmp19704))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '1 _id19503_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '2 _super19504_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '3 _fields19505_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '4 _xfields19506_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '5 _ctor19507_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19502_ '6 _plist19508_))
              (let () (declare (not safe)) (##vector-set! _self19502_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19502_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self19371_
               _id19372_
               _super19373_
               _mixin19374_
               _slots19375_
               _xslots19376_
               _ctor19377_
               _plist19378_)
        (if (let ((__tmp19705
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19371_))))
              (declare (not safe))
              (##fx< '8 __tmp19705))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '1 _id19372_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '2 _super19373_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '3 _mixin19374_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '4 _slots19375_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '5 _xslots19376_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '6 _ctor19377_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19371_ '7 _plist19378_))
              (let () (declare (not safe)) (##vector-set! _self19371_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19371_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self19215_
               _id19216_
               _arity19217_
               _dispatch19218_
               _inline19219_
               _typedecl19220_)
        (if (let ((__tmp19706
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19215_))))
              (declare (not safe))
              (##fx< '5 __tmp19706))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19215_ '1 _id19216_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19215_ '2 _arity19217_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19215_ '3 _dispatch19218_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19215_ '4 _inline19219_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19215_ '5 _typedecl19220_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19215_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self19225_ _id19226_ _arity19227_ _dispatch19228_)
        (let* ((_inline19230_ '#f) (_typedecl19232_ '#f))
          (if (let ((__tmp19707
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19225_))))
                (declare (not safe))
                (##fx< '5 __tmp19707))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19225_ '1 _id19226_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19225_ '2 _arity19227_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19225_ '3 _dispatch19228_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19225_ '4 _inline19230_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19225_ '5 _typedecl19232_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19225_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self19234_
               _id19235_
               _arity19236_
               _dispatch19237_
               _inline19238_)
        (let ((_typedecl19240_ '#f))
          (if (let ((__tmp19708
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19234_))))
                (declare (not safe))
                (##fx< '5 __tmp19708))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19234_ '1 _id19235_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19234_ '2 _arity19236_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19234_ '3 _dispatch19237_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19234_ '4 _inline19238_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19234_ '5 _typedecl19240_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19234_)))))
    (define gxc#!lambda:::init!
      (lambda _g19710_
        (let ((_g19709_ (let () (declare (not safe)) (##length _g19710_))))
          (cond ((let () (declare (not safe)) (##fx= _g19709_ 4))
                 (apply (lambda (_self19225_
                                 _id19226_
                                 _arity19227_
                                 _dispatch19228_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self19225_
                             _id19226_
                             _arity19227_
                             _dispatch19228_)))
                        _g19710_))
                ((let () (declare (not safe)) (##fx= _g19709_ 5))
                 (apply (lambda (_self19234_
                                 _id19235_
                                 _arity19236_
                                 _dispatch19237_
                                 _inline19238_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self19234_
                             _id19235_
                             _arity19236_
                             _dispatch19237_
                             _inline19238_)))
                        _g19710_))
                ((let () (declare (not safe)) (##fx= _g19709_ 6))
                 (apply (lambda (_self19242_
                                 _id19243_
                                 _arity19244_
                                 _dispatch19245_
                                 _inline19246_
                                 _typedecl19247_)
                          (if (let ((__tmp19711
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self19242_))))
                                (declare (not safe))
                                (##fx< '5 __tmp19711))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19242_ '1 _id19243_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19242_ '2 _arity19244_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19242_
                                   '3
                                   _dispatch19245_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19242_ '4 _inline19246_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19242_
                                   '5
                                   _typedecl19247_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self19242_)))
                        _g19710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g19710_))))))
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
      (lambda (_self18967_ . _args18968_)
        (apply struct-instance-init! _self18967_ _args18968_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type18837_)
        (let ((_$e18839_
               (##structure-ref _type18837_ '7 gxc#!struct-type::t '#f)))
          (if _$e18839_
              (values _$e18839_)
              (let ((_vtab18842_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18837_
                 _vtab18842_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18842_)))))
    (define gxc#!class-type-vtab
      (lambda (_type18830_)
        (let ((_$e18832_
               (##structure-ref _type18830_ '8 gxc#!class-type::t '#f)))
          (if _$e18832_
              (values _$e18832_)
              (let ((_vtab18835_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18830_
                 _vtab18835_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab18835_)))))
    (define gxc#!type-vtab
      (lambda (_type18828_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18828_ 'gxc#!struct-type::t))
            (let () (declare (not safe)) (gxc#!struct-type-vtab _type18828_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18828_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-vtab _type18828_))
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type18819_ _method18820_)
        (let ((_vtab1882118823_
               (##structure-ref _type18819_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1882118823_
              (let ((_vtab18826_ _vtab1882118823_))
                (declare (not safe))
                (table-ref _vtab18826_ _method18820_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type18810_ _method18811_)
        (let ((_vtab1881218814_
               (##structure-ref _type18810_ '8 gxc#!class-type::t '#f)))
          (if _vtab1881218814_
              (let ((_vtab18817_ _vtab1881218814_))
                (declare (not safe))
                (table-ref _vtab18817_ _method18811_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type18807_ _method18808_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18807_ 'gxc#!struct-type::t))
            (let ()
              (declare (not safe))
              (gxc#!struct-type-lookup-method _type18807_ _method18808_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18807_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-lookup-method _type18807_ _method18808_))
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type18798_)
        (if (##structure-ref _type18798_ '4 gxc#!class-type::t '#f)
            (let ((_super18800_
                   (##structure-ref _type18798_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super18800_))
                  '#t
                  (let ((_$e18802_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super18800_))))
                    (if _$e18802_
                        ((lambda (_super-t18805_)
                           (if (##structure-ref
                                _super-t18805_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e18802_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym18782_ _type18783_ _local?18784_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18783_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym18782_ _type18783_))
        (let ((__tmp19712
               (let () (declare (not safe)) (struct->list _type18783_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym18782_ '" " __tmp19712))
        (let ((__tmp19713
               (if _local?18784_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19713 _sym18782_ _type18783_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym18789_ _type18790_)
        (let ((_local?18792_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym18789_
           _type18790_
           _local?18792_))))
    (define gxc#optimizer-declare-type!
      (lambda _g19715_
        (let ((_g19714_ (let () (declare (not safe)) (##length _g19715_))))
          (cond ((let () (declare (not safe)) (##fx= _g19714_ 2))
                 (apply (lambda (_sym18789_ _type18790_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym18789_
                             _type18790_)))
                        _g19715_))
                ((let () (declare (not safe)) (##fx= _g19714_ 3))
                 (apply (lambda (_sym18794_ _type18795_ _local?18796_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym18794_
                             _type18795_
                             _local?18796_)))
                        _g19715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g19715_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym18768_ _local?18769_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym18768_))
        (let ((__tmp19716
               (if _local?18769_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19716 _sym18768_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym18774_)
        (let ((_local?18776_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym18774_ _local?18776_))))
    (define gxc#optimizer-clear-type!
      (lambda _g19718_
        (let ((_g19717_ (let () (declare (not safe)) (##length _g19718_))))
          (cond ((let () (declare (not safe)) (##fx= _g19717_ 1))
                 (apply (lambda (_sym18774_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym18774_)))
                        _g19718_))
                ((let () (declare (not safe)) (##fx= _g19717_ 2))
                 (apply (lambda (_sym18778_ _local?18779_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym18778_
                             _local?18779_)))
                        _g19718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g19718_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t18741_ _method18742_ _sym18743_ _rebind?18744_)
        (let* ((_type18746_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t18741_)))
               (_$e18748_
                (let () (declare (not safe)) (gxc#!type-vtab _type18746_))))
          (if _$e18748_
              ((lambda (_vtab18751_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab18751_ _method18742_))
                     (if _rebind?18744_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t18741_
                              '" "
                              _method18742_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab18751_
                              _method18742_
                              _sym18743_)))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t18741_
                          '" "
                          _method18742_
                          '" => "
                          _sym18743_))
                       (let ()
                         (declare (not safe))
                         (table-set! _vtab18751_ _method18742_ _sym18743_)))))
               _$e18748_)
              (if (let () (declare (not safe)) (not _type18746_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t18741_))
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18741_
                         _type18746_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t18756_ _method18757_ _sym18758_)
        (let ((_rebind?18760_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t18756_
           _method18757_
           _sym18758_
           _rebind?18760_))))
    (define gxc#optimizer-declare-method!
      (lambda _g19720_
        (let ((_g19719_ (let () (declare (not safe)) (##length _g19720_))))
          (cond ((let () (declare (not safe)) (##fx= _g19719_ 3))
                 (apply (lambda (_type-t18756_ _method18757_ _sym18758_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t18756_
                             _method18757_
                             _sym18758_)))
                        _g19720_))
                ((let () (declare (not safe)) (##fx= _g19719_ 4))
                 (apply (lambda (_type-t18762_
                                 _method18763_
                                 _sym18764_
                                 _rebind?18765_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t18762_
                             _method18763_
                             _sym18764_
                             _rebind?18765_)))
                        _g19720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g19720_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym18729_)
        (let ((_$e18737_
               (let ((_ht1873018732_ (gxc#current-compile-local-type)))
                 (if _ht1873018732_
                     (let ((_ht18735_ _ht1873018732_))
                       (declare (not safe))
                       (table-ref _ht18735_ _sym18729_ '#f))
                     '#f))))
          (if _$e18737_
              _$e18737_
              (let ((__tmp19721
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp19721 _sym18729_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym18721_)
        (let ((_type1872218724_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym18721_))))
          (if _type1872218724_
              (let ((_type18727_ _type1872218724_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type18727_ 'gxc#!alias::t))
                    (let ((__tmp19722
                           (##structure-ref _type18727_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp19722))
                    _type18727_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t18718_ _method18719_)
        (let ((__tmp19723
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t18718_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp19723 _method18719_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym18716_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym18716_))
        (let ((__tmp19724
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp19724 _sym18716_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym18714_)
        (let ((__tmp19725
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp19725 _sym18714_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx18712_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx18712_ 'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx18712_))
            (let () (declare (not safe)) (gx#stx-e _stx18712_)))))))
