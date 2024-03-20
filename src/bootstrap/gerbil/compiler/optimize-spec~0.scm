(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710943028)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137236 (list gxc#::identity::t))
            (__tmp137234
             (let ((__tmp137235
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137235 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137236
         '()
         __tmp137234
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136100_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136100_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::identity-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-method-specializers::t
            '%#begin
            gxc#xform-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-method-specializers::t
            '%#begin-syntax
            gxc#xform-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-method-specializers::t
            '%#module
            gxc#xform-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::generate-method-specializers::t
            '%#define-values
            gxc#generate-method-specializers-define-values%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::generate-method-specializers::t)))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx136092_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136095_
                (let ((__obj137229
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137229))
               (__tmp137237
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136095_ _stx136092_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137237
           gxc#current-compile-method
           _self136095_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137240 (list gxc#::void::t))
            (__tmp137238
             (let ((__tmp137239
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137239 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137240
         '(receiver methods slots)
         __tmp137238
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136089_
        (apply make-instance gxc#::collect-object-refs::t _$args136089_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#begin
            gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#begin-annotation
            gxc#apply-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#lambda
            gxc#apply-body-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#case-lambda
            gxc#apply-body-case-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#let-values
            gxc#apply-body-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#letrec-values
            gxc#apply-body-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#letrec*-values
            gxc#apply-body-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#call
            gxc#collect-object-refs-call%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#if
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#set!
            gxc#apply-body-setq%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-ref
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-set!
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-direct-ref
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-direct-set!
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-unchecked-ref
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-object-refs::t
            '%#struct-unchecked-set!
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::collect-object-refs::t)))))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g137241_
               _receiver136050136055_
               _methods136051136057_
               _slots136052136059_
               _stx136061_)
        (let* ((_receiver136064_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136050136055_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136050136055_))
               (_methods136066_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136051136057_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136051136057_))
               (_slots136068_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136052136059_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136052136059_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136070_
                  (let ((__obj137231
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137231
                       _receiver136064_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137231
                       _methods136066_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137231
                       _slots136068_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137231))
                 (__tmp137242
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136070_ _stx136061_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137242
             gxc#current-compile-method
             _self136070_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys136049136077_ . _args136079_)
        (apply gxc#apply-collect-object-refs__%
               _keys136049136077_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136049136077_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136049136077_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136049136077_ 'slots: absent-value))
               _args136079_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136053136085_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136053136085_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137245 (list gxc#::basic-xform-expression::t))
            (__tmp137243
             (let ((__tmp137244
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137244 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137245
         '(receiver klass methods slots)
         __tmp137243
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args136045_
        (apply make-instance gxc#::subst-object-refs::t _$args136045_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-expression-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::subst-object-refs::t
            '%#begin
            gxc#xform-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::subst-object-refs::t
            '%#call
            gxc#subst-object-refs-call%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::subst-object-refs::t)))))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g137246_
               _receiver136001136007_
               _klass136002136009_
               _methods136003136011_
               _slots136004136013_
               _stx136015_)
        (let* ((_receiver136018_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136001136007_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136001136007_))
               (_klass136020_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass136002136009_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass136002136009_))
               (_methods136022_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136003136011_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136003136011_))
               (_slots136024_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136004136013_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136004136013_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self136026_
                  (let ((__obj137233
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137233
                       _receiver136018_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137233
                       _klass136020_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137233
                       _methods136022_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137233
                       _slots136024_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137233))
                 (__tmp137247
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136026_ _stx136015_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137247
             gxc#current-compile-method
             _self136026_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys136000136033_ . _args136035_)
        (apply gxc#apply-subst-object-refs__%
               _keys136000136033_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136000136033_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136000136033_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136000136033_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136000136033_ 'slots: absent-value))
               _args136035_)))
    (define gxc#apply-subst-object-refs
      (lambda _args136005136041_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args136005136041_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133210_ _stx133211_)
        (letrec ((_generate-method-bind133213_
                  (lambda (_$klass135992_
                           _$method-table135993_
                           _id135994_
                           _$id135995_)
                    (let ((_$tmp135997_
                           (let ((__tmp137248 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137248))))
                      (let ((__tmp137296
                             (let ()
                               (declare (not safe))
                               (cons _$id135995_ '())))
                            (__tmp137249
                             (let ((__tmp137250
                                    (let ((__tmp137251
                                           (let ((__tmp137294
                                                  (let ((__tmp137295
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137295)))
                                                 (__tmp137252
                                                  (let ((__tmp137253
                                                         (let ((__tmp137254
                                                                (let ((__tmp137255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137256
                                      (let ((__tmp137257
                                             (let ((__tmp137277
                                                    (let ((__tmp137278
                                                           (let ((__tmp137293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135997_ '())))
                         (__tmp137279
                          (let ((__tmp137280
                                 (let ((__tmp137281
                                        (let ((__tmp137291
                                               (let ((__tmp137292
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137292)))
                                              (__tmp137282
                                               (let ((__tmp137289
                                                      (let ((__tmp137290
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135993_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137290)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137283
                                                      (let ((__tmp137287
                                                             (let ((__tmp137288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135994_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137288)))
                    (__tmp137284
                     (let ((__tmp137285
                            (let ((__tmp137286
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137286))))
                       (declare (not safe))
                       (cons __tmp137285 '()))))
                (declare (not safe))
                (cons __tmp137287 __tmp137284))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137289
                                                       __tmp137283))))
                                          (declare (not safe))
                                          (cons __tmp137291 __tmp137282))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137281))))
                            (declare (not safe))
                            (cons __tmp137280 '()))))
                     (declare (not safe))
                     (cons __tmp137293 __tmp137279))))
              (declare (not safe))
              (cons __tmp137278 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137258
                                                    (let ((__tmp137259
                                                           (let ((__tmp137260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137275
                                 (let ((__tmp137276
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135997_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137276)))
                                (__tmp137261
                                 (let ((__tmp137273
                                        (let ((__tmp137274
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135997_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137274)))
                                       (__tmp137262
                                        (let ((__tmp137263
                                               (let ((__tmp137264
                                                      (let ((__tmp137271
                                                             (let ((__tmp137272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137272)))
                    (__tmp137265
                     (let ((__tmp137269
                            (let ((__tmp137270
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137270)))
                           (__tmp137266
                            (let ((__tmp137267
                                   (let ((__tmp137268
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135994_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137268))))
                              (declare (not safe))
                              (cons __tmp137267 '()))))
                       (declare (not safe))
                       (cons __tmp137269 __tmp137266))))
                (declare (not safe))
                (cons __tmp137271 __tmp137265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137264))))
                                          (declare (not safe))
                                          (cons __tmp137263 '()))))
                                   (declare (not safe))
                                   (cons __tmp137273 __tmp137262))))
                            (declare (not safe))
                            (cons __tmp137275 __tmp137261))))
                     (declare (not safe))
                     (cons '%#if __tmp137260))))
              (declare (not safe))
              (cons __tmp137259 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137277
                                                     __tmp137258))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137257))))
                                 (declare (not safe))
                                 (cons __tmp137256 '()))))
                          (declare (not safe))
                          (cons '() __tmp137255))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137253 '()))))
                                             (declare (not safe))
                                             (cons __tmp137294 __tmp137252))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137251))))
                               (declare (not safe))
                               (cons __tmp137250 '()))))
                        (declare (not safe))
                        (cons __tmp137296 __tmp137249)))))
                 (_generate-slot-bind133214_
                  (lambda (_$klass135986_ _id135987_ _$id135988_)
                    (let ((_$tmp135990_
                           (let ((__tmp137297 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137297))))
                      (let ((__tmp137334
                             (let ()
                               (declare (not safe))
                               (cons _$id135988_ '())))
                            (__tmp137298
                             (let ((__tmp137299
                                    (let ((__tmp137300
                                           (let ((__tmp137320
                                                  (let ((__tmp137321
                                                         (let ((__tmp137333
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135990_ '())))
                       (__tmp137322
                        (let ((__tmp137323
                               (let ((__tmp137324
                                      (let ((__tmp137331
                                             (let ((__tmp137332
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137332)))
                                            (__tmp137325
                                             (let ((__tmp137329
                                                    (let ((__tmp137330
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137330)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137326
                                                    (let ((__tmp137327
                                                           (let ((__tmp137328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135987_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137328))))
              (declare (not safe))
              (cons __tmp137327 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137329
                                                     __tmp137326))))
                                        (declare (not safe))
                                        (cons __tmp137331 __tmp137325))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137324))))
                          (declare (not safe))
                          (cons __tmp137323 '()))))
                   (declare (not safe))
                   (cons __tmp137333 __tmp137322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137321 '())))
                                                 (__tmp137301
                                                  (let ((__tmp137302
                                                         (let ((__tmp137303
                                                                (let ((__tmp137318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137319
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135990_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137319)))
                              (__tmp137304
                               (let ((__tmp137316
                                      (let ((__tmp137317
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135990_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137317)))
                                     (__tmp137305
                                      (let ((__tmp137306
                                             (let ((__tmp137307
                                                    (let ((__tmp137314
                                                           (let ((__tmp137315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137315)))
                  (__tmp137308
                   (let ((__tmp137312
                          (let ((__tmp137313
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137313)))
                         (__tmp137309
                          (let ((__tmp137310
                                 (let ((__tmp137311
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135987_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137311))))
                            (declare (not safe))
                            (cons __tmp137310 '()))))
                     (declare (not safe))
                     (cons __tmp137312 __tmp137309))))
              (declare (not safe))
              (cons __tmp137314 __tmp137308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137307))))
                                        (declare (not safe))
                                        (cons __tmp137306 '()))))
                                 (declare (not safe))
                                 (cons __tmp137316 __tmp137305))))
                          (declare (not safe))
                          (cons __tmp137318 __tmp137304))))
                   (declare (not safe))
                   (cons '%#if __tmp137303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137302 '()))))
                                             (declare (not safe))
                                             (cons __tmp137320 __tmp137301))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137300))))
                               (declare (not safe))
                               (cons __tmp137299 '()))))
                        (declare (not safe))
                        (cons __tmp137334 __tmp137298)))))
                 (_generate-specializer-impl133215_
                  (lambda (_$klass135980_
                           _$method-table135981_
                           _methods-bind135982_
                           _slots-bind135983_
                           _specializer-impl135984_)
                    (let ((__tmp137335
                           (let ((__tmp137336
                                  (let ((__tmp137342
                                         (let ((__tmp137343
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135981_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135980_ __tmp137343)))
                                        (__tmp137337
                                         (let ((__tmp137338
                                                (let ((__tmp137339
                                                       (let ((__tmp137341
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135983_ _methods-bind135982_)))
                     (__tmp137340
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135984_ '()))))
                 (declare (not safe))
                 (cons __tmp137341 __tmp137340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137339))))
                                           (declare (not safe))
                                           (cons __tmp137338 '()))))
                                    (declare (not safe))
                                    (cons __tmp137342 __tmp137337))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137336))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137335 _stx133211_))))
                 (_generate-specializer-def133216_
                  (lambda (_id135976_
                           _specializer-id135977_
                           _specializer-impl135978_)
                    (let ((__tmp137344
                           (let ((__tmp137345
                                  (let ((__tmp137346
                                         (let ((__tmp137359
                                                (let ((__tmp137360
                                                       (let ((__tmp137361
                                                              (let ((__tmp137363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135977_ '())))
                            (__tmp137362
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135978_ '()))))
                        (declare (not safe))
                        (cons __tmp137363 __tmp137362))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137360
                                                   _stx133211_)))
                                               (__tmp137347
                                                (let ((__tmp137348
                                                       (let ((__tmp137349
                                                              (let ((__tmp137350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137357
                                    (let ((__tmp137358
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137358)))
                                   (__tmp137351
                                    (let ((__tmp137355
                                           (let ((__tmp137356
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135976_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137356)))
                                          (__tmp137352
                                           (let ((__tmp137353
                                                  (let ((__tmp137354
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137354))))
                                             (declare (not safe))
                                             (cons __tmp137353 '()))))
                                      (declare (not safe))
                                      (cons __tmp137355 __tmp137352))))
                               (declare (not safe))
                               (cons __tmp137357 __tmp137351))))
                        (declare (not safe))
                        (cons '%#call __tmp137350))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137349 _stx133211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137348 '()))))
                                           (declare (not safe))
                                           (cons __tmp137359 __tmp137347))))
                                    (declare (not safe))
                                    (cons _stx133211_ __tmp137346))))
                             (declare (not safe))
                             (cons '%#begin __tmp137345))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137344 _stx133211_)))))
          (let* ((___stx136189136190_ _stx133211_)
                 (_g133219133239_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136189136190_)))))
            (let ((___kont136191136192_
                   (lambda (_L133283_ _L133284_)
                     (let ((_method-calls133303_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133304_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133305_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133307_
                                 (lambda ()
                                   (if (let ((__tmp137365
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133303_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137365))
                                       (let ((__tmp137364
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133304_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137364))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133283_))
                             (let* ((___stx136103136104_ _L133283_)
                                    (_g133694133712_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136103136104_)))))
                               (let ((___kont136105136106_
                                      (lambda (_L133748_ _L133749_ _L133750_)
                                        (for-each
                                         (lambda (_g133765133767_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133765133767_
                                              'receiver:
                                              _L133750_
                                              'methods:
                                              _method-calls133303_
                                              'slots:
                                              _slot-refs133304_)))
                                         _L133748_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133307_))
                                            _stx133211_
                                            (let* ((_specializer-id133776_
                                                    (let* ((_id133770_
                                                            (let ((__tmp137487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133284_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137487 '"::specialize")))
                   (_specializer-id133773_
                    (let ((__tmp137488
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133211_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133770_ __tmp137488))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133773_))
              _specializer-id133773_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133778_
                                                    (let ((__tmp137489
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137489)))
                                                   (_$method-table133780_
                                                    (let ((__tmp137490
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137490)))
                                                   (_methods133782_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133303_)))
                                                   (_$methods133786_
                                                    (map (lambda (_id133784_)
                                                           (let ((__tmp137491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133784_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137491)))
                 _methods133782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137492_
                                                    (for-each
                                                     (lambda (_g133787133790_
                                                              _g133788133792_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133303_
                                                          _g133787133790_
                                                          _g133788133792_)))
                                                     _methods133782_
                                                     _$methods133786_))
                                                   (_methods-bind133803_
                                                    (map (lambda (_g133795133798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133796133800_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133213_
                      _$klass133778_
                      _$method-table133780_
                      _g133795133798_
                      _g133796133800_)))
                 _methods133782_
                 _$methods133786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133805_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133304_)))
                                                   (_$slots133809_
                                                    (map (lambda (_id133807_)
                                                           (let ((__tmp137493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133807_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137493)))
                 _slots133805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137494_
                                                    (for-each
                                                     (lambda (_g133810133813_
                                                              _g133811133815_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133304_
                                                          _g133810133813_
                                                          _g133811133815_)))
                                                     _slots133805_
                                                     _$slots133809_))
                                                   (_slots-bind133826_
                                                    (map (lambda (_g133818133821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133819133823_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133214_
                      _$klass133778_
                      _g133818133821_
                      _g133819133823_)))
                 _slots133805_
                 _$slots133809_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133832_
                                                    (map (lambda (_g133827133829_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133827133829_
                                                              'receiver:
                                                              _L133750_
                                                              'klass:
                                                              _$klass133778_
                                                              'methods:
                                                              _method-calls133303_
                                                              'slots:
                                                              _slot-refs133304_)))
                                                         _L133748_))
                                                   (_specializer-impl133834_
                                                    (let ((__tmp137495
                                                           (let ((__tmp137496
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137497
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133750_ _L133749_))))
                            (declare (not safe))
                            (cons __tmp137497 _specializer-body133832_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137496))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137495 _stx133211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133836_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133215_
                                                       _$klass133778_
                                                       _$method-table133780_
                                                       _methods-bind133803_
                                                       _slots-bind133826_
                                                       _specializer-impl133834_))))
                                              (let ((__tmp137499
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133284_)))
                                                    (__tmp137498
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133776_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137499
                                                 '" => "
                                                 __tmp137498))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133216_
                                                 _L133284_
                                                 _specializer-id133776_
                                                 _specializer-impl133836_))))))
                                     (___kont136107136108_
                                      (lambda () _stx133211_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136103136104_))
                                     (let ((_e133701133724_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136103136104_))))
                                       (let ((_tl133699133729_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133701133724_)))
                                             (_hd133700133727_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133701133724_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133699133729_))
                                             (let ((_e133704133732_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133699133729_))))
                                               (let ((_tl133702133737_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133704133732_)))
                                                     (_hd133703133735_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133704133732_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133703133735_))
                                                     (let ((_e133707133740_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133703133735_))))
                                                       (let ((_tl133705133745_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133707133740_)))
                     (_hd133706133743_
                      (let () (declare (not safe)) (##car _e133707133740_))))
                 (___kont136105136106_
                  _tl133702133737_
                  _tl133705133745_
                  _hd133706133743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136107136108_))))
                                             (___kont136107136108_))))
                                     (___kont136107136108_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133283_))
                                 (let* ((_g133842133861_
                                         (lambda (_g133843133858_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133843133858_))))
                                        (_g133841134144_
                                         (lambda (_g133843133864_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133843133864_))
                                               (let ((_e133847133866_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133843133864_))))
                                                 (let ((_hd133846133869_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133847133866_)))
                                                       (_tl133845133871_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133847133866_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133845133871_))
                                                       (let ((_g137470_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133845133871_ '0))))
                 (begin
                   (let ((_g137471_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137470_)
                                (##vector-length _g137470_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137471_ 2)))
                         (error "Context expects 2 values" _g137471_)))
                   (let ((_target133848133874_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137470_ 0)))
                         (_tl133850133876_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137470_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133850133876_))
                         (letrec ((_loop133851133879_
                                   (lambda (_hd133849133882_
                                            _clause133855133884_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133849133882_))
                                         (let ((_e133852133887_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133849133882_))))
                                           (let ((_lp-hd133853133890_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133852133887_)))
                                                 (_lp-tl133854133892_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133852133887_))))
                                             (let ((__tmp137486
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133853133890_
                                                            _clause133855133884_))))
                                               (declare (not safe))
                                               (_loop133851133879_
                                                _lp-tl133854133892_
                                                __tmp137486))))
                                         (let ((_clause133856133895_
                                                (reverse _clause133855133884_)))
                                           ((lambda (_L133898_)
                                              (for-each
                                               (lambda (_clause133911_)
                                                 (let* ((___stx136129136130_
                                                         _clause133911_)
                                                        (_g133914133929_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136129136130_)))))
                                                   (let ((___kont136131136132_
                                                          (lambda (_L133957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133958_
                           _L133959_)
                    (for-each
                     (lambda (_g133974133976_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133974133976_
                          'receiver:
                          _L133959_
                          'methods:
                          _method-calls133303_
                          'slots:
                          _slot-refs133304_)))
                     _L133957_)))
                 (___kont136133136134_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136129136130_))
                                                         (let ((_e133921133941_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136129136130_))))
                   (let ((_tl133919133946_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133921133941_)))
                         (_hd133920133944_
                          (let ()
                            (declare (not safe))
                            (##car _e133921133941_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133920133944_))
                         (let ((_e133924133949_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133920133944_))))
                           (let ((_tl133922133954_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133924133949_)))
                                 (_hd133923133952_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133924133949_))))
                             (___kont136131136132_
                              _tl133919133946_
                              _tl133922133954_
                              _hd133923133952_)))
                         (___kont136133136134_))))
                 (___kont136133136134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137472
                                                      (lambda (_g133981133984_
                                                               _g133982133986_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133981133984_
                                                                _g133982133986_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137472
                                                         '()
                                                         _L133898_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133307_))
                                                  _stx133211_
                                                  (let* ((_specializer-id133995_
                                                          (let* ((_id133989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137473
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133284_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137473 '"::specialize")))
                         (_specializer-id133992_
                          (let ((__tmp137474
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133211_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133989_ __tmp137474))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133992_))
                    _specializer-id133992_))
                 (_$klass133997_
                  (let ((__tmp137475 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137475)))
                 (_$method-table133999_
                  (let ((__tmp137476 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137476)))
                 (_methods134001_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133303_)))
                 (_$methods134005_
                  (map (lambda (_id134003_)
                         (let ((__tmp137477 (gensym _id134003_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137477)))
                       _methods134001_))
                 (_g137478_
                  (for-each
                   (lambda (_g134006134009_ _g134007134011_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133303_
                        _g134006134009_
                        _g134007134011_)))
                   _methods134001_
                   _$methods134005_))
                 (_methods-bind134022_
                  (map (lambda (_g134014134017_ _g134015134019_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133213_
                            _$klass133997_
                            _$method-table133999_
                            _g134014134017_
                            _g134015134019_)))
                       _methods134001_
                       _$methods134005_))
                 (_slots134024_
                  (let () (declare (not safe)) (hash-keys _slot-refs133304_)))
                 (_$slots134028_
                  (map (lambda (_id134026_)
                         (let ((__tmp137479 (gensym _id134026_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137479)))
                       _slots134024_))
                 (_g137480_
                  (for-each
                   (lambda (_g134029134032_ _g134030134034_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133304_
                        _g134029134032_
                        _g134030134034_)))
                   _slots134024_
                   _$slots134028_))
                 (_slots-bind134045_
                  (map (lambda (_g134037134040_ _g134038134042_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133214_
                            _$klass133997_
                            _g134037134040_
                            _g134038134042_)))
                       _slots134024_
                       _$slots134028_))
                 (_specializer-clauses134137_
                  (map (lambda (_clause134047_)
                         (let* ((___stx136149136150_ _clause134047_)
                                (_g134050134065_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136149136150_)))))
                           (let ((___kont136151136152_
                                  (lambda (_L134093_ _L134094_ _L134095_)
                                    (let* ((_body134125_
                                            (map (lambda (_g134120134122_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134120134122_
                                                      'receiver:
                                                      _L134095_
                                                      'klass:
                                                      _$klass133997_
                                                      'methods:
                                                      _method-calls133303_
                                                      'slots:
                                                      _slot-refs133304_)))
                                                 _L134093_))
                                           (__tmp137481
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134095_ _L134094_))))
                                      (declare (not safe))
                                      (cons __tmp137481 _body134125_))))
                                 (___kont136153136154_
                                  (lambda () _clause134047_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136149136150_))
                                 (let ((_e134057134077_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136149136150_))))
                                   (let ((_tl134055134082_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134057134077_)))
                                         (_hd134056134080_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134057134077_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134056134080_))
                                         (let ((_e134060134085_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134056134080_))))
                                           (let ((_tl134058134090_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134060134085_)))
                                                 (_hd134059134088_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134060134085_))))
                                             (___kont136151136152_
                                              _tl134055134082_
                                              _tl134058134090_
                                              _hd134059134088_)))
                                         (___kont136153136154_))))
                                 (___kont136153136154_)))))
                       (let ((__tmp137482
                              (lambda (_g134129134132_ _g134130134134_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134129134132_ _g134130134134_)))))
                         (declare (not safe))
                         (foldr1 __tmp137482 '() _L133898_))))
                 (_specializer-impl134139_
                  (let ((__tmp137483
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134137_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137483 _stx133211_)))
                 (_specializer-impl134141_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133215_
                     _$klass133997_
                     _$method-table133999_
                     _methods-bind134022_
                     _slots-bind134045_
                     _specializer-impl134139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137485
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133284_)))
                                                          (__tmp137484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133995_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137485
                                                       '" => "
                                                       __tmp137484))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133216_
                                                       _L133284_
                                                       _specializer-id133995_
                                                       _specializer-impl134141_)))))
                                            _clause133856133895_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133851133879_ _target133848133874_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133842133861_ _g133843133864_))))))
               (let ()
                 (declare (not safe))
                 (_g133842133861_ _g133843133864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133842133861_
                                                  _g133843133864_))))))
                                   (declare (not safe))
                                   (_g133841134144_ _L133283_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133283_))
                                     (let* ((_g134147134177_
                                             (lambda (_g134148134174_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134148134174_))))
                                            (_g134146134782_
                                             (lambda (_g134148134180_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134148134180_))
                                                   (let ((_e134154134182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134148134180_))))
                                                     (let ((_hd134153134185_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134154134182_)))
                                                           (_tl134152134187_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134154134182_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134152134187_))
                                                           (let ((_e134157134190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134152134187_))))
                     (let ((_hd134156134193_
                            (let ()
                              (declare (not safe))
                              (##car _e134157134190_)))
                           (_tl134155134195_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134157134190_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134156134193_))
                           (let ((_e134160134198_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134156134193_))))
                             (let ((_hd134159134201_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134160134198_)))
                                   (_tl134158134203_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134160134198_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134159134201_))
                                   (let ((_e134163134206_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134159134201_))))
                                     (let ((_hd134162134209_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134163134206_)))
                                           (_tl134161134211_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134163134206_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134162134209_))
                                           (let ((_e134166134214_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134162134209_))))
                                             (let ((_hd134165134217_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134166134214_)))
                                                   (_tl134164134219_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134166134214_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134164134219_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134161134211_))
                                                       (let ((_e134169134222_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134161134211_))))
                 (let ((_hd134168134225_
                        (let () (declare (not safe)) (##car _e134169134222_)))
                       (_tl134167134227_
                        (let () (declare (not safe)) (##cdr _e134169134222_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134167134227_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134158134203_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134155134195_))
                               (let ((_e134172134230_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134155134195_))))
                                 (let ((_hd134171134233_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134172134230_)))
                                       (_tl134170134235_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134172134230_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134170134235_))
                                       ((lambda (_L134238_ _L134239_ _L134240_)
                                          (let* ((_g134263134281_
                                                  (lambda (_g134264134278_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134264134278_))))
                                                 (_g134262134332_
                                                  (lambda (_g134264134284_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134264134284_))
                                                        (let ((_e134270134286_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134264134284_))))
                  (let ((_hd134269134289_
                         (let () (declare (not safe)) (##car _e134270134286_)))
                        (_tl134268134291_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134270134286_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134268134291_))
                        (let ((_e134273134294_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134268134291_))))
                          (let ((_hd134272134297_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134273134294_)))
                                (_tl134271134299_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134273134294_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134272134297_))
                                (let ((_e134276134302_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134272134297_))))
                                  (let ((_hd134275134305_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134276134302_)))
                                        (_tl134274134307_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134276134302_))))
                                    ((lambda (_L134310_ _L134311_ _L134312_)
                                       (for-each
                                        (lambda (_g134327134329_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134327134329_
                                             'receiver:
                                             _L134312_
                                             'methods:
                                             _method-calls133303_
                                             'slots:
                                             _slot-refs133304_)))
                                        _L134310_))
                                     _tl134271134299_
                                     _tl134274134307_
                                     _hd134275134305_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134263134281_ _g134264134284_)))))
                        (let ()
                          (declare (not safe))
                          (_g134263134281_ _g134264134284_)))))
                (let ()
                  (declare (not safe))
                  (_g134263134281_ _g134264134284_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134262134332_ _L134239_))
                                          (let* ((_g134335134354_
                                                  (lambda (_g134336134351_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134336134351_))))
                                                 (_g134334134473_
                                                  (lambda (_g134336134357_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134336134357_))
                                                        (let ((_e134340134359_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134336134357_))))
                  (let ((_hd134339134362_
                         (let () (declare (not safe)) (##car _e134340134359_)))
                        (_tl134338134364_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134340134359_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134338134364_))
                        (let ((_g137440_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134338134364_
                                  '0))))
                          (begin
                            (let ((_g137441_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137440_)
                                         (##vector-length _g137440_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137441_ 2)))
                                  (error "Context expects 2 values"
                                         _g137441_)))
                            (let ((_target134341134367_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137440_ 0)))
                                  (_tl134343134369_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137440_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134343134369_))
                                  (letrec ((_loop134344134372_
                                            (lambda (_hd134342134375_
                                                     _clause134348134377_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134342134375_))
                                                  (let ((_e134345134380_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134342134375_))))
                                                    (let ((_lp-hd134346134383_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134345134380_)))
                                                          (_lp-tl134347134385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134345134380_))))
                                                      (let ((__tmp137443
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134346134383_ _clause134348134377_))))
                (declare (not safe))
                (_loop134344134372_ _lp-tl134347134385_ __tmp137443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134349134388_
                                                         (reverse _clause134348134377_)))
                                                    ((lambda (_L134391_)
                                                       (for-each
                                                        (lambda (_clause134404_)
                                                          (let* ((_g134406134421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134407134418_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134407134418_))))
                         (_g134405134463_
                          (lambda (_g134407134424_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134407134424_))
                                (let ((_e134413134426_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134407134424_))))
                                  (let ((_hd134412134429_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134413134426_)))
                                        (_tl134411134431_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134413134426_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134412134429_))
                                        (let ((_e134416134434_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134412134429_))))
                                          (let ((_hd134415134437_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134416134434_)))
                                                (_tl134414134439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134416134434_))))
                                            ((lambda (_L134442_
                                                      _L134443_
                                                      _L134444_)
                                               (for-each
                                                (lambda (_g134458134460_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134458134460_
                                                     'receiver:
                                                     _L134444_
                                                     'methods:
                                                     _method-calls133303_
                                                     'slots:
                                                     _slot-refs133304_)))
                                                _L134442_))
                                             _tl134411134431_
                                             _tl134414134439_
                                             _hd134415134437_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134406134421_ _g134407134424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134406134421_ _g134407134424_))))))
                    (declare (not safe))
                    (_g134405134463_ _clause134404_)))
                (let ((__tmp137442
                       (lambda (_g134465134468_ _g134466134470_)
                         (let ()
                           (declare (not safe))
                           (cons _g134465134468_ _g134466134470_)))))
                  (declare (not safe))
                  (foldr1 __tmp137442 '() _L134391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134349134388_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134344134372_
                                       _target134341134367_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134335134354_ _g134336134357_))))))
                        (let ()
                          (declare (not safe))
                          (_g134335134354_ _g134336134357_)))))
                (let ()
                  (declare (not safe))
                  (_g134335134354_ _g134336134357_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134334134473_ _L134238_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133307_))
                                              _stx133211_
                                              (let* ((_specializer-id134482_
                                                      (let* ((_id134476_
                                                              (let ((__tmp137444
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133284_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137444 '"::specialize")))
                     (_specializer-id134479_
                      (let ((__tmp137445
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133211_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134476_ __tmp137445))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134479_))
                _specializer-id134479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134484_
                                                      (let ((__tmp137446
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137446)))
                                                     (_$method-table134486_
                                                      (let ((__tmp137447
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137447)))
                                                     (_methods134488_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133303_)))
                                                     (_$methods134492_
                                                      (map (lambda (_id134490_)
                                                             (let ((__tmp137448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134490_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137448)))
                   _methods134488_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137449_
                                                      (for-each
                                                       (lambda (_g134493134496_
                                                                _g134494134498_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133303_
                                                            _g134493134496_
                                                            _g134494134498_)))
                                                       _methods134488_
                                                       _$methods134492_))
                                                     (_methods-bind134509_
                                                      (map (lambda (_g134501134504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134502134506_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133213_
                        _$klass134484_
                        _$method-table134486_
                        _g134501134504_
                        _g134502134506_)))
                   _methods134488_
                   _$methods134492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134511_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133304_)))
                                                     (_$slots134515_
                                                      (map (lambda (_id134513_)
                                                             (let ((__tmp137450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134513_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137450)))
                   _slots134511_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137451_
                                                      (for-each
                                                       (lambda (_g134516134519_
                                                                _g134517134521_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133304_
                                                            _g134516134519_
                                                            _g134517134521_)))
                                                       _slots134511_
                                                       _$slots134515_))
                                                     (_slots-bind134532_
                                                      (map (lambda (_g134524134527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134525134529_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133214_
                        _$klass134484_
                        _g134524134527_
                        _g134525134529_)))
                   _slots134511_
                   _$slots134515_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134618_
                                                      (let* ((_g134534134552_
                                                              (lambda (_g134535134549_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134535134549_))))
                     (_g134533134615_
                      (lambda (_g134535134555_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134535134555_))
                            (let ((_e134541134557_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134535134555_))))
                              (let ((_hd134540134560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134541134557_)))
                                    (_tl134539134562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134541134557_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134539134562_))
                                    (let ((_e134544134565_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134539134562_))))
                                      (let ((_hd134543134568_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134544134565_)))
                                            (_tl134542134570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134544134565_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134543134568_))
                                            (let ((_e134547134573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134543134568_))))
                                              (let ((_hd134546134576_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134547134573_)))
                                                    (_tl134545134578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134547134573_))))
                                                ((lambda (_L134581_
                                                          _L134582_
                                                          _L134583_)
                                                   (let* ((_body134613_
                                                           (map (lambda (_g134608134610_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134608134610_
                             'receiver:
                             _L134583_
                             'klass:
                             _$klass134484_
                             'methods:
                             _method-calls133303_
                             'slots:
                             _slot-refs133304_)))
                        _L134581_))
                  (__tmp137452
                   (let ((__tmp137453
                          (let ((__tmp137454
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134583_ _L134582_))))
                            (declare (not safe))
                            (cons __tmp137454 _body134613_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137452
                                                      _L134239_)))
                                                 _tl134542134570_
                                                 _tl134545134578_
                                                 _hd134546134576_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134534134552_
                                               _g134535134555_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134534134552_ _g134535134555_)))))
                            (let ()
                              (declare (not safe))
                              (_g134534134552_ _g134535134555_))))))
                (declare (not safe))
                (_g134533134615_ _L134239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134775_
                                                      (let* ((_g134620134639_
                                                              (lambda (_g134621134636_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134621134636_))))
                     (_g134619134772_
                      (lambda (_g134621134642_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134621134642_))
                            (let ((_e134625134644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134621134642_))))
                              (let ((_hd134624134647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134625134644_)))
                                    (_tl134623134649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134625134644_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134623134649_))
                                    (let ((_g137455_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134623134649_
                                              '0))))
                                      (begin
                                        (let ((_g137456_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137455_)
                                                     (##vector-length
                                                      _g137455_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137456_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137456_)))
                                        (let ((_target134626134652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137455_ 0)))
                                              (_tl134628134654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137455_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134628134654_))
                                              (letrec ((_loop134629134657_
                                                        (lambda (_hd134627134660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134633134662_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134627134660_))
                      (let ((_e134630134665_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134627134660_))))
                        (let ((_lp-hd134631134668_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134630134665_)))
                              (_lp-tl134632134670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134630134665_))))
                          (let ((__tmp137460
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134631134668_
                                         _clause134633134662_))))
                            (declare (not safe))
                            (_loop134629134657_
                             _lp-tl134632134670_
                             __tmp137460))))
                      (let ((_clause134634134673_
                             (reverse _clause134633134662_)))
                        ((lambda (_L134676_)
                           (let* ((_clauses134770_
                                   (map (lambda (_clause134690_)
                                          (let* ((___stx136169136170_
                                                  _clause134690_)
                                                 (_g134693134708_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136169136170_)))))
                                            (let ((___kont136171136172_
                                                   (lambda (_L134736_
                                                            _L134737_
                                                            _L134738_)
                                                     (let* ((_body134758_
                                                             (map (lambda (_g134753134755_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134753134755_
                               'receiver:
                               _L134738_
                               'klass:
                               _$klass134484_
                               'methods:
                               _method-calls133303_
                               'slots:
                               _slot-refs133304_)))
                          _L134736_))
                    (__tmp137457
                     (let () (declare (not safe)) (cons _L134738_ _L134737_))))
               (declare (not safe))
               (cons __tmp137457 _body134758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136173136174_
                                                   (lambda () _clause134690_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136169136170_))
                                                  (let ((_e134700134720_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136169136170_))))
                                                    (let ((_tl134698134725_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134700134720_)))
                                                          (_hd134699134723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134700134720_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134699134723_))
                                                          (let ((_e134703134728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134699134723_))))
                    (let ((_tl134701134733_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134703134728_)))
                          (_hd134702134731_
                           (let ()
                             (declare (not safe))
                             (##car _e134703134728_))))
                      (___kont136171136172_
                       _tl134698134725_
                       _tl134701134733_
                       _hd134702134731_)))
                  (___kont136173136174_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136173136174_)))))
                                        (let ((__tmp137458
                                               (lambda (_g134762134765_
                                                        _g134763134767_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134762134765_
                                                         _g134763134767_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137458 '() _L134676_))))
                                  (__tmp137459
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134770_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137459 _L134238_)))
                         _clause134634134673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134629134657_
                                                   _target134626134652_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134620134639_
                                                 _g134621134642_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134620134639_ _g134621134642_)))))
                            (let ()
                              (declare (not safe))
                              (_g134620134639_ _g134621134642_))))))
                (declare (not safe))
                (_g134619134772_ _L134238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134777_
                                                      (let ((__tmp137461
                                                             (let ((__tmp137462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137464
                                   (let ((__tmp137465
                                          (let ((__tmp137467
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134240_ '())))
                                                (__tmp137466
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134618_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137467 __tmp137466))))
                                     (declare (not safe))
                                     (cons __tmp137465 '())))
                                  (__tmp137463
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134775_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137464 __tmp137463))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137462))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137461 _stx133211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134779_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133215_
                                                         _$klass134484_
                                                         _$method-table134486_
                                                         _methods-bind134509_
                                                         _slots-bind134532_
                                                         _specializer-impl134777_))))
                                                (let ((__tmp137469
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133284_)))
                                                      (__tmp137468
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134482_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137469
                                                   '" => "
                                                   __tmp137468))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133216_
                                                   _L133284_
                                                   _specializer-id134482_
                                                   _specializer-impl134779_)))))
                                        _hd134171134233_
                                        _hd134168134225_
                                        _hd134165134217_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134147134177_ _g134148134180_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134147134177_ _g134148134180_)))
                           (let ()
                             (declare (not safe))
                             (_g134147134177_ _g134148134180_)))
                       (let ()
                         (declare (not safe))
                         (_g134147134177_ _g134148134180_)))))
               (let () (declare (not safe)) (_g134147134177_ _g134148134180_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134147134177_
                                                      _g134148134180_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134147134177_
                                              _g134148134180_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134147134177_ _g134148134180_)))))
                           (let ()
                             (declare (not safe))
                             (_g134147134177_ _g134148134180_)))))
                   (let ()
                     (declare (not safe))
                     (_g134147134177_ _g134148134180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134147134177_
                                                      _g134148134180_))))))
                                       (declare (not safe))
                                       (_g134146134782_ _L133283_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133283_))
                                         (let* ((_g134785134838_
                                                 (lambda (_g134786134835_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134786134835_))))
                                                (_g134784135969_
                                                 (lambda (_g134786134841_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134786134841_))
                                                       (let ((_e134794134843_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134786134841_))))
                 (let ((_hd134793134846_
                        (let () (declare (not safe)) (##car _e134794134843_)))
                       (_tl134792134848_
                        (let () (declare (not safe)) (##cdr _e134794134843_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134793134846_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134793134846_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134792134848_))
                               (let ((_e134797134851_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134792134848_))))
                                 (let ((_hd134796134854_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134797134851_)))
                                       (_tl134795134856_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134797134851_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134796134854_))
                                       (let ((_e134800134859_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134796134854_))))
                                         (let ((_hd134799134862_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134800134859_)))
                                               (_tl134798134864_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134800134859_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134799134862_))
                                               (let ((_e134803134867_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134799134862_))))
                                                 (let ((_hd134802134870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134803134867_)))
                                                       (_tl134801134872_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134803134867_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134802134870_))
                                                       (let ((_e134806134875_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134802134870_))))
                 (let ((_hd134805134878_
                        (let () (declare (not safe)) (##car _e134806134875_)))
                       (_tl134804134880_
                        (let () (declare (not safe)) (##cdr _e134806134875_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134804134880_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134801134872_))
                           (let ((_e134809134883_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134801134872_))))
                             (let ((_hd134808134886_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134809134883_)))
                                   (_tl134807134888_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134809134883_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134808134886_))
                                   (let ((_e134812134891_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134808134886_))))
                                     (let ((_hd134811134894_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134812134891_)))
                                           (_tl134810134896_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134812134891_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134811134894_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134811134894_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134810134896_))
                                                   (let ((_e134815134899_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134810134896_))))
                                                     (let ((_hd134814134902_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134815134899_)))
                                                           (_tl134813134904_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134815134899_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134814134902_))
                                                           (let ((_e134818134907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134814134902_))))
                     (let ((_hd134817134910_
                            (let ()
                              (declare (not safe))
                              (##car _e134818134907_)))
                           (_tl134816134912_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134818134907_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134817134910_))
                           (let ((_e134821134915_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134817134910_))))
                             (let ((_hd134820134918_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134821134915_)))
                                   (_tl134819134920_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134821134915_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134820134918_))
                                   (let ((_e134824134923_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134820134918_))))
                                     (let ((_hd134823134926_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134824134923_)))
                                           (_tl134822134928_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134824134923_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134822134928_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134819134920_))
                                               (let ((_e134827134931_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134819134920_))))
                                                 (let ((_hd134826134934_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134827134931_)))
                                                       (_tl134825134936_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134827134931_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134825134936_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134816134912_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134813134904_))
                       (let ((_e134830134939_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134813134904_))))
                         (let ((_hd134829134942_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134830134939_)))
                               (_tl134828134944_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134830134939_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134828134944_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134807134888_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134798134864_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134795134856_))
                                           (let ((_e134833134947_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134795134856_))))
                                             (let ((_hd134832134950_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134833134947_)))
                                                   (_tl134831134952_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134833134947_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134831134952_))
                                                   ((lambda (_L134955_
                                                             _L134956_
                                                             _L134957_
                                                             _L134958_
                                                             _L134959_)
                                                      (let* ((_g134998135060_
                                                              (lambda (_g134999135057_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134999135057_))))
                     (_g134997135966_
                      (lambda (_g134999135063_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134999135063_))
                            (let ((_e135007135065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134999135063_))))
                              (let ((_hd135006135068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135007135065_)))
                                    (_tl135005135070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135007135065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd135006135068_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd135006135068_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl135005135070_))
                                            (let ((_e135010135073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl135005135070_))))
                                              (let ((_hd135009135076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135010135073_)))
                                                    (_tl135008135078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135010135073_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135008135078_))
                                                    (let ((_e135013135081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135008135078_))))
                                                      (let ((_hd135012135084_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135013135081_)))
                    (_tl135011135086_
                     (let () (declare (not safe)) (##cdr _e135013135081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd135012135084_))
                    (let ((_e135016135089_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd135012135084_))))
                      (let ((_hd135015135092_
                             (let ()
                               (declare (not safe))
                               (##car _e135016135089_)))
                            (_tl135014135094_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135016135089_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd135015135092_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd135015135092_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl135014135094_))
                                    (let ((_e135019135097_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl135014135094_))))
                                      (let ((_hd135018135100_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135019135097_)))
                                            (_tl135017135102_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135019135097_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd135018135100_))
                                            (let ((_e135022135105_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd135018135100_))))
                                              (let ((_hd135021135108_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135022135105_)))
                                                    (_tl135020135110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135022135105_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd135021135108_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd135021135108_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl135020135110_))
                                                            (let ((_e135025135113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl135020135110_))))
                      (let ((_hd135024135116_
                             (let ()
                               (declare (not safe))
                               (##car _e135025135113_)))
                            (_tl135023135118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135025135113_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135023135118_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl135017135102_))
                                (let ((_e135028135121_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl135017135102_))))
                                  (let ((_hd135027135124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135028135121_)))
                                        (_tl135026135126_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135028135121_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd135027135124_))
                                        (let ((_e135031135129_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd135027135124_))))
                                          (let ((_hd135030135132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135031135129_)))
                                                (_tl135029135134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135031135129_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd135030135132_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd135030135132_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl135029135134_))
                                                        (let ((_e135034135137_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl135029135134_))))
                  (let ((_hd135033135140_
                         (let () (declare (not safe)) (##car _e135034135137_)))
                        (_tl135032135142_
                         (let ()
                           (declare (not safe))
                           (##cdr _e135034135137_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl135032135142_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135026135126_))
                            (let ((_e135037135145_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135026135126_))))
                              (let ((_hd135036135148_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135037135145_)))
                                    (_tl135035135150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135037135145_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd135036135148_))
                                    (let ((_e135040135153_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd135036135148_))))
                                      (let ((_hd135039135156_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135040135153_)))
                                            (_tl135038135158_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135040135153_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd135039135156_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd135039135156_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135038135158_))
                                                    (let ((_e135043135161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135038135158_))))
                                                      (let ((_hd135042135164_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135043135161_)))
                    (_tl135041135166_
                     (let () (declare (not safe)) (##cdr _e135043135161_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl135041135166_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl135035135150_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl135035135150_))
                                  '1)
                            (let ((_g137366_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135035135150_
                                      '1))))
                              (begin
                                (let ((_g137367_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137366_)
                                             (##vector-length _g137366_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137367_ 2)))
                                      (error "Context expects 2 values"
                                             _g137367_)))
                                (let ((_target135044135169_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137366_ 0)))
                                      (_tl135046135171_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137366_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl135046135171_))
                                      (let ((_e135055135174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl135046135171_))))
                                        (let ((_hd135054135177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135055135174_)))
                                              (_tl135053135179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135055135174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135053135179_))
                                              (letrec ((_loop135047135182_
                                                        (lambda (_hd135045135185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref135051135187_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd135045135185_))
                      (let ((_e135048135190_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd135045135185_))))
                        (let ((_lp-hd135049135193_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135048135190_)))
                              (_lp-tl135050135195_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135048135190_))))
                          (let ((__tmp137439
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd135049135193_
                                         _kw-ref135051135187_))))
                            (declare (not safe))
                            (_loop135047135182_
                             _lp-tl135050135195_
                             __tmp137439))))
                      (let ((_kw-ref135052135198_
                             (reverse _kw-ref135051135187_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135011135086_))
                            ((lambda (_L135201_
                                      _L135202_
                                      _L135203_
                                      _L135204_
                                      _L135205_)
                               (let* ((_kw-count135256_
                                       (length (let ((__tmp137368
                                                      (lambda (_g135248135251_
                                                               _g135249135253_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135248135251_
                                                                _g135249135253_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137368
                                                         '()
                                                         _L135202_))))
                                      (_self-index135258_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135256_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134957_))
                                     (let* ((_g135261135275_
                                             (lambda (_g135262135272_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135262135272_))))
                                            (_g135260135388_
                                             (lambda (_g135262135278_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135262135278_))
                                                   (let ((_e135267135280_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135262135278_))))
                                                     (let ((_hd135266135283_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135267135280_)))
                                                           (_tl135265135285_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135267135280_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135265135285_))
                                                           (let ((_e135270135288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135265135285_))))
                     (let ((_hd135269135291_
                            (let ()
                              (declare (not safe))
                              (##car _e135270135288_)))
                           (_tl135268135293_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135270135288_))))
                       ((lambda (_L135296_ _L135297_)
                          (let ((_self135313_
                                 (list-ref _L135297_ _self-index135258_)))
                            (for-each
                             (lambda (_g135314135316_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135314135316_
                                  'receiver:
                                  _self135313_
                                  'methods:
                                  _method-calls133303_
                                  'slots:
                                  _slot-refs133304_)))
                             _L135296_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133307_))
                                _stx133211_
                                (let* ((_specializer-id135325_
                                        (let* ((_id135319_
                                                (let ((__tmp137412
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133284_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137412
                                                   '"::specialize")))
                                               (_specializer-id135322_
                                                (let ((__tmp137413
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133211_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135319_
                                                   __tmp137413))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135322_))
                                          _specializer-id135322_))
                                       (_$klass135327_
                                        (let ((__tmp137414 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137414)))
                                       (_$method-table135329_
                                        (let ((__tmp137415
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137415)))
                                       (_methods135331_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133303_)))
                                       (_$methods135335_
                                        (map (lambda (_id135333_)
                                               (let ((__tmp137416
                                                      (gensym _id135333_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137416)))
                                             _methods135331_))
                                       (_g137417_
                                        (for-each
                                         (lambda (_g135336135339_
                                                  _g135337135341_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133303_
                                              _g135336135339_
                                              _g135337135341_)))
                                         _methods135331_
                                         _$methods135335_))
                                       (_methods-bind135352_
                                        (map (lambda (_g135344135347_
                                                      _g135345135349_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133213_
                                                  _$klass135327_
                                                  _$method-table135329_
                                                  _g135344135347_
                                                  _g135345135349_)))
                                             _methods135331_
                                             _$methods135335_))
                                       (_slots135354_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133304_)))
                                       (_$slots135358_
                                        (map (lambda (_id135356_)
                                               (let ((__tmp137418
                                                      (gensym _id135356_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137418)))
                                             _slots135354_))
                                       (_g137419_
                                        (for-each
                                         (lambda (_g135359135362_
                                                  _g135360135364_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133304_
                                              _g135359135362_
                                              _g135360135364_)))
                                         _slots135354_
                                         _$slots135358_))
                                       (_slots-bind135375_
                                        (map (lambda (_g135367135370_
                                                      _g135368135372_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133214_
                                                  _$klass135327_
                                                  _g135367135370_
                                                  _g135368135372_)))
                                             _slots135354_
                                             _$slots135358_))
                                       (_specializer-impl135383_
                                        (let* ((_specializer-body135381_
                                                (map (lambda (_g135376135378_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135376135378_
                                                          'receiver:
                                                          _self135313_
                                                          'klass:
                                                          _$klass135327_
                                                          'methods:
                                                          _method-calls133303_
                                                          'slots:
                                                          _slot-refs133304_)))
                                                     _L135296_))
                                               (__tmp137420
                                                (let ((__tmp137421
                                                       (let ((__tmp137423
                                                              (let ((__tmp137424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137436
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134959_ '())))
                                   (__tmp137425
                                    (let ((__tmp137426
                                           (let ((__tmp137427
                                                  (let ((__tmp137429
                                                         (let ((__tmp137430
                                                                (let ((__tmp137435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134958_ '())))
                              (__tmp137431
                               (let ((__tmp137432
                                      (let ((__tmp137433
                                             (let ((__tmp137434
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135297_
                                                            _specializer-body135381_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137434))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137433
                                         _L134957_))))
                                 (declare (not safe))
                                 (cons __tmp137432 '()))))
                          (declare (not safe))
                          (cons __tmp137435 __tmp137431))))
                   (declare (not safe))
                   (cons __tmp137430 '())))
                (__tmp137428
                 (let () (declare (not safe)) (cons _L134956_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137429
                                                          __tmp137428))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137427))))
                                      (declare (not safe))
                                      (cons __tmp137426 '()))))
                               (declare (not safe))
                               (cons __tmp137436 __tmp137425))))
                        (declare (not safe))
                        (cons __tmp137424 '())))
                     (__tmp137422
                      (let () (declare (not safe)) (cons _L134955_ '()))))
                 (declare (not safe))
                 (cons __tmp137423 __tmp137422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137421))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137420
                                           _stx133211_)))
                                       (_specializer-impl135385_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133215_
                                           _$klass135327_
                                           _$method-table135329_
                                           _methods-bind135352_
                                           _slots-bind135375_
                                           _specializer-impl135383_))))
                                  (let ((__tmp137438
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133284_)))
                                        (__tmp137437
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135325_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137438
                                     '" => "
                                     __tmp137437))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133216_
                                     _L133284_
                                     _specializer-id135325_
                                     _specializer-impl135385_))))))
                        _tl135268135293_
                        _hd135269135291_)))
                   (let ()
                     (declare (not safe))
                     (_g135261135275_ _g135262135278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135261135275_
                                                      _g135262135278_))))))
                                       (declare (not safe))
                                       (_g135260135388_ _L134957_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134957_))
                                         (let* ((_g135391135421_
                                                 (lambda (_g135392135418_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135392135418_))))
                                                (_g135390135963_
                                                 (lambda (_g135392135424_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135392135424_))
                                                       (let ((_e135398135426_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135392135424_))))
                 (let ((_hd135397135429_
                        (let () (declare (not safe)) (##car _e135398135426_)))
                       (_tl135396135431_
                        (let () (declare (not safe)) (##cdr _e135398135426_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135396135431_))
                       (let ((_e135401135434_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135396135431_))))
                         (let ((_hd135400135437_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135401135434_)))
                               (_tl135399135439_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135401135434_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135400135437_))
                               (let ((_e135404135442_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135400135437_))))
                                 (let ((_hd135403135445_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135404135442_)))
                                       (_tl135402135447_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135404135442_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135403135445_))
                                       (let ((_e135407135450_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135403135445_))))
                                         (let ((_hd135406135453_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135407135450_)))
                                               (_tl135405135455_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135407135450_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135406135453_))
                                               (let ((_e135410135458_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135406135453_))))
                                                 (let ((_hd135409135461_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135410135458_)))
                                                       (_tl135408135463_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135410135458_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135408135463_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135405135455_))
                                                           (let ((_e135413135466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135405135455_))))
                     (let ((_hd135412135469_
                            (let ()
                              (declare (not safe))
                              (##car _e135413135466_)))
                           (_tl135411135471_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135413135466_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135411135471_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135402135447_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135399135439_))
                                   (let ((_e135416135474_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135399135439_))))
                                     (let ((_hd135415135477_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135416135474_)))
                                           (_tl135414135479_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135416135474_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135414135479_))
                                           ((lambda (_L135482_
                                                     _L135483_
                                                     _L135484_)
                                              (let* ((_g135507135521_
                                                      (lambda (_g135508135518_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135508135518_))))
                                                     (_g135506135562_
                                                      (lambda (_g135508135524_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135508135524_))
                                                            (let ((_e135513135526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135508135524_))))
                      (let ((_hd135512135529_
                             (let ()
                               (declare (not safe))
                               (##car _e135513135526_)))
                            (_tl135511135531_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135513135526_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135511135531_))
                            (let ((_e135516135534_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135511135531_))))
                              (let ((_hd135515135537_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135516135534_)))
                                    (_tl135514135539_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135516135534_))))
                                ((lambda (_L135542_ _L135543_)
                                   (let ((_self135556_
                                          (list-ref
                                           _L135543_
                                           _self-index135258_)))
                                     (for-each
                                      (lambda (_g135557135559_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135557135559_
                                           'receiver:
                                           _self135556_
                                           'methods:
                                           _method-calls133303_
                                           'slots:
                                           _slot-refs133304_)))
                                      _L135542_)))
                                 _tl135514135539_
                                 _hd135515135537_)))
                            (let ()
                              (declare (not safe))
                              (_g135507135521_ _g135508135524_)))))
                    (let ()
                      (declare (not safe))
                      (_g135507135521_ _g135508135524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135506135562_ _L135483_))
                                              (let* ((_g135565135584_
                                                      (lambda (_g135566135581_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135566135581_))))
                                                     (_g135564135689_
                                                      (lambda (_g135566135587_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135566135587_))
                                                            (let ((_e135570135589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135566135587_))))
                      (let ((_hd135569135592_
                             (let ()
                               (declare (not safe))
                               (##car _e135570135589_)))
                            (_tl135568135594_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135570135589_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135568135594_))
                            (let ((_g137369_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135568135594_
                                      '0))))
                              (begin
                                (let ((_g137370_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137369_)
                                             (##vector-length _g137369_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137370_ 2)))
                                      (error "Context expects 2 values"
                                             _g137370_)))
                                (let ((_target135571135597_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137369_ 0)))
                                      (_tl135573135599_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137369_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135573135599_))
                                      (letrec ((_loop135574135602_
                                                (lambda (_hd135572135605_
                                                         _clause135578135607_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135572135605_))
                                                      (let ((_e135575135610_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135572135605_))))
                (let ((_lp-hd135576135613_
                       (let () (declare (not safe)) (##car _e135575135610_)))
                      (_lp-tl135577135615_
                       (let () (declare (not safe)) (##cdr _e135575135610_))))
                  (let ((__tmp137372
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135576135613_ _clause135578135607_))))
                    (declare (not safe))
                    (_loop135574135602_ _lp-tl135577135615_ __tmp137372))))
              (let ((_clause135579135618_ (reverse _clause135578135607_)))
                ((lambda (_L135621_)
                   (for-each
                    (lambda (_clause135634_)
                      (let* ((_g135636135647_
                              (lambda (_g135637135644_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135637135644_))))
                             (_g135635135679_
                              (lambda (_g135637135650_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135637135650_))
                                    (let ((_e135642135652_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135637135650_))))
                                      (let ((_hd135641135655_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135642135652_)))
                                            (_tl135640135657_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135642135652_))))
                                        ((lambda (_L135660_ _L135661_)
                                           (let ((_self135673_
                                                  (list-ref
                                                   _L135661_
                                                   _self-index135258_)))
                                             (for-each
                                              (lambda (_g135674135676_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135674135676_
                                                   'receiver:
                                                   _self135673_
                                                   'methods:
                                                   _method-calls133303_
                                                   'slots:
                                                   _slot-refs133304_)))
                                              _L135660_)))
                                         _tl135640135657_
                                         _hd135641135655_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135636135647_ _g135637135650_))))))
                        (declare (not safe))
                        (_g135635135679_ _clause135634_)))
                    (let ((__tmp137371
                           (lambda (_g135681135684_ _g135682135686_)
                             (let ()
                               (declare (not safe))
                               (cons _g135681135684_ _g135682135686_)))))
                      (declare (not safe))
                      (foldr1 __tmp137371 '() _L135621_))))
                 _clause135579135618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135574135602_
                                           _target135571135597_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135565135584_ _g135566135587_))))))
                            (let ()
                              (declare (not safe))
                              (_g135565135584_ _g135566135587_)))))
                    (let ()
                      (declare (not safe))
                      (_g135565135584_ _g135566135587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135564135689_ _L135482_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133307_))
                                                  _stx133211_
                                                  (let* ((_specializer-id135698_
                                                          (let* ((_id135692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137373
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133284_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137373 '"::specialize")))
                         (_specializer-id135695_
                          (let ((__tmp137374
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133211_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135692_ __tmp137374))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135695_))
                    _specializer-id135695_))
                 (_$klass135700_
                  (let ((__tmp137375 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137375)))
                 (_$method-table135702_
                  (let ((__tmp137376 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137376)))
                 (_methods135704_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133303_)))
                 (_$methods135708_
                  (map (lambda (_id135706_)
                         (let ((__tmp137377 (gensym _id135706_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137377)))
                       _methods135704_))
                 (_g137378_
                  (for-each
                   (lambda (_g135709135712_ _g135710135714_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133303_
                        _g135709135712_
                        _g135710135714_)))
                   _methods135704_
                   _$methods135708_))
                 (_methods-bind135725_
                  (map (lambda (_g135717135720_ _g135718135722_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133213_
                            _$klass135700_
                            _$method-table135702_
                            _g135717135720_
                            _g135718135722_)))
                       _methods135704_
                       _$methods135708_))
                 (_slots135727_
                  (let () (declare (not safe)) (hash-keys _slot-refs133304_)))
                 (_$slots135731_
                  (map (lambda (_id135729_)
                         (let ((__tmp137379 (gensym _id135729_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137379)))
                       _slots135727_))
                 (_g137380_
                  (for-each
                   (lambda (_g135732135735_ _g135733135737_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133304_
                        _g135732135735_
                        _g135733135737_)))
                   _slots135727_
                   _$slots135731_))
                 (_slots-bind135748_
                  (map (lambda (_g135740135743_ _g135741135745_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133214_
                            _$klass135700_
                            _g135740135743_
                            _g135741135745_)))
                       _slots135727_
                       _$slots135731_))
                 (_specializer-lambda-expr135821_
                  (let* ((_g135750135764_
                          (lambda (_g135751135761_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135751135761_))))
                         (_g135749135818_
                          (lambda (_g135751135767_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135751135767_))
                                (let ((_e135756135769_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135751135767_))))
                                  (let ((_hd135755135772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135756135769_)))
                                        (_tl135754135774_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135756135769_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135754135774_))
                                        (let ((_e135759135777_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135754135774_))))
                                          (let ((_hd135758135780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135759135777_)))
                                                (_tl135757135782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135759135777_))))
                                            ((lambda (_L135785_ _L135786_)
                                               (let* ((_self135809_
                                                       (list-ref
                                                        _L135786_
                                                        _self-index135258_))
                                                      (_body135815_
                                                       (map (lambda (_g135810135812_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135810135812_
                         'receiver:
                         _self135809_
                         'klass:
                         _$klass135700_
                         'methods:
                         _method-calls133303_
                         'slots:
                         _slot-refs133304_)))
                    _L135785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137381
                                                        (let ((__tmp137382
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135786_ _body135815_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137381
                                                    _L135483_))))
                                             _tl135757135782_
                                             _hd135758135780_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135750135764_ _g135751135767_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135750135764_ _g135751135767_))))))
                    (declare (not safe))
                    (_g135749135818_ _L135483_)))
                 (_specializer-case-lambda-expr135956_
                  (let* ((_g135823135842_
                          (lambda (_g135824135839_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135824135839_))))
                         (_g135822135953_
                          (lambda (_g135824135845_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135824135845_))
                                (let ((_e135828135847_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135824135845_))))
                                  (let ((_hd135827135850_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135828135847_)))
                                        (_tl135826135852_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135828135847_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135826135852_))
                                        (let ((_g137383_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135826135852_
                                                  '0))))
                                          (begin
                                            (let ((_g137384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137383_)
                                                         (##vector-length
                                                          _g137383_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137384_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137384_)))
                                            (let ((_target135829135855_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137383_
                                                      0)))
                                                  (_tl135831135857_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137383_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135831135857_))
                                                  (letrec ((_loop135832135860_
                                                            (lambda (_hd135830135863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135836135865_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135830135863_))
                          (let ((_e135833135868_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135830135863_))))
                            (let ((_lp-hd135834135871_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135833135868_)))
                                  (_lp-tl135835135873_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135833135868_))))
                              (let ((__tmp137387
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135834135871_
                                             _clause135836135865_))))
                                (declare (not safe))
                                (_loop135832135860_
                                 _lp-tl135835135873_
                                 __tmp137387))))
                          (let ((_clause135837135876_
                                 (reverse _clause135836135865_)))
                            ((lambda (_L135879_)
                               (let* ((_clauses135951_
                                       (map (lambda (_clause135893_)
                                              (let* ((_g135895135906_
                                                      (lambda (_g135896135903_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135896135903_))))
                                                     (_g135894135941_
                                                      (lambda (_g135896135909_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135896135909_))
                                                            (let ((_e135901135911_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135896135909_))))
                      (let ((_hd135900135914_
                             (let ()
                               (declare (not safe))
                               (##car _e135901135911_)))
                            (_tl135899135916_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135901135911_))))
                        ((lambda (_L135919_ _L135920_)
                           (let* ((_self135932_
                                   (list-ref _L135920_ _self-index135258_))
                                  (_body135938_
                                   (map (lambda (_g135933135935_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135933135935_
                                             'receiver:
                                             _self135932_
                                             'klass:
                                             _$klass135700_
                                             'methods:
                                             _method-calls133303_
                                             'slots:
                                             _slot-refs133304_)))
                                        _L135919_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135920_ _body135938_))))
                         _tl135899135916_
                         _hd135900135914_)))
                    (let ()
                      (declare (not safe))
                      (_g135895135906_ _g135896135909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135894135941_
                                                 _clause135893_)))
                                            (let ((__tmp137385
                                                   (lambda (_g135943135946_
                                                            _g135944135948_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135943135946_
                                                             _g135944135948_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137385
                                                      '()
                                                      _L135879_))))
                                      (__tmp137386
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135951_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137386
                                  _L135482_)))
                             _clause135837135876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135832135860_
                                                       _target135829135855_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135823135842_
                                                     _g135824135845_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135823135842_ _g135824135845_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135823135842_ _g135824135845_))))))
                    (declare (not safe))
                    (_g135822135953_ _L135482_)))
                 (_specializer-impl135958_
                  (let ((__tmp137388
                         (let ((__tmp137389
                                (let ((__tmp137391
                                       (let ((__tmp137392
                                              (let ((__tmp137409
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134959_ '())))
                                                    (__tmp137393
                                                     (let ((__tmp137394
                                                            (let ((__tmp137395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137397
                                  (let ((__tmp137398
                                         (let ((__tmp137408
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134958_ '())))
                                               (__tmp137399
                                                (let ((__tmp137400
                                                       (let ((__tmp137401
                                                              (let ((__tmp137402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137404
                                    (let ((__tmp137405
                                           (let ((__tmp137407
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135484_ '())))
                                                 (__tmp137406
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135821_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137407 __tmp137406))))
                                      (declare (not safe))
                                      (cons __tmp137405 '())))
                                   (__tmp137403
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135956_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137404 __tmp137403))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137402))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137401 _stx133211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137400 '()))))
                                           (declare (not safe))
                                           (cons __tmp137408 __tmp137399))))
                                    (declare (not safe))
                                    (cons __tmp137398 '())))
                                 (__tmp137396
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134956_ '()))))
                             (declare (not safe))
                             (cons __tmp137397 __tmp137396))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137395))))
               (declare (not safe))
               (cons __tmp137394 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137409
                                                      __tmp137393))))
                                         (declare (not safe))
                                         (cons __tmp137392 '())))
                                      (__tmp137390
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134955_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137391 __tmp137390))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137389))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137388 _stx133211_)))
                 (_specializer-impl135960_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133215_
                     _$klass135700_
                     _$method-table135702_
                     _methods-bind135725_
                     _slots-bind135748_
                     _specializer-impl135958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137411
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133284_)))
                                                          (__tmp137410
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135698_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137411
                                                       '" => "
                                                       __tmp137410))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133216_
                                                       _L133284_
                                                       _specializer-id135698_
                                                       _specializer-impl135960_)))))
                                            _hd135415135477_
                                            _hd135412135469_
                                            _hd135409135461_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135391135421_
                                              _g135392135424_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135391135421_ _g135392135424_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135391135421_ _g135392135424_)))
                           (let ()
                             (declare (not safe))
                             (_g135391135421_ _g135392135424_)))))
                   (let ()
                     (declare (not safe))
                     (_g135391135421_ _g135392135424_)))
               (let ()
                 (declare (not safe))
                 (_g135391135421_ _g135392135424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135391135421_
                                                  _g135392135424_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135391135421_ _g135392135424_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135391135421_ _g135392135424_)))))
                       (let ()
                         (declare (not safe))
                         (_g135391135421_ _g135392135424_)))))
               (let ()
                 (declare (not safe))
                 (_g135391135421_ _g135392135424_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135390135963_ _L134957_))
                                         _stx133211_))))
                             _hd135054135177_
                             _kw-ref135052135198_
                             _hd135042135164_
                             _hd135033135140_
                             _hd135024135116_)
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop135047135182_
                                                   _target135044135169_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134998135060_
                                                 _g134999135063_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134998135060_ _g134999135063_))))))
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_)))
                        (let ()
                          (declare (not safe))
                          (_g134998135060_ _g134999135063_)))
                    (let ()
                      (declare (not safe))
                      (_g134998135060_ _g134999135063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134998135060_
                                                       _g134999135063_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134998135060_
                                                   _g134999135063_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134998135060_
                                               _g134999135063_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134998135060_ _g134999135063_)))))
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_)))
                        (let ()
                          (declare (not safe))
                          (_g134998135060_ _g134999135063_)))))
                (let ()
                  (declare (not safe))
                  (_g134998135060_ _g134999135063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134998135060_
                                                       _g134999135063_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134998135060_
                                                   _g134999135063_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134998135060_ _g134999135063_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134998135060_ _g134999135063_)))
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_)))))
                    (let ()
                      (declare (not safe))
                      (_g134998135060_ _g134999135063_)))
                (let ()
                  (declare (not safe))
                  (_g134998135060_ _g134999135063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134998135060_
                                                       _g134999135063_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134998135060_
                                               _g134999135063_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134998135060_ _g134999135063_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134998135060_ _g134999135063_)))
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_)))))
                    (let ()
                      (declare (not safe))
                      (_g134998135060_ _g134999135063_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134998135060_
                                                       _g134999135063_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134998135060_
                                               _g134999135063_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134998135060_ _g134999135063_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134998135060_ _g134999135063_)))))
                            (let ()
                              (declare (not safe))
                              (_g134998135060_ _g134999135063_))))))
                (declare (not safe))
                (_g134997135966_ _L134956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134832134950_
                                                    _hd134829134942_
                                                    _hd134826134934_
                                                    _hd134823134926_
                                                    _hd134805134878_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134785134838_
                                                      _g134786134841_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134785134838_
                                              _g134786134841_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134785134838_ _g134786134841_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134785134838_ _g134786134841_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134785134838_ _g134786134841_)))))
                       (let ()
                         (declare (not safe))
                         (_g134785134838_ _g134786134841_)))
                   (let ()
                     (declare (not safe))
                     (_g134785134838_ _g134786134841_)))
               (let ()
                 (declare (not safe))
                 (_g134785134838_ _g134786134841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134785134838_
                                                  _g134786134841_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134785134838_
                                              _g134786134841_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134785134838_ _g134786134841_)))))
                           (let ()
                             (declare (not safe))
                             (_g134785134838_ _g134786134841_)))))
                   (let ()
                     (declare (not safe))
                     (_g134785134838_ _g134786134841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134785134838_
                                                      _g134786134841_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134785134838_
                                                  _g134786134841_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134785134838_
                                              _g134786134841_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134785134838_ _g134786134841_)))))
                           (let ()
                             (declare (not safe))
                             (_g134785134838_ _g134786134841_)))
                       (let ()
                         (declare (not safe))
                         (_g134785134838_ _g134786134841_)))))
               (let ()
                 (declare (not safe))
                 (_g134785134838_ _g134786134841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134785134838_
                                                  _g134786134841_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134785134838_ _g134786134841_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134785134838_ _g134786134841_)))
                           (let ()
                             (declare (not safe))
                             (_g134785134838_ _g134786134841_)))
                       (let ()
                         (declare (not safe))
                         (_g134785134838_ _g134786134841_)))))
               (let ()
                 (declare (not safe))
                 (_g134785134838_ _g134786134841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134784135969_ _L133283_))
                                         _stx133211_))))))))
                  (___kont136193136194_ (lambda () _stx133211_)))
              (let ((___match136222136223_
                     (lambda (_e133225133251_
                              _hd133224133254_
                              _tl133223133256_
                              _e133228133259_
                              _hd133227133262_
                              _tl133226133264_
                              _e133231133267_
                              _hd133230133270_
                              _tl133229133272_
                              _e133234133275_
                              _hd133233133278_
                              _tl133232133280_)
                       (let ((_L133283_ _hd133233133278_)
                             (_L133284_ _hd133230133270_))
                         (if (let ((__tmp137500
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133284_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137500))
                             (___kont136191136192_ _L133283_ _L133284_)
                             (___kont136193136194_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136189136190_))
                    (let ((_e133225133251_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136189136190_))))
                      (let ((_tl133223133256_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133225133251_)))
                            (_hd133224133254_
                             (let ()
                               (declare (not safe))
                               (##car _e133225133251_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133223133256_))
                            (let ((_e133228133259_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133223133256_))))
                              (let ((_tl133226133264_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133228133259_)))
                                    (_hd133227133262_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133228133259_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133227133262_))
                                    (let ((_e133231133267_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133227133262_))))
                                      (let ((_tl133229133272_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133231133267_)))
                                            (_hd133230133270_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133231133267_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133229133272_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133226133264_))
                                                (let ((_e133234133275_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133226133264_))))
                                                  (let ((_tl133232133280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133234133275_)))
                                                        (_hd133233133278_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133234133275_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133232133280_))
                                                        (___match136222136223_
                                                         _e133225133251_
                                                         _hd133224133254_
                                                         _tl133223133256_
                                                         _e133228133259_
                                                         _hd133227133262_
                                                         _tl133226133264_
                                                         _e133231133267_
                                                         _hd133230133270_
                                                         _tl133229133272_
                                                         _e133234133275_
                                                         _hd133233133278_
                                                         _tl133232133280_)
                                                        (___kont136193136194_))))
                                                (___kont136193136194_))
                                            (___kont136193136194_))))
                                    (___kont136193136194_))))
                            (___kont136193136194_))))
                    (___kont136193136194_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132171_ _stx132172_)
        (let* ((___stx136225136226_ _stx132172_)
               (_g132180132402_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136225136226_)))))
          (let ((___kont136227136228_
                 (lambda (_L133159_ _L133160_ _L133161_ _L133162_)
                   (let ((__tmp137502
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132171_ 'methods)))
                         (__tmp137501
                          (let () (declare (not safe)) (gx#stx-e _L133160_))))
                     (declare (not safe))
                     (hash-put! __tmp137502 __tmp137501 '#t))
                   (for-each
                    (lambda (_g133195133197_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132171_ _g133195133197_)))
                    (let ((__tmp137503
                           (lambda (_g133199133202_ _g133200133204_)
                             (let ()
                               (declare (not safe))
                               (cons _g133199133202_ _g133200133204_)))))
                      (declare (not safe))
                      (foldr1 __tmp137503 '() _L133159_)))))
                (___kont136231136232_
                 (lambda (_L132994_ _L132995_ _L132996_ _L132997_ _L132998_)
                   (let ((__tmp137505
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132171_ 'methods)))
                         (__tmp137504
                          (let () (declare (not safe)) (gx#stx-e _L132995_))))
                     (declare (not safe))
                     (hash-put! __tmp137505 __tmp137504 '#t))
                   (for-each
                    (lambda (_g133038133040_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132171_ _g133038133040_)))
                    (let ((__tmp137506
                           (lambda (_g133042133045_ _g133043133047_)
                             (let ()
                               (declare (not safe))
                               (cons _g133042133045_ _g133043133047_)))))
                      (declare (not safe))
                      (foldr1 __tmp137506 '() _L132994_)))))
                (___kont136235136236_
                 (lambda (_L132827_ _L132828_ _L132829_)
                   (let ((__tmp137508
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132171_ 'slots)))
                         (__tmp137507
                          (let () (declare (not safe)) (gx#stx-e _L132827_))))
                     (declare (not safe))
                     (hash-put! __tmp137508 __tmp137507 '#t))))
                (___kont136237136238_
                 (lambda (_L132704_ _L132705_ _L132706_ _L132707_)
                   (let ((__tmp137510
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132171_ 'slots)))
                         (__tmp137509
                          (let () (declare (not safe)) (gx#stx-e _L132705_))))
                     (declare (not safe))
                     (hash-put! __tmp137510 __tmp137509 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132171_ _L132704_))))
                (___kont136239136240_
                 (lambda (_L132578_ _L132579_)
                   (let* ((_accessor132601_
                           (let ((__tmp137511
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132579_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137511)))
                          (_klass132603_
                           (let ((__tmp137512
                                  (##structure-ref
                                   _accessor132601_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132172_
                              __tmp137512)))
                          (_slot132605_
                           (##structure-ref
                            _accessor132601_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137515
                                     (##structure-ref
                                      _accessor132601_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137515))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132603_
                                     _slot132605_))
                                  (##structure-ref
                                   _klass132603_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137514
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132171_ 'slots)))
                               (__tmp137513
                                (##structure-ref
                                 _accessor132601_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137514 __tmp137513 '#t))))))
                (___kont136241136242_
                 (lambda (_L132478_ _L132479_ _L132480_)
                   (let* ((_mutator132507_
                           (let ((__tmp137516
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132480_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137516)))
                          (_klass132509_
                           (let ((__tmp137517
                                  (##structure-ref
                                   _mutator132507_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132172_
                              __tmp137517)))
                          (_slot132511_
                           (##structure-ref
                            _mutator132507_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137519
                                     (##structure-ref
                                      _mutator132507_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137519))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132509_
                                     _slot132511_))
                                  (##structure-ref
                                   _klass132509_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137518
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132171_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137518 _slot132511_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132171_ _L132478_)))))
                (___kont136243136244_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132171_ _stx132172_)))))
            (let* ((___match136724136725_
                    (lambda (_e132376132414_
                             _hd132375132417_
                             _tl132374132419_
                             _e132379132422_
                             _hd132378132425_
                             _tl132377132427_
                             _e132382132430_
                             _hd132381132433_
                             _tl132380132435_
                             _e132385132438_
                             _hd132384132441_
                             _tl132383132443_
                             _e132388132446_
                             _hd132387132449_
                             _tl132386132451_
                             _e132391132454_
                             _hd132390132457_
                             _tl132389132459_
                             _e132394132462_
                             _hd132393132465_
                             _tl132392132467_
                             _e132397132470_
                             _hd132396132473_
                             _tl132395132475_)
                      (let ((_L132478_ _hd132396132473_)
                            (_L132479_ _hd132393132465_)
                            (_L132480_ _hd132384132441_))
                        (if (and (let ((__tmp137521
                                        (let ((__tmp137522
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132480_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137522))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137521
                                    'gxc#!mutator::t))
                                 (let ((__tmp137520
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132171_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132479_
                                    __tmp137520)))
                            (___kont136241136242_
                             _L132478_
                             _L132479_
                             _L132480_)
                            (___kont136243136244_)))))
                   (___match136722136723_
                    (lambda (_e132376132414_
                             _hd132375132417_
                             _tl132374132419_
                             _e132379132422_
                             _hd132378132425_
                             _tl132377132427_
                             _e132382132430_
                             _hd132381132433_
                             _tl132380132435_
                             _e132385132438_
                             _hd132384132441_
                             _tl132383132443_
                             _e132388132446_
                             _hd132387132449_
                             _tl132386132451_
                             _e132391132454_
                             _hd132390132457_
                             _tl132389132459_
                             _e132394132462_
                             _hd132393132465_
                             _tl132392132467_
                             _e132397132470_
                             _hd132396132473_
                             _tl132395132475_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132395132475_))
                          (___match136724136725_
                           _e132376132414_
                           _hd132375132417_
                           _tl132374132419_
                           _e132379132422_
                           _hd132378132425_
                           _tl132377132427_
                           _e132382132430_
                           _hd132381132433_
                           _tl132380132435_
                           _e132385132438_
                           _hd132384132441_
                           _tl132383132443_
                           _e132388132446_
                           _hd132387132449_
                           _tl132386132451_
                           _e132391132454_
                           _hd132390132457_
                           _tl132389132459_
                           _e132394132462_
                           _hd132393132465_
                           _tl132392132467_
                           _e132397132470_
                           _hd132396132473_
                           _tl132395132475_)
                          (___kont136243136244_))))
                   (___match136716136717_
                    (lambda (_e132376132414_
                             _hd132375132417_
                             _tl132374132419_
                             _e132379132422_
                             _hd132378132425_
                             _tl132377132427_
                             _e132382132430_
                             _hd132381132433_
                             _tl132380132435_
                             _e132385132438_
                             _hd132384132441_
                             _tl132383132443_
                             _e132388132446_
                             _hd132387132449_
                             _tl132386132451_
                             _e132391132454_
                             _hd132390132457_
                             _tl132389132459_
                             _e132394132462_
                             _hd132393132465_
                             _tl132392132467_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132386132451_))
                          (let ((_e132397132470_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132386132451_))))
                            (let ((_tl132395132475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132397132470_)))
                                  (_hd132396132473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132397132470_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132395132475_))
                                  (___match136724136725_
                                   _e132376132414_
                                   _hd132375132417_
                                   _tl132374132419_
                                   _e132379132422_
                                   _hd132378132425_
                                   _tl132377132427_
                                   _e132382132430_
                                   _hd132381132433_
                                   _tl132380132435_
                                   _e132385132438_
                                   _hd132384132441_
                                   _tl132383132443_
                                   _e132388132446_
                                   _hd132387132449_
                                   _tl132386132451_
                                   _e132391132454_
                                   _hd132390132457_
                                   _tl132389132459_
                                   _e132394132462_
                                   _hd132393132465_
                                   _tl132392132467_
                                   _e132397132470_
                                   _hd132396132473_
                                   _tl132395132475_)
                                  (___kont136243136244_))))
                          (___kont136243136244_))))
                   (___match136662136663_
                    (lambda (_e132352132522_
                             _hd132351132525_
                             _tl132350132527_
                             _e132355132530_
                             _hd132354132533_
                             _tl132353132535_
                             _e132358132538_
                             _hd132357132541_
                             _tl132356132543_
                             _e132361132546_
                             _hd132360132549_
                             _tl132359132551_
                             _e132364132554_
                             _hd132363132557_
                             _tl132362132559_
                             _e132367132562_
                             _hd132366132565_
                             _tl132365132567_
                             _e132370132570_
                             _hd132369132573_
                             _tl132368132575_)
                      (let ((_L132578_ _hd132369132573_)
                            (_L132579_ _hd132360132549_))
                        (if (and (let ((__tmp137524
                                        (let ((__tmp137525
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132579_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137525))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137524
                                    'gxc#!accessor::t))
                                 (let ((__tmp137523
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132171_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132578_
                                    __tmp137523)))
                            (___kont136239136240_ _L132578_ _L132579_)
                            (___kont136243136244_)))))
                   (___match136660136661_
                    (lambda (_e132352132522_
                             _hd132351132525_
                             _tl132350132527_
                             _e132355132530_
                             _hd132354132533_
                             _tl132353132535_
                             _e132358132538_
                             _hd132357132541_
                             _tl132356132543_
                             _e132361132546_
                             _hd132360132549_
                             _tl132359132551_
                             _e132364132554_
                             _hd132363132557_
                             _tl132362132559_
                             _e132367132562_
                             _hd132366132565_
                             _tl132365132567_
                             _e132370132570_
                             _hd132369132573_
                             _tl132368132575_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132362132559_))
                          (___match136662136663_
                           _e132352132522_
                           _hd132351132525_
                           _tl132350132527_
                           _e132355132530_
                           _hd132354132533_
                           _tl132353132535_
                           _e132358132538_
                           _hd132357132541_
                           _tl132356132543_
                           _e132361132546_
                           _hd132360132549_
                           _tl132359132551_
                           _e132364132554_
                           _hd132363132557_
                           _tl132362132559_
                           _e132367132562_
                           _hd132366132565_
                           _tl132365132567_
                           _e132370132570_
                           _hd132369132573_
                           _tl132368132575_)
                          (___match136716136717_
                           _e132352132522_
                           _hd132351132525_
                           _tl132350132527_
                           _e132355132530_
                           _hd132354132533_
                           _tl132353132535_
                           _e132358132538_
                           _hd132357132541_
                           _tl132356132543_
                           _e132361132546_
                           _hd132360132549_
                           _tl132359132551_
                           _e132364132554_
                           _hd132363132557_
                           _tl132362132559_
                           _e132367132562_
                           _hd132366132565_
                           _tl132365132567_
                           _e132370132570_
                           _hd132369132573_
                           _tl132368132575_))))
                   (___match136606136607_
                    (lambda (_e132317132616_
                             _hd132316132619_
                             _tl132315132621_
                             _e132320132624_
                             _hd132319132627_
                             _tl132318132629_
                             _e132323132632_
                             _hd132322132635_
                             _tl132321132637_
                             _e132326132640_
                             _hd132325132643_
                             _tl132324132645_
                             _e132329132648_
                             _hd132328132651_
                             _tl132327132653_
                             _e132332132656_
                             _hd132331132659_
                             _tl132330132661_
                             _e132335132664_
                             _hd132334132667_
                             _tl132333132669_
                             _e132338132672_
                             _hd132337132675_
                             _tl132336132677_
                             _e132341132680_
                             _hd132340132683_
                             _tl132339132685_
                             _e132344132688_
                             _hd132343132691_
                             _tl132342132693_
                             _e132347132696_
                             _hd132346132699_
                             _tl132345132701_)
                      (let ((_L132704_ _hd132346132699_)
                            (_L132705_ _hd132343132691_)
                            (_L132706_ _hd132334132667_)
                            (_L132707_ _hd132325132643_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132707_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132707_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137526
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132171_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132706_
                                    __tmp137526)))
                            (___kont136237136238_
                             _L132704_
                             _L132705_
                             _L132706_
                             _L132707_)
                            (___kont136243136244_)))))
                   (___match136598136599_
                    (lambda (_e132317132616_
                             _hd132316132619_
                             _tl132315132621_
                             _e132320132624_
                             _hd132319132627_
                             _tl132318132629_
                             _e132323132632_
                             _hd132322132635_
                             _tl132321132637_
                             _e132326132640_
                             _hd132325132643_
                             _tl132324132645_
                             _e132329132648_
                             _hd132328132651_
                             _tl132327132653_
                             _e132332132656_
                             _hd132331132659_
                             _tl132330132661_
                             _e132335132664_
                             _hd132334132667_
                             _tl132333132669_
                             _e132338132672_
                             _hd132337132675_
                             _tl132336132677_
                             _e132341132680_
                             _hd132340132683_
                             _tl132339132685_
                             _e132344132688_
                             _hd132343132691_
                             _tl132342132693_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132336132677_))
                          (let ((_e132347132696_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132336132677_))))
                            (let ((_tl132345132701_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132347132696_)))
                                  (_hd132346132699_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132347132696_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132345132701_))
                                  (___match136606136607_
                                   _e132317132616_
                                   _hd132316132619_
                                   _tl132315132621_
                                   _e132320132624_
                                   _hd132319132627_
                                   _tl132318132629_
                                   _e132323132632_
                                   _hd132322132635_
                                   _tl132321132637_
                                   _e132326132640_
                                   _hd132325132643_
                                   _tl132324132645_
                                   _e132329132648_
                                   _hd132328132651_
                                   _tl132327132653_
                                   _e132332132656_
                                   _hd132331132659_
                                   _tl132330132661_
                                   _e132335132664_
                                   _hd132334132667_
                                   _tl132333132669_
                                   _e132338132672_
                                   _hd132337132675_
                                   _tl132336132677_
                                   _e132341132680_
                                   _hd132340132683_
                                   _tl132339132685_
                                   _e132344132688_
                                   _hd132343132691_
                                   _tl132342132693_
                                   _e132347132696_
                                   _hd132346132699_
                                   _tl132345132701_)
                                  (___kont136243136244_))))
                          (___match136722136723_
                           _e132317132616_
                           _hd132316132619_
                           _tl132315132621_
                           _e132320132624_
                           _hd132319132627_
                           _tl132318132629_
                           _e132323132632_
                           _hd132322132635_
                           _tl132321132637_
                           _e132326132640_
                           _hd132325132643_
                           _tl132324132645_
                           _e132329132648_
                           _hd132328132651_
                           _tl132327132653_
                           _e132332132656_
                           _hd132331132659_
                           _tl132330132661_
                           _e132335132664_
                           _hd132334132667_
                           _tl132333132669_
                           _e132338132672_
                           _hd132337132675_
                           _tl132336132677_))))
                   (___match136520136521_
                    (lambda (_e132283132747_
                             _hd132282132750_
                             _tl132281132752_
                             _e132286132755_
                             _hd132285132758_
                             _tl132284132760_
                             _e132289132763_
                             _hd132288132766_
                             _tl132287132768_
                             _e132292132771_
                             _hd132291132774_
                             _tl132290132776_
                             _e132295132779_
                             _hd132294132782_
                             _tl132293132784_
                             _e132298132787_
                             _hd132297132790_
                             _tl132296132792_
                             _e132301132795_
                             _hd132300132798_
                             _tl132299132800_
                             _e132304132803_
                             _hd132303132806_
                             _tl132302132808_
                             _e132307132811_
                             _hd132306132814_
                             _tl132305132816_
                             _e132310132819_
                             _hd132309132822_
                             _tl132308132824_)
                      (let ((_L132827_ _hd132309132822_)
                            (_L132828_ _hd132300132798_)
                            (_L132829_ _hd132291132774_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132829_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132829_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137527
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132171_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132828_
                                    __tmp137527)))
                            (___kont136235136236_
                             _L132827_
                             _L132828_
                             _L132829_)
                            (___match136724136725_
                             _e132283132747_
                             _hd132282132750_
                             _tl132281132752_
                             _e132286132755_
                             _hd132285132758_
                             _tl132284132760_
                             _e132289132763_
                             _hd132288132766_
                             _tl132287132768_
                             _e132292132771_
                             _hd132291132774_
                             _tl132290132776_
                             _e132295132779_
                             _hd132294132782_
                             _tl132293132784_
                             _e132298132787_
                             _hd132297132790_
                             _tl132296132792_
                             _e132301132795_
                             _hd132300132798_
                             _tl132299132800_
                             _e132304132803_
                             _hd132303132806_
                             _tl132302132808_)))))
                   (___match136518136519_
                    (lambda (_e132283132747_
                             _hd132282132750_
                             _tl132281132752_
                             _e132286132755_
                             _hd132285132758_
                             _tl132284132760_
                             _e132289132763_
                             _hd132288132766_
                             _tl132287132768_
                             _e132292132771_
                             _hd132291132774_
                             _tl132290132776_
                             _e132295132779_
                             _hd132294132782_
                             _tl132293132784_
                             _e132298132787_
                             _hd132297132790_
                             _tl132296132792_
                             _e132301132795_
                             _hd132300132798_
                             _tl132299132800_
                             _e132304132803_
                             _hd132303132806_
                             _tl132302132808_
                             _e132307132811_
                             _hd132306132814_
                             _tl132305132816_
                             _e132310132819_
                             _hd132309132822_
                             _tl132308132824_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132302132808_))
                          (___match136520136521_
                           _e132283132747_
                           _hd132282132750_
                           _tl132281132752_
                           _e132286132755_
                           _hd132285132758_
                           _tl132284132760_
                           _e132289132763_
                           _hd132288132766_
                           _tl132287132768_
                           _e132292132771_
                           _hd132291132774_
                           _tl132290132776_
                           _e132295132779_
                           _hd132294132782_
                           _tl132293132784_
                           _e132298132787_
                           _hd132297132790_
                           _tl132296132792_
                           _e132301132795_
                           _hd132300132798_
                           _tl132299132800_
                           _e132304132803_
                           _hd132303132806_
                           _tl132302132808_
                           _e132307132811_
                           _hd132306132814_
                           _tl132305132816_
                           _e132310132819_
                           _hd132309132822_
                           _tl132308132824_)
                          (___match136598136599_
                           _e132283132747_
                           _hd132282132750_
                           _tl132281132752_
                           _e132286132755_
                           _hd132285132758_
                           _tl132284132760_
                           _e132289132763_
                           _hd132288132766_
                           _tl132287132768_
                           _e132292132771_
                           _hd132291132774_
                           _tl132290132776_
                           _e132295132779_
                           _hd132294132782_
                           _tl132293132784_
                           _e132298132787_
                           _hd132297132790_
                           _tl132296132792_
                           _e132301132795_
                           _hd132300132798_
                           _tl132299132800_
                           _e132304132803_
                           _hd132303132806_
                           _tl132302132808_
                           _e132307132811_
                           _hd132306132814_
                           _tl132305132816_
                           _e132310132819_
                           _hd132309132822_
                           _tl132308132824_))))
                   (___match136508136509_
                    (lambda (_e132283132747_
                             _hd132282132750_
                             _tl132281132752_
                             _e132286132755_
                             _hd132285132758_
                             _tl132284132760_
                             _e132289132763_
                             _hd132288132766_
                             _tl132287132768_
                             _e132292132771_
                             _hd132291132774_
                             _tl132290132776_
                             _e132295132779_
                             _hd132294132782_
                             _tl132293132784_
                             _e132298132787_
                             _hd132297132790_
                             _tl132296132792_
                             _e132301132795_
                             _hd132300132798_
                             _tl132299132800_
                             _e132304132803_
                             _hd132303132806_
                             _tl132302132808_
                             _e132307132811_
                             _hd132306132814_
                             _tl132305132816_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132306132814_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132305132816_))
                              (let ((_e132310132819_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132305132816_))))
                                (let ((_tl132308132824_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132310132819_)))
                                      (_hd132309132822_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132310132819_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132308132824_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132302132808_))
                                          (___match136520136521_
                                           _e132283132747_
                                           _hd132282132750_
                                           _tl132281132752_
                                           _e132286132755_
                                           _hd132285132758_
                                           _tl132284132760_
                                           _e132289132763_
                                           _hd132288132766_
                                           _tl132287132768_
                                           _e132292132771_
                                           _hd132291132774_
                                           _tl132290132776_
                                           _e132295132779_
                                           _hd132294132782_
                                           _tl132293132784_
                                           _e132298132787_
                                           _hd132297132790_
                                           _tl132296132792_
                                           _e132301132795_
                                           _hd132300132798_
                                           _tl132299132800_
                                           _e132304132803_
                                           _hd132303132806_
                                           _tl132302132808_
                                           _e132307132811_
                                           _hd132306132814_
                                           _tl132305132816_
                                           _e132310132819_
                                           _hd132309132822_
                                           _tl132308132824_)
                                          (___match136598136599_
                                           _e132283132747_
                                           _hd132282132750_
                                           _tl132281132752_
                                           _e132286132755_
                                           _hd132285132758_
                                           _tl132284132760_
                                           _e132289132763_
                                           _hd132288132766_
                                           _tl132287132768_
                                           _e132292132771_
                                           _hd132291132774_
                                           _tl132290132776_
                                           _e132295132779_
                                           _hd132294132782_
                                           _tl132293132784_
                                           _e132298132787_
                                           _hd132297132790_
                                           _tl132296132792_
                                           _e132301132795_
                                           _hd132300132798_
                                           _tl132299132800_
                                           _e132304132803_
                                           _hd132303132806_
                                           _tl132302132808_
                                           _e132307132811_
                                           _hd132306132814_
                                           _tl132305132816_
                                           _e132310132819_
                                           _hd132309132822_
                                           _tl132308132824_))
                                      (___match136722136723_
                                       _e132283132747_
                                       _hd132282132750_
                                       _tl132281132752_
                                       _e132286132755_
                                       _hd132285132758_
                                       _tl132284132760_
                                       _e132289132763_
                                       _hd132288132766_
                                       _tl132287132768_
                                       _e132292132771_
                                       _hd132291132774_
                                       _tl132290132776_
                                       _e132295132779_
                                       _hd132294132782_
                                       _tl132293132784_
                                       _e132298132787_
                                       _hd132297132790_
                                       _tl132296132792_
                                       _e132301132795_
                                       _hd132300132798_
                                       _tl132299132800_
                                       _e132304132803_
                                       _hd132303132806_
                                       _tl132302132808_))))
                              (___match136722136723_
                               _e132283132747_
                               _hd132282132750_
                               _tl132281132752_
                               _e132286132755_
                               _hd132285132758_
                               _tl132284132760_
                               _e132289132763_
                               _hd132288132766_
                               _tl132287132768_
                               _e132292132771_
                               _hd132291132774_
                               _tl132290132776_
                               _e132295132779_
                               _hd132294132782_
                               _tl132293132784_
                               _e132298132787_
                               _hd132297132790_
                               _tl132296132792_
                               _e132301132795_
                               _hd132300132798_
                               _tl132299132800_
                               _e132304132803_
                               _hd132303132806_
                               _tl132302132808_))
                          (___match136722136723_
                           _e132283132747_
                           _hd132282132750_
                           _tl132281132752_
                           _e132286132755_
                           _hd132285132758_
                           _tl132284132760_
                           _e132289132763_
                           _hd132288132766_
                           _tl132287132768_
                           _e132292132771_
                           _hd132291132774_
                           _tl132290132776_
                           _e132295132779_
                           _hd132294132782_
                           _tl132293132784_
                           _e132298132787_
                           _hd132297132790_
                           _tl132296132792_
                           _e132301132795_
                           _hd132300132798_
                           _tl132299132800_
                           _e132304132803_
                           _hd132303132806_
                           _tl132302132808_))))
                   (___match136440136441_
                    (lambda (_e132232132866_
                             _hd132231132869_
                             _tl132230132871_
                             _e132235132874_
                             _hd132234132877_
                             _tl132233132879_
                             _e132238132882_
                             _hd132237132885_
                             _tl132236132887_
                             _e132241132890_
                             _hd132240132893_
                             _tl132239132895_
                             _e132244132898_
                             _hd132243132901_
                             _tl132242132903_
                             _e132247132906_
                             _hd132246132909_
                             _tl132245132911_
                             _e132250132914_
                             _hd132249132917_
                             _tl132248132919_
                             _e132253132922_
                             _hd132252132925_
                             _tl132251132927_
                             _e132256132930_
                             _hd132255132933_
                             _tl132254132935_
                             _e132259132938_
                             _hd132258132941_
                             _tl132257132943_
                             _e132262132946_
                             _hd132261132949_
                             _tl132260132951_
                             _e132265132954_
                             _hd132264132957_
                             _tl132263132959_
                             _e132268132962_
                             _hd132267132965_
                             _tl132266132967_
                             ___splice136233136234_
                             _target132269132970_
                             _tl132271132972_)
                      (letrec ((_loop132272132975_
                                (lambda (_hd132270132978_ _args132276132980_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132270132978_))
                                      (let ((_e132273132983_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132270132978_))))
                                        (let ((_lp-tl132275132988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132273132983_)))
                                              (_lp-hd132274132986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132273132983_))))
                                          (let ((__tmp137529
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132274132986_
                                                         _args132276132980_))))
                                            (declare (not safe))
                                            (_loop132272132975_
                                             _lp-tl132275132988_
                                             __tmp137529))))
                                      (let ((_args132277132991_
                                             (reverse _args132276132980_)))
                                        (let ((_L132994_ _args132277132991_)
                                              (_L132995_ _hd132267132965_)
                                              (_L132996_ _hd132258132941_)
                                              (_L132997_ _hd132249132917_)
                                              (_L132998_ _hd132240132893_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132998_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132997_
                                                      'call-method))
                                                   (let ((__tmp137528
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132171_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132996_
                                                      __tmp137528)))
                                              (___kont136231136232_
                                               _L132994_
                                               _L132995_
                                               _L132996_
                                               _L132997_
                                               _L132998_)
                                              (___kont136243136244_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132272132975_ _target132269132970_ '())))))
                   (___match136398136399_
                    (lambda (_e132232132866_
                             _hd132231132869_
                             _tl132230132871_
                             _e132235132874_
                             _hd132234132877_
                             _tl132233132879_
                             _e132238132882_
                             _hd132237132885_
                             _tl132236132887_
                             _e132241132890_
                             _hd132240132893_
                             _tl132239132895_
                             _e132244132898_
                             _hd132243132901_
                             _tl132242132903_
                             _e132247132906_
                             _hd132246132909_
                             _tl132245132911_
                             _e132250132914_
                             _hd132249132917_
                             _tl132248132919_
                             _e132253132922_
                             _hd132252132925_
                             _tl132251132927_
                             _e132256132930_
                             _hd132255132933_
                             _tl132254132935_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132255132933_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132254132935_))
                              (let ((_e132259132938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132254132935_))))
                                (let ((_tl132257132943_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132259132938_)))
                                      (_hd132258132941_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132259132938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132257132943_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132251132927_))
                                          (let ((_e132262132946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132251132927_))))
                                            (let ((_tl132260132951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132262132946_)))
                                                  (_hd132261132949_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132262132946_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132261132949_))
                                                  (let ((_e132265132954_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132261132949_))))
                                                    (let ((_tl132263132959_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132265132954_)))
                                                          (_hd132264132957_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132265132954_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132264132957_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132264132957_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132263132959_))
                          (let ((_e132268132962_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132263132959_))))
                            (let ((_tl132266132967_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132268132962_)))
                                  (_hd132267132965_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132268132962_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132266132967_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132260132951_))
                                      (let ((___splice136233136234_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132260132951_
                                                '0))))
                                        (let ((_tl132271132972_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136233136234_
                                                  '1)))
                                              (_target132269132970_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136233136234_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132271132972_))
                                              (___match136440136441_
                                               _e132232132866_
                                               _hd132231132869_
                                               _tl132230132871_
                                               _e132235132874_
                                               _hd132234132877_
                                               _tl132233132879_
                                               _e132238132882_
                                               _hd132237132885_
                                               _tl132236132887_
                                               _e132241132890_
                                               _hd132240132893_
                                               _tl132239132895_
                                               _e132244132898_
                                               _hd132243132901_
                                               _tl132242132903_
                                               _e132247132906_
                                               _hd132246132909_
                                               _tl132245132911_
                                               _e132250132914_
                                               _hd132249132917_
                                               _tl132248132919_
                                               _e132253132922_
                                               _hd132252132925_
                                               _tl132251132927_
                                               _e132256132930_
                                               _hd132255132933_
                                               _tl132254132935_
                                               _e132259132938_
                                               _hd132258132941_
                                               _tl132257132943_
                                               _e132262132946_
                                               _hd132261132949_
                                               _tl132260132951_
                                               _e132265132954_
                                               _hd132264132957_
                                               _tl132263132959_
                                               _e132268132962_
                                               _hd132267132965_
                                               _tl132266132967_
                                               ___splice136233136234_
                                               _target132269132970_
                                               _tl132271132972_)
                                              (___kont136243136244_))))
                                      (___kont136243136244_))
                                  (___kont136243136244_))))
                          (___kont136243136244_))
                      (___kont136243136244_))
                  (___kont136243136244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136243136244_))))
                                          (___match136722136723_
                                           _e132232132866_
                                           _hd132231132869_
                                           _tl132230132871_
                                           _e132235132874_
                                           _hd132234132877_
                                           _tl132233132879_
                                           _e132238132882_
                                           _hd132237132885_
                                           _tl132236132887_
                                           _e132241132890_
                                           _hd132240132893_
                                           _tl132239132895_
                                           _e132244132898_
                                           _hd132243132901_
                                           _tl132242132903_
                                           _e132247132906_
                                           _hd132246132909_
                                           _tl132245132911_
                                           _e132250132914_
                                           _hd132249132917_
                                           _tl132248132919_
                                           _e132253132922_
                                           _hd132252132925_
                                           _tl132251132927_))
                                      (___match136722136723_
                                       _e132232132866_
                                       _hd132231132869_
                                       _tl132230132871_
                                       _e132235132874_
                                       _hd132234132877_
                                       _tl132233132879_
                                       _e132238132882_
                                       _hd132237132885_
                                       _tl132236132887_
                                       _e132241132890_
                                       _hd132240132893_
                                       _tl132239132895_
                                       _e132244132898_
                                       _hd132243132901_
                                       _tl132242132903_
                                       _e132247132906_
                                       _hd132246132909_
                                       _tl132245132911_
                                       _e132250132914_
                                       _hd132249132917_
                                       _tl132248132919_
                                       _e132253132922_
                                       _hd132252132925_
                                       _tl132251132927_))))
                              (___match136722136723_
                               _e132232132866_
                               _hd132231132869_
                               _tl132230132871_
                               _e132235132874_
                               _hd132234132877_
                               _tl132233132879_
                               _e132238132882_
                               _hd132237132885_
                               _tl132236132887_
                               _e132241132890_
                               _hd132240132893_
                               _tl132239132895_
                               _e132244132898_
                               _hd132243132901_
                               _tl132242132903_
                               _e132247132906_
                               _hd132246132909_
                               _tl132245132911_
                               _e132250132914_
                               _hd132249132917_
                               _tl132248132919_
                               _e132253132922_
                               _hd132252132925_
                               _tl132251132927_))
                          (___match136508136509_
                           _e132232132866_
                           _hd132231132869_
                           _tl132230132871_
                           _e132235132874_
                           _hd132234132877_
                           _tl132233132879_
                           _e132238132882_
                           _hd132237132885_
                           _tl132236132887_
                           _e132241132890_
                           _hd132240132893_
                           _tl132239132895_
                           _e132244132898_
                           _hd132243132901_
                           _tl132242132903_
                           _e132247132906_
                           _hd132246132909_
                           _tl132245132911_
                           _e132250132914_
                           _hd132249132917_
                           _tl132248132919_
                           _e132253132922_
                           _hd132252132925_
                           _tl132251132927_
                           _e132256132930_
                           _hd132255132933_
                           _tl132254132935_))))
                   (___match136330136331_
                    (lambda (_e132188133055_
                             _hd132187133058_
                             _tl132186133060_
                             _e132191133063_
                             _hd132190133066_
                             _tl132189133068_
                             _e132194133071_
                             _hd132193133074_
                             _tl132192133076_
                             _e132197133079_
                             _hd132196133082_
                             _tl132195133084_
                             _e132200133087_
                             _hd132199133090_
                             _tl132198133092_
                             _e132203133095_
                             _hd132202133098_
                             _tl132201133100_
                             _e132206133103_
                             _hd132205133106_
                             _tl132204133108_
                             _e132209133111_
                             _hd132208133114_
                             _tl132207133116_
                             _e132212133119_
                             _hd132211133122_
                             _tl132210133124_
                             _e132215133127_
                             _hd132214133130_
                             _tl132213133132_
                             ___splice136229136230_
                             _target132216133135_
                             _tl132218133137_)
                      (letrec ((_loop132219133140_
                                (lambda (_hd132217133143_ _args132223133145_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132217133143_))
                                      (let ((_e132220133148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132217133143_))))
                                        (let ((_lp-tl132222133153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132220133148_)))
                                              (_lp-hd132221133151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132220133148_))))
                                          (let ((__tmp137531
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132221133151_
                                                         _args132223133145_))))
                                            (declare (not safe))
                                            (_loop132219133140_
                                             _lp-tl132222133153_
                                             __tmp137531))))
                                      (let ((_args132224133156_
                                             (reverse _args132223133145_)))
                                        (let ((_L133159_ _args132224133156_)
                                              (_L133160_ _hd132214133130_)
                                              (_L133161_ _hd132205133106_)
                                              (_L133162_ _hd132196133082_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133162_
                                                      'call-method))
                                                   (let ((__tmp137530
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132171_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133161_
                                                      __tmp137530)))
                                              (___kont136227136228_
                                               _L133159_
                                               _L133160_
                                               _L133161_
                                               _L133162_)
                                              (___match136518136519_
                                               _e132188133055_
                                               _hd132187133058_
                                               _tl132186133060_
                                               _e132191133063_
                                               _hd132190133066_
                                               _tl132189133068_
                                               _e132194133071_
                                               _hd132193133074_
                                               _tl132192133076_
                                               _e132197133079_
                                               _hd132196133082_
                                               _tl132195133084_
                                               _e132200133087_
                                               _hd132199133090_
                                               _tl132198133092_
                                               _e132203133095_
                                               _hd132202133098_
                                               _tl132201133100_
                                               _e132206133103_
                                               _hd132205133106_
                                               _tl132204133108_
                                               _e132209133111_
                                               _hd132208133114_
                                               _tl132207133116_
                                               _e132212133119_
                                               _hd132211133122_
                                               _tl132210133124_
                                               _e132215133127_
                                               _hd132214133130_
                                               _tl132213133132_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132219133140_ _target132216133135_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136225136226_))
                  (let ((_e132188133055_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136225136226_))))
                    (let ((_tl132186133060_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132188133055_)))
                          (_hd132187133058_
                           (let ()
                             (declare (not safe))
                             (##car _e132188133055_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132186133060_))
                          (let ((_e132191133063_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132186133060_))))
                            (let ((_tl132189133068_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132191133063_)))
                                  (_hd132190133066_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132191133063_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132190133066_))
                                  (let ((_e132194133071_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132190133066_))))
                                    (let ((_tl132192133076_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132194133071_)))
                                          (_hd132193133074_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132194133071_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132193133074_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132193133074_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132192133076_))
                                                  (let ((_e132197133079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132192133076_))))
                                                    (let ((_tl132195133084_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132197133079_)))
                                                          (_hd132196133082_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132197133079_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132195133084_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132189133068_))
                      (let ((_e132200133087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132189133068_))))
                        (let ((_tl132198133092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132200133087_)))
                              (_hd132199133090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132200133087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132199133090_))
                              (let ((_e132203133095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132199133090_))))
                                (let ((_tl132201133100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132203133095_)))
                                      (_hd132202133098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132203133095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132202133098_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132202133098_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132201133100_))
                                              (let ((_e132206133103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132201133100_))))
                                                (let ((_tl132204133108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132206133103_)))
                                                      (_hd132205133106_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132206133103_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132204133108_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132198133092_))
                                                          (let ((_e132209133111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132198133092_))))
                    (let ((_tl132207133116_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132209133111_)))
                          (_hd132208133114_
                           (let ()
                             (declare (not safe))
                             (##car _e132209133111_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132208133114_))
                          (let ((_e132212133119_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132208133114_))))
                            (let ((_tl132210133124_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132212133119_)))
                                  (_hd132211133122_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132212133119_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132211133122_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132211133122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132210133124_))
                                          (let ((_e132215133127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132210133124_))))
                                            (let ((_tl132213133132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132215133127_)))
                                                  (_hd132214133130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132215133127_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132213133132_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132207133116_))
                                                      (let ((___splice136229136230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132207133116_ '0))))
                (let ((_tl132218133137_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136229136230_ '1)))
                      (_target132216133135_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136229136230_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132218133137_))
                      (___match136330136331_
                       _e132188133055_
                       _hd132187133058_
                       _tl132186133060_
                       _e132191133063_
                       _hd132190133066_
                       _tl132189133068_
                       _e132194133071_
                       _hd132193133074_
                       _tl132192133076_
                       _e132197133079_
                       _hd132196133082_
                       _tl132195133084_
                       _e132200133087_
                       _hd132199133090_
                       _tl132198133092_
                       _e132203133095_
                       _hd132202133098_
                       _tl132201133100_
                       _e132206133103_
                       _hd132205133106_
                       _tl132204133108_
                       _e132209133111_
                       _hd132208133114_
                       _tl132207133116_
                       _e132212133119_
                       _hd132211133122_
                       _tl132210133124_
                       _e132215133127_
                       _hd132214133130_
                       _tl132213133132_
                       ___splice136229136230_
                       _target132216133135_
                       _tl132218133137_)
                      (___match136518136519_
                       _e132188133055_
                       _hd132187133058_
                       _tl132186133060_
                       _e132191133063_
                       _hd132190133066_
                       _tl132189133068_
                       _e132194133071_
                       _hd132193133074_
                       _tl132192133076_
                       _e132197133079_
                       _hd132196133082_
                       _tl132195133084_
                       _e132200133087_
                       _hd132199133090_
                       _tl132198133092_
                       _e132203133095_
                       _hd132202133098_
                       _tl132201133100_
                       _e132206133103_
                       _hd132205133106_
                       _tl132204133108_
                       _e132209133111_
                       _hd132208133114_
                       _tl132207133116_
                       _e132212133119_
                       _hd132211133122_
                       _tl132210133124_
                       _e132215133127_
                       _hd132214133130_
                       _tl132213133132_))))
              (___match136518136519_
               _e132188133055_
               _hd132187133058_
               _tl132186133060_
               _e132191133063_
               _hd132190133066_
               _tl132189133068_
               _e132194133071_
               _hd132193133074_
               _tl132192133076_
               _e132197133079_
               _hd132196133082_
               _tl132195133084_
               _e132200133087_
               _hd132199133090_
               _tl132198133092_
               _e132203133095_
               _hd132202133098_
               _tl132201133100_
               _e132206133103_
               _hd132205133106_
               _tl132204133108_
               _e132209133111_
               _hd132208133114_
               _tl132207133116_
               _e132212133119_
               _hd132211133122_
               _tl132210133124_
               _e132215133127_
               _hd132214133130_
               _tl132213133132_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136722136723_
                                                   _e132188133055_
                                                   _hd132187133058_
                                                   _tl132186133060_
                                                   _e132191133063_
                                                   _hd132190133066_
                                                   _tl132189133068_
                                                   _e132194133071_
                                                   _hd132193133074_
                                                   _tl132192133076_
                                                   _e132197133079_
                                                   _hd132196133082_
                                                   _tl132195133084_
                                                   _e132200133087_
                                                   _hd132199133090_
                                                   _tl132198133092_
                                                   _e132203133095_
                                                   _hd132202133098_
                                                   _tl132201133100_
                                                   _e132206133103_
                                                   _hd132205133106_
                                                   _tl132204133108_
                                                   _e132209133111_
                                                   _hd132208133114_
                                                   _tl132207133116_))))
                                          (___match136722136723_
                                           _e132188133055_
                                           _hd132187133058_
                                           _tl132186133060_
                                           _e132191133063_
                                           _hd132190133066_
                                           _tl132189133068_
                                           _e132194133071_
                                           _hd132193133074_
                                           _tl132192133076_
                                           _e132197133079_
                                           _hd132196133082_
                                           _tl132195133084_
                                           _e132200133087_
                                           _hd132199133090_
                                           _tl132198133092_
                                           _e132203133095_
                                           _hd132202133098_
                                           _tl132201133100_
                                           _e132206133103_
                                           _hd132205133106_
                                           _tl132204133108_
                                           _e132209133111_
                                           _hd132208133114_
                                           _tl132207133116_))
                                      (___match136398136399_
                                       _e132188133055_
                                       _hd132187133058_
                                       _tl132186133060_
                                       _e132191133063_
                                       _hd132190133066_
                                       _tl132189133068_
                                       _e132194133071_
                                       _hd132193133074_
                                       _tl132192133076_
                                       _e132197133079_
                                       _hd132196133082_
                                       _tl132195133084_
                                       _e132200133087_
                                       _hd132199133090_
                                       _tl132198133092_
                                       _e132203133095_
                                       _hd132202133098_
                                       _tl132201133100_
                                       _e132206133103_
                                       _hd132205133106_
                                       _tl132204133108_
                                       _e132209133111_
                                       _hd132208133114_
                                       _tl132207133116_
                                       _e132212133119_
                                       _hd132211133122_
                                       _tl132210133124_))
                                  (___match136722136723_
                                   _e132188133055_
                                   _hd132187133058_
                                   _tl132186133060_
                                   _e132191133063_
                                   _hd132190133066_
                                   _tl132189133068_
                                   _e132194133071_
                                   _hd132193133074_
                                   _tl132192133076_
                                   _e132197133079_
                                   _hd132196133082_
                                   _tl132195133084_
                                   _e132200133087_
                                   _hd132199133090_
                                   _tl132198133092_
                                   _e132203133095_
                                   _hd132202133098_
                                   _tl132201133100_
                                   _e132206133103_
                                   _hd132205133106_
                                   _tl132204133108_
                                   _e132209133111_
                                   _hd132208133114_
                                   _tl132207133116_))))
                          (___match136722136723_
                           _e132188133055_
                           _hd132187133058_
                           _tl132186133060_
                           _e132191133063_
                           _hd132190133066_
                           _tl132189133068_
                           _e132194133071_
                           _hd132193133074_
                           _tl132192133076_
                           _e132197133079_
                           _hd132196133082_
                           _tl132195133084_
                           _e132200133087_
                           _hd132199133090_
                           _tl132198133092_
                           _e132203133095_
                           _hd132202133098_
                           _tl132201133100_
                           _e132206133103_
                           _hd132205133106_
                           _tl132204133108_
                           _e132209133111_
                           _hd132208133114_
                           _tl132207133116_))))
                  (___match136660136661_
                   _e132188133055_
                   _hd132187133058_
                   _tl132186133060_
                   _e132191133063_
                   _hd132190133066_
                   _tl132189133068_
                   _e132194133071_
                   _hd132193133074_
                   _tl132192133076_
                   _e132197133079_
                   _hd132196133082_
                   _tl132195133084_
                   _e132200133087_
                   _hd132199133090_
                   _tl132198133092_
                   _e132203133095_
                   _hd132202133098_
                   _tl132201133100_
                   _e132206133103_
                   _hd132205133106_
                   _tl132204133108_))
              (___kont136243136244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136243136244_))
                                          (___kont136243136244_))
                                      (___kont136243136244_))))
                              (___kont136243136244_))))
                      (___kont136243136244_))
                  (___kont136243136244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136243136244_))
                                              (___kont136243136244_))
                                          (___kont136243136244_))))
                                  (___kont136243136244_))))
                          (___kont136243136244_))))
                  (___kont136243136244_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131110_ _stx131111_)
        (letrec ((_force-e131113_
                  (lambda (_target132169_)
                    (let ((__tmp137532
                           (let ((__tmp137536
                                  (let ((__tmp137537
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137537)))
                                 (__tmp137533
                                  (let ((__tmp137534
                                         (let ((__tmp137535
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132169_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137535))))
                                    (declare (not safe))
                                    (cons __tmp137534 '()))))
                             (declare (not safe))
                             (cons __tmp137536 __tmp137533))))
                      (declare (not safe))
                      (cons '%#call __tmp137532)))))
          (let* ((___stx136727136728_ _stx131111_)
                 (_g131121131343_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136727136728_)))))
            (let ((___kont136729136730_
                   (lambda (_L132115_ _L132116_ _L132117_ _L132118_)
                     (let ((_$method132163_
                            (let ((__tmp137539
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131110_ 'methods)))
                                  (__tmp137538
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132116_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137539 __tmp137538)))
                           (_args132164_
                            (map (lambda (_g132151132153_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131110_
                                      _g132151132153_)))
                                 (let ((__tmp137540
                                        (lambda (_g132155132158_
                                                 _g132156132160_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132155132158_
                                                  _g132156132160_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137540 '() _L132115_)))))
                       (let ((__tmp137541
                              (let ((__tmp137542
                                     (let ((__tmp137547
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131113_
                                               _$method132163_)))
                                           (__tmp137543
                                            (let ((__tmp137544
                                                   (let ((__tmp137545
                                                          (let ((__tmp137546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131110_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137546 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137545))))
                                              (declare (not safe))
                                              (cons __tmp137544
                                                    _args132164_))))
                                       (declare (not safe))
                                       (cons __tmp137547 __tmp137543))))
                                (declare (not safe))
                                (cons '%#call __tmp137542))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137541 _stx131111_)))))
                  (___kont136733136734_
                   (lambda (_L131947_ _L131948_ _L131949_ _L131950_ _L131951_)
                     (let ((_$method132003_
                            (let ((__tmp137549
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131110_ 'methods)))
                                  (__tmp137548
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131948_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137549 __tmp137548)))
                           (_args132004_
                            (map (lambda (_g131991131993_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131110_
                                      _g131991131993_)))
                                 (let ((__tmp137550
                                        (lambda (_g131995131998_
                                                 _g131996132000_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131995131998_
                                                  _g131996132000_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137550 '() _L131947_)))))
                       (let ((__tmp137551
                              (let ((__tmp137552
                                     (let ((__tmp137559
                                            (let ((__tmp137560
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137560)))
                                           (__tmp137553
                                            (let ((__tmp137558
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131113_
                                                      _$method132003_)))
                                                  (__tmp137554
                                                   (let ((__tmp137555
                                                          (let ((__tmp137556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137557
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131110_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137557 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137555
                                                           _args132004_))))
                                              (declare (not safe))
                                              (cons __tmp137558 __tmp137554))))
                                       (declare (not safe))
                                       (cons __tmp137559 __tmp137553))))
                                (declare (not safe))
                                (cons '%#call __tmp137552))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137551 _stx131111_)))))
                  (___kont136737136738_
                   (lambda (_L131778_ _L131779_ _L131780_)
                     (let* ((_$field131812_
                             (let ((__tmp137562
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131110_ 'slots)))
                                   (__tmp137561
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131778_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137562 __tmp137561)))
                            (__tmp137563
                             (let ((__tmp137564
                                    (let ((__tmp137572
                                           (let ((__tmp137573
                                                  (let ((__tmp137574
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131110_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137574 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137573)))
                                          (__tmp137565
                                           (let ((__tmp137570
                                                  (let ((__tmp137571
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137571)))
                                                 (__tmp137566
                                                  (let ((__tmp137567
                                                         (let ((__tmp137568
                                                                (let ((__tmp137569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131110_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137569 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137567 '()))))
                                             (declare (not safe))
                                             (cons __tmp137570 __tmp137566))))
                                      (declare (not safe))
                                      (cons __tmp137572 __tmp137565))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137564))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137563 _stx131111_))))
                  (___kont136739136740_
                   (lambda (_L131652_ _L131653_ _L131654_ _L131655_)
                     (let ((_$field131690_
                            (let ((__tmp137576
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131110_ 'slots)))
                                  (__tmp137575
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131653_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137576 __tmp137575)))
                           (_expr131691_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131110_ _L131652_))))
                       (let ((__tmp137577
                              (let ((__tmp137578
                                     (let ((__tmp137587
                                            (let ((__tmp137588
                                                   (let ((__tmp137589
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131110_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137589 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137588)))
                                           (__tmp137579
                                            (let ((__tmp137585
                                                   (let ((__tmp137586
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137586)))
                                                  (__tmp137580
                                                   (let ((__tmp137582
                                                          (let ((__tmp137583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137584
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131110_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137584 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137583)))
                 (__tmp137581
                  (let () (declare (not safe)) (cons _expr131691_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137582
                                                           __tmp137581))))
                                              (declare (not safe))
                                              (cons __tmp137585 __tmp137580))))
                                       (declare (not safe))
                                       (cons __tmp137587 __tmp137579))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137578))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137577 _stx131111_)))))
                  (___kont136741136742_
                   (lambda (_L131524_ _L131525_)
                     (let* ((_accessor131547_
                             (let ((__tmp137590
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131525_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137590)))
                            (_klass131549_
                             (let ((__tmp137591
                                    (##structure-ref
                                     _accessor131547_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131111_
                                __tmp137591)))
                            (_slot131551_
                             (##structure-ref
                              _accessor131547_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137605
                                       (##structure-ref
                                        _accessor131547_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137605))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131549_
                                       _slot131551_))
                                    (##structure-ref
                                     _klass131549_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131111_
                           (let* ((_$field131557_
                                   (let ((__tmp137592
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137592 _slot131551_)))
                                  (__tmp137593
                                   (let ((__tmp137594
                                          (let ((__tmp137602
                                                 (let ((__tmp137603
                                                        (let ((__tmp137604
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131110_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137604 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137603)))
                                                (__tmp137595
                                                 (let ((__tmp137600
                                                        (let ((__tmp137601
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131557_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137601)))
               (__tmp137596
                (let ((__tmp137597
                       (let ((__tmp137598
                              (let ((__tmp137599
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131110_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137599 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137598))))
                  (declare (not safe))
                  (cons __tmp137597 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137600
                                                         __tmp137596))))
                                            (declare (not safe))
                                            (cons __tmp137602 __tmp137595))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137594))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137593
                              _stx131111_))))))
                  (___kont136743136744_
                   (lambda (_L131419_ _L131420_ _L131421_)
                     (let* ((_mutator131449_
                             (let ((__tmp137606
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131421_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137606)))
                            (_klass131451_
                             (let ((__tmp137607
                                    (##structure-ref
                                     _mutator131449_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131111_
                                __tmp137607)))
                            (_slot131453_
                             (##structure-ref
                              _mutator131449_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131455_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131110_ _L131419_))))
                       (if (and (let ((__tmp137632
                                       (##structure-ref
                                        _mutator131449_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137632))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131451_
                                       _slot131453_))
                                    (##structure-ref
                                     _klass131451_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137622
                                  (let ((__tmp137623
                                         (let ((__tmp137629
                                                (let ((__tmp137631
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137630
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131421_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137631
                                                        __tmp137630)))
                                               (__tmp137624
                                                (let ((__tmp137626
                                                       (let ((__tmp137628
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137627
                      (let () (declare (not safe)) (cons _L131420_ '()))))
                 (declare (not safe))
                 (cons __tmp137628 __tmp137627)))
              (__tmp137625
               (let () (declare (not safe)) (cons _expr131455_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137626
                                                        __tmp137625))))
                                           (declare (not safe))
                                           (cons __tmp137629 __tmp137624))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137623))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137622 _stx131111_))
                           (let* ((_$field131461_
                                   (let ((__tmp137608
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137608 _slot131453_)))
                                  (__tmp137609
                                   (let ((__tmp137610
                                          (let ((__tmp137619
                                                 (let ((__tmp137620
                                                        (let ((__tmp137621
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131110_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137620)))
                                                (__tmp137611
                                                 (let ((__tmp137617
                                                        (let ((__tmp137618
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131461_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137618)))
               (__tmp137612
                (let ((__tmp137614
                       (let ((__tmp137615
                              (let ((__tmp137616
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131110_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137616 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137615)))
                      (__tmp137613
                       (let () (declare (not safe)) (cons _expr131455_ '()))))
                  (declare (not safe))
                  (cons __tmp137614 __tmp137613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137617
                                                         __tmp137612))))
                                            (declare (not safe))
                                            (cons __tmp137619 __tmp137611))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137610))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137609
                              _stx131111_))))))
                  (___kont136745136746_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131110_ _stx131111_)))))
              (let* ((___match137226137227_
                      (lambda (_e131317131355_
                               _hd131316131358_
                               _tl131315131360_
                               _e131320131363_
                               _hd131319131366_
                               _tl131318131368_
                               _e131323131371_
                               _hd131322131374_
                               _tl131321131376_
                               _e131326131379_
                               _hd131325131382_
                               _tl131324131384_
                               _e131329131387_
                               _hd131328131390_
                               _tl131327131392_
                               _e131332131395_
                               _hd131331131398_
                               _tl131330131400_
                               _e131335131403_
                               _hd131334131406_
                               _tl131333131408_
                               _e131338131411_
                               _hd131337131414_
                               _tl131336131416_)
                        (let ((_L131419_ _hd131337131414_)
                              (_L131420_ _hd131334131406_)
                              (_L131421_ _hd131325131382_))
                          (if (and (let ((__tmp137635
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131420_
                                      __tmp137635))
                                   (let ((__tmp137633
                                          (let ((__tmp137634
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131421_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137634))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137633
                                      'gxc#!mutator::t)))
                              (___kont136743136744_
                               _L131419_
                               _L131420_
                               _L131421_)
                              (___kont136745136746_)))))
                     (___match137224137225_
                      (lambda (_e131317131355_
                               _hd131316131358_
                               _tl131315131360_
                               _e131320131363_
                               _hd131319131366_
                               _tl131318131368_
                               _e131323131371_
                               _hd131322131374_
                               _tl131321131376_
                               _e131326131379_
                               _hd131325131382_
                               _tl131324131384_
                               _e131329131387_
                               _hd131328131390_
                               _tl131327131392_
                               _e131332131395_
                               _hd131331131398_
                               _tl131330131400_
                               _e131335131403_
                               _hd131334131406_
                               _tl131333131408_
                               _e131338131411_
                               _hd131337131414_
                               _tl131336131416_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131336131416_))
                            (___match137226137227_
                             _e131317131355_
                             _hd131316131358_
                             _tl131315131360_
                             _e131320131363_
                             _hd131319131366_
                             _tl131318131368_
                             _e131323131371_
                             _hd131322131374_
                             _tl131321131376_
                             _e131326131379_
                             _hd131325131382_
                             _tl131324131384_
                             _e131329131387_
                             _hd131328131390_
                             _tl131327131392_
                             _e131332131395_
                             _hd131331131398_
                             _tl131330131400_
                             _e131335131403_
                             _hd131334131406_
                             _tl131333131408_
                             _e131338131411_
                             _hd131337131414_
                             _tl131336131416_)
                            (___kont136745136746_))))
                     (___match137218137219_
                      (lambda (_e131317131355_
                               _hd131316131358_
                               _tl131315131360_
                               _e131320131363_
                               _hd131319131366_
                               _tl131318131368_
                               _e131323131371_
                               _hd131322131374_
                               _tl131321131376_
                               _e131326131379_
                               _hd131325131382_
                               _tl131324131384_
                               _e131329131387_
                               _hd131328131390_
                               _tl131327131392_
                               _e131332131395_
                               _hd131331131398_
                               _tl131330131400_
                               _e131335131403_
                               _hd131334131406_
                               _tl131333131408_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131327131392_))
                            (let ((_e131338131411_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131327131392_))))
                              (let ((_tl131336131416_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131338131411_)))
                                    (_hd131337131414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131338131411_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131336131416_))
                                    (___match137226137227_
                                     _e131317131355_
                                     _hd131316131358_
                                     _tl131315131360_
                                     _e131320131363_
                                     _hd131319131366_
                                     _tl131318131368_
                                     _e131323131371_
                                     _hd131322131374_
                                     _tl131321131376_
                                     _e131326131379_
                                     _hd131325131382_
                                     _tl131324131384_
                                     _e131329131387_
                                     _hd131328131390_
                                     _tl131327131392_
                                     _e131332131395_
                                     _hd131331131398_
                                     _tl131330131400_
                                     _e131335131403_
                                     _hd131334131406_
                                     _tl131333131408_
                                     _e131338131411_
                                     _hd131337131414_
                                     _tl131336131416_)
                                    (___kont136745136746_))))
                            (___kont136745136746_))))
                     (___match137164137165_
                      (lambda (_e131293131468_
                               _hd131292131471_
                               _tl131291131473_
                               _e131296131476_
                               _hd131295131479_
                               _tl131294131481_
                               _e131299131484_
                               _hd131298131487_
                               _tl131297131489_
                               _e131302131492_
                               _hd131301131495_
                               _tl131300131497_
                               _e131305131500_
                               _hd131304131503_
                               _tl131303131505_
                               _e131308131508_
                               _hd131307131511_
                               _tl131306131513_
                               _e131311131516_
                               _hd131310131519_
                               _tl131309131521_)
                        (let ((_L131524_ _hd131310131519_)
                              (_L131525_ _hd131301131495_))
                          (if (and (let ((__tmp137638
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131524_
                                      __tmp137638))
                                   (let ((__tmp137636
                                          (let ((__tmp137637
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131525_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137637))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137636
                                      'gxc#!accessor::t)))
                              (___kont136741136742_ _L131524_ _L131525_)
                              (___kont136745136746_)))))
                     (___match137162137163_
                      (lambda (_e131293131468_
                               _hd131292131471_
                               _tl131291131473_
                               _e131296131476_
                               _hd131295131479_
                               _tl131294131481_
                               _e131299131484_
                               _hd131298131487_
                               _tl131297131489_
                               _e131302131492_
                               _hd131301131495_
                               _tl131300131497_
                               _e131305131500_
                               _hd131304131503_
                               _tl131303131505_
                               _e131308131508_
                               _hd131307131511_
                               _tl131306131513_
                               _e131311131516_
                               _hd131310131519_
                               _tl131309131521_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131303131505_))
                            (___match137164137165_
                             _e131293131468_
                             _hd131292131471_
                             _tl131291131473_
                             _e131296131476_
                             _hd131295131479_
                             _tl131294131481_
                             _e131299131484_
                             _hd131298131487_
                             _tl131297131489_
                             _e131302131492_
                             _hd131301131495_
                             _tl131300131497_
                             _e131305131500_
                             _hd131304131503_
                             _tl131303131505_
                             _e131308131508_
                             _hd131307131511_
                             _tl131306131513_
                             _e131311131516_
                             _hd131310131519_
                             _tl131309131521_)
                            (___match137218137219_
                             _e131293131468_
                             _hd131292131471_
                             _tl131291131473_
                             _e131296131476_
                             _hd131295131479_
                             _tl131294131481_
                             _e131299131484_
                             _hd131298131487_
                             _tl131297131489_
                             _e131302131492_
                             _hd131301131495_
                             _tl131300131497_
                             _e131305131500_
                             _hd131304131503_
                             _tl131303131505_
                             _e131308131508_
                             _hd131307131511_
                             _tl131306131513_
                             _e131311131516_
                             _hd131310131519_
                             _tl131309131521_))))
                     (___match137108137109_
                      (lambda (_e131258131564_
                               _hd131257131567_
                               _tl131256131569_
                               _e131261131572_
                               _hd131260131575_
                               _tl131259131577_
                               _e131264131580_
                               _hd131263131583_
                               _tl131262131585_
                               _e131267131588_
                               _hd131266131591_
                               _tl131265131593_
                               _e131270131596_
                               _hd131269131599_
                               _tl131268131601_
                               _e131273131604_
                               _hd131272131607_
                               _tl131271131609_
                               _e131276131612_
                               _hd131275131615_
                               _tl131274131617_
                               _e131279131620_
                               _hd131278131623_
                               _tl131277131625_
                               _e131282131628_
                               _hd131281131631_
                               _tl131280131633_
                               _e131285131636_
                               _hd131284131639_
                               _tl131283131641_
                               _e131288131644_
                               _hd131287131647_
                               _tl131286131649_)
                        (let ((_L131652_ _hd131287131647_)
                              (_L131653_ _hd131284131639_)
                              (_L131654_ _hd131275131615_)
                              (_L131655_ _hd131266131591_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131655_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131655_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137639
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131654_
                                      __tmp137639)))
                              (___kont136739136740_
                               _L131652_
                               _L131653_
                               _L131654_
                               _L131655_)
                              (___kont136745136746_)))))
                     (___match137100137101_
                      (lambda (_e131258131564_
                               _hd131257131567_
                               _tl131256131569_
                               _e131261131572_
                               _hd131260131575_
                               _tl131259131577_
                               _e131264131580_
                               _hd131263131583_
                               _tl131262131585_
                               _e131267131588_
                               _hd131266131591_
                               _tl131265131593_
                               _e131270131596_
                               _hd131269131599_
                               _tl131268131601_
                               _e131273131604_
                               _hd131272131607_
                               _tl131271131609_
                               _e131276131612_
                               _hd131275131615_
                               _tl131274131617_
                               _e131279131620_
                               _hd131278131623_
                               _tl131277131625_
                               _e131282131628_
                               _hd131281131631_
                               _tl131280131633_
                               _e131285131636_
                               _hd131284131639_
                               _tl131283131641_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131277131625_))
                            (let ((_e131288131644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131277131625_))))
                              (let ((_tl131286131649_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131288131644_)))
                                    (_hd131287131647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131288131644_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131286131649_))
                                    (___match137108137109_
                                     _e131258131564_
                                     _hd131257131567_
                                     _tl131256131569_
                                     _e131261131572_
                                     _hd131260131575_
                                     _tl131259131577_
                                     _e131264131580_
                                     _hd131263131583_
                                     _tl131262131585_
                                     _e131267131588_
                                     _hd131266131591_
                                     _tl131265131593_
                                     _e131270131596_
                                     _hd131269131599_
                                     _tl131268131601_
                                     _e131273131604_
                                     _hd131272131607_
                                     _tl131271131609_
                                     _e131276131612_
                                     _hd131275131615_
                                     _tl131274131617_
                                     _e131279131620_
                                     _hd131278131623_
                                     _tl131277131625_
                                     _e131282131628_
                                     _hd131281131631_
                                     _tl131280131633_
                                     _e131285131636_
                                     _hd131284131639_
                                     _tl131283131641_
                                     _e131288131644_
                                     _hd131287131647_
                                     _tl131286131649_)
                                    (___kont136745136746_))))
                            (___match137224137225_
                             _e131258131564_
                             _hd131257131567_
                             _tl131256131569_
                             _e131261131572_
                             _hd131260131575_
                             _tl131259131577_
                             _e131264131580_
                             _hd131263131583_
                             _tl131262131585_
                             _e131267131588_
                             _hd131266131591_
                             _tl131265131593_
                             _e131270131596_
                             _hd131269131599_
                             _tl131268131601_
                             _e131273131604_
                             _hd131272131607_
                             _tl131271131609_
                             _e131276131612_
                             _hd131275131615_
                             _tl131274131617_
                             _e131279131620_
                             _hd131278131623_
                             _tl131277131625_))))
                     (___match137022137023_
                      (lambda (_e131224131698_
                               _hd131223131701_
                               _tl131222131703_
                               _e131227131706_
                               _hd131226131709_
                               _tl131225131711_
                               _e131230131714_
                               _hd131229131717_
                               _tl131228131719_
                               _e131233131722_
                               _hd131232131725_
                               _tl131231131727_
                               _e131236131730_
                               _hd131235131733_
                               _tl131234131735_
                               _e131239131738_
                               _hd131238131741_
                               _tl131237131743_
                               _e131242131746_
                               _hd131241131749_
                               _tl131240131751_
                               _e131245131754_
                               _hd131244131757_
                               _tl131243131759_
                               _e131248131762_
                               _hd131247131765_
                               _tl131246131767_
                               _e131251131770_
                               _hd131250131773_
                               _tl131249131775_)
                        (let ((_L131778_ _hd131250131773_)
                              (_L131779_ _hd131241131749_)
                              (_L131780_ _hd131232131725_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131780_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131780_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137640
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131110_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131779_
                                      __tmp137640)))
                              (___kont136737136738_
                               _L131778_
                               _L131779_
                               _L131780_)
                              (___match137226137227_
                               _e131224131698_
                               _hd131223131701_
                               _tl131222131703_
                               _e131227131706_
                               _hd131226131709_
                               _tl131225131711_
                               _e131230131714_
                               _hd131229131717_
                               _tl131228131719_
                               _e131233131722_
                               _hd131232131725_
                               _tl131231131727_
                               _e131236131730_
                               _hd131235131733_
                               _tl131234131735_
                               _e131239131738_
                               _hd131238131741_
                               _tl131237131743_
                               _e131242131746_
                               _hd131241131749_
                               _tl131240131751_
                               _e131245131754_
                               _hd131244131757_
                               _tl131243131759_)))))
                     (___match137020137021_
                      (lambda (_e131224131698_
                               _hd131223131701_
                               _tl131222131703_
                               _e131227131706_
                               _hd131226131709_
                               _tl131225131711_
                               _e131230131714_
                               _hd131229131717_
                               _tl131228131719_
                               _e131233131722_
                               _hd131232131725_
                               _tl131231131727_
                               _e131236131730_
                               _hd131235131733_
                               _tl131234131735_
                               _e131239131738_
                               _hd131238131741_
                               _tl131237131743_
                               _e131242131746_
                               _hd131241131749_
                               _tl131240131751_
                               _e131245131754_
                               _hd131244131757_
                               _tl131243131759_
                               _e131248131762_
                               _hd131247131765_
                               _tl131246131767_
                               _e131251131770_
                               _hd131250131773_
                               _tl131249131775_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131243131759_))
                            (___match137022137023_
                             _e131224131698_
                             _hd131223131701_
                             _tl131222131703_
                             _e131227131706_
                             _hd131226131709_
                             _tl131225131711_
                             _e131230131714_
                             _hd131229131717_
                             _tl131228131719_
                             _e131233131722_
                             _hd131232131725_
                             _tl131231131727_
                             _e131236131730_
                             _hd131235131733_
                             _tl131234131735_
                             _e131239131738_
                             _hd131238131741_
                             _tl131237131743_
                             _e131242131746_
                             _hd131241131749_
                             _tl131240131751_
                             _e131245131754_
                             _hd131244131757_
                             _tl131243131759_
                             _e131248131762_
                             _hd131247131765_
                             _tl131246131767_
                             _e131251131770_
                             _hd131250131773_
                             _tl131249131775_)
                            (___match137100137101_
                             _e131224131698_
                             _hd131223131701_
                             _tl131222131703_
                             _e131227131706_
                             _hd131226131709_
                             _tl131225131711_
                             _e131230131714_
                             _hd131229131717_
                             _tl131228131719_
                             _e131233131722_
                             _hd131232131725_
                             _tl131231131727_
                             _e131236131730_
                             _hd131235131733_
                             _tl131234131735_
                             _e131239131738_
                             _hd131238131741_
                             _tl131237131743_
                             _e131242131746_
                             _hd131241131749_
                             _tl131240131751_
                             _e131245131754_
                             _hd131244131757_
                             _tl131243131759_
                             _e131248131762_
                             _hd131247131765_
                             _tl131246131767_
                             _e131251131770_
                             _hd131250131773_
                             _tl131249131775_))))
                     (___match137010137011_
                      (lambda (_e131224131698_
                               _hd131223131701_
                               _tl131222131703_
                               _e131227131706_
                               _hd131226131709_
                               _tl131225131711_
                               _e131230131714_
                               _hd131229131717_
                               _tl131228131719_
                               _e131233131722_
                               _hd131232131725_
                               _tl131231131727_
                               _e131236131730_
                               _hd131235131733_
                               _tl131234131735_
                               _e131239131738_
                               _hd131238131741_
                               _tl131237131743_
                               _e131242131746_
                               _hd131241131749_
                               _tl131240131751_
                               _e131245131754_
                               _hd131244131757_
                               _tl131243131759_
                               _e131248131762_
                               _hd131247131765_
                               _tl131246131767_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131247131765_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131246131767_))
                                (let ((_e131251131770_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131246131767_))))
                                  (let ((_tl131249131775_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131251131770_)))
                                        (_hd131250131773_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131251131770_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131249131775_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131243131759_))
                                            (___match137022137023_
                                             _e131224131698_
                                             _hd131223131701_
                                             _tl131222131703_
                                             _e131227131706_
                                             _hd131226131709_
                                             _tl131225131711_
                                             _e131230131714_
                                             _hd131229131717_
                                             _tl131228131719_
                                             _e131233131722_
                                             _hd131232131725_
                                             _tl131231131727_
                                             _e131236131730_
                                             _hd131235131733_
                                             _tl131234131735_
                                             _e131239131738_
                                             _hd131238131741_
                                             _tl131237131743_
                                             _e131242131746_
                                             _hd131241131749_
                                             _tl131240131751_
                                             _e131245131754_
                                             _hd131244131757_
                                             _tl131243131759_
                                             _e131248131762_
                                             _hd131247131765_
                                             _tl131246131767_
                                             _e131251131770_
                                             _hd131250131773_
                                             _tl131249131775_)
                                            (___match137100137101_
                                             _e131224131698_
                                             _hd131223131701_
                                             _tl131222131703_
                                             _e131227131706_
                                             _hd131226131709_
                                             _tl131225131711_
                                             _e131230131714_
                                             _hd131229131717_
                                             _tl131228131719_
                                             _e131233131722_
                                             _hd131232131725_
                                             _tl131231131727_
                                             _e131236131730_
                                             _hd131235131733_
                                             _tl131234131735_
                                             _e131239131738_
                                             _hd131238131741_
                                             _tl131237131743_
                                             _e131242131746_
                                             _hd131241131749_
                                             _tl131240131751_
                                             _e131245131754_
                                             _hd131244131757_
                                             _tl131243131759_
                                             _e131248131762_
                                             _hd131247131765_
                                             _tl131246131767_
                                             _e131251131770_
                                             _hd131250131773_
                                             _tl131249131775_))
                                        (___match137224137225_
                                         _e131224131698_
                                         _hd131223131701_
                                         _tl131222131703_
                                         _e131227131706_
                                         _hd131226131709_
                                         _tl131225131711_
                                         _e131230131714_
                                         _hd131229131717_
                                         _tl131228131719_
                                         _e131233131722_
                                         _hd131232131725_
                                         _tl131231131727_
                                         _e131236131730_
                                         _hd131235131733_
                                         _tl131234131735_
                                         _e131239131738_
                                         _hd131238131741_
                                         _tl131237131743_
                                         _e131242131746_
                                         _hd131241131749_
                                         _tl131240131751_
                                         _e131245131754_
                                         _hd131244131757_
                                         _tl131243131759_))))
                                (___match137224137225_
                                 _e131224131698_
                                 _hd131223131701_
                                 _tl131222131703_
                                 _e131227131706_
                                 _hd131226131709_
                                 _tl131225131711_
                                 _e131230131714_
                                 _hd131229131717_
                                 _tl131228131719_
                                 _e131233131722_
                                 _hd131232131725_
                                 _tl131231131727_
                                 _e131236131730_
                                 _hd131235131733_
                                 _tl131234131735_
                                 _e131239131738_
                                 _hd131238131741_
                                 _tl131237131743_
                                 _e131242131746_
                                 _hd131241131749_
                                 _tl131240131751_
                                 _e131245131754_
                                 _hd131244131757_
                                 _tl131243131759_))
                            (___match137224137225_
                             _e131224131698_
                             _hd131223131701_
                             _tl131222131703_
                             _e131227131706_
                             _hd131226131709_
                             _tl131225131711_
                             _e131230131714_
                             _hd131229131717_
                             _tl131228131719_
                             _e131233131722_
                             _hd131232131725_
                             _tl131231131727_
                             _e131236131730_
                             _hd131235131733_
                             _tl131234131735_
                             _e131239131738_
                             _hd131238131741_
                             _tl131237131743_
                             _e131242131746_
                             _hd131241131749_
                             _tl131240131751_
                             _e131245131754_
                             _hd131244131757_
                             _tl131243131759_))))
                     (___match136942136943_
                      (lambda (_e131173131819_
                               _hd131172131822_
                               _tl131171131824_
                               _e131176131827_
                               _hd131175131830_
                               _tl131174131832_
                               _e131179131835_
                               _hd131178131838_
                               _tl131177131840_
                               _e131182131843_
                               _hd131181131846_
                               _tl131180131848_
                               _e131185131851_
                               _hd131184131854_
                               _tl131183131856_
                               _e131188131859_
                               _hd131187131862_
                               _tl131186131864_
                               _e131191131867_
                               _hd131190131870_
                               _tl131189131872_
                               _e131194131875_
                               _hd131193131878_
                               _tl131192131880_
                               _e131197131883_
                               _hd131196131886_
                               _tl131195131888_
                               _e131200131891_
                               _hd131199131894_
                               _tl131198131896_
                               _e131203131899_
                               _hd131202131902_
                               _tl131201131904_
                               _e131206131907_
                               _hd131205131910_
                               _tl131204131912_
                               _e131209131915_
                               _hd131208131918_
                               _tl131207131920_
                               ___splice136735136736_
                               _target131210131923_
                               _tl131212131925_)
                        (letrec ((_loop131213131928_
                                  (lambda (_hd131211131931_ _args131217131933_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131211131931_))
                                        (let ((_e131214131936_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131211131931_))))
                                          (let ((_lp-tl131216131941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131214131936_)))
                                                (_lp-hd131215131939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131214131936_))))
                                            (let ((__tmp137642
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131215131939_
                                                           _args131217131933_))))
                                              (declare (not safe))
                                              (_loop131213131928_
                                               _lp-tl131216131941_
                                               __tmp137642))))
                                        (let ((_args131218131944_
                                               (reverse _args131217131933_)))
                                          (let ((_L131947_ _args131218131944_)
                                                (_L131948_ _hd131208131918_)
                                                (_L131949_ _hd131199131894_)
                                                (_L131950_ _hd131190131870_)
                                                (_L131951_ _hd131181131846_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131951_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131950_
                                                        'call-method))
                                                     (let ((__tmp137641
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131110_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131949_
                                                        __tmp137641)))
                                                (___kont136733136734_
                                                 _L131947_
                                                 _L131948_
                                                 _L131949_
                                                 _L131950_
                                                 _L131951_)
                                                (___kont136745136746_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131213131928_ _target131210131923_ '())))))
                     (___match136900136901_
                      (lambda (_e131173131819_
                               _hd131172131822_
                               _tl131171131824_
                               _e131176131827_
                               _hd131175131830_
                               _tl131174131832_
                               _e131179131835_
                               _hd131178131838_
                               _tl131177131840_
                               _e131182131843_
                               _hd131181131846_
                               _tl131180131848_
                               _e131185131851_
                               _hd131184131854_
                               _tl131183131856_
                               _e131188131859_
                               _hd131187131862_
                               _tl131186131864_
                               _e131191131867_
                               _hd131190131870_
                               _tl131189131872_
                               _e131194131875_
                               _hd131193131878_
                               _tl131192131880_
                               _e131197131883_
                               _hd131196131886_
                               _tl131195131888_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131196131886_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131195131888_))
                                (let ((_e131200131891_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131195131888_))))
                                  (let ((_tl131198131896_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131200131891_)))
                                        (_hd131199131894_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131200131891_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131198131896_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131192131880_))
                                            (let ((_e131203131899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131192131880_))))
                                              (let ((_tl131201131904_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131203131899_)))
                                                    (_hd131202131902_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131203131899_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131202131902_))
                                                    (let ((_e131206131907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131202131902_))))
                                                      (let ((_tl131204131912_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131206131907_)))
                    (_hd131205131910_
                     (let () (declare (not safe)) (##car _e131206131907_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131205131910_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131205131910_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131204131912_))
                            (let ((_e131209131915_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131204131912_))))
                              (let ((_tl131207131920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131209131915_)))
                                    (_hd131208131918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131209131915_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131207131920_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131201131904_))
                                        (let ((___splice136735136736_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131201131904_
                                                  '0))))
                                          (let ((_tl131212131925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136735136736_
                                                    '1)))
                                                (_target131210131923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136735136736_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131212131925_))
                                                (___match136942136943_
                                                 _e131173131819_
                                                 _hd131172131822_
                                                 _tl131171131824_
                                                 _e131176131827_
                                                 _hd131175131830_
                                                 _tl131174131832_
                                                 _e131179131835_
                                                 _hd131178131838_
                                                 _tl131177131840_
                                                 _e131182131843_
                                                 _hd131181131846_
                                                 _tl131180131848_
                                                 _e131185131851_
                                                 _hd131184131854_
                                                 _tl131183131856_
                                                 _e131188131859_
                                                 _hd131187131862_
                                                 _tl131186131864_
                                                 _e131191131867_
                                                 _hd131190131870_
                                                 _tl131189131872_
                                                 _e131194131875_
                                                 _hd131193131878_
                                                 _tl131192131880_
                                                 _e131197131883_
                                                 _hd131196131886_
                                                 _tl131195131888_
                                                 _e131200131891_
                                                 _hd131199131894_
                                                 _tl131198131896_
                                                 _e131203131899_
                                                 _hd131202131902_
                                                 _tl131201131904_
                                                 _e131206131907_
                                                 _hd131205131910_
                                                 _tl131204131912_
                                                 _e131209131915_
                                                 _hd131208131918_
                                                 _tl131207131920_
                                                 ___splice136735136736_
                                                 _target131210131923_
                                                 _tl131212131925_)
                                                (___kont136745136746_))))
                                        (___kont136745136746_))
                                    (___kont136745136746_))))
                            (___kont136745136746_))
                        (___kont136745136746_))
                    (___kont136745136746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136745136746_))))
                                            (___match137224137225_
                                             _e131173131819_
                                             _hd131172131822_
                                             _tl131171131824_
                                             _e131176131827_
                                             _hd131175131830_
                                             _tl131174131832_
                                             _e131179131835_
                                             _hd131178131838_
                                             _tl131177131840_
                                             _e131182131843_
                                             _hd131181131846_
                                             _tl131180131848_
                                             _e131185131851_
                                             _hd131184131854_
                                             _tl131183131856_
                                             _e131188131859_
                                             _hd131187131862_
                                             _tl131186131864_
                                             _e131191131867_
                                             _hd131190131870_
                                             _tl131189131872_
                                             _e131194131875_
                                             _hd131193131878_
                                             _tl131192131880_))
                                        (___match137224137225_
                                         _e131173131819_
                                         _hd131172131822_
                                         _tl131171131824_
                                         _e131176131827_
                                         _hd131175131830_
                                         _tl131174131832_
                                         _e131179131835_
                                         _hd131178131838_
                                         _tl131177131840_
                                         _e131182131843_
                                         _hd131181131846_
                                         _tl131180131848_
                                         _e131185131851_
                                         _hd131184131854_
                                         _tl131183131856_
                                         _e131188131859_
                                         _hd131187131862_
                                         _tl131186131864_
                                         _e131191131867_
                                         _hd131190131870_
                                         _tl131189131872_
                                         _e131194131875_
                                         _hd131193131878_
                                         _tl131192131880_))))
                                (___match137224137225_
                                 _e131173131819_
                                 _hd131172131822_
                                 _tl131171131824_
                                 _e131176131827_
                                 _hd131175131830_
                                 _tl131174131832_
                                 _e131179131835_
                                 _hd131178131838_
                                 _tl131177131840_
                                 _e131182131843_
                                 _hd131181131846_
                                 _tl131180131848_
                                 _e131185131851_
                                 _hd131184131854_
                                 _tl131183131856_
                                 _e131188131859_
                                 _hd131187131862_
                                 _tl131186131864_
                                 _e131191131867_
                                 _hd131190131870_
                                 _tl131189131872_
                                 _e131194131875_
                                 _hd131193131878_
                                 _tl131192131880_))
                            (___match137010137011_
                             _e131173131819_
                             _hd131172131822_
                             _tl131171131824_
                             _e131176131827_
                             _hd131175131830_
                             _tl131174131832_
                             _e131179131835_
                             _hd131178131838_
                             _tl131177131840_
                             _e131182131843_
                             _hd131181131846_
                             _tl131180131848_
                             _e131185131851_
                             _hd131184131854_
                             _tl131183131856_
                             _e131188131859_
                             _hd131187131862_
                             _tl131186131864_
                             _e131191131867_
                             _hd131190131870_
                             _tl131189131872_
                             _e131194131875_
                             _hd131193131878_
                             _tl131192131880_
                             _e131197131883_
                             _hd131196131886_
                             _tl131195131888_))))
                     (___match136832136833_
                      (lambda (_e131129132011_
                               _hd131128132014_
                               _tl131127132016_
                               _e131132132019_
                               _hd131131132022_
                               _tl131130132024_
                               _e131135132027_
                               _hd131134132030_
                               _tl131133132032_
                               _e131138132035_
                               _hd131137132038_
                               _tl131136132040_
                               _e131141132043_
                               _hd131140132046_
                               _tl131139132048_
                               _e131144132051_
                               _hd131143132054_
                               _tl131142132056_
                               _e131147132059_
                               _hd131146132062_
                               _tl131145132064_
                               _e131150132067_
                               _hd131149132070_
                               _tl131148132072_
                               _e131153132075_
                               _hd131152132078_
                               _tl131151132080_
                               _e131156132083_
                               _hd131155132086_
                               _tl131154132088_
                               ___splice136731136732_
                               _target131157132091_
                               _tl131159132093_)
                        (letrec ((_loop131160132096_
                                  (lambda (_hd131158132099_ _args131164132101_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131158132099_))
                                        (let ((_e131161132104_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131158132099_))))
                                          (let ((_lp-tl131163132109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131161132104_)))
                                                (_lp-hd131162132107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131161132104_))))
                                            (let ((__tmp137644
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131162132107_
                                                           _args131164132101_))))
                                              (declare (not safe))
                                              (_loop131160132096_
                                               _lp-tl131163132109_
                                               __tmp137644))))
                                        (let ((_args131165132112_
                                               (reverse _args131164132101_)))
                                          (let ((_L132115_ _args131165132112_)
                                                (_L132116_ _hd131155132086_)
                                                (_L132117_ _hd131146132062_)
                                                (_L132118_ _hd131137132038_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132118_
                                                        'call-method))
                                                     (let ((__tmp137643
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131110_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132117_
                                                        __tmp137643)))
                                                (___kont136729136730_
                                                 _L132115_
                                                 _L132116_
                                                 _L132117_
                                                 _L132118_)
                                                (___match137020137021_
                                                 _e131129132011_
                                                 _hd131128132014_
                                                 _tl131127132016_
                                                 _e131132132019_
                                                 _hd131131132022_
                                                 _tl131130132024_
                                                 _e131135132027_
                                                 _hd131134132030_
                                                 _tl131133132032_
                                                 _e131138132035_
                                                 _hd131137132038_
                                                 _tl131136132040_
                                                 _e131141132043_
                                                 _hd131140132046_
                                                 _tl131139132048_
                                                 _e131144132051_
                                                 _hd131143132054_
                                                 _tl131142132056_
                                                 _e131147132059_
                                                 _hd131146132062_
                                                 _tl131145132064_
                                                 _e131150132067_
                                                 _hd131149132070_
                                                 _tl131148132072_
                                                 _e131153132075_
                                                 _hd131152132078_
                                                 _tl131151132080_
                                                 _e131156132083_
                                                 _hd131155132086_
                                                 _tl131154132088_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131160132096_ _target131157132091_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136727136728_))
                    (let ((_e131129132011_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136727136728_))))
                      (let ((_tl131127132016_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131129132011_)))
                            (_hd131128132014_
                             (let ()
                               (declare (not safe))
                               (##car _e131129132011_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131127132016_))
                            (let ((_e131132132019_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131127132016_))))
                              (let ((_tl131130132024_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131132132019_)))
                                    (_hd131131132022_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131132132019_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131131132022_))
                                    (let ((_e131135132027_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131131132022_))))
                                      (let ((_tl131133132032_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131135132027_)))
                                            (_hd131134132030_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131135132027_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131134132030_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131134132030_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131133132032_))
                                                    (let ((_e131138132035_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131133132032_))))
                                                      (let ((_tl131136132040_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131138132035_)))
                    (_hd131137132038_
                     (let () (declare (not safe)) (##car _e131138132035_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131136132040_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131130132024_))
                        (let ((_e131141132043_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131130132024_))))
                          (let ((_tl131139132048_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131141132043_)))
                                (_hd131140132046_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131141132043_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131140132046_))
                                (let ((_e131144132051_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131140132046_))))
                                  (let ((_tl131142132056_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131144132051_)))
                                        (_hd131143132054_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131144132051_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131143132054_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131143132054_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131142132056_))
                                                (let ((_e131147132059_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131142132056_))))
                                                  (let ((_tl131145132064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131147132059_)))
                                                        (_hd131146132062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131147132059_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131145132064_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131139132048_))
                                                            (let ((_e131150132067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131139132048_))))
                      (let ((_tl131148132072_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131150132067_)))
                            (_hd131149132070_
                             (let ()
                               (declare (not safe))
                               (##car _e131150132067_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131149132070_))
                            (let ((_e131153132075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131149132070_))))
                              (let ((_tl131151132080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131153132075_)))
                                    (_hd131152132078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131153132075_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131152132078_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131152132078_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131151132080_))
                                            (let ((_e131156132083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131151132080_))))
                                              (let ((_tl131154132088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131156132083_)))
                                                    (_hd131155132086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131156132083_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131154132088_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131148132072_))
                                                        (let ((___splice136731136732_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131148132072_ '0))))
                  (let ((_tl131159132093_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136731136732_ '1)))
                        (_target131157132091_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136731136732_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131159132093_))
                        (___match136832136833_
                         _e131129132011_
                         _hd131128132014_
                         _tl131127132016_
                         _e131132132019_
                         _hd131131132022_
                         _tl131130132024_
                         _e131135132027_
                         _hd131134132030_
                         _tl131133132032_
                         _e131138132035_
                         _hd131137132038_
                         _tl131136132040_
                         _e131141132043_
                         _hd131140132046_
                         _tl131139132048_
                         _e131144132051_
                         _hd131143132054_
                         _tl131142132056_
                         _e131147132059_
                         _hd131146132062_
                         _tl131145132064_
                         _e131150132067_
                         _hd131149132070_
                         _tl131148132072_
                         _e131153132075_
                         _hd131152132078_
                         _tl131151132080_
                         _e131156132083_
                         _hd131155132086_
                         _tl131154132088_
                         ___splice136731136732_
                         _target131157132091_
                         _tl131159132093_)
                        (___match137020137021_
                         _e131129132011_
                         _hd131128132014_
                         _tl131127132016_
                         _e131132132019_
                         _hd131131132022_
                         _tl131130132024_
                         _e131135132027_
                         _hd131134132030_
                         _tl131133132032_
                         _e131138132035_
                         _hd131137132038_
                         _tl131136132040_
                         _e131141132043_
                         _hd131140132046_
                         _tl131139132048_
                         _e131144132051_
                         _hd131143132054_
                         _tl131142132056_
                         _e131147132059_
                         _hd131146132062_
                         _tl131145132064_
                         _e131150132067_
                         _hd131149132070_
                         _tl131148132072_
                         _e131153132075_
                         _hd131152132078_
                         _tl131151132080_
                         _e131156132083_
                         _hd131155132086_
                         _tl131154132088_))))
                (___match137020137021_
                 _e131129132011_
                 _hd131128132014_
                 _tl131127132016_
                 _e131132132019_
                 _hd131131132022_
                 _tl131130132024_
                 _e131135132027_
                 _hd131134132030_
                 _tl131133132032_
                 _e131138132035_
                 _hd131137132038_
                 _tl131136132040_
                 _e131141132043_
                 _hd131140132046_
                 _tl131139132048_
                 _e131144132051_
                 _hd131143132054_
                 _tl131142132056_
                 _e131147132059_
                 _hd131146132062_
                 _tl131145132064_
                 _e131150132067_
                 _hd131149132070_
                 _tl131148132072_
                 _e131153132075_
                 _hd131152132078_
                 _tl131151132080_
                 _e131156132083_
                 _hd131155132086_
                 _tl131154132088_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137224137225_
                                                     _e131129132011_
                                                     _hd131128132014_
                                                     _tl131127132016_
                                                     _e131132132019_
                                                     _hd131131132022_
                                                     _tl131130132024_
                                                     _e131135132027_
                                                     _hd131134132030_
                                                     _tl131133132032_
                                                     _e131138132035_
                                                     _hd131137132038_
                                                     _tl131136132040_
                                                     _e131141132043_
                                                     _hd131140132046_
                                                     _tl131139132048_
                                                     _e131144132051_
                                                     _hd131143132054_
                                                     _tl131142132056_
                                                     _e131147132059_
                                                     _hd131146132062_
                                                     _tl131145132064_
                                                     _e131150132067_
                                                     _hd131149132070_
                                                     _tl131148132072_))))
                                            (___match137224137225_
                                             _e131129132011_
                                             _hd131128132014_
                                             _tl131127132016_
                                             _e131132132019_
                                             _hd131131132022_
                                             _tl131130132024_
                                             _e131135132027_
                                             _hd131134132030_
                                             _tl131133132032_
                                             _e131138132035_
                                             _hd131137132038_
                                             _tl131136132040_
                                             _e131141132043_
                                             _hd131140132046_
                                             _tl131139132048_
                                             _e131144132051_
                                             _hd131143132054_
                                             _tl131142132056_
                                             _e131147132059_
                                             _hd131146132062_
                                             _tl131145132064_
                                             _e131150132067_
                                             _hd131149132070_
                                             _tl131148132072_))
                                        (___match136900136901_
                                         _e131129132011_
                                         _hd131128132014_
                                         _tl131127132016_
                                         _e131132132019_
                                         _hd131131132022_
                                         _tl131130132024_
                                         _e131135132027_
                                         _hd131134132030_
                                         _tl131133132032_
                                         _e131138132035_
                                         _hd131137132038_
                                         _tl131136132040_
                                         _e131141132043_
                                         _hd131140132046_
                                         _tl131139132048_
                                         _e131144132051_
                                         _hd131143132054_
                                         _tl131142132056_
                                         _e131147132059_
                                         _hd131146132062_
                                         _tl131145132064_
                                         _e131150132067_
                                         _hd131149132070_
                                         _tl131148132072_
                                         _e131153132075_
                                         _hd131152132078_
                                         _tl131151132080_))
                                    (___match137224137225_
                                     _e131129132011_
                                     _hd131128132014_
                                     _tl131127132016_
                                     _e131132132019_
                                     _hd131131132022_
                                     _tl131130132024_
                                     _e131135132027_
                                     _hd131134132030_
                                     _tl131133132032_
                                     _e131138132035_
                                     _hd131137132038_
                                     _tl131136132040_
                                     _e131141132043_
                                     _hd131140132046_
                                     _tl131139132048_
                                     _e131144132051_
                                     _hd131143132054_
                                     _tl131142132056_
                                     _e131147132059_
                                     _hd131146132062_
                                     _tl131145132064_
                                     _e131150132067_
                                     _hd131149132070_
                                     _tl131148132072_))))
                            (___match137224137225_
                             _e131129132011_
                             _hd131128132014_
                             _tl131127132016_
                             _e131132132019_
                             _hd131131132022_
                             _tl131130132024_
                             _e131135132027_
                             _hd131134132030_
                             _tl131133132032_
                             _e131138132035_
                             _hd131137132038_
                             _tl131136132040_
                             _e131141132043_
                             _hd131140132046_
                             _tl131139132048_
                             _e131144132051_
                             _hd131143132054_
                             _tl131142132056_
                             _e131147132059_
                             _hd131146132062_
                             _tl131145132064_
                             _e131150132067_
                             _hd131149132070_
                             _tl131148132072_))))
                    (___match137162137163_
                     _e131129132011_
                     _hd131128132014_
                     _tl131127132016_
                     _e131132132019_
                     _hd131131132022_
                     _tl131130132024_
                     _e131135132027_
                     _hd131134132030_
                     _tl131133132032_
                     _e131138132035_
                     _hd131137132038_
                     _tl131136132040_
                     _e131141132043_
                     _hd131140132046_
                     _tl131139132048_
                     _e131144132051_
                     _hd131143132054_
                     _tl131142132056_
                     _e131147132059_
                     _hd131146132062_
                     _tl131145132064_))
                (___kont136745136746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136745136746_))
                                            (___kont136745136746_))
                                        (___kont136745136746_))))
                                (___kont136745136746_))))
                        (___kont136745136746_))
                    (___kont136745136746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136745136746_))
                                                (___kont136745136746_))
                                            (___kont136745136746_))))
                                    (___kont136745136746_))))
                            (___kont136745136746_))))
                    (___kont136745136746_))))))))))
