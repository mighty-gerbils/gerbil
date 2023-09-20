(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1695199291)
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
      (lambda _$args17447_
        (apply make-struct-instance gxc#optimizer-info::t _$args17447_)))
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
      (lambda (_self17445_)
        (if (let ((__tmp17449
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17445_))))
              (declare (not safe))
              (##fx< '3 __tmp17449))
            (begin
              (let ((__tmp17450 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17445_ '1 __tmp17450))
              (let ((__tmp17451 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17445_ '2 __tmp17451))
              (let ((__tmp17452 (make-table 'test: eq?)))
                (declare (not safe))
                (##vector-set! _self17445_ '3 __tmp17452)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17445_))))
    (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
    (define gxc#!type::t
      (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
    (define gxc#!type? (make-struct-predicate gxc#!type::t))
    (define gxc#make-!type
      (lambda _$args17320_
        (apply make-struct-instance gxc#!type::t _$args17320_)))
    (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
    (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
    (define gxc#!alias::t
      (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
    (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
    (define gxc#make-!alias
      (lambda _$args17317_
        (apply make-struct-instance gxc#!alias::t _$args17317_)))
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
      (lambda _$args17314_
        (apply make-struct-instance gxc#!struct-type::t _$args17314_)))
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
      (lambda _$args17311_
        (apply make-struct-instance gxc#!class-type::t _$args17311_)))
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
      (lambda _$args17308_
        (apply make-struct-instance gxc#!procedure::t _$args17308_)))
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
      (lambda _$args17305_
        (apply make-struct-instance gxc#!struct-pred::t _$args17305_)))
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
      (lambda _$args17302_
        (apply make-struct-instance gxc#!struct-cons::t _$args17302_)))
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
      (lambda _$args17299_
        (apply make-struct-instance gxc#!struct-getf::t _$args17299_)))
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
      (lambda _$args17296_
        (apply make-struct-instance gxc#!struct-setf::t _$args17296_)))
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
      (lambda _$args17293_
        (apply make-struct-instance gxc#!class-pred::t _$args17293_)))
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
      (lambda _$args17290_
        (apply make-struct-instance gxc#!class-cons::t _$args17290_)))
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
      (lambda _$args17287_
        (apply make-struct-instance gxc#!class-getf::t _$args17287_)))
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
      (lambda _$args17284_
        (apply make-struct-instance gxc#!class-setf::t _$args17284_)))
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
      (lambda _$args17281_
        (apply make-struct-instance gxc#!lambda::t _$args17281_)))
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
      (lambda _$args17278_
        (apply make-struct-instance gxc#!case-lambda::t _$args17278_)))
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
      (lambda _$args17275_
        (apply make-struct-instance gxc#!kw-lambda::t _$args17275_)))
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
      (lambda _$args17272_
        (apply make-struct-instance gxc#!kw-lambda-primary::t _$args17272_)))
    (define gxc#!kw-lambda-primary-keys
      (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
    (define gxc#!kw-lambda-primary-main
      (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
    (define gxc#!kw-lambda-primary-keys-set!
      (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
    (define gxc#!kw-lambda-primary-main-set!
      (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
    (define gxc#!struct-type:::init!
      (lambda (_self17264_
               _id17265_
               _super17266_
               _fields17267_
               _xfields17268_
               _ctor17269_
               _plist17270_)
        (if (let ((__tmp17453
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17264_))))
              (declare (not safe))
              (##fx< '7 __tmp17453))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '1 _id17265_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '2 _super17266_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '3 _fields17267_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '4 _xfields17268_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '5 _ctor17269_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17264_ '6 _plist17270_))
              (let () (declare (not safe)) (##vector-set! _self17264_ '7 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17264_))))
    (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
    (define gxc#!class-type:::init!
      (lambda (_self17133_
               _id17134_
               _super17135_
               _mixin17136_
               _slots17137_
               _xslots17138_
               _ctor17139_
               _plist17140_)
        (if (let ((__tmp17454
                   (let ()
                     (declare (not safe))
                     (##vector-length _self17133_))))
              (declare (not safe))
              (##fx< '8 __tmp17454))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '1 _id17134_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '2 _super17135_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '3 _mixin17136_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '4 _slots17137_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '5 _xslots17138_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '6 _ctor17139_))
              (let ()
                (declare (not safe))
                (##vector-set! _self17133_ '7 _plist17140_))
              (let () (declare (not safe)) (##vector-set! _self17133_ '8 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self17133_))))
    (bind-method! gxc#!class-type::t ':init! gxc#!class-type:::init! '#f)
    (define gxc#!lambda:::init!__%
      (lambda (_self16977_
               _id16978_
               _arity16979_
               _dispatch16980_
               _inline16981_
               _typedecl16982_)
        (if (let ((__tmp17455
                   (let ()
                     (declare (not safe))
                     (##vector-length _self16977_))))
              (declare (not safe))
              (##fx< '5 __tmp17455))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! _self16977_ '1 _id16978_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16977_ '2 _arity16979_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16977_ '3 _dispatch16980_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16977_ '4 _inline16981_))
              (let ()
                (declare (not safe))
                (##vector-set! _self16977_ '5 _typedecl16982_)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self16977_))))
    (define gxc#!lambda:::init!__0
      (lambda (_self16987_ _id16988_ _arity16989_ _dispatch16990_)
        (let* ((_inline16992_ '#f) (_typedecl16994_ '#f))
          (if (let ((__tmp17456
                     (let ()
                       (declare (not safe))
                       (##vector-length _self16987_))))
                (declare (not safe))
                (##fx< '5 __tmp17456))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _self16987_ '1 _id16988_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self16987_ '2 _arity16989_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self16987_ '3 _dispatch16990_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self16987_ '4 _inline16992_))
                (let ()
                  (declare (not safe))
                  (##vector-set! _self16987_ '5 _typedecl16994_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16987_)))))
    (define gxc#!lambda:::init!__1
      (lambda (_self16996_
               _id16997_
               _arity16998_
               _dispatch16999_
               _inline17000_)
        (let ((_typedecl17002_ '#f))
          (if (let ((__tmp17457
                     (let ()
                       (declare (not safe))
                       (##vector-length _self16996_))))
                (declare (not safe))
                (##fx< '5 __tmp17457))
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
                  (##vector-set! _self16996_ '5 _typedecl17002_)))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self16996_)))))
    (define gxc#!lambda:::init!
      (lambda _g17459_
        (let ((_g17458_ (let () (declare (not safe)) (##length _g17459_))))
          (cond ((let () (declare (not safe)) (##fx= _g17458_ 4))
                 (apply gxc#!lambda:::init!__0 _g17459_))
                ((let () (declare (not safe)) (##fx= _g17458_ 5))
                 (apply gxc#!lambda:::init!__1 _g17459_))
                ((let () (declare (not safe)) (##fx= _g17458_ 6))
                 (apply (lambda (_self17004_
                                 _id17005_
                                 _arity17006_
                                 _dispatch17007_
                                 _inline17008_
                                 _typedecl17009_)
                          (if (let ((__tmp17460
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _self17004_))))
                                (declare (not safe))
                                (##fx< '5 __tmp17460))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17004_ '1 _id17005_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17004_ '2 _arity17006_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self17004_
                                   '3
                                   _dispatch17007_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set! _self17004_ '4 _inline17008_))
                                (let ()
                                  (declare (not safe))
                                  (##vector-set!
                                   _self17004_
                                   '5
                                   _typedecl17009_)))
                              (error '"struct-instance-init!: too many arguments for struct"
                                     _self17004_)))
                        _g17459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!lambda:::init!
                  _g17459_))))))
    (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
    (define gxc#!struct-type-vtab
      (lambda (_type16846_)
        (let ((_$e16848_
               (##structure-ref _type16846_ '7 gxc#!struct-type::t '#f)))
          (if _$e16848_
              (values _$e16848_)
              (let ((_vtab16851_ (make-table 'test: eq?)))
                (##structure-set!
                 _type16846_
                 _vtab16851_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab16851_)))))
    (define gxc#!class-type-vtab
      (lambda (_type16839_)
        (let ((_$e16841_
               (##structure-ref _type16839_ '8 gxc#!class-type::t '#f)))
          (if _$e16841_
              (values _$e16841_)
              (let ((_vtab16844_ (make-table 'test: eq?)))
                (##structure-set!
                 _type16839_
                 _vtab16844_
                 '8
                 gxc#!class-type::t
                 '#f)
                _vtab16844_)))))
    (define gxc#!type-vtab
      (lambda (_type16837_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16837_ 'gxc#!struct-type::t))
            (gxc#!struct-type-vtab _type16837_)
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type16837_ 'gxc#!class-type::t))
                (gxc#!class-type-vtab _type16837_)
                '#f))))
    (define gxc#!struct-type-lookup-method
      (lambda (_type16828_ _method16829_)
        (let ((_vtab1683016832_
               (##structure-ref _type16828_ '7 gxc#!struct-type::t '#f)))
          (if _vtab1683016832_
              (let ((_vtab16835_ _vtab1683016832_))
                (table-ref _vtab16835_ _method16829_ '#f))
              '#f))))
    (define gxc#!class-type-lookup-method
      (lambda (_type16819_ _method16820_)
        (let ((_vtab1682116823_
               (##structure-ref _type16819_ '8 gxc#!class-type::t '#f)))
          (if _vtab1682116823_
              (let ((_vtab16826_ _vtab1682116823_))
                (table-ref _vtab16826_ _method16820_ '#f))
              '#f))))
    (define gxc#!type-lookup-method
      (lambda (_type16816_ _method16817_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16816_ 'gxc#!struct-type::t))
            (gxc#!struct-type-lookup-method _type16816_ _method16817_)
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _type16816_ 'gxc#!class-type::t))
                (gxc#!class-type-lookup-method _type16816_ _method16817_)
                '#f))))
    (define gxc#!class-type-complete?
      (lambda (_type16807_)
        (if (##structure-ref _type16807_ '4 gxc#!class-type::t '#f)
            (let ((_super16809_
                   (##structure-ref _type16807_ '2 gxc#!class-type::t '#f)))
              (if (not _super16809_)
                  '#t
                  (let ((_$e16811_ (gxc#optimizer-lookup-type _super16809_)))
                    (if _$e16811_
                        ((lambda (_super-t16814_)
                           (if (##structure-ref
                                _super-t16814_
                                '4
                                gxc#!struct-type::t
                                '#f)
                               '#t
                               '#f))
                         _$e16811_)
                        '#f))))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym16791_ _type16792_ _local?16793_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _type16792_ 'gxc#!type::t))
            '#!void
            (error '"bad declaration: expected !type" _sym16791_ _type16792_))
        (gxc#verbose
         '"declare-type "
         _sym16791_
         '" "
         (struct->list _type16792_))
        (table-set!
         (if _local?16793_
             (gxc#current-compile-local-type)
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f))
         _sym16791_
         _type16792_)))
    (define gxc#optimizer-declare-type!__0
      (lambda (_sym16798_ _type16799_)
        (let ((_local?16801_ '#f))
          (gxc#optimizer-declare-type!__%
           _sym16798_
           _type16799_
           _local?16801_))))
    (define gxc#optimizer-declare-type!
      (lambda _g17462_
        (let ((_g17461_ (let () (declare (not safe)) (##length _g17462_))))
          (cond ((let () (declare (not safe)) (##fx= _g17461_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g17462_))
                ((let () (declare (not safe)) (##fx= _g17461_ 3))
                 (apply gxc#optimizer-declare-type!__% _g17462_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g17462_))))))
    (define gxc#optimizer-clear-type!__%
      (lambda (_sym16777_ _local?16778_)
        (gxc#verbose '"clear-type " _sym16777_)
        (table-set!
         (if _local?16778_
             (gxc#current-compile-local-type)
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f))
         _sym16777_)))
    (define gxc#optimizer-clear-type!__0
      (lambda (_sym16783_)
        (let ((_local?16785_ '#f))
          (gxc#optimizer-clear-type!__% _sym16783_ _local?16785_))))
    (define gxc#optimizer-clear-type!
      (lambda _g17464_
        (let ((_g17463_ (let () (declare (not safe)) (##length _g17464_))))
          (cond ((let () (declare (not safe)) (##fx= _g17463_ 1))
                 (apply gxc#optimizer-clear-type!__0 _g17464_))
                ((let () (declare (not safe)) (##fx= _g17463_ 2))
                 (apply gxc#optimizer-clear-type!__% _g17464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-clear-type!
                  _g17464_))))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t16750_ _method16751_ _sym16752_ _rebind?16753_)
        (let* ((_type16755_ (gxc#optimizer-resolve-type _type-t16750_))
               (_$e16757_ (gxc#!type-vtab _type16755_)))
          (if _$e16757_
              ((lambda (_vtab16760_)
                 (if (hash-key? _vtab16760_ _method16751_)
                     (if _rebind?16753_
                         (begin
                           (gxc#verbose
                            '"declare-method: rebind existing method"
                            _type-t16750_
                            '" "
                            _method16751_)
                           (table-set! _vtab16760_ _method16751_ _sym16752_))
                         (error '"declare-method: duplicate method declaration"))
                     (begin
                       (gxc#verbose
                        '"declare-method "
                        _type-t16750_
                        '" "
                        _method16751_
                        '" => "
                        _sym16752_)
                       (table-set! _vtab16760_ _method16751_ _sym16752_))))
               _$e16757_)
              (if (not _type16755_)
                  (gxc#verbose '"declare-method: unknown type " _type-t16750_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t16750_
                         _type16755_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_type-t16765_ _method16766_ _sym16767_)
        (let ((_rebind?16769_ '#f))
          (gxc#optimizer-declare-method!__%
           _type-t16765_
           _method16766_
           _sym16767_
           _rebind?16769_))))
    (define gxc#optimizer-declare-method!
      (lambda _g17466_
        (let ((_g17465_ (let () (declare (not safe)) (##length _g17466_))))
          (cond ((let () (declare (not safe)) (##fx= _g17465_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g17466_))
                ((let () (declare (not safe)) (##fx= _g17465_ 4))
                 (apply gxc#optimizer-declare-method!__% _g17466_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g17466_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_sym16738_)
        (let ((_$e16746_
               (let ((_ht1673916741_ (gxc#current-compile-local-type)))
                 (if _ht1673916741_
                     (let ((_ht16744_ _ht1673916741_))
                       (table-ref _ht16744_ _sym16738_ '#f))
                     '#f))))
          (if _$e16746_
              _$e16746_
              (table-ref
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f)
               _sym16738_
               '#f)))))
    (define gxc#optimizer-resolve-type
      (lambda (_sym16730_)
        (let ((_type1673116733_ (gxc#optimizer-lookup-type _sym16730_)))
          (if _type1673116733_
              (let ((_type16736_ _type1673116733_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _type16736_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _type16736_ '1 gxc#!type::t '#f))
                    _type16736_))
              '#f))))
    (define gxc#optimizer-lookup-method
      (lambda (_type-t16727_ _method16728_)
        (gxc#!type-lookup-method
         (gxc#optimizer-resolve-type _type-t16727_)
         _method16728_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_sym16725_)
        (gxc#verbose '"top-level method: " _sym16725_)
        (table-set!
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '3
          gxc#optimizer-info::t
          '#f)
         _sym16725_
         '#t)))
    (define gxc#optimizer-top-level-method?
      (lambda (_sym16723_)
        (table-ref
         (##structure-ref
          (gxc#current-compile-optimizer-info)
          '3
          gxc#optimizer-info::t
          '#f)
         _sym16723_
         '#f)))
    (define gxc#identifier-symbol
      (lambda (_stx16721_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of? _stx16721_ 'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _stx16721_)
            (gx#stx-e _stx16721_))))))
