(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1693679901)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (make-struct-type
       'gxc#optimizer-info::t
       '#f
       '3
       'optimizer-info
       '()
       ':init!
       '(type ssxi methods)))
    (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
    (define gxc#make-optimizer-info
      (lambda _$args17466_
        (apply make-struct-instance gxc#optimizer-info::t _$args17466_)))
    (define gxc#optimizer-info-type
      (make-struct-field-accessor gxc#optimizer-info::t '0))
    (define gxc#optimizer-info-ssxi
      (make-struct-field-accessor gxc#optimizer-info::t '1))
    (define gxc#optimizer-info-methods
      (make-struct-field-accessor gxc#optimizer-info::t '2))
    (define gxc#optimizer-info-type-set!
      (make-struct-field-mutator gxc#optimizer-info::t '0))
    (define gxc#optimizer-info-ssxi-set!
      (make-struct-field-mutator gxc#optimizer-info::t '1))
    (define gxc#optimizer-info-methods-set!
      (make-struct-field-mutator gxc#optimizer-info::t '2))
    (define gxc#optimizer-info:::init!
      (lambda (_self17464_)
        (if (let ((__tmp17468
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17464_))))
              (declare (not safe))
              (##fx< '3 __tmp17468))
            (begin
              (let ((__tmp17469 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17464_ '1 __tmp17469))
              (let ((__tmp17470 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17464_ '2 __tmp17470))
              (let ((__tmp17471 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17464_ '3 __tmp17471)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17464_))))
    (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
    (define gxc#!type::t
      (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
    (define gxc#!type? (make-struct-predicate gxc#!type::t))
    (define gxc#make-!type
      (lambda _$args17339_
        (apply make-struct-instance gxc#!type::t _$args17339_)))
    (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
    (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
    (define gxc#!alias::t
      (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
    (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
    (define gxc#make-!alias
      (lambda _$args17336_
        (apply make-struct-instance gxc#!alias::t _$args17336_)))
    (define gxc#!struct-type::t
      (make-struct-type
       'gxc#!struct-type::t
       gxc#!type::t
       '6
       '!struct-type
       '()
       ':init!
       '(super fields xfields ctor plist methods)))
    (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
    (define gxc#make-!struct-type
      (lambda _$args17333_
        (apply make-struct-instance gxc#!struct-type::t _$args17333_)))
    (define gxc#!struct-type-super
      (make-struct-field-accessor gxc#!struct-type::t '0))
    (define gxc#!struct-type-fields
      (make-struct-field-accessor gxc#!struct-type::t '1))
    (define gxc#!struct-type-xfields
      (make-struct-field-accessor gxc#!struct-type::t '2))
    (define gxc#!struct-type-ctor
      (make-struct-field-accessor gxc#!struct-type::t '3))
    (define gxc#!struct-type-plist
      (make-struct-field-accessor gxc#!struct-type::t '4))
    (define gxc#!struct-type-methods
      (make-struct-field-accessor gxc#!struct-type::t '5))
    (define gxc#!struct-type-super-set!
      (make-struct-field-mutator gxc#!struct-type::t '0))
    (define gxc#!struct-type-fields-set!
      (make-struct-field-mutator gxc#!struct-type::t '1))
    (define gxc#!struct-type-xfields-set!
      (make-struct-field-mutator gxc#!struct-type::t '2))
    (define gxc#!struct-type-ctor-set!
      (make-struct-field-mutator gxc#!struct-type::t '3))
    (define gxc#!struct-type-plist-set!
      (make-struct-field-mutator gxc#!struct-type::t '4))
    (define gxc#!struct-type-methods-set!
      (make-struct-field-mutator gxc#!struct-type::t '5))
    (define gxc#!class-type::t
      (make-struct-type
       'gxc#!class-type::t
       gxc#!type::t
       '7
       '!class-type
       '()
       ':init!
       '(super mixin slots xslots ctor plist methods)))
    (define gxc#!class-type? (make-struct-predicate gxc#!class-type::t))
    (define gxc#make-!class-type
      (lambda _$args17330_
        (apply make-struct-instance gxc#!class-type::t _$args17330_)))
    (define gxc#!class-type-super
      (make-struct-field-accessor gxc#!class-type::t '0))
    (define gxc#!class-type-mixin
      (make-struct-field-accessor gxc#!class-type::t '1))
    (define gxc#!class-type-slots
      (make-struct-field-accessor gxc#!class-type::t '2))
    (define gxc#!class-type-xslots
      (make-struct-field-accessor gxc#!class-type::t '3))
    (define gxc#!class-type-ctor
      (make-struct-field-accessor gxc#!class-type::t '4))
    (define gxc#!class-type-plist
      (make-struct-field-accessor gxc#!class-type::t '5))
    (define gxc#!class-type-methods
      (make-struct-field-accessor gxc#!class-type::t '6))
    (define gxc#!class-type-super-set!
      (make-struct-field-mutator gxc#!class-type::t '0))
    (define gxc#!class-type-mixin-set!
      (make-struct-field-mutator gxc#!class-type::t '1))
    (define gxc#!class-type-slots-set!
      (make-struct-field-mutator gxc#!class-type::t '2))
    (define gxc#!class-type-xslots-set!
      (make-struct-field-mutator gxc#!class-type::t '3))
    (define gxc#!class-type-ctor-set!
      (make-struct-field-mutator gxc#!class-type::t '4))
    (define gxc#!class-type-plist-set!
      (make-struct-field-mutator gxc#!class-type::t '5))
    (define gxc#!class-type-methods-set!
      (make-struct-field-mutator gxc#!class-type::t '6))
    (define gxc#!procedure::t
      (make-struct-type
       'gxc#!procedure::t
       gxc#!type::t
       '0
       '!procedure
       '()
       '#f
       '()))
    (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
    (define gxc#make-!procedure
      (lambda _$args17327_
        (apply make-struct-instance gxc#!procedure::t _$args17327_)))
    (define gxc#!struct-pred::t
      (make-struct-type
       'gxc#!struct-pred::t
       gxc#!procedure::t
       '0
       '!struct-pred
       '()
       '#f
       '()))
    (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
    (define gxc#make-!struct-pred
      (lambda _$args17324_
        (apply make-struct-instance gxc#!struct-pred::t _$args17324_)))
    (define gxc#!struct-cons::t
      (make-struct-type
       'gxc#!struct-cons::t
       gxc#!procedure::t
       '0
       '!struct-cons
       '()
       '#f
       '()))
    (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
    (define gxc#make-!struct-cons
      (lambda _$args17321_
        (apply make-struct-instance gxc#!struct-cons::t _$args17321_)))
    (define gxc#!struct-getf::t
      (make-struct-type
       'gxc#!struct-getf::t
       gxc#!procedure::t
       '2
       '!struct-getf
       '()
       '#f
       '(off unchecked?)))
    (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
    (define gxc#make-!struct-getf
      (lambda _$args17318_
        (apply make-struct-instance gxc#!struct-getf::t _$args17318_)))
    (define gxc#!struct-getf-off
      (make-struct-field-accessor gxc#!struct-getf::t '0))
    (define gxc#!struct-getf-unchecked?
      (make-struct-field-accessor gxc#!struct-getf::t '1))
    (define gxc#!struct-getf-off-set!
      (make-struct-field-mutator gxc#!struct-getf::t '0))
    (define gxc#!struct-getf-unchecked?-set!
      (make-struct-field-mutator gxc#!struct-getf::t '1))
    (define gxc#!struct-setf::t
      (make-struct-type
       'gxc#!struct-setf::t
       gxc#!procedure::t
       '2
       '!struct-setf
       '()
       '#f
       '(off unchecked?)))
    (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
    (define gxc#make-!struct-setf
      (lambda _$args17315_
        (apply make-struct-instance gxc#!struct-setf::t _$args17315_)))
    (define gxc#!struct-setf-off
      (make-struct-field-accessor gxc#!struct-setf::t '0))
    (define gxc#!struct-setf-unchecked?
      (make-struct-field-accessor gxc#!struct-setf::t '1))
    (define gxc#!struct-setf-off-set!
      (make-struct-field-mutator gxc#!struct-setf::t '0))
    (define gxc#!struct-setf-unchecked?-set!
      (make-struct-field-mutator gxc#!struct-setf::t '1))
    (define gxc#!class-pred::t
      (make-struct-type
       'gxc#!class-pred::t
       gxc#!procedure::t
       '0
       '!class-pred
       '()
       '#f
       '()))
    (define gxc#!class-pred? (make-struct-predicate gxc#!class-pred::t))
    (define gxc#make-!class-pred
      (lambda _$args17312_
        (apply make-struct-instance gxc#!class-pred::t _$args17312_)))
    (define gxc#!class-cons::t
      (make-struct-type
       'gxc#!class-cons::t
       gxc#!procedure::t
       '0
       '!class-cons
       '()
       '#f
       '()))
    (define gxc#!class-cons? (make-struct-predicate gxc#!class-cons::t))
    (define gxc#make-!class-cons
      (lambda _$args17309_
        (apply make-struct-instance gxc#!class-cons::t _$args17309_)))
    (define gxc#!class-getf::t
      (make-struct-type
       'gxc#!class-getf::t
       gxc#!procedure::t
       '2
       '!class-getf
       '()
       '#f
       '(slot unchecked?)))
    (define gxc#!class-getf? (make-struct-predicate gxc#!class-getf::t))
    (define gxc#make-!class-getf
      (lambda _$args17306_
        (apply make-struct-instance gxc#!class-getf::t _$args17306_)))
    (define gxc#!class-getf-slot
      (make-struct-field-accessor gxc#!class-getf::t '0))
    (define gxc#!class-getf-unchecked?
      (make-struct-field-accessor gxc#!class-getf::t '1))
    (define gxc#!class-getf-slot-set!
      (make-struct-field-mutator gxc#!class-getf::t '0))
    (define gxc#!class-getf-unchecked?-set!
      (make-struct-field-mutator gxc#!class-getf::t '1))
    (define gxc#!class-setf::t
      (make-struct-type
       'gxc#!class-setf::t
       gxc#!procedure::t
       '2
       '!class-setf
       '()
       '#f
       '(slot unchecked?)))
    (define gxc#!class-setf? (make-struct-predicate gxc#!class-setf::t))
    (define gxc#make-!class-setf
      (lambda _$args17303_
        (apply make-struct-instance gxc#!class-setf::t _$args17303_)))
    (define gxc#!class-setf-slot
      (make-struct-field-accessor gxc#!class-setf::t '0))
    (define gxc#!class-setf-unchecked?
      (make-struct-field-accessor gxc#!class-setf::t '1))
    (define gxc#!class-setf-slot-set!
      (make-struct-field-mutator gxc#!class-setf::t '0))
    (define gxc#!class-setf-unchecked?-set!
      (make-struct-field-mutator gxc#!class-setf::t '1))
    (define gxc#!lambda::t
      (make-struct-type
       'gxc#!lambda::t
       gxc#!procedure::t
       '4
       '!lambda
       '()
       ':init!
       '(arity dispatch inline inline-typedecl)))
    (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
    (define gxc#make-!lambda
      (lambda _$args17300_
        (apply make-struct-instance gxc#!lambda::t _$args17300_)))
    (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
    (define gxc#!lambda-dispatch
      (make-struct-field-accessor gxc#!lambda::t '1))
    (define gxc#!lambda-inline (make-struct-field-accessor gxc#!lambda::t '2))
    (define gxc#!lambda-inline-typedecl
      (make-struct-field-accessor gxc#!lambda::t '3))
    (define gxc#!lambda-arity-set!
      (make-struct-field-mutator gxc#!lambda::t '0))
    (define gxc#!lambda-dispatch-set!
      (make-struct-field-mutator gxc#!lambda::t '1))
    (define gxc#!lambda-inline-set!
      (make-struct-field-mutator gxc#!lambda::t '2))
    (define gxc#!lambda-inline-typedecl-set!
      (make-struct-field-mutator gxc#!lambda::t '3))
    (define gxc#!case-lambda::t
      (make-struct-type
       'gxc#!case-lambda::t
       gxc#!procedure::t
       '1
       '!case-lambda
       '()
       '#f
       '(clauses)))
    (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
    (define gxc#make-!case-lambda
      (lambda _$args17297_
        (apply make-struct-instance gxc#!case-lambda::t _$args17297_)))
    (define gxc#!case-lambda-clauses
      (make-struct-field-accessor gxc#!case-lambda::t '0))
    (define gxc#!case-lambda-clauses-set!
      (make-struct-field-mutator gxc#!case-lambda::t '0))
    (define gxc#!kw-lambda::t
      (make-struct-type
       'gxc#!kw-lambda::t
       gxc#!procedure::t
       '2
       '!kw-lambda
       '()
       '#f
       '(table dispatch)))
    (define gxc#!kw-lambda? (make-struct-predicate gxc#!kw-lambda::t))
    (define gxc#make-!kw-lambda
      (lambda _$args17294_
        (apply make-struct-instance gxc#!kw-lambda::t _$args17294_)))
    (define gxc#!kw-lambda-table
      (make-struct-field-accessor gxc#!kw-lambda::t '0))
    (define gxc#!kw-lambda-dispatch
      (make-struct-field-accessor gxc#!kw-lambda::t '1))
    (define gxc#!kw-lambda-table-set!
      (make-struct-field-mutator gxc#!kw-lambda::t '0))
    (define gxc#!kw-lambda-dispatch-set!
      (make-struct-field-mutator gxc#!kw-lambda::t '1))
    (define gxc#!kw-lambda-primary::t
      (make-struct-type
       'gxc#!kw-lambda-primary::t
       gxc#!procedure::t
       '2
       '!kw-lambda-primary
       '()
       '#f
       '(keys main)))
    (define gxc#!kw-lambda-primary?
      (make-struct-predicate gxc#!kw-lambda-primary::t))
    (define gxc#make-!kw-lambda-primary
      (lambda _$args17291_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args17291_)))
    (define gxc#!kw-lambda-primary-keys
      (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
    (define gxc#!kw-lambda-primary-main
      (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
    (define gxc#!kw-lambda-primary-keys-set!
      (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
    (define gxc#!kw-lambda-primary-main-set!
      (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
    (define gxc#!struct-type:::init!
      (lambda (_self17283_
               _id17284_
               _super17285_
               _fields17286_
               _xfields17287_
               _ctor17288_
               _plist17289_)
        (if (let ((__tmp17472
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17283_))))
              (declare (not safe))
              (##fx< '7 __tmp17472))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '1 _id17284_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '2 _super17285_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '3 _fields17286_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '4 _xfields17287_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '5 _ctor17288_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17283_ '6 _plist17289_))
              (let () (declare (not safe)) (##vector-set! _self17283_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17283_))))
    (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
    (define gxc#!class-type:::init!
      (lambda (_self17152_
               _id17153_
               _super17154_
               _mixin17155_
               _slots17156_
               _xslots17157_
               _ctor17158_
               _plist17159_)
        (if (let ((__tmp17473
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17152_))))
              (declare (not safe))
              (##fx< '8 __tmp17473))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '1 _id17153_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '2 _super17154_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '3 _mixin17155_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '4 _slots17156_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '5 _xslots17157_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '6 _ctor17158_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17152_ '7 _plist17159_))
              (let () (declare (not safe)) (##vector-set! _self17152_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17152_))))
    (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f)
    (define gxc#!lambda:::init!__%
      (lambda (_self16996_
               _id16997_
               _arity16998_
               _dispatch16999_
               _inline17000_
               _typedecl17001_)
        (if (let ((__tmp17474
                   (let ()
                     (declare (not safe))
                     (##vector-length _self16996_))))
              (declare (not safe))
              (##fx< '5 __tmp17474))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self16996_ '1 _id16997_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16996_ '2 _arity16998_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16996_ '3 _dispatch16999_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16996_ '4 _inline17000_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16996_ '5 _typedecl17001_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16996_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self17006_ _id17007_ _arity17008_ _dispatch17009_)
        (let* ((_inline17011_ '#f) (_typedecl17013_ '#f))
          (if (let ((__tmp17475
                     (let ()
                       (declare (not safe))
                       (##vector-length _self17006_))))
                (declare (not safe))
                (##fx< '5 __tmp17475))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17006_ '1 _id17007_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17006_ '2 _arity17008_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17006_ '3 _dispatch17009_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17006_ '4 _inline17011_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17006_ '5 _typedecl17013_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self17006_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self17015_
               _id17016_
               _arity17017_
               _dispatch17018_
               _inline17019_)
        (let ((_typedecl17021_ '#f))
          (if (let ((__tmp17476
                     (let ()
                       (declare (not safe))
                       (##vector-length _self17015_))))
                (declare (not safe))
                (##fx< '5 __tmp17476))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17015_ '1 _id17016_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17015_ '2 _arity17017_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17015_ '3 _dispatch17018_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17015_ '4 _inline17019_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self17015_ '5 _typedecl17021_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self17015_)))))
    (define gxc#!lambda:::init!
      (lambda _g17478_
        (let ((_g17477_ (let () (declare (not safe)) (##length _g17478_))))
          (cond ((let () (declare (not safe)) (##fx= _g17477_ 4))
                 (apply gxc#!lambda:::init!__0 _g17478_))
                ((let () (declare (not safe)) (##fx= _g17477_ 5))
                 (apply gxc#!lambda:::init!__1 _g17478_))
                ((let () (declare (not safe)) (##fx= _g17477_ 6))
                 (apply (lambda (_self17023_
                                 _id17024_
                                 _arity17025_
                                 _dispatch17026_
                                 _inline17027_
                                 _typedecl17028_)
                          (if (let ((__tmp17479
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self17023_))))
                                (declare (not safe))
                                (##fx< '5 __tmp17479))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17023_ '1 _id17024_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17023_ '2 _arity17025_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self17023_
                                   '3
                                   _dispatch17026_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17023_ '4 _inline17027_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self17023_
                                   '5
                                   _typedecl17028_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self17023_)))
                        _g17478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g17478_))))))
    (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
    (define gxc#!struct-type-vtab
      (lambda (_type16865_)
        (let ((_$e16867_
               (##structure-ref _type16865_ '7 gxc#!struct-type::t '#f)))
          (if _$e16867_
              (values _$e16867_)
              (let ((_vtab16870_ (make-table 'test: eq?)))
                (##structure-set!
                 _type16865_
                 _vtab16870_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab16870_)))))
    (define gxc#!class-type-vtab
      (lambda (_type16858_)
        (let ((_$e16860_
               (##structure-ref _type16858_ '8 gxc#!class-type::t '#f)))
          (if _$e16860_
              (values _$e16860_)
              (let ((_vtab16863_ (make-table 'test: eq?)))
                (##structure-set!
                 _type16858_
                 _vtab16863_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab16863_)))))
    (define gxc#!type-vtab
      (lambda (_type16856_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16856_ 'gxc#!struct-type::t))
            (gxc#!struct-type-vtab _type16856_)
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type16856_ 'gxc#!class-type::t))
                (gxc#!class-type-vtab _type16856_)
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type16847_ _method16848_)
        (let ((_vtab1684916851_
               (##structure-ref _type16847_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1684916851_
              (let ((_vtab16854_ _vtab1684916851_))
                (table-ref _vtab16854_ _method16848_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type16838_ _method16839_)
        (let ((_vtab1684016842_
               (##structure-ref _type16838_ '8 gxc#!class-type::t '#f)))
          (if _vtab1684016842_
              (let ((_vtab16845_ _vtab1684016842_))
                (table-ref _vtab16845_ _method16839_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type16835_ _method16836_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16835_ 'gxc#!struct-type::t))
            (gxc#!struct-type-lookup-method _type16835_ _method16836_)
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type16835_ 'gxc#!class-type::t))
                (gxc#!class-type-lookup-method _type16835_ _method16836_)
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type16826_)
        (if (##structure-ref _type16826_ '4 gxc#!class-type::t '#f)
            (let ((_super16828_
                   (##structure-ref _type16826_ '2 gxc#!class-type::t '#f)))
              (if (not _super16828_)
                  '#t
                  (let ((_$e16830_ (gxc#optimizer-lookup-type _super16828_)))
                    (if _$e16830_
                        ((lambda (_super-t16833_)
                           (if (##structure-ref
                                _super-t16833_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e16830_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym16810_ _type16811_ _local?16812_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16811_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym16810_ _type16811_))
        (gxc#verbose
         '"declare-type "
         _sym16810_
         '" "
         (struct->list _type16811_))
        (table-set!
         (if _local?16812_
             (gxc#current-compile-local-type)
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f))
         _sym16810_
         _type16811_)))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym16817_ _type16818_)
        (let ((_local?16820_ '#f))
          (gxc#optimizer-declare-type!__%
           _sym16817_
           _type16818_
           _local?16820_))))
    (define gxc#optimizer-declare-type!
      (lambda _g17481_
        (let ((_g17480_ (let () (declare (not safe)) (##length _g17481_))))
          (cond ((let () (declare (not safe)) (##fx= _g17480_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g17481_))
                ((let () (declare (not safe)) (##fx= _g17480_ 3))
                 (apply gxc#optimizer-declare-type!__% _g17481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g17481_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym16796_ _local?16797_)
        (gxc#verbose '"clear-type " _sym16796_)
        (table-set!
         (if _local?16797_
             (gxc#current-compile-local-type)
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f))
         _sym16796_)))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym16802_)
        (let ((_local?16804_ '#f))
          (gxc#optimizer-clear-type!__% _sym16802_ _local?16804_))))
    (define gxc#optimizer-clear-type!
      (lambda _g17483_
        (let ((_g17482_ (let () (declare (not safe)) (##length _g17483_))))
          (cond ((let () (declare (not safe)) (##fx= _g17482_ 1))
                 (apply gxc#optimizer-clear-type!__0 _g17483_))
                ((let () (declare (not safe)) (##fx= _g17482_ 2))
                 (apply gxc#optimizer-clear-type!__% _g17483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g17483_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t16769_ _method16770_ _sym16771_ _rebind?16772_)
        (let* ((_type16774_ (gxc#optimizer-resolve-type _type-t16769_))
               (_$e16776_ (gxc#!type-vtab _type16774_)))
          (if _$e16776_
              ((lambda (_vtab16779_)
                 (if (hash-key? _vtab16779_ _method16770_)
                     (if _rebind?16772_
                         (begin
                           (gxc#verbose
                            '"declare-method: rebind existing method"
                            _type-t16769_
                            '" "
                            _method16770_)
                           (table-set! _vtab16779_ _method16770_ _sym16771_))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (gxc#verbose
                        '"declare-method "
                        _type-t16769_
                        '" "
                        _method16770_
                        '" => "
                        _sym16771_)
                       (table-set! _vtab16779_ _method16770_ _sym16771_))))
               _$e16776_)
              (if (not _type16774_)
                  (gxc#verbose '"declare-method: unknown type " _type-t16769_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t16769_
                         _type16774_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t16784_ _method16785_ _sym16786_)
        (let ((_rebind?16788_ '#f))
          (gxc#optimizer-declare-method!__%
           _type-t16784_
           _method16785_
           _sym16786_
           _rebind?16788_))))
    (define gxc#optimizer-declare-method!
      (lambda _g17485_
        (let ((_g17484_ (let () (declare (not safe)) (##length _g17485_))))
          (cond ((let () (declare (not safe)) (##fx= _g17484_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g17485_))
                ((let () (declare (not safe)) (##fx= _g17484_ 4))
                 (apply gxc#optimizer-declare-method!__% _g17485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g17485_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym16757_)
        (let ((_$e16765_
               (let ((_ht1675816760_ (gxc#current-compile-local-type)))
                 (if _ht1675816760_
                     (let ((_ht16763_ _ht1675816760_))
                       (table-ref _ht16763_ _sym16757_ '#f))
                     '#f))))
          (if _$e16765_
              _$e16765_
              (table-ref
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f)
               _sym16757_
               '#f)))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym16749_)
        (let ((_type1675016752_ (gxc#optimizer-lookup-type _sym16749_)))
          (if _type1675016752_
              (let ((_type16755_ _type1675016752_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type16755_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _type16755_ '1 gxc#!type::t '#f))
                    _type16755_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t16746_ _method16747_)
        (gxc#!type-lookup-method
         (gxc#optimizer-resolve-type _type-t16746_)
         _method16747_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym16744_)
        (gxc#verbose '"top-level method: " _sym16744_)
        (table-set!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '3
          gxc#optimizer-info::t
          '#f)
         _sym16744_
         '#t)))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym16742_)
        (table-ref
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '3
          gxc#optimizer-info::t
          '#f)
         _sym16742_
         '#f)))
    (define gxc#identifier-symbol
      (lambda (_stx16740_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx16740_ 'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _stx16740_)
            (gx#stx-e _stx16740_))))))
