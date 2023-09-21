(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1695292405)
  (begin
    (define gxc#current-compile-optimizer-info
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-mutators
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-local-type
      (let () (declare (not safe)) (make-parameter '#f)))
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
      (lambda _$args19140_
        (apply make-struct-instance gxc#optimizer-info::t _$args19140_)))
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
      (lambda (_self19138_)
        (if (let ((__tmp19145
                   (let ()
                     (declare (not safe))
                     (##vector-length _self19138_))))
              (declare (not safe))
              (##fx< '3 __tmp19145))
            (begin
              (let ((__tmp19142
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19138_ '1 __tmp19142))
              (let ((__tmp19143
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19138_ '2 __tmp19143))
              (let ((__tmp19144
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self19138_ '3 __tmp19144)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self19138_))))
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
      (lambda _$args19013_
        (apply make-struct-instance gxc#!type::t _$args19013_)))
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
      (lambda _$args19010_
        (apply make-struct-instance gxc#!alias::t _$args19010_)))
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
      (lambda _$args19007_
        (apply make-struct-instance gxc#!struct-type::t _$args19007_)))
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
      (lambda _$args19004_
        (apply make-struct-instance gxc#!class-type::t _$args19004_)))
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
      (lambda _$args19001_
        (apply make-struct-instance gxc#!procedure::t _$args19001_)))
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
      (lambda _$args18998_
        (apply make-struct-instance gxc#!struct-pred::t _$args18998_)))
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
      (lambda _$args18995_
        (apply make-struct-instance gxc#!struct-cons::t _$args18995_)))
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
      (lambda _$args18992_
        (apply make-struct-instance gxc#!struct-getf::t _$args18992_)))
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
      (lambda _$args18989_
        (apply make-struct-instance gxc#!struct-setf::t _$args18989_)))
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
      (lambda _$args18986_
        (apply make-struct-instance gxc#!class-pred::t _$args18986_)))
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
      (lambda _$args18983_
        (apply make-struct-instance gxc#!class-cons::t _$args18983_)))
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
      (lambda _$args18980_
        (apply make-struct-instance gxc#!class-getf::t _$args18980_)))
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
      (lambda _$args18977_
        (apply make-struct-instance gxc#!class-setf::t _$args18977_)))
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
      (lambda _$args18974_
        (apply make-struct-instance gxc#!lambda::t _$args18974_)))
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
      (lambda _$args18971_
        (apply make-struct-instance gxc#!case-lambda::t _$args18971_)))
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
      (lambda _$args18968_
        (apply make-struct-instance gxc#!kw-lambda::t _$args18968_)))
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
      (lambda _$args18965_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args18965_)))
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
      (lambda _$args18962_
        (apply make-class-instance gxc#!primitive::t _$args18962_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp19146
             (let ((__tmp19147
                    (let () (declare (not safe)) (cons gxc#!lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19147))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         __tmp19146
         '()
         '!primitive-lambda
         '()
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _$args18959_
        (apply make-class-instance gxc#!primitive-lambda::t _$args18959_)))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp19148
             (let ((__tmp19149
                    (let ()
                      (declare (not safe))
                      (cons gxc#!case-lambda::t '()))))
               (declare (not safe))
               (cons gxc#!primitive::t __tmp19149))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         __tmp19148
         '()
         '!primitive-case-lambda
         '()
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _$args18956_
        (apply make-class-instance
               gxc#!primitive-case-lambda::t
               _$args18956_)))
    (define gxc#!struct-type:::init!
      (lambda (_self18948_
               _id18949_
               _super18950_
               _fields18951_
               _xfields18952_
               _ctor18953_
               _plist18954_)
        (if (let ((__tmp19150
                   (let ()
                     (declare (not safe))
                     (##vector-length _self18948_))))
              (declare (not safe))
              (##fx< '7 __tmp19150))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '1 _id18949_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '2 _super18950_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '3 _fields18951_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '4 _xfields18952_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '5 _ctor18953_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18948_ '6 _plist18954_))
              (let () (declare (not safe)) (##vector-set! _self18948_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18948_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f))
    (define gxc#!class-type:::init!
      (lambda (_self18817_
               _id18818_
               _super18819_
               _mixin18820_
               _slots18821_
               _xslots18822_
               _ctor18823_
               _plist18824_)
        (if (let ((__tmp19151
                   (let ()
                     (declare (not safe))
                     (##vector-length _self18817_))))
              (declare (not safe))
              (##fx< '8 __tmp19151))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '1 _id18818_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '2 _super18819_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '3 _mixin18820_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '4 _slots18821_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '5 _xslots18822_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '6 _ctor18823_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18817_ '7 _plist18824_))
              (let () (declare (not safe)) (##vector-set! _self18817_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18817_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_self18661_
               _id18662_
               _arity18663_
               _dispatch18664_
               _inline18665_
               _typedecl18666_)
        (if (let ((__tmp19152
                   (let ()
                     (declare (not safe))
                     (##vector-length _self18661_))))
              (declare (not safe))
              (##fx< '5 __tmp19152))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self18661_ '1 _id18662_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18661_ '2 _arity18663_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18661_ '3 _dispatch18664_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18661_ '4 _inline18665_))
              (let ()
                (declare (not safe))
                (##vector-set! _self18661_ '5 _typedecl18666_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self18661_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self18671_ _id18672_ _arity18673_ _dispatch18674_)
        (let* ((_inline18676_ '#f) (_typedecl18678_ '#f))
          (if (let ((__tmp19153
                     (let ()
                       (declare (not safe))
                       (##vector-length _self18671_))))
                (declare (not safe))
                (##fx< '5 __tmp19153))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18671_ '1 _id18672_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18671_ '2 _arity18673_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18671_ '3 _dispatch18674_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18671_ '4 _inline18676_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18671_ '5 _typedecl18678_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self18671_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self18680_
               _id18681_
               _arity18682_
               _dispatch18683_
               _inline18684_)
        (let ((_typedecl18686_ '#f))
          (if (let ((__tmp19154
                     (let ()
                       (declare (not safe))
                       (##vector-length _self18680_))))
                (declare (not safe))
                (##fx< '5 __tmp19154))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18680_ '1 _id18681_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18680_ '2 _arity18682_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18680_ '3 _dispatch18683_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18680_ '4 _inline18684_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self18680_ '5 _typedecl18686_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self18680_)))))
    (define gxc#!lambda:::init!
      (lambda _g19156_
        (let ((_g19155_ (let () (declare (not safe)) (##length _g19156_))))
          (cond ((let () (declare (not safe)) (##fx= _g19155_ 4))
                 (apply (lambda (_self18671_
                                 _id18672_
                                 _arity18673_
                                 _dispatch18674_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__0
                             _self18671_
                             _id18672_
                             _arity18673_
                             _dispatch18674_)))
                        _g19156_))
                ((let () (declare (not safe)) (##fx= _g19155_ 5))
                 (apply (lambda (_self18680_
                                 _id18681_
                                 _arity18682_
                                 _dispatch18683_
                                 _inline18684_)
                          (let ()
                            (declare (not safe))
                            (gxc#!lambda:::init!__1
                             _self18680_
                             _id18681_
                             _arity18682_
                             _dispatch18683_
                             _inline18684_)))
                        _g19156_))
                ((let () (declare (not safe)) (##fx= _g19155_ 6))
                 (apply (lambda (_self18688_
                                 _id18689_
                                 _arity18690_
                                 _dispatch18691_
                                 _inline18692_
                                 _typedecl18693_)
                          (if (let ((__tmp19157
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self18688_))))
                                (declare (not safe))
                                (##fx< '5 __tmp19157))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self18688_ '1 _id18689_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self18688_ '2 _arity18690_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self18688_
                                   '3
                                   _dispatch18691_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self18688_ '4 _inline18692_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self18688_
                                   '5
                                   _typedecl18693_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self18688_)))
                        _g19156_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g19156_))))))
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
      (lambda (_self18413_ . _args18414_)
        (apply struct-instance-init! _self18413_ _args18414_)))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!struct-type-vtab
      (lambda (_type18283_)
        (let ((_$e18285_
               (##structure-ref _type18283_ '7 gxc#!struct-type::t '#f)))
          (if _$e18285_
              (values _$e18285_)
              (let ((_vtab18288_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18283_
                 _vtab18288_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab18288_)))))
    (define gxc#!class-type-vtab
      (lambda (_type18276_)
        (let ((_$e18278_
               (##structure-ref _type18276_ '8 gxc#!class-type::t '#f)))
          (if _$e18278_
              (values _$e18278_)
              (let ((_vtab18281_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (##structure-set!
                 _type18276_
                 _vtab18281_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab18281_)))))
    (define gxc#!type-vtab
      (lambda (_type18274_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18274_ 'gxc#!struct-type::t))
            (let () (declare (not safe)) (gxc#!struct-type-vtab _type18274_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18274_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-vtab _type18274_))
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type18265_ _method18266_)
        (let ((_vtab1826718269_
               (##structure-ref _type18265_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1826718269_
              (let ((_vtab18272_ _vtab1826718269_))
                (declare (not safe))
                (table-ref _vtab18272_ _method18266_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type18256_ _method18257_)
        (let ((_vtab1825818260_
               (##structure-ref _type18256_ '8 gxc#!class-type::t '#f)))
          (if _vtab1825818260_
              (let ((_vtab18263_ _vtab1825818260_))
                (declare (not safe))
                (table-ref _vtab18263_ _method18257_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type18253_ _method18254_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18253_ 'gxc#!struct-type::t))
            (let ()
              (declare (not safe))
              (gxc#!struct-type-lookup-method _type18253_ _method18254_))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type18253_ 'gxc#!class-type::t))
                (let ()
                  (declare (not safe))
                  (gxc#!class-type-lookup-method _type18253_ _method18254_))
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type18244_)
        (if (##structure-ref _type18244_ '4 gxc#!class-type::t '#f)
            (let ((_super18246_
                   (##structure-ref _type18244_ '2 gxc#!class-type::t '#f)))
              (if (let () (declare (not safe)) (not _super18246_))
                  '#t
                  (let ((_$e18248_
                         (let ()
                           (declare (not safe))
                           (gxc#optimizer-lookup-type _super18246_))))
                    (if _$e18248_
                        ((lambda (_super-t18251_)
                           (if (##structure-ref
                                _super-t18251_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e18248_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym18228_ _type18229_ _local?18230_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type18229_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym18228_ _type18229_))
        (let ((__tmp19158
               (let () (declare (not safe)) (struct->list _type18229_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _sym18228_ '" " __tmp19158))
        (let ((__tmp19159
               (if _local?18230_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19159 _sym18228_ _type18229_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym18235_ _type18236_)
        (let ((_local?18238_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _sym18235_
           _type18236_
           _local?18238_))))
    (define gxc#optimizer-declare-type!
      (lambda _g19161_
        (let ((_g19160_ (let () (declare (not safe)) (##length _g19161_))))
          (cond ((let () (declare (not safe)) (##fx= _g19160_ 2))
                 (apply (lambda (_sym18235_ _type18236_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _sym18235_
                             _type18236_)))
                        _g19161_))
                ((let () (declare (not safe)) (##fx= _g19160_ 3))
                 (apply (lambda (_sym18240_ _type18241_ _local?18242_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _sym18240_
                             _type18241_
                             _local?18242_)))
                        _g19161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g19161_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym18214_ _local?18215_)
        (let () (declare (not safe)) (gxc#verbose '"clear-type " _sym18214_))
        (let ((__tmp19162
               (if _local?18215_
                   (gxc#current-compile-local-type)
                   (##structure-ref
                    (gxc#current-compile-optimizer-info)
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (table-set! __tmp19162 _sym18214_))))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym18220_)
        (let ((_local?18222_ '#f))
          (declare (not safe))
          (gxc#optimizer-clear-type!__% _sym18220_ _local?18222_))))
    (define gxc#optimizer-clear-type!
      (lambda _g19164_
        (let ((_g19163_ (let () (declare (not safe)) (##length _g19164_))))
          (cond ((let () (declare (not safe)) (##fx= _g19163_ 1))
                 (apply (lambda (_sym18220_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__0 _sym18220_)))
                        _g19164_))
                ((let () (declare (not safe)) (##fx= _g19163_ 2))
                 (apply (lambda (_sym18224_ _local?18225_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-clear-type!__%
                             _sym18224_
                             _local?18225_)))
                        _g19164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g19164_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t18187_ _method18188_ _sym18189_ _rebind?18190_)
        (let* ((_type18192_
                (let ()
                  (declare (not safe))
                  (gxc#optimizer-resolve-type _type-t18187_)))
               (_$e18194_
                (let () (declare (not safe)) (gxc#!type-vtab _type18192_))))
          (if _$e18194_
              ((lambda (_vtab18197_)
                 (if (let ()
                       (declare (not safe))
                       (hash-key? _vtab18197_ _method18188_))
                     (if _rebind?18190_
                         (begin
                           (let ()
                             (declare (not safe))
                             (gxc#verbose
                              '"declare-method: rebind existing method"
                              _type-t18187_
                              '" "
                              _method18188_))
                           (let ()
                             (declare (not safe))
                             (table-set!
                              _vtab18197_
                              _method18188_
                              _sym18189_)))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#verbose
                          '"declare-method "
                          _type-t18187_
                          '" "
                          _method18188_
                          '" => "
                          _sym18189_))
                       (let ()
                         (declare (not safe))
                         (table-set! _vtab18197_ _method18188_ _sym18189_)))))
               _$e18194_)
              (if (let () (declare (not safe)) (not _type18192_))
                  (let ()
                    (declare (not safe))
                    (gxc#verbose
                     '"declare-method: unknown type "
                     _type-t18187_))
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t18187_
                         _type18192_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t18202_ _method18203_ _sym18204_)
        (let ((_rebind?18206_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _type-t18202_
           _method18203_
           _sym18204_
           _rebind?18206_))))
    (define gxc#optimizer-declare-method!
      (lambda _g19166_
        (let ((_g19165_ (let () (declare (not safe)) (##length _g19166_))))
          (cond ((let () (declare (not safe)) (##fx= _g19165_ 3))
                 (apply (lambda (_type-t18202_ _method18203_ _sym18204_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _type-t18202_
                             _method18203_
                             _sym18204_)))
                        _g19166_))
                ((let () (declare (not safe)) (##fx= _g19165_ 4))
                 (apply (lambda (_type-t18208_
                                 _method18209_
                                 _sym18210_
                                 _rebind?18211_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _type-t18208_
                             _method18209_
                             _sym18210_
                             _rebind?18211_)))
                        _g19166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g19166_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym18175_)
        (let ((_$e18183_
               (let ((_ht1817618178_ (gxc#current-compile-local-type)))
                 (if _ht1817618178_
                     (let ((_ht18181_ _ht1817618178_))
                       (declare (not safe))
                       (table-ref _ht18181_ _sym18175_ '#f))
                     '#f))))
          (if _$e18183_
              _$e18183_
              (let ((__tmp19167
                     (##structure-ref
                      (gxc#current-compile-optimizer-info)
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (table-ref __tmp19167 _sym18175_ '#f))))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym18167_)
        (let ((_type1816818170_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _sym18167_))))
          (if _type1816818170_
              (let ((_type18173_ _type1816818170_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type18173_ 'gxc#!alias::t))
                    (let ((__tmp19168
                           (##structure-ref _type18173_ '1 gxc#!type::t '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp19168))
                    _type18173_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t18164_ _method18165_)
        (let ((__tmp19169
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-type _type-t18164_))))
          (declare (not safe))
          (gxc#!type-lookup-method __tmp19169 _method18165_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym18162_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _sym18162_))
        (let ((__tmp19170
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp19170 _sym18162_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym18160_)
        (let ((__tmp19171
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '3
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-ref __tmp19171 _sym18160_ '#f))))
    (define gxc#identifier-symbol
      (lambda (_stx18158_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx18158_ 'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _stx18158_))
            (let () (declare (not safe)) (gx#stx-e _stx18158_)))))))
