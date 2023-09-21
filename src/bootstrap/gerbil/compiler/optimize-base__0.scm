(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1695337519)
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
      (lambda _$args19693_
        (apply make-struct-instance gxc#optimizer-info::t _$args19693_)))
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
      (lambda (_self19691_)
        (if (let ((__tmp19698
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19691_))))
              (declare (not safe))
              (##fx< '3 __tmp19698))
            (begin
              (let ((__tmp19695
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19691_ '1 __tmp19695))
              (let ((__tmp19696
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19691_ '2 __tmp19696))
              (let ((__tmp19697
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19691_ '3 __tmp19697)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19691_))))
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
      (lambda _$args19566_
        (apply make-struct-instance gxc#!type::t _$args19566_)))
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
      (lambda _$args19563_
        (apply make-struct-instance gxc#!alias::t _$args19563_)))
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
      (lambda _$args19560_
        (apply make-struct-instance gxc#!struct-type::t _$args19560_)))
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
      (lambda _$args19557_
        (apply make-struct-instance gxc#!class-type::t _$args19557_)))
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
      (lambda _$args19554_
        (apply make-struct-instance gxc#!procedure::t _$args19554_)))
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
      (lambda _$args19551_
        (apply make-struct-instance gxc#!struct-pred::t _$args19551_)))
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
      (lambda _$args19548_
        (apply make-struct-instance gxc#!struct-cons::t _$args19548_)))
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
      (lambda _$args19545_
        (apply make-struct-instance gxc#!struct-getf::t _$args19545_)))
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
      (lambda _$args19542_
        (apply make-struct-instance gxc#!struct-setf::t _$args19542_)))
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
      (lambda _$args19539_
        (apply make-struct-instance gxc#!class-pred::t _$args19539_)))
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
      (lambda _$args19536_
        (apply make-struct-instance gxc#!class-cons::t _$args19536_)))
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
      (lambda _$args19533_
        (apply make-struct-instance gxc#!class-getf::t _$args19533_)))
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
      (lambda _$args19530_
        (apply make-struct-instance gxc#!class-setf::t _$args19530_)))
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
      (lambda _$args19527_
        (apply make-struct-instance gxc#!lambda::t _$args19527_)))
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
      (lambda _$args19524_
        (apply make-struct-instance gxc#!case-lambda::t _$args19524_)))
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
      (lambda _$args19521_
        (apply make-struct-instance gxc#!kw-lambda::t _$args19521_)))
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
      (lambda _$args19518_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args19518_)))
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
      (lambda _$args19515_
        (apply make-class-instance gxc#!primitive::t _$args19515_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp19699
             (let ((__tmp19700
                    (let () (declare (not safe)) (cons gxc#!lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19700))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         __tmp19699
         '()
         '!primitive-lambda
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args19512_
        (apply make-class-instance gxc#!primitive-lambda::t _$args19512_)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp19701
             (let ((__tmp19702
                    (let ()
                      (declare (not safe))
                      (cons gxc#!case-lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19702))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         __tmp19701
         '()
         '!primitive-case-lambda
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args19509_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args19509_)))
    (define gxc#!struct-type:::init!
      (lambda (_self19501_
               _id19502_
               _super19503_
               _fields19504_
               _xfields19505_
               _ctor19506_
               _plist19507_)
        (if (let ((__tmp19703
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19501_))))
              (declare (not safe))
              (##fx< '7 __tmp19703))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '1 _id19502_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '2 _super19503_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '3 _fields19504_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '4 _xfields19505_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '5 _ctor19506_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19501_ '6 _plist19507_))
              (let () (declare (not safe)) (##vector-set! _self19501_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19501_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self19370_
               _id19371_
               _super19372_
               _mixin19373_
               _slots19374_
               _xslots19375_
               _ctor19376_
               _plist19377_)
        (if (let ((__tmp19704
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19370_))))
              (declare (not safe))
              (##fx< '8 __tmp19704))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '1 _id19371_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '2 _super19372_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '3 _mixin19373_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '4 _slots19374_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '5 _xslots19375_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '6 _ctor19376_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19370_ '7 _plist19377_))
              (let () (declare (not safe)) (##vector-set! _self19370_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19370_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self19214_
               _id19215_
               _arity19216_
               _dispatch19217_
               _inline19218_
               _typedecl19219_)
        (if (let ((__tmp19705
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19214_))))
              (declare (not safe))
              (##fx< '5 __tmp19705))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self19214_ '1 _id19215_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19214_ '2 _arity19216_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19214_ '3 _dispatch19217_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19214_ '4 _inline19218_))
              (let ()
                (declare (not safe))
                (##vector-set! _self19214_ '5 _typedecl19219_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19214_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self19224_ _id19225_ _arity19226_ _dispatch19227_)
        (let* ((_inline19229_ '#f) (_typedecl19231_ '#f))
          (if (let ((__tmp19706
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19224_))))
                (declare (not safe))
                (##fx< '5 __tmp19706))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19224_ '1 _id19225_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19224_ '2 _arity19226_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19224_ '3 _dispatch19227_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19224_ '4 _inline19229_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19224_ '5 _typedecl19231_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19224_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self19233_
               _id19234_
               _arity19235_
               _dispatch19236_
               _inline19237_)
        (let ((_typedecl19239_ '#f))
          (if (let ((__tmp19707
                     (let ()
                       (declare (not safe))
                       (##vector-length _self19233_))))
                (declare (not safe))
                (##fx< '5 __tmp19707))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19233_ '1 _id19234_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19233_ '2 _arity19235_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19233_ '3 _dispatch19236_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19233_ '4 _inline19237_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self19233_ '5 _typedecl19239_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self19233_)))))
    (define gxc#!lambda:::init!
      (lambda _g19709_
        (let ((_g19708_ (let () (declare (not safe)) (##length _g19709_))))
          (cond ((let () (declare (not safe)) (##fx= _g19708_ 4))
                 (apply (lambda (_self19224_
                                 _id19225_
                                 _arity19226_
                                 _dispatch19227_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self19224_
                             _id19225_
                             _arity19226_
                             _dispatch19227_)))
                        _g19709_))
                ((let () (declare (not safe)) (##fx= _g19708_ 5))
                 (apply (lambda (_self19233_
                                 _id19234_
                                 _arity19235_
                                 _dispatch19236_
                                 _inline19237_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self19233_
                             _id19234_
                             _arity19235_
                             _dispatch19236_
                             _inline19237_)))
                        _g19709_))
                ((let () (declare (not safe)) (##fx= _g19708_ 6))
                 (apply (lambda (_self19241_
                                 _id19242_
                                 _arity19243_
                                 _dispatch19244_
                                 _inline19245_
                                 _typedecl19246_)
                          (if (let ((__tmp19710
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self19241_))))
                                (declare (not safe))
                                (##fx< '5 __tmp19710))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19241_ '1 _id19242_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19241_ '2 _arity19243_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19241_
                                   '3
                                   _dispatch19244_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self19241_ '4 _inline19245_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self19241_
                                   '5
                                   _typedecl19246_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self19241_)))
                        _g19709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g19709_))))))
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
      (lambda (_self18966_ . _args18967_)
        (apply struct-instance-init! _self18966_ _args18967_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type18836_)
        (let ((_$e18838_
               (##structure-ref _type18836_ '7 gxc#!struct-type::t '#f)))
          (if _$e18838_
              (values _$e18838_)
              (let ((_vtab18841_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18836_
                 _vtab18841_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18841_)))))
    (define gxc#!class-type-vtab
      (lambda (_type18829_)
        (let ((_$e18831_
               (##structure-ref _type18829_ '8 gxc#!class-type::t '#f)))
          (if _$e18831_
              (values _$e18831_)
              (let ((_vtab18834_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18829_
                 _vtab18834_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab18834_)))))
    (define gxc#!type-vtab
      (lambda (_type18827_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18827_ 'gxc#!struct-type::t))
            (let () (declare (not safe)) (gxc#!struct-type-vtab _type18827_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18827_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-vtab _type18827_))
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type18818_ _method18819_)
        (let ((_vtab1882018822_
               (##structure-ref _type18818_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1882018822_
              (let ((_vtab18825_ _vtab1882018822_))
                (declare (not safe))
                (table-ref _vtab18825_ _method18819_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type18809_ _method18810_)
        (let ((_vtab1881118813_
               (##structure-ref _type18809_ '8 gxc#!class-type::t '#f)))
          (if _vtab1881118813_
              (let ((_vtab18816_ _vtab1881118813_))
                (declare (not safe))
                (table-ref _vtab18816_ _method18810_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type18806_ _method18807_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18806_ 'gxc#!struct-type::t))
            (let ()
              (declare (not safe))
              (gxc#!struct-type-lookup-method _type18806_ _method18807_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18806_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-lookup-method _type18806_ _method18807_))
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type18797_)
        (if (##structure-ref _type18797_ '4 gxc#!class-type::t '#f)
            (let ((_super18799_
                   (##structure-ref _type18797_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super18799_))
                  '#t
                  (let ((_$e18801_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super18799_))))
                    (if _$e18801_
                        ((lambda (_super-t18804_)
                           (if (##structure-ref
                                _super-t18804_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e18801_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym18781_ _type18782_ _local?18783_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18782_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym18781_ _type18782_))
        (let ((__tmp19711
               (let () (declare (not safe)) (struct->list _type18782_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym18781_ '" " __tmp19711))
        (let ((__tmp19712
               (if _local?18783_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19712 _sym18781_ _type18782_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym18788_ _type18789_)
        (let ((_local?18791_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym18788_
           _type18789_
           _local?18791_))))
    (define gxc#optimizer-declare-type!
      (lambda _g19714_
        (let ((_g19713_ (let () (declare (not safe)) (##length _g19714_))))
          (cond ((let () (declare (not safe)) (##fx= _g19713_ 2))
                 (apply (lambda (_sym18788_ _type18789_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym18788_
                             _type18789_)))
                        _g19714_))
                ((let () (declare (not safe)) (##fx= _g19713_ 3))
                 (apply (lambda (_sym18793_ _type18794_ _local?18795_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym18793_
                             _type18794_
                             _local?18795_)))
                        _g19714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g19714_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym18767_ _local?18768_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym18767_))
        (let ((__tmp19715
               (if _local?18768_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19715 _sym18767_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym18773_)
        (let ((_local?18775_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym18773_ _local?18775_))))
    (define gxc#optimizer-clear-type!
      (lambda _g19717_
        (let ((_g19716_ (let () (declare (not safe)) (##length _g19717_))))
          (cond ((let () (declare (not safe)) (##fx= _g19716_ 1))
                 (apply (lambda (_sym18773_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym18773_)))
                        _g19717_))
                ((let () (declare (not safe)) (##fx= _g19716_ 2))
                 (apply (lambda (_sym18777_ _local?18778_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym18777_
                             _local?18778_)))
                        _g19717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g19717_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t18740_ _method18741_ _sym18742_ _rebind?18743_)
        (let* ((_type18745_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t18740_)))
               (_$e18747_
                (let () (declare (not safe)) (gxc#!type-vtab _type18745_))))
          (if _$e18747_
              ((lambda (_vtab18750_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab18750_ _method18741_))
                     (if _rebind?18743_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t18740_
                              '" "
                              _method18741_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab18750_
                              _method18741_
                              _sym18742_)))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t18740_
                          '" "
                          _method18741_
                          '" => "
                          _sym18742_))
                       (let ()
                         (declare (not safe))
                         (table-set! _vtab18750_ _method18741_ _sym18742_)))))
               _$e18747_)
              (if (let () (declare (not safe)) (not _type18745_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t18740_))
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18740_
                         _type18745_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t18755_ _method18756_ _sym18757_)
        (let ((_rebind?18759_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t18755_
           _method18756_
           _sym18757_
           _rebind?18759_))))
    (define gxc#optimizer-declare-method!
      (lambda _g19719_
        (let ((_g19718_ (let () (declare (not safe)) (##length _g19719_))))
          (cond ((let () (declare (not safe)) (##fx= _g19718_ 3))
                 (apply (lambda (_type-t18755_ _method18756_ _sym18757_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t18755_
                             _method18756_
                             _sym18757_)))
                        _g19719_))
                ((let () (declare (not safe)) (##fx= _g19718_ 4))
                 (apply (lambda (_type-t18761_
                                 _method18762_
                                 _sym18763_
                                 _rebind?18764_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t18761_
                             _method18762_
                             _sym18763_
                             _rebind?18764_)))
                        _g19719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g19719_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym18728_)
        (let ((_$e18736_
               (let ((_ht1872918731_ (gxc#current-compile-local-type)))
                 (if _ht1872918731_
                     (let ((_ht18734_ _ht1872918731_))
                       (declare (not safe))
                       (table-ref _ht18734_ _sym18728_ '#f))
                     '#f))))
          (if _$e18736_
              _$e18736_
              (let ((__tmp19720
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp19720 _sym18728_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym18720_)
        (let ((_type1872118723_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym18720_))))
          (if _type1872118723_
              (let ((_type18726_ _type1872118723_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type18726_ 'gxc#!alias::t))
                    (let ((__tmp19721
                           (##structure-ref _type18726_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp19721))
                    _type18726_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t18717_ _method18718_)
        (let ((__tmp19722
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t18717_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp19722 _method18718_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym18715_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym18715_))
        (let ((__tmp19723
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp19723 _sym18715_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym18713_)
        (let ((__tmp19724
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp19724 _sym18713_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx18711_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx18711_ 'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx18711_))
            (let () (declare (not safe)) (gx#stx-e _stx18711_)))))))
