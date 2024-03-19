(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710833426)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137235 (list gxc#::identity::t))
            (__tmp137233
             (let ((__tmp137234
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137235
         '()
         __tmp137233
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136099_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136099_)))
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
      (lambda (_stx136091_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136094_
                (let ((__obj137228
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137228))
               (__tmp137236
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136094_ _stx136091_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137236
           gxc#current-compile-method
           _self136094_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137239 (list gxc#::void::t))
            (__tmp137237
             (let ((__tmp137238
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137238 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137239
         '(receiver methods slots)
         __tmp137237
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136088_
        (apply make-instance gxc#::collect-object-refs::t _$args136088_)))
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
      (lambda (_g137240_
               _receiver136049136054_
               _methods136050136056_
               _slots136051136058_
               _stx136060_)
        (let* ((_receiver136063_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136049136054_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136049136054_))
               (_methods136065_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136050136056_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136050136056_))
               (_slots136067_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136051136058_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136051136058_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136069_
                  (let ((__obj137230
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
                       __obj137230
                       _receiver136063_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137230
                       _methods136065_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137230
                       _slots136067_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137230))
                 (__tmp137241
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136069_ _stx136060_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137241
             gxc#current-compile-method
             _self136069_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys136048136076_ . _args136078_)
        (apply gxc#apply-collect-object-refs__%
               _keys136048136076_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136048136076_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136048136076_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136048136076_ 'slots: absent-value))
               _args136078_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136052136084_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136052136084_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137244 (list gxc#::basic-xform-expression::t))
            (__tmp137242
             (let ((__tmp137243
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137243 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137244
         '(receiver klass methods slots)
         __tmp137242
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args136044_
        (apply make-instance gxc#::subst-object-refs::t _$args136044_)))
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
      (lambda (_g137245_
               _receiver136000136006_
               _klass136001136008_
               _methods136002136010_
               _slots136003136012_
               _stx136014_)
        (let* ((_receiver136017_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136000136006_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136000136006_))
               (_klass136019_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass136001136008_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass136001136008_))
               (_methods136021_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136002136010_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136002136010_))
               (_slots136023_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136003136012_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136003136012_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self136025_
                  (let ((__obj137232
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
                       __obj137232
                       _receiver136017_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137232
                       _klass136019_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137232
                       _methods136021_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137232
                       _slots136023_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137232))
                 (__tmp137246
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136025_ _stx136014_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137246
             gxc#current-compile-method
             _self136025_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135999136032_ . _args136034_)
        (apply gxc#apply-subst-object-refs__%
               _keys135999136032_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135999136032_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135999136032_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135999136032_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135999136032_ 'slots: absent-value))
               _args136034_)))
    (define gxc#apply-subst-object-refs
      (lambda _args136004136040_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args136004136040_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133209_ _stx133210_)
        (letrec ((_generate-method-bind133212_
                  (lambda (_$klass135991_
                           _$method-table135992_
                           _id135993_
                           _$id135994_)
                    (let ((_$tmp135996_
                           (let ((__tmp137247 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137247))))
                      (let ((__tmp137295
                             (let ()
                               (declare (not safe))
                               (cons _$id135994_ '())))
                            (__tmp137248
                             (let ((__tmp137249
                                    (let ((__tmp137250
                                           (let ((__tmp137293
                                                  (let ((__tmp137294
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137294)))
                                                 (__tmp137251
                                                  (let ((__tmp137252
                                                         (let ((__tmp137253
                                                                (let ((__tmp137254
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137255
                                      (let ((__tmp137256
                                             (let ((__tmp137276
                                                    (let ((__tmp137277
                                                           (let ((__tmp137292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135996_ '())))
                         (__tmp137278
                          (let ((__tmp137279
                                 (let ((__tmp137280
                                        (let ((__tmp137290
                                               (let ((__tmp137291
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137291)))
                                              (__tmp137281
                                               (let ((__tmp137288
                                                      (let ((__tmp137289
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135992_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137289)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137282
                                                      (let ((__tmp137286
                                                             (let ((__tmp137287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135993_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137287)))
                    (__tmp137283
                     (let ((__tmp137284
                            (let ((__tmp137285
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137285))))
                       (declare (not safe))
                       (cons __tmp137284 '()))))
                (declare (not safe))
                (cons __tmp137286 __tmp137283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137288
                                                       __tmp137282))))
                                          (declare (not safe))
                                          (cons __tmp137290 __tmp137281))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137280))))
                            (declare (not safe))
                            (cons __tmp137279 '()))))
                     (declare (not safe))
                     (cons __tmp137292 __tmp137278))))
              (declare (not safe))
              (cons __tmp137277 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137257
                                                    (let ((__tmp137258
                                                           (let ((__tmp137259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137274
                                 (let ((__tmp137275
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135996_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137275)))
                                (__tmp137260
                                 (let ((__tmp137272
                                        (let ((__tmp137273
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135996_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137273)))
                                       (__tmp137261
                                        (let ((__tmp137262
                                               (let ((__tmp137263
                                                      (let ((__tmp137270
                                                             (let ((__tmp137271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137271)))
                    (__tmp137264
                     (let ((__tmp137268
                            (let ((__tmp137269
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137269)))
                           (__tmp137265
                            (let ((__tmp137266
                                   (let ((__tmp137267
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135993_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137267))))
                              (declare (not safe))
                              (cons __tmp137266 '()))))
                       (declare (not safe))
                       (cons __tmp137268 __tmp137265))))
                (declare (not safe))
                (cons __tmp137270 __tmp137264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137263))))
                                          (declare (not safe))
                                          (cons __tmp137262 '()))))
                                   (declare (not safe))
                                   (cons __tmp137272 __tmp137261))))
                            (declare (not safe))
                            (cons __tmp137274 __tmp137260))))
                     (declare (not safe))
                     (cons '%#if __tmp137259))))
              (declare (not safe))
              (cons __tmp137258 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137276
                                                     __tmp137257))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137256))))
                                 (declare (not safe))
                                 (cons __tmp137255 '()))))
                          (declare (not safe))
                          (cons '() __tmp137254))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137253))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137252 '()))))
                                             (declare (not safe))
                                             (cons __tmp137293 __tmp137251))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137250))))
                               (declare (not safe))
                               (cons __tmp137249 '()))))
                        (declare (not safe))
                        (cons __tmp137295 __tmp137248)))))
                 (_generate-slot-bind133213_
                  (lambda (_$klass135985_ _id135986_ _$id135987_)
                    (let ((_$tmp135989_
                           (let ((__tmp137296 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137296))))
                      (let ((__tmp137333
                             (let ()
                               (declare (not safe))
                               (cons _$id135987_ '())))
                            (__tmp137297
                             (let ((__tmp137298
                                    (let ((__tmp137299
                                           (let ((__tmp137319
                                                  (let ((__tmp137320
                                                         (let ((__tmp137332
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135989_ '())))
                       (__tmp137321
                        (let ((__tmp137322
                               (let ((__tmp137323
                                      (let ((__tmp137330
                                             (let ((__tmp137331
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137331)))
                                            (__tmp137324
                                             (let ((__tmp137328
                                                    (let ((__tmp137329
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137329)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137325
                                                    (let ((__tmp137326
                                                           (let ((__tmp137327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135986_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137327))))
              (declare (not safe))
              (cons __tmp137326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137328
                                                     __tmp137325))))
                                        (declare (not safe))
                                        (cons __tmp137330 __tmp137324))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137323))))
                          (declare (not safe))
                          (cons __tmp137322 '()))))
                   (declare (not safe))
                   (cons __tmp137332 __tmp137321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137320 '())))
                                                 (__tmp137300
                                                  (let ((__tmp137301
                                                         (let ((__tmp137302
                                                                (let ((__tmp137317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137318
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135989_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137318)))
                              (__tmp137303
                               (let ((__tmp137315
                                      (let ((__tmp137316
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135989_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137316)))
                                     (__tmp137304
                                      (let ((__tmp137305
                                             (let ((__tmp137306
                                                    (let ((__tmp137313
                                                           (let ((__tmp137314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137314)))
                  (__tmp137307
                   (let ((__tmp137311
                          (let ((__tmp137312
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137312)))
                         (__tmp137308
                          (let ((__tmp137309
                                 (let ((__tmp137310
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135986_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137310))))
                            (declare (not safe))
                            (cons __tmp137309 '()))))
                     (declare (not safe))
                     (cons __tmp137311 __tmp137308))))
              (declare (not safe))
              (cons __tmp137313 __tmp137307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137306))))
                                        (declare (not safe))
                                        (cons __tmp137305 '()))))
                                 (declare (not safe))
                                 (cons __tmp137315 __tmp137304))))
                          (declare (not safe))
                          (cons __tmp137317 __tmp137303))))
                   (declare (not safe))
                   (cons '%#if __tmp137302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137301 '()))))
                                             (declare (not safe))
                                             (cons __tmp137319 __tmp137300))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137299))))
                               (declare (not safe))
                               (cons __tmp137298 '()))))
                        (declare (not safe))
                        (cons __tmp137333 __tmp137297)))))
                 (_generate-specializer-impl133214_
                  (lambda (_$klass135979_
                           _$method-table135980_
                           _methods-bind135981_
                           _slots-bind135982_
                           _specializer-impl135983_)
                    (let ((__tmp137334
                           (let ((__tmp137335
                                  (let ((__tmp137341
                                         (let ((__tmp137342
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135980_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135979_ __tmp137342)))
                                        (__tmp137336
                                         (let ((__tmp137337
                                                (let ((__tmp137338
                                                       (let ((__tmp137340
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135982_ _methods-bind135981_)))
                     (__tmp137339
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135983_ '()))))
                 (declare (not safe))
                 (cons __tmp137340 __tmp137339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137338))))
                                           (declare (not safe))
                                           (cons __tmp137337 '()))))
                                    (declare (not safe))
                                    (cons __tmp137341 __tmp137336))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137335))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137334 _stx133210_))))
                 (_generate-specializer-def133215_
                  (lambda (_id135975_
                           _specializer-id135976_
                           _specializer-impl135977_)
                    (let ((__tmp137343
                           (let ((__tmp137344
                                  (let ((__tmp137345
                                         (let ((__tmp137358
                                                (let ((__tmp137359
                                                       (let ((__tmp137360
                                                              (let ((__tmp137362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135976_ '())))
                            (__tmp137361
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135977_ '()))))
                        (declare (not safe))
                        (cons __tmp137362 __tmp137361))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137359
                                                   _stx133210_)))
                                               (__tmp137346
                                                (let ((__tmp137347
                                                       (let ((__tmp137348
                                                              (let ((__tmp137349
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137356
                                    (let ((__tmp137357
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137357)))
                                   (__tmp137350
                                    (let ((__tmp137354
                                           (let ((__tmp137355
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135975_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137355)))
                                          (__tmp137351
                                           (let ((__tmp137352
                                                  (let ((__tmp137353
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137353))))
                                             (declare (not safe))
                                             (cons __tmp137352 '()))))
                                      (declare (not safe))
                                      (cons __tmp137354 __tmp137351))))
                               (declare (not safe))
                               (cons __tmp137356 __tmp137350))))
                        (declare (not safe))
                        (cons '%#call __tmp137349))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137348 _stx133210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137347 '()))))
                                           (declare (not safe))
                                           (cons __tmp137358 __tmp137346))))
                                    (declare (not safe))
                                    (cons _stx133210_ __tmp137345))))
                             (declare (not safe))
                             (cons '%#begin __tmp137344))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137343 _stx133210_)))))
          (let* ((___stx136188136189_ _stx133210_)
                 (_g133218133238_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136188136189_)))))
            (let ((___kont136190136191_
                   (lambda (_L133282_ _L133283_)
                     (let ((_method-calls133302_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133303_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133304_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133306_
                                 (lambda ()
                                   (if (let ((__tmp137364
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133302_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137364))
                                       (let ((__tmp137363
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133303_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137363))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133282_))
                             (let* ((___stx136102136103_ _L133282_)
                                    (_g133693133711_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136102136103_)))))
                               (let ((___kont136104136105_
                                      (lambda (_L133747_ _L133748_ _L133749_)
                                        (for-each
                                         (lambda (_g133764133766_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133764133766_
                                              'receiver:
                                              _L133749_
                                              'methods:
                                              _method-calls133302_
                                              'slots:
                                              _slot-refs133303_)))
                                         _L133747_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133306_))
                                            _stx133210_
                                            (let* ((_specializer-id133775_
                                                    (let* ((_id133769_
                                                            (let ((__tmp137486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133283_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137486 '"::specialize")))
                   (_specializer-id133772_
                    (let ((__tmp137487
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133210_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133769_ __tmp137487))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133772_))
              _specializer-id133772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133777_
                                                    (let ((__tmp137488
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137488)))
                                                   (_$method-table133779_
                                                    (let ((__tmp137489
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137489)))
                                                   (_methods133781_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133302_)))
                                                   (_$methods133785_
                                                    (map (lambda (_id133783_)
                                                           (let ((__tmp137490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133783_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137490)))
                 _methods133781_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137491_
                                                    (for-each
                                                     (lambda (_g133786133789_
                                                              _g133787133791_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133302_
                                                          _g133786133789_
                                                          _g133787133791_)))
                                                     _methods133781_
                                                     _$methods133785_))
                                                   (_methods-bind133802_
                                                    (map (lambda (_g133794133797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133795133799_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133212_
                      _$klass133777_
                      _$method-table133779_
                      _g133794133797_
                      _g133795133799_)))
                 _methods133781_
                 _$methods133785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133804_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133303_)))
                                                   (_$slots133808_
                                                    (map (lambda (_id133806_)
                                                           (let ((__tmp137492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133806_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137492)))
                 _slots133804_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137493_
                                                    (for-each
                                                     (lambda (_g133809133812_
                                                              _g133810133814_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133303_
                                                          _g133809133812_
                                                          _g133810133814_)))
                                                     _slots133804_
                                                     _$slots133808_))
                                                   (_slots-bind133825_
                                                    (map (lambda (_g133817133820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133818133822_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133213_
                      _$klass133777_
                      _g133817133820_
                      _g133818133822_)))
                 _slots133804_
                 _$slots133808_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133831_
                                                    (map (lambda (_g133826133828_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133826133828_
                                                              'receiver:
                                                              _L133749_
                                                              'klass:
                                                              _$klass133777_
                                                              'methods:
                                                              _method-calls133302_
                                                              'slots:
                                                              _slot-refs133303_)))
                                                         _L133747_))
                                                   (_specializer-impl133833_
                                                    (let ((__tmp137494
                                                           (let ((__tmp137495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137496
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133749_ _L133748_))))
                            (declare (not safe))
                            (cons __tmp137496 _specializer-body133831_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137495))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137494 _stx133210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133835_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133214_
                                                       _$klass133777_
                                                       _$method-table133779_
                                                       _methods-bind133802_
                                                       _slots-bind133825_
                                                       _specializer-impl133833_))))
                                              (let ((__tmp137498
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133283_)))
                                                    (__tmp137497
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133775_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137498
                                                 '" => "
                                                 __tmp137497))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133215_
                                                 _L133283_
                                                 _specializer-id133775_
                                                 _specializer-impl133835_))))))
                                     (___kont136106136107_
                                      (lambda () _stx133210_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136102136103_))
                                     (let ((_e133700133723_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136102136103_))))
                                       (let ((_tl133698133728_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133700133723_)))
                                             (_hd133699133726_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133700133723_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133698133728_))
                                             (let ((_e133703133731_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133698133728_))))
                                               (let ((_tl133701133736_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133703133731_)))
                                                     (_hd133702133734_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133703133731_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133702133734_))
                                                     (let ((_e133706133739_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133702133734_))))
                                                       (let ((_tl133704133744_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133706133739_)))
                     (_hd133705133742_
                      (let () (declare (not safe)) (##car _e133706133739_))))
                 (___kont136104136105_
                  _tl133701133736_
                  _tl133704133744_
                  _hd133705133742_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136106136107_))))
                                             (___kont136106136107_))))
                                     (___kont136106136107_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133282_))
                                 (let* ((_g133841133860_
                                         (lambda (_g133842133857_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133842133857_))))
                                        (_g133840134143_
                                         (lambda (_g133842133863_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133842133863_))
                                               (let ((_e133846133865_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133842133863_))))
                                                 (let ((_hd133845133868_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133846133865_)))
                                                       (_tl133844133870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133846133865_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133844133870_))
                                                       (let ((_g137469_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133844133870_ '0))))
                 (begin
                   (let ((_g137470_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137469_)
                                (##vector-length _g137469_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137470_ 2)))
                         (error "Context expects 2 values" _g137470_)))
                   (let ((_target133847133873_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137469_ 0)))
                         (_tl133849133875_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137469_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133849133875_))
                         (letrec ((_loop133850133878_
                                   (lambda (_hd133848133881_
                                            _clause133854133883_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133848133881_))
                                         (let ((_e133851133886_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133848133881_))))
                                           (let ((_lp-hd133852133889_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133851133886_)))
                                                 (_lp-tl133853133891_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133851133886_))))
                                             (let ((__tmp137485
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133852133889_
                                                            _clause133854133883_))))
                                               (declare (not safe))
                                               (_loop133850133878_
                                                _lp-tl133853133891_
                                                __tmp137485))))
                                         (let ((_clause133855133894_
                                                (reverse _clause133854133883_)))
                                           ((lambda (_L133897_)
                                              (for-each
                                               (lambda (_clause133910_)
                                                 (let* ((___stx136128136129_
                                                         _clause133910_)
                                                        (_g133913133928_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136128136129_)))))
                                                   (let ((___kont136130136131_
                                                          (lambda (_L133956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133957_
                           _L133958_)
                    (for-each
                     (lambda (_g133973133975_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133973133975_
                          'receiver:
                          _L133958_
                          'methods:
                          _method-calls133302_
                          'slots:
                          _slot-refs133303_)))
                     _L133956_)))
                 (___kont136132136133_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136128136129_))
                                                         (let ((_e133920133940_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136128136129_))))
                   (let ((_tl133918133945_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133920133940_)))
                         (_hd133919133943_
                          (let ()
                            (declare (not safe))
                            (##car _e133920133940_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133919133943_))
                         (let ((_e133923133948_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133919133943_))))
                           (let ((_tl133921133953_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133923133948_)))
                                 (_hd133922133951_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133923133948_))))
                             (___kont136130136131_
                              _tl133918133945_
                              _tl133921133953_
                              _hd133922133951_)))
                         (___kont136132136133_))))
                 (___kont136132136133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137471
                                                      (lambda (_g133980133983_
                                                               _g133981133985_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133980133983_
                                                                _g133981133985_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137471
                                                         '()
                                                         _L133897_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133306_))
                                                  _stx133210_
                                                  (let* ((_specializer-id133994_
                                                          (let* ((_id133988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137472
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133283_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137472 '"::specialize")))
                         (_specializer-id133991_
                          (let ((__tmp137473
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133210_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133988_ __tmp137473))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133991_))
                    _specializer-id133991_))
                 (_$klass133996_
                  (let ((__tmp137474 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137474)))
                 (_$method-table133998_
                  (let ((__tmp137475 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137475)))
                 (_methods134000_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133302_)))
                 (_$methods134004_
                  (map (lambda (_id134002_)
                         (let ((__tmp137476 (gensym _id134002_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137476)))
                       _methods134000_))
                 (_g137477_
                  (for-each
                   (lambda (_g134005134008_ _g134006134010_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133302_
                        _g134005134008_
                        _g134006134010_)))
                   _methods134000_
                   _$methods134004_))
                 (_methods-bind134021_
                  (map (lambda (_g134013134016_ _g134014134018_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133212_
                            _$klass133996_
                            _$method-table133998_
                            _g134013134016_
                            _g134014134018_)))
                       _methods134000_
                       _$methods134004_))
                 (_slots134023_
                  (let () (declare (not safe)) (hash-keys _slot-refs133303_)))
                 (_$slots134027_
                  (map (lambda (_id134025_)
                         (let ((__tmp137478 (gensym _id134025_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137478)))
                       _slots134023_))
                 (_g137479_
                  (for-each
                   (lambda (_g134028134031_ _g134029134033_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133303_
                        _g134028134031_
                        _g134029134033_)))
                   _slots134023_
                   _$slots134027_))
                 (_slots-bind134044_
                  (map (lambda (_g134036134039_ _g134037134041_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133213_
                            _$klass133996_
                            _g134036134039_
                            _g134037134041_)))
                       _slots134023_
                       _$slots134027_))
                 (_specializer-clauses134136_
                  (map (lambda (_clause134046_)
                         (let* ((___stx136148136149_ _clause134046_)
                                (_g134049134064_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136148136149_)))))
                           (let ((___kont136150136151_
                                  (lambda (_L134092_ _L134093_ _L134094_)
                                    (let* ((_body134124_
                                            (map (lambda (_g134119134121_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134119134121_
                                                      'receiver:
                                                      _L134094_
                                                      'klass:
                                                      _$klass133996_
                                                      'methods:
                                                      _method-calls133302_
                                                      'slots:
                                                      _slot-refs133303_)))
                                                 _L134092_))
                                           (__tmp137480
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134094_ _L134093_))))
                                      (declare (not safe))
                                      (cons __tmp137480 _body134124_))))
                                 (___kont136152136153_
                                  (lambda () _clause134046_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136148136149_))
                                 (let ((_e134056134076_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136148136149_))))
                                   (let ((_tl134054134081_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134056134076_)))
                                         (_hd134055134079_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134056134076_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134055134079_))
                                         (let ((_e134059134084_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134055134079_))))
                                           (let ((_tl134057134089_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134059134084_)))
                                                 (_hd134058134087_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134059134084_))))
                                             (___kont136150136151_
                                              _tl134054134081_
                                              _tl134057134089_
                                              _hd134058134087_)))
                                         (___kont136152136153_))))
                                 (___kont136152136153_)))))
                       (let ((__tmp137481
                              (lambda (_g134128134131_ _g134129134133_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134128134131_ _g134129134133_)))))
                         (declare (not safe))
                         (foldr1 __tmp137481 '() _L133897_))))
                 (_specializer-impl134138_
                  (let ((__tmp137482
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134136_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137482 _stx133210_)))
                 (_specializer-impl134140_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133214_
                     _$klass133996_
                     _$method-table133998_
                     _methods-bind134021_
                     _slots-bind134044_
                     _specializer-impl134138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137484
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133283_)))
                                                          (__tmp137483
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133994_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137484
                                                       '" => "
                                                       __tmp137483))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133215_
                                                       _L133283_
                                                       _specializer-id133994_
                                                       _specializer-impl134140_)))))
                                            _clause133855133894_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133850133878_ _target133847133873_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133841133860_ _g133842133863_))))))
               (let ()
                 (declare (not safe))
                 (_g133841133860_ _g133842133863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133841133860_
                                                  _g133842133863_))))))
                                   (declare (not safe))
                                   (_g133840134143_ _L133282_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133282_))
                                     (let* ((_g134146134176_
                                             (lambda (_g134147134173_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134147134173_))))
                                            (_g134145134781_
                                             (lambda (_g134147134179_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134147134179_))
                                                   (let ((_e134153134181_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134147134179_))))
                                                     (let ((_hd134152134184_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134153134181_)))
                                                           (_tl134151134186_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134153134181_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134151134186_))
                                                           (let ((_e134156134189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134151134186_))))
                     (let ((_hd134155134192_
                            (let ()
                              (declare (not safe))
                              (##car _e134156134189_)))
                           (_tl134154134194_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134156134189_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134155134192_))
                           (let ((_e134159134197_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134155134192_))))
                             (let ((_hd134158134200_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134159134197_)))
                                   (_tl134157134202_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134159134197_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134158134200_))
                                   (let ((_e134162134205_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134158134200_))))
                                     (let ((_hd134161134208_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134162134205_)))
                                           (_tl134160134210_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134162134205_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134161134208_))
                                           (let ((_e134165134213_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134161134208_))))
                                             (let ((_hd134164134216_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134165134213_)))
                                                   (_tl134163134218_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134165134213_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134163134218_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134160134210_))
                                                       (let ((_e134168134221_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134160134210_))))
                 (let ((_hd134167134224_
                        (let () (declare (not safe)) (##car _e134168134221_)))
                       (_tl134166134226_
                        (let () (declare (not safe)) (##cdr _e134168134221_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134166134226_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134157134202_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134154134194_))
                               (let ((_e134171134229_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134154134194_))))
                                 (let ((_hd134170134232_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134171134229_)))
                                       (_tl134169134234_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134171134229_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134169134234_))
                                       ((lambda (_L134237_ _L134238_ _L134239_)
                                          (let* ((_g134262134280_
                                                  (lambda (_g134263134277_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134263134277_))))
                                                 (_g134261134331_
                                                  (lambda (_g134263134283_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134263134283_))
                                                        (let ((_e134269134285_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134263134283_))))
                  (let ((_hd134268134288_
                         (let () (declare (not safe)) (##car _e134269134285_)))
                        (_tl134267134290_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134269134285_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134267134290_))
                        (let ((_e134272134293_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134267134290_))))
                          (let ((_hd134271134296_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134272134293_)))
                                (_tl134270134298_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134272134293_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134271134296_))
                                (let ((_e134275134301_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134271134296_))))
                                  (let ((_hd134274134304_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134275134301_)))
                                        (_tl134273134306_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134275134301_))))
                                    ((lambda (_L134309_ _L134310_ _L134311_)
                                       (for-each
                                        (lambda (_g134326134328_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134326134328_
                                             'receiver:
                                             _L134311_
                                             'methods:
                                             _method-calls133302_
                                             'slots:
                                             _slot-refs133303_)))
                                        _L134309_))
                                     _tl134270134298_
                                     _tl134273134306_
                                     _hd134274134304_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134262134280_ _g134263134283_)))))
                        (let ()
                          (declare (not safe))
                          (_g134262134280_ _g134263134283_)))))
                (let ()
                  (declare (not safe))
                  (_g134262134280_ _g134263134283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134261134331_ _L134238_))
                                          (let* ((_g134334134353_
                                                  (lambda (_g134335134350_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134335134350_))))
                                                 (_g134333134472_
                                                  (lambda (_g134335134356_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134335134356_))
                                                        (let ((_e134339134358_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134335134356_))))
                  (let ((_hd134338134361_
                         (let () (declare (not safe)) (##car _e134339134358_)))
                        (_tl134337134363_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134339134358_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134337134363_))
                        (let ((_g137439_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134337134363_
                                  '0))))
                          (begin
                            (let ((_g137440_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137439_)
                                         (##vector-length _g137439_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137440_ 2)))
                                  (error "Context expects 2 values"
                                         _g137440_)))
                            (let ((_target134340134366_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137439_ 0)))
                                  (_tl134342134368_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137439_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134342134368_))
                                  (letrec ((_loop134343134371_
                                            (lambda (_hd134341134374_
                                                     _clause134347134376_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134341134374_))
                                                  (let ((_e134344134379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134341134374_))))
                                                    (let ((_lp-hd134345134382_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134344134379_)))
                                                          (_lp-tl134346134384_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134344134379_))))
                                                      (let ((__tmp137442
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134345134382_ _clause134347134376_))))
                (declare (not safe))
                (_loop134343134371_ _lp-tl134346134384_ __tmp137442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134348134387_
                                                         (reverse _clause134347134376_)))
                                                    ((lambda (_L134390_)
                                                       (for-each
                                                        (lambda (_clause134403_)
                                                          (let* ((_g134405134420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134406134417_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134406134417_))))
                         (_g134404134462_
                          (lambda (_g134406134423_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134406134423_))
                                (let ((_e134412134425_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134406134423_))))
                                  (let ((_hd134411134428_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134412134425_)))
                                        (_tl134410134430_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134412134425_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134411134428_))
                                        (let ((_e134415134433_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134411134428_))))
                                          (let ((_hd134414134436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134415134433_)))
                                                (_tl134413134438_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134415134433_))))
                                            ((lambda (_L134441_
                                                      _L134442_
                                                      _L134443_)
                                               (for-each
                                                (lambda (_g134457134459_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134457134459_
                                                     'receiver:
                                                     _L134443_
                                                     'methods:
                                                     _method-calls133302_
                                                     'slots:
                                                     _slot-refs133303_)))
                                                _L134441_))
                                             _tl134410134430_
                                             _tl134413134438_
                                             _hd134414134436_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134405134420_ _g134406134423_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134405134420_ _g134406134423_))))))
                    (declare (not safe))
                    (_g134404134462_ _clause134403_)))
                (let ((__tmp137441
                       (lambda (_g134464134467_ _g134465134469_)
                         (let ()
                           (declare (not safe))
                           (cons _g134464134467_ _g134465134469_)))))
                  (declare (not safe))
                  (foldr1 __tmp137441 '() _L134390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134348134387_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134343134371_
                                       _target134340134366_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134334134353_ _g134335134356_))))))
                        (let ()
                          (declare (not safe))
                          (_g134334134353_ _g134335134356_)))))
                (let ()
                  (declare (not safe))
                  (_g134334134353_ _g134335134356_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134333134472_ _L134237_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133306_))
                                              _stx133210_
                                              (let* ((_specializer-id134481_
                                                      (let* ((_id134475_
                                                              (let ((__tmp137443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133283_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137443 '"::specialize")))
                     (_specializer-id134478_
                      (let ((__tmp137444
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133210_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134475_ __tmp137444))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134478_))
                _specializer-id134478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134483_
                                                      (let ((__tmp137445
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137445)))
                                                     (_$method-table134485_
                                                      (let ((__tmp137446
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137446)))
                                                     (_methods134487_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133302_)))
                                                     (_$methods134491_
                                                      (map (lambda (_id134489_)
                                                             (let ((__tmp137447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134489_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137447)))
                   _methods134487_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137448_
                                                      (for-each
                                                       (lambda (_g134492134495_
                                                                _g134493134497_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133302_
                                                            _g134492134495_
                                                            _g134493134497_)))
                                                       _methods134487_
                                                       _$methods134491_))
                                                     (_methods-bind134508_
                                                      (map (lambda (_g134500134503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134501134505_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133212_
                        _$klass134483_
                        _$method-table134485_
                        _g134500134503_
                        _g134501134505_)))
                   _methods134487_
                   _$methods134491_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134510_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133303_)))
                                                     (_$slots134514_
                                                      (map (lambda (_id134512_)
                                                             (let ((__tmp137449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134512_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137449)))
                   _slots134510_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137450_
                                                      (for-each
                                                       (lambda (_g134515134518_
                                                                _g134516134520_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133303_
                                                            _g134515134518_
                                                            _g134516134520_)))
                                                       _slots134510_
                                                       _$slots134514_))
                                                     (_slots-bind134531_
                                                      (map (lambda (_g134523134526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134524134528_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133213_
                        _$klass134483_
                        _g134523134526_
                        _g134524134528_)))
                   _slots134510_
                   _$slots134514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134617_
                                                      (let* ((_g134533134551_
                                                              (lambda (_g134534134548_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134534134548_))))
                     (_g134532134614_
                      (lambda (_g134534134554_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134534134554_))
                            (let ((_e134540134556_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134534134554_))))
                              (let ((_hd134539134559_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134540134556_)))
                                    (_tl134538134561_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134540134556_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134538134561_))
                                    (let ((_e134543134564_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134538134561_))))
                                      (let ((_hd134542134567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134543134564_)))
                                            (_tl134541134569_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134543134564_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134542134567_))
                                            (let ((_e134546134572_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134542134567_))))
                                              (let ((_hd134545134575_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134546134572_)))
                                                    (_tl134544134577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134546134572_))))
                                                ((lambda (_L134580_
                                                          _L134581_
                                                          _L134582_)
                                                   (let* ((_body134612_
                                                           (map (lambda (_g134607134609_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134607134609_
                             'receiver:
                             _L134582_
                             'klass:
                             _$klass134483_
                             'methods:
                             _method-calls133302_
                             'slots:
                             _slot-refs133303_)))
                        _L134580_))
                  (__tmp137451
                   (let ((__tmp137452
                          (let ((__tmp137453
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134582_ _L134581_))))
                            (declare (not safe))
                            (cons __tmp137453 _body134612_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137451
                                                      _L134238_)))
                                                 _tl134541134569_
                                                 _tl134544134577_
                                                 _hd134545134575_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134533134551_
                                               _g134534134554_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134533134551_ _g134534134554_)))))
                            (let ()
                              (declare (not safe))
                              (_g134533134551_ _g134534134554_))))))
                (declare (not safe))
                (_g134532134614_ _L134238_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134774_
                                                      (let* ((_g134619134638_
                                                              (lambda (_g134620134635_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134620134635_))))
                     (_g134618134771_
                      (lambda (_g134620134641_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134620134641_))
                            (let ((_e134624134643_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134620134641_))))
                              (let ((_hd134623134646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134624134643_)))
                                    (_tl134622134648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134624134643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134622134648_))
                                    (let ((_g137454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134622134648_
                                              '0))))
                                      (begin
                                        (let ((_g137455_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137454_)
                                                     (##vector-length
                                                      _g137454_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137455_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137455_)))
                                        (let ((_target134625134651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137454_ 0)))
                                              (_tl134627134653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137454_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134627134653_))
                                              (letrec ((_loop134628134656_
                                                        (lambda (_hd134626134659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134632134661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134626134659_))
                      (let ((_e134629134664_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134626134659_))))
                        (let ((_lp-hd134630134667_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134629134664_)))
                              (_lp-tl134631134669_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134629134664_))))
                          (let ((__tmp137459
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134630134667_
                                         _clause134632134661_))))
                            (declare (not safe))
                            (_loop134628134656_
                             _lp-tl134631134669_
                             __tmp137459))))
                      (let ((_clause134633134672_
                             (reverse _clause134632134661_)))
                        ((lambda (_L134675_)
                           (let* ((_clauses134769_
                                   (map (lambda (_clause134689_)
                                          (let* ((___stx136168136169_
                                                  _clause134689_)
                                                 (_g134692134707_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136168136169_)))))
                                            (let ((___kont136170136171_
                                                   (lambda (_L134735_
                                                            _L134736_
                                                            _L134737_)
                                                     (let* ((_body134757_
                                                             (map (lambda (_g134752134754_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134752134754_
                               'receiver:
                               _L134737_
                               'klass:
                               _$klass134483_
                               'methods:
                               _method-calls133302_
                               'slots:
                               _slot-refs133303_)))
                          _L134735_))
                    (__tmp137456
                     (let () (declare (not safe)) (cons _L134737_ _L134736_))))
               (declare (not safe))
               (cons __tmp137456 _body134757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136172136173_
                                                   (lambda () _clause134689_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136168136169_))
                                                  (let ((_e134699134719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136168136169_))))
                                                    (let ((_tl134697134724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134699134719_)))
                                                          (_hd134698134722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134699134719_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134698134722_))
                                                          (let ((_e134702134727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134698134722_))))
                    (let ((_tl134700134732_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134702134727_)))
                          (_hd134701134730_
                           (let ()
                             (declare (not safe))
                             (##car _e134702134727_))))
                      (___kont136170136171_
                       _tl134697134724_
                       _tl134700134732_
                       _hd134701134730_)))
                  (___kont136172136173_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136172136173_)))))
                                        (let ((__tmp137457
                                               (lambda (_g134761134764_
                                                        _g134762134766_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134761134764_
                                                         _g134762134766_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137457 '() _L134675_))))
                                  (__tmp137458
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134769_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137458 _L134237_)))
                         _clause134633134672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134628134656_
                                                   _target134625134651_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134619134638_
                                                 _g134620134641_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134619134638_ _g134620134641_)))))
                            (let ()
                              (declare (not safe))
                              (_g134619134638_ _g134620134641_))))))
                (declare (not safe))
                (_g134618134771_ _L134237_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134776_
                                                      (let ((__tmp137460
                                                             (let ((__tmp137461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137463
                                   (let ((__tmp137464
                                          (let ((__tmp137466
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134239_ '())))
                                                (__tmp137465
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134617_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137466 __tmp137465))))
                                     (declare (not safe))
                                     (cons __tmp137464 '())))
                                  (__tmp137462
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134774_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137463 __tmp137462))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137461))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137460 _stx133210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134778_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133214_
                                                         _$klass134483_
                                                         _$method-table134485_
                                                         _methods-bind134508_
                                                         _slots-bind134531_
                                                         _specializer-impl134776_))))
                                                (let ((__tmp137468
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133283_)))
                                                      (__tmp137467
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134481_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137468
                                                   '" => "
                                                   __tmp137467))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133215_
                                                   _L133283_
                                                   _specializer-id134481_
                                                   _specializer-impl134778_)))))
                                        _hd134170134232_
                                        _hd134167134224_
                                        _hd134164134216_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134146134176_ _g134147134179_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134146134176_ _g134147134179_)))
                           (let ()
                             (declare (not safe))
                             (_g134146134176_ _g134147134179_)))
                       (let ()
                         (declare (not safe))
                         (_g134146134176_ _g134147134179_)))))
               (let () (declare (not safe)) (_g134146134176_ _g134147134179_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134146134176_
                                                      _g134147134179_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134146134176_
                                              _g134147134179_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134146134176_ _g134147134179_)))))
                           (let ()
                             (declare (not safe))
                             (_g134146134176_ _g134147134179_)))))
                   (let ()
                     (declare (not safe))
                     (_g134146134176_ _g134147134179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134146134176_
                                                      _g134147134179_))))))
                                       (declare (not safe))
                                       (_g134145134781_ _L133282_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133282_))
                                         (let* ((_g134784134837_
                                                 (lambda (_g134785134834_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134785134834_))))
                                                (_g134783135968_
                                                 (lambda (_g134785134840_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134785134840_))
                                                       (let ((_e134793134842_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134785134840_))))
                 (let ((_hd134792134845_
                        (let () (declare (not safe)) (##car _e134793134842_)))
                       (_tl134791134847_
                        (let () (declare (not safe)) (##cdr _e134793134842_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134792134845_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134792134845_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134791134847_))
                               (let ((_e134796134850_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134791134847_))))
                                 (let ((_hd134795134853_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134796134850_)))
                                       (_tl134794134855_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134796134850_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134795134853_))
                                       (let ((_e134799134858_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134795134853_))))
                                         (let ((_hd134798134861_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134799134858_)))
                                               (_tl134797134863_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134799134858_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134798134861_))
                                               (let ((_e134802134866_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134798134861_))))
                                                 (let ((_hd134801134869_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134802134866_)))
                                                       (_tl134800134871_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134802134866_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134801134869_))
                                                       (let ((_e134805134874_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134801134869_))))
                 (let ((_hd134804134877_
                        (let () (declare (not safe)) (##car _e134805134874_)))
                       (_tl134803134879_
                        (let () (declare (not safe)) (##cdr _e134805134874_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134803134879_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134800134871_))
                           (let ((_e134808134882_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134800134871_))))
                             (let ((_hd134807134885_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134808134882_)))
                                   (_tl134806134887_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134808134882_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134807134885_))
                                   (let ((_e134811134890_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134807134885_))))
                                     (let ((_hd134810134893_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134811134890_)))
                                           (_tl134809134895_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134811134890_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134810134893_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134810134893_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134809134895_))
                                                   (let ((_e134814134898_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134809134895_))))
                                                     (let ((_hd134813134901_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134814134898_)))
                                                           (_tl134812134903_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134814134898_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134813134901_))
                                                           (let ((_e134817134906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134813134901_))))
                     (let ((_hd134816134909_
                            (let ()
                              (declare (not safe))
                              (##car _e134817134906_)))
                           (_tl134815134911_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134817134906_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134816134909_))
                           (let ((_e134820134914_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134816134909_))))
                             (let ((_hd134819134917_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134820134914_)))
                                   (_tl134818134919_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134820134914_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134819134917_))
                                   (let ((_e134823134922_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134819134917_))))
                                     (let ((_hd134822134925_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134823134922_)))
                                           (_tl134821134927_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134823134922_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134821134927_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134818134919_))
                                               (let ((_e134826134930_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134818134919_))))
                                                 (let ((_hd134825134933_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134826134930_)))
                                                       (_tl134824134935_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134826134930_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134824134935_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134815134911_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134812134903_))
                       (let ((_e134829134938_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134812134903_))))
                         (let ((_hd134828134941_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134829134938_)))
                               (_tl134827134943_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134829134938_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134827134943_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134806134887_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134797134863_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134794134855_))
                                           (let ((_e134832134946_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134794134855_))))
                                             (let ((_hd134831134949_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134832134946_)))
                                                   (_tl134830134951_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134832134946_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134830134951_))
                                                   ((lambda (_L134954_
                                                             _L134955_
                                                             _L134956_
                                                             _L134957_
                                                             _L134958_)
                                                      (let* ((_g134997135059_
                                                              (lambda (_g134998135056_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134998135056_))))
                     (_g134996135965_
                      (lambda (_g134998135062_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134998135062_))
                            (let ((_e135006135064_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134998135062_))))
                              (let ((_hd135005135067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135006135064_)))
                                    (_tl135004135069_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135006135064_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd135005135067_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd135005135067_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl135004135069_))
                                            (let ((_e135009135072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl135004135069_))))
                                              (let ((_hd135008135075_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135009135072_)))
                                                    (_tl135007135077_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135009135072_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135007135077_))
                                                    (let ((_e135012135080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135007135077_))))
                                                      (let ((_hd135011135083_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135012135080_)))
                    (_tl135010135085_
                     (let () (declare (not safe)) (##cdr _e135012135080_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd135011135083_))
                    (let ((_e135015135088_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd135011135083_))))
                      (let ((_hd135014135091_
                             (let ()
                               (declare (not safe))
                               (##car _e135015135088_)))
                            (_tl135013135093_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135015135088_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd135014135091_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd135014135091_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl135013135093_))
                                    (let ((_e135018135096_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl135013135093_))))
                                      (let ((_hd135017135099_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135018135096_)))
                                            (_tl135016135101_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135018135096_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd135017135099_))
                                            (let ((_e135021135104_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd135017135099_))))
                                              (let ((_hd135020135107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135021135104_)))
                                                    (_tl135019135109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135021135104_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd135020135107_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd135020135107_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl135019135109_))
                                                            (let ((_e135024135112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl135019135109_))))
                      (let ((_hd135023135115_
                             (let ()
                               (declare (not safe))
                               (##car _e135024135112_)))
                            (_tl135022135117_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135024135112_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135022135117_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl135016135101_))
                                (let ((_e135027135120_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl135016135101_))))
                                  (let ((_hd135026135123_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135027135120_)))
                                        (_tl135025135125_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135027135120_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd135026135123_))
                                        (let ((_e135030135128_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd135026135123_))))
                                          (let ((_hd135029135131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135030135128_)))
                                                (_tl135028135133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135030135128_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd135029135131_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd135029135131_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl135028135133_))
                                                        (let ((_e135033135136_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl135028135133_))))
                  (let ((_hd135032135139_
                         (let () (declare (not safe)) (##car _e135033135136_)))
                        (_tl135031135141_
                         (let ()
                           (declare (not safe))
                           (##cdr _e135033135136_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl135031135141_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135025135125_))
                            (let ((_e135036135144_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135025135125_))))
                              (let ((_hd135035135147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135036135144_)))
                                    (_tl135034135149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135036135144_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd135035135147_))
                                    (let ((_e135039135152_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd135035135147_))))
                                      (let ((_hd135038135155_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135039135152_)))
                                            (_tl135037135157_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135039135152_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd135038135155_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd135038135155_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135037135157_))
                                                    (let ((_e135042135160_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135037135157_))))
                                                      (let ((_hd135041135163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135042135160_)))
                    (_tl135040135165_
                     (let () (declare (not safe)) (##cdr _e135042135160_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl135040135165_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl135034135149_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl135034135149_))
                                  '1)
                            (let ((_g137365_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135034135149_
                                      '1))))
                              (begin
                                (let ((_g137366_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137365_)
                                             (##vector-length _g137365_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137366_ 2)))
                                      (error "Context expects 2 values"
                                             _g137366_)))
                                (let ((_target135043135168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137365_ 0)))
                                      (_tl135045135170_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137365_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl135045135170_))
                                      (let ((_e135054135173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl135045135170_))))
                                        (let ((_hd135053135176_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135054135173_)))
                                              (_tl135052135178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135054135173_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135052135178_))
                                              (letrec ((_loop135046135181_
                                                        (lambda (_hd135044135184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref135050135186_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd135044135184_))
                      (let ((_e135047135189_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd135044135184_))))
                        (let ((_lp-hd135048135192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135047135189_)))
                              (_lp-tl135049135194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135047135189_))))
                          (let ((__tmp137438
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd135048135192_
                                         _kw-ref135050135186_))))
                            (declare (not safe))
                            (_loop135046135181_
                             _lp-tl135049135194_
                             __tmp137438))))
                      (let ((_kw-ref135051135197_
                             (reverse _kw-ref135050135186_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135010135085_))
                            ((lambda (_L135200_
                                      _L135201_
                                      _L135202_
                                      _L135203_
                                      _L135204_)
                               (let* ((_kw-count135255_
                                       (length (let ((__tmp137367
                                                      (lambda (_g135247135250_
                                                               _g135248135252_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135247135250_
                                                                _g135248135252_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137367
                                                         '()
                                                         _L135201_))))
                                      (_self-index135257_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135255_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134956_))
                                     (let* ((_g135260135274_
                                             (lambda (_g135261135271_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135261135271_))))
                                            (_g135259135387_
                                             (lambda (_g135261135277_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135261135277_))
                                                   (let ((_e135266135279_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135261135277_))))
                                                     (let ((_hd135265135282_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135266135279_)))
                                                           (_tl135264135284_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135266135279_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135264135284_))
                                                           (let ((_e135269135287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135264135284_))))
                     (let ((_hd135268135290_
                            (let ()
                              (declare (not safe))
                              (##car _e135269135287_)))
                           (_tl135267135292_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135269135287_))))
                       ((lambda (_L135295_ _L135296_)
                          (let ((_self135312_
                                 (list-ref _L135296_ _self-index135257_)))
                            (for-each
                             (lambda (_g135313135315_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135313135315_
                                  'receiver:
                                  _self135312_
                                  'methods:
                                  _method-calls133302_
                                  'slots:
                                  _slot-refs133303_)))
                             _L135295_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133306_))
                                _stx133210_
                                (let* ((_specializer-id135324_
                                        (let* ((_id135318_
                                                (let ((__tmp137411
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133283_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137411
                                                   '"::specialize")))
                                               (_specializer-id135321_
                                                (let ((__tmp137412
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133210_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135318_
                                                   __tmp137412))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135321_))
                                          _specializer-id135321_))
                                       (_$klass135326_
                                        (let ((__tmp137413 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137413)))
                                       (_$method-table135328_
                                        (let ((__tmp137414
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137414)))
                                       (_methods135330_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133302_)))
                                       (_$methods135334_
                                        (map (lambda (_id135332_)
                                               (let ((__tmp137415
                                                      (gensym _id135332_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137415)))
                                             _methods135330_))
                                       (_g137416_
                                        (for-each
                                         (lambda (_g135335135338_
                                                  _g135336135340_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133302_
                                              _g135335135338_
                                              _g135336135340_)))
                                         _methods135330_
                                         _$methods135334_))
                                       (_methods-bind135351_
                                        (map (lambda (_g135343135346_
                                                      _g135344135348_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133212_
                                                  _$klass135326_
                                                  _$method-table135328_
                                                  _g135343135346_
                                                  _g135344135348_)))
                                             _methods135330_
                                             _$methods135334_))
                                       (_slots135353_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133303_)))
                                       (_$slots135357_
                                        (map (lambda (_id135355_)
                                               (let ((__tmp137417
                                                      (gensym _id135355_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137417)))
                                             _slots135353_))
                                       (_g137418_
                                        (for-each
                                         (lambda (_g135358135361_
                                                  _g135359135363_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133303_
                                              _g135358135361_
                                              _g135359135363_)))
                                         _slots135353_
                                         _$slots135357_))
                                       (_slots-bind135374_
                                        (map (lambda (_g135366135369_
                                                      _g135367135371_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133213_
                                                  _$klass135326_
                                                  _g135366135369_
                                                  _g135367135371_)))
                                             _slots135353_
                                             _$slots135357_))
                                       (_specializer-impl135382_
                                        (let* ((_specializer-body135380_
                                                (map (lambda (_g135375135377_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135375135377_
                                                          'receiver:
                                                          _self135312_
                                                          'klass:
                                                          _$klass135326_
                                                          'methods:
                                                          _method-calls133302_
                                                          'slots:
                                                          _slot-refs133303_)))
                                                     _L135295_))
                                               (__tmp137419
                                                (let ((__tmp137420
                                                       (let ((__tmp137422
                                                              (let ((__tmp137423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137435
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134958_ '())))
                                   (__tmp137424
                                    (let ((__tmp137425
                                           (let ((__tmp137426
                                                  (let ((__tmp137428
                                                         (let ((__tmp137429
                                                                (let ((__tmp137434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134957_ '())))
                              (__tmp137430
                               (let ((__tmp137431
                                      (let ((__tmp137432
                                             (let ((__tmp137433
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135296_
                                                            _specializer-body135380_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137433))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137432
                                         _L134956_))))
                                 (declare (not safe))
                                 (cons __tmp137431 '()))))
                          (declare (not safe))
                          (cons __tmp137434 __tmp137430))))
                   (declare (not safe))
                   (cons __tmp137429 '())))
                (__tmp137427
                 (let () (declare (not safe)) (cons _L134955_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137428
                                                          __tmp137427))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137426))))
                                      (declare (not safe))
                                      (cons __tmp137425 '()))))
                               (declare (not safe))
                               (cons __tmp137435 __tmp137424))))
                        (declare (not safe))
                        (cons __tmp137423 '())))
                     (__tmp137421
                      (let () (declare (not safe)) (cons _L134954_ '()))))
                 (declare (not safe))
                 (cons __tmp137422 __tmp137421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137420))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137419
                                           _stx133210_)))
                                       (_specializer-impl135384_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133214_
                                           _$klass135326_
                                           _$method-table135328_
                                           _methods-bind135351_
                                           _slots-bind135374_
                                           _specializer-impl135382_))))
                                  (let ((__tmp137437
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133283_)))
                                        (__tmp137436
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135324_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137437
                                     '" => "
                                     __tmp137436))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133215_
                                     _L133283_
                                     _specializer-id135324_
                                     _specializer-impl135384_))))))
                        _tl135267135292_
                        _hd135268135290_)))
                   (let ()
                     (declare (not safe))
                     (_g135260135274_ _g135261135277_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135260135274_
                                                      _g135261135277_))))))
                                       (declare (not safe))
                                       (_g135259135387_ _L134956_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134956_))
                                         (let* ((_g135390135420_
                                                 (lambda (_g135391135417_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135391135417_))))
                                                (_g135389135962_
                                                 (lambda (_g135391135423_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135391135423_))
                                                       (let ((_e135397135425_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135391135423_))))
                 (let ((_hd135396135428_
                        (let () (declare (not safe)) (##car _e135397135425_)))
                       (_tl135395135430_
                        (let () (declare (not safe)) (##cdr _e135397135425_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135395135430_))
                       (let ((_e135400135433_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135395135430_))))
                         (let ((_hd135399135436_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135400135433_)))
                               (_tl135398135438_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135400135433_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135399135436_))
                               (let ((_e135403135441_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135399135436_))))
                                 (let ((_hd135402135444_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135403135441_)))
                                       (_tl135401135446_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135403135441_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135402135444_))
                                       (let ((_e135406135449_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135402135444_))))
                                         (let ((_hd135405135452_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135406135449_)))
                                               (_tl135404135454_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135406135449_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135405135452_))
                                               (let ((_e135409135457_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135405135452_))))
                                                 (let ((_hd135408135460_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135409135457_)))
                                                       (_tl135407135462_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135409135457_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135407135462_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135404135454_))
                                                           (let ((_e135412135465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135404135454_))))
                     (let ((_hd135411135468_
                            (let ()
                              (declare (not safe))
                              (##car _e135412135465_)))
                           (_tl135410135470_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135412135465_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135410135470_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135401135446_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135398135438_))
                                   (let ((_e135415135473_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135398135438_))))
                                     (let ((_hd135414135476_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135415135473_)))
                                           (_tl135413135478_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135415135473_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135413135478_))
                                           ((lambda (_L135481_
                                                     _L135482_
                                                     _L135483_)
                                              (let* ((_g135506135520_
                                                      (lambda (_g135507135517_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135507135517_))))
                                                     (_g135505135561_
                                                      (lambda (_g135507135523_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135507135523_))
                                                            (let ((_e135512135525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135507135523_))))
                      (let ((_hd135511135528_
                             (let ()
                               (declare (not safe))
                               (##car _e135512135525_)))
                            (_tl135510135530_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135512135525_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135510135530_))
                            (let ((_e135515135533_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135510135530_))))
                              (let ((_hd135514135536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135515135533_)))
                                    (_tl135513135538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135515135533_))))
                                ((lambda (_L135541_ _L135542_)
                                   (let ((_self135555_
                                          (list-ref
                                           _L135542_
                                           _self-index135257_)))
                                     (for-each
                                      (lambda (_g135556135558_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135556135558_
                                           'receiver:
                                           _self135555_
                                           'methods:
                                           _method-calls133302_
                                           'slots:
                                           _slot-refs133303_)))
                                      _L135541_)))
                                 _tl135513135538_
                                 _hd135514135536_)))
                            (let ()
                              (declare (not safe))
                              (_g135506135520_ _g135507135523_)))))
                    (let ()
                      (declare (not safe))
                      (_g135506135520_ _g135507135523_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135505135561_ _L135482_))
                                              (let* ((_g135564135583_
                                                      (lambda (_g135565135580_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135565135580_))))
                                                     (_g135563135688_
                                                      (lambda (_g135565135586_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135565135586_))
                                                            (let ((_e135569135588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135565135586_))))
                      (let ((_hd135568135591_
                             (let ()
                               (declare (not safe))
                               (##car _e135569135588_)))
                            (_tl135567135593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135569135588_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135567135593_))
                            (let ((_g137368_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135567135593_
                                      '0))))
                              (begin
                                (let ((_g137369_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137368_)
                                             (##vector-length _g137368_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137369_ 2)))
                                      (error "Context expects 2 values"
                                             _g137369_)))
                                (let ((_target135570135596_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137368_ 0)))
                                      (_tl135572135598_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137368_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135572135598_))
                                      (letrec ((_loop135573135601_
                                                (lambda (_hd135571135604_
                                                         _clause135577135606_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135571135604_))
                                                      (let ((_e135574135609_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135571135604_))))
                (let ((_lp-hd135575135612_
                       (let () (declare (not safe)) (##car _e135574135609_)))
                      (_lp-tl135576135614_
                       (let () (declare (not safe)) (##cdr _e135574135609_))))
                  (let ((__tmp137371
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135575135612_ _clause135577135606_))))
                    (declare (not safe))
                    (_loop135573135601_ _lp-tl135576135614_ __tmp137371))))
              (let ((_clause135578135617_ (reverse _clause135577135606_)))
                ((lambda (_L135620_)
                   (for-each
                    (lambda (_clause135633_)
                      (let* ((_g135635135646_
                              (lambda (_g135636135643_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135636135643_))))
                             (_g135634135678_
                              (lambda (_g135636135649_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135636135649_))
                                    (let ((_e135641135651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135636135649_))))
                                      (let ((_hd135640135654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135641135651_)))
                                            (_tl135639135656_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135641135651_))))
                                        ((lambda (_L135659_ _L135660_)
                                           (let ((_self135672_
                                                  (list-ref
                                                   _L135660_
                                                   _self-index135257_)))
                                             (for-each
                                              (lambda (_g135673135675_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135673135675_
                                                   'receiver:
                                                   _self135672_
                                                   'methods:
                                                   _method-calls133302_
                                                   'slots:
                                                   _slot-refs133303_)))
                                              _L135659_)))
                                         _tl135639135656_
                                         _hd135640135654_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135635135646_ _g135636135649_))))))
                        (declare (not safe))
                        (_g135634135678_ _clause135633_)))
                    (let ((__tmp137370
                           (lambda (_g135680135683_ _g135681135685_)
                             (let ()
                               (declare (not safe))
                               (cons _g135680135683_ _g135681135685_)))))
                      (declare (not safe))
                      (foldr1 __tmp137370 '() _L135620_))))
                 _clause135578135617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135573135601_
                                           _target135570135596_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135564135583_ _g135565135586_))))))
                            (let ()
                              (declare (not safe))
                              (_g135564135583_ _g135565135586_)))))
                    (let ()
                      (declare (not safe))
                      (_g135564135583_ _g135565135586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135563135688_ _L135481_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133306_))
                                                  _stx133210_
                                                  (let* ((_specializer-id135697_
                                                          (let* ((_id135691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137372
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133283_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137372 '"::specialize")))
                         (_specializer-id135694_
                          (let ((__tmp137373
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133210_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135691_ __tmp137373))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135694_))
                    _specializer-id135694_))
                 (_$klass135699_
                  (let ((__tmp137374 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137374)))
                 (_$method-table135701_
                  (let ((__tmp137375 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137375)))
                 (_methods135703_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133302_)))
                 (_$methods135707_
                  (map (lambda (_id135705_)
                         (let ((__tmp137376 (gensym _id135705_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137376)))
                       _methods135703_))
                 (_g137377_
                  (for-each
                   (lambda (_g135708135711_ _g135709135713_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133302_
                        _g135708135711_
                        _g135709135713_)))
                   _methods135703_
                   _$methods135707_))
                 (_methods-bind135724_
                  (map (lambda (_g135716135719_ _g135717135721_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133212_
                            _$klass135699_
                            _$method-table135701_
                            _g135716135719_
                            _g135717135721_)))
                       _methods135703_
                       _$methods135707_))
                 (_slots135726_
                  (let () (declare (not safe)) (hash-keys _slot-refs133303_)))
                 (_$slots135730_
                  (map (lambda (_id135728_)
                         (let ((__tmp137378 (gensym _id135728_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137378)))
                       _slots135726_))
                 (_g137379_
                  (for-each
                   (lambda (_g135731135734_ _g135732135736_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133303_
                        _g135731135734_
                        _g135732135736_)))
                   _slots135726_
                   _$slots135730_))
                 (_slots-bind135747_
                  (map (lambda (_g135739135742_ _g135740135744_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133213_
                            _$klass135699_
                            _g135739135742_
                            _g135740135744_)))
                       _slots135726_
                       _$slots135730_))
                 (_specializer-lambda-expr135820_
                  (let* ((_g135749135763_
                          (lambda (_g135750135760_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135750135760_))))
                         (_g135748135817_
                          (lambda (_g135750135766_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135750135766_))
                                (let ((_e135755135768_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135750135766_))))
                                  (let ((_hd135754135771_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135755135768_)))
                                        (_tl135753135773_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135755135768_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135753135773_))
                                        (let ((_e135758135776_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135753135773_))))
                                          (let ((_hd135757135779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135758135776_)))
                                                (_tl135756135781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135758135776_))))
                                            ((lambda (_L135784_ _L135785_)
                                               (let* ((_self135808_
                                                       (list-ref
                                                        _L135785_
                                                        _self-index135257_))
                                                      (_body135814_
                                                       (map (lambda (_g135809135811_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135809135811_
                         'receiver:
                         _self135808_
                         'klass:
                         _$klass135699_
                         'methods:
                         _method-calls133302_
                         'slots:
                         _slot-refs133303_)))
                    _L135784_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137380
                                                        (let ((__tmp137381
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135785_ _body135814_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137381))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137380
                                                    _L135482_))))
                                             _tl135756135781_
                                             _hd135757135779_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135749135763_ _g135750135766_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135749135763_ _g135750135766_))))))
                    (declare (not safe))
                    (_g135748135817_ _L135482_)))
                 (_specializer-case-lambda-expr135955_
                  (let* ((_g135822135841_
                          (lambda (_g135823135838_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135823135838_))))
                         (_g135821135952_
                          (lambda (_g135823135844_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135823135844_))
                                (let ((_e135827135846_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135823135844_))))
                                  (let ((_hd135826135849_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135827135846_)))
                                        (_tl135825135851_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135827135846_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135825135851_))
                                        (let ((_g137382_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135825135851_
                                                  '0))))
                                          (begin
                                            (let ((_g137383_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137382_)
                                                         (##vector-length
                                                          _g137382_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137383_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137383_)))
                                            (let ((_target135828135854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137382_
                                                      0)))
                                                  (_tl135830135856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137382_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135830135856_))
                                                  (letrec ((_loop135831135859_
                                                            (lambda (_hd135829135862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135835135864_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135829135862_))
                          (let ((_e135832135867_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135829135862_))))
                            (let ((_lp-hd135833135870_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135832135867_)))
                                  (_lp-tl135834135872_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135832135867_))))
                              (let ((__tmp137386
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135833135870_
                                             _clause135835135864_))))
                                (declare (not safe))
                                (_loop135831135859_
                                 _lp-tl135834135872_
                                 __tmp137386))))
                          (let ((_clause135836135875_
                                 (reverse _clause135835135864_)))
                            ((lambda (_L135878_)
                               (let* ((_clauses135950_
                                       (map (lambda (_clause135892_)
                                              (let* ((_g135894135905_
                                                      (lambda (_g135895135902_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135895135902_))))
                                                     (_g135893135940_
                                                      (lambda (_g135895135908_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135895135908_))
                                                            (let ((_e135900135910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135895135908_))))
                      (let ((_hd135899135913_
                             (let ()
                               (declare (not safe))
                               (##car _e135900135910_)))
                            (_tl135898135915_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135900135910_))))
                        ((lambda (_L135918_ _L135919_)
                           (let* ((_self135931_
                                   (list-ref _L135919_ _self-index135257_))
                                  (_body135937_
                                   (map (lambda (_g135932135934_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135932135934_
                                             'receiver:
                                             _self135931_
                                             'klass:
                                             _$klass135699_
                                             'methods:
                                             _method-calls133302_
                                             'slots:
                                             _slot-refs133303_)))
                                        _L135918_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135919_ _body135937_))))
                         _tl135898135915_
                         _hd135899135913_)))
                    (let ()
                      (declare (not safe))
                      (_g135894135905_ _g135895135908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135893135940_
                                                 _clause135892_)))
                                            (let ((__tmp137384
                                                   (lambda (_g135942135945_
                                                            _g135943135947_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135942135945_
                                                             _g135943135947_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137384
                                                      '()
                                                      _L135878_))))
                                      (__tmp137385
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135950_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137385
                                  _L135481_)))
                             _clause135836135875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135831135859_
                                                       _target135828135854_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135822135841_
                                                     _g135823135844_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135822135841_ _g135823135844_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135822135841_ _g135823135844_))))))
                    (declare (not safe))
                    (_g135821135952_ _L135481_)))
                 (_specializer-impl135957_
                  (let ((__tmp137387
                         (let ((__tmp137388
                                (let ((__tmp137390
                                       (let ((__tmp137391
                                              (let ((__tmp137408
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134958_ '())))
                                                    (__tmp137392
                                                     (let ((__tmp137393
                                                            (let ((__tmp137394
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137396
                                  (let ((__tmp137397
                                         (let ((__tmp137407
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134957_ '())))
                                               (__tmp137398
                                                (let ((__tmp137399
                                                       (let ((__tmp137400
                                                              (let ((__tmp137401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137403
                                    (let ((__tmp137404
                                           (let ((__tmp137406
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135483_ '())))
                                                 (__tmp137405
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135820_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137406 __tmp137405))))
                                      (declare (not safe))
                                      (cons __tmp137404 '())))
                                   (__tmp137402
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135955_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137403 __tmp137402))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137401))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137400 _stx133210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137399 '()))))
                                           (declare (not safe))
                                           (cons __tmp137407 __tmp137398))))
                                    (declare (not safe))
                                    (cons __tmp137397 '())))
                                 (__tmp137395
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134955_ '()))))
                             (declare (not safe))
                             (cons __tmp137396 __tmp137395))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137394))))
               (declare (not safe))
               (cons __tmp137393 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137408
                                                      __tmp137392))))
                                         (declare (not safe))
                                         (cons __tmp137391 '())))
                                      (__tmp137389
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134954_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137390 __tmp137389))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137388))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137387 _stx133210_)))
                 (_specializer-impl135959_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133214_
                     _$klass135699_
                     _$method-table135701_
                     _methods-bind135724_
                     _slots-bind135747_
                     _specializer-impl135957_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137410
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133283_)))
                                                          (__tmp137409
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135697_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137410
                                                       '" => "
                                                       __tmp137409))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133215_
                                                       _L133283_
                                                       _specializer-id135697_
                                                       _specializer-impl135959_)))))
                                            _hd135414135476_
                                            _hd135411135468_
                                            _hd135408135460_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135390135420_
                                              _g135391135423_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135390135420_ _g135391135423_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135390135420_ _g135391135423_)))
                           (let ()
                             (declare (not safe))
                             (_g135390135420_ _g135391135423_)))))
                   (let ()
                     (declare (not safe))
                     (_g135390135420_ _g135391135423_)))
               (let ()
                 (declare (not safe))
                 (_g135390135420_ _g135391135423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135390135420_
                                                  _g135391135423_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135390135420_ _g135391135423_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135390135420_ _g135391135423_)))))
                       (let ()
                         (declare (not safe))
                         (_g135390135420_ _g135391135423_)))))
               (let ()
                 (declare (not safe))
                 (_g135390135420_ _g135391135423_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135389135962_ _L134956_))
                                         _stx133210_))))
                             _hd135053135176_
                             _kw-ref135051135197_
                             _hd135041135163_
                             _hd135032135139_
                             _hd135023135115_)
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop135046135181_
                                                   _target135043135168_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134997135059_
                                                 _g134998135062_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134997135059_ _g134998135062_))))))
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_)))
                        (let ()
                          (declare (not safe))
                          (_g134997135059_ _g134998135062_)))
                    (let ()
                      (declare (not safe))
                      (_g134997135059_ _g134998135062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134997135059_
                                                       _g134998135062_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134997135059_
                                                   _g134998135062_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134997135059_
                                               _g134998135062_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134997135059_ _g134998135062_)))))
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_)))
                        (let ()
                          (declare (not safe))
                          (_g134997135059_ _g134998135062_)))))
                (let ()
                  (declare (not safe))
                  (_g134997135059_ _g134998135062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134997135059_
                                                       _g134998135062_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134997135059_
                                                   _g134998135062_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134997135059_ _g134998135062_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134997135059_ _g134998135062_)))
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_)))))
                    (let ()
                      (declare (not safe))
                      (_g134997135059_ _g134998135062_)))
                (let ()
                  (declare (not safe))
                  (_g134997135059_ _g134998135062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134997135059_
                                                       _g134998135062_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134997135059_
                                               _g134998135062_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134997135059_ _g134998135062_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134997135059_ _g134998135062_)))
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_)))))
                    (let ()
                      (declare (not safe))
                      (_g134997135059_ _g134998135062_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134997135059_
                                                       _g134998135062_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134997135059_
                                               _g134998135062_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134997135059_ _g134998135062_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134997135059_ _g134998135062_)))))
                            (let ()
                              (declare (not safe))
                              (_g134997135059_ _g134998135062_))))))
                (declare (not safe))
                (_g134996135965_ _L134955_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134831134949_
                                                    _hd134828134941_
                                                    _hd134825134933_
                                                    _hd134822134925_
                                                    _hd134804134877_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134784134837_
                                                      _g134785134840_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134784134837_
                                              _g134785134840_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134784134837_ _g134785134840_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134784134837_ _g134785134840_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134784134837_ _g134785134840_)))))
                       (let ()
                         (declare (not safe))
                         (_g134784134837_ _g134785134840_)))
                   (let ()
                     (declare (not safe))
                     (_g134784134837_ _g134785134840_)))
               (let ()
                 (declare (not safe))
                 (_g134784134837_ _g134785134840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134784134837_
                                                  _g134785134840_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134784134837_
                                              _g134785134840_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134784134837_ _g134785134840_)))))
                           (let ()
                             (declare (not safe))
                             (_g134784134837_ _g134785134840_)))))
                   (let ()
                     (declare (not safe))
                     (_g134784134837_ _g134785134840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134784134837_
                                                      _g134785134840_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134784134837_
                                                  _g134785134840_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134784134837_
                                              _g134785134840_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134784134837_ _g134785134840_)))))
                           (let ()
                             (declare (not safe))
                             (_g134784134837_ _g134785134840_)))
                       (let ()
                         (declare (not safe))
                         (_g134784134837_ _g134785134840_)))))
               (let ()
                 (declare (not safe))
                 (_g134784134837_ _g134785134840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134784134837_
                                                  _g134785134840_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134784134837_ _g134785134840_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134784134837_ _g134785134840_)))
                           (let ()
                             (declare (not safe))
                             (_g134784134837_ _g134785134840_)))
                       (let ()
                         (declare (not safe))
                         (_g134784134837_ _g134785134840_)))))
               (let ()
                 (declare (not safe))
                 (_g134784134837_ _g134785134840_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134783135968_ _L133282_))
                                         _stx133210_))))))))
                  (___kont136192136193_ (lambda () _stx133210_)))
              (let ((___match136221136222_
                     (lambda (_e133224133250_
                              _hd133223133253_
                              _tl133222133255_
                              _e133227133258_
                              _hd133226133261_
                              _tl133225133263_
                              _e133230133266_
                              _hd133229133269_
                              _tl133228133271_
                              _e133233133274_
                              _hd133232133277_
                              _tl133231133279_)
                       (let ((_L133282_ _hd133232133277_)
                             (_L133283_ _hd133229133269_))
                         (if (let ((__tmp137499
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133283_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137499))
                             (___kont136190136191_ _L133282_ _L133283_)
                             (___kont136192136193_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136188136189_))
                    (let ((_e133224133250_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136188136189_))))
                      (let ((_tl133222133255_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133224133250_)))
                            (_hd133223133253_
                             (let ()
                               (declare (not safe))
                               (##car _e133224133250_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133222133255_))
                            (let ((_e133227133258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133222133255_))))
                              (let ((_tl133225133263_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133227133258_)))
                                    (_hd133226133261_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133227133258_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133226133261_))
                                    (let ((_e133230133266_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133226133261_))))
                                      (let ((_tl133228133271_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133230133266_)))
                                            (_hd133229133269_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133230133266_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133228133271_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133225133263_))
                                                (let ((_e133233133274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133225133263_))))
                                                  (let ((_tl133231133279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133233133274_)))
                                                        (_hd133232133277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133233133274_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133231133279_))
                                                        (___match136221136222_
                                                         _e133224133250_
                                                         _hd133223133253_
                                                         _tl133222133255_
                                                         _e133227133258_
                                                         _hd133226133261_
                                                         _tl133225133263_
                                                         _e133230133266_
                                                         _hd133229133269_
                                                         _tl133228133271_
                                                         _e133233133274_
                                                         _hd133232133277_
                                                         _tl133231133279_)
                                                        (___kont136192136193_))))
                                                (___kont136192136193_))
                                            (___kont136192136193_))))
                                    (___kont136192136193_))))
                            (___kont136192136193_))))
                    (___kont136192136193_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132170_ _stx132171_)
        (let* ((___stx136224136225_ _stx132171_)
               (_g132179132401_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136224136225_)))))
          (let ((___kont136226136227_
                 (lambda (_L133158_ _L133159_ _L133160_ _L133161_)
                   (let ((__tmp137501
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132170_ 'methods)))
                         (__tmp137500
                          (let () (declare (not safe)) (gx#stx-e _L133159_))))
                     (declare (not safe))
                     (hash-put! __tmp137501 __tmp137500 '#t))
                   (for-each
                    (lambda (_g133194133196_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132170_ _g133194133196_)))
                    (let ((__tmp137502
                           (lambda (_g133198133201_ _g133199133203_)
                             (let ()
                               (declare (not safe))
                               (cons _g133198133201_ _g133199133203_)))))
                      (declare (not safe))
                      (foldr1 __tmp137502 '() _L133158_)))))
                (___kont136230136231_
                 (lambda (_L132993_ _L132994_ _L132995_ _L132996_ _L132997_)
                   (let ((__tmp137504
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132170_ 'methods)))
                         (__tmp137503
                          (let () (declare (not safe)) (gx#stx-e _L132994_))))
                     (declare (not safe))
                     (hash-put! __tmp137504 __tmp137503 '#t))
                   (for-each
                    (lambda (_g133037133039_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132170_ _g133037133039_)))
                    (let ((__tmp137505
                           (lambda (_g133041133044_ _g133042133046_)
                             (let ()
                               (declare (not safe))
                               (cons _g133041133044_ _g133042133046_)))))
                      (declare (not safe))
                      (foldr1 __tmp137505 '() _L132993_)))))
                (___kont136234136235_
                 (lambda (_L132826_ _L132827_ _L132828_)
                   (let ((__tmp137507
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132170_ 'slots)))
                         (__tmp137506
                          (let () (declare (not safe)) (gx#stx-e _L132826_))))
                     (declare (not safe))
                     (hash-put! __tmp137507 __tmp137506 '#t))))
                (___kont136236136237_
                 (lambda (_L132703_ _L132704_ _L132705_ _L132706_)
                   (let ((__tmp137509
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132170_ 'slots)))
                         (__tmp137508
                          (let () (declare (not safe)) (gx#stx-e _L132704_))))
                     (declare (not safe))
                     (hash-put! __tmp137509 __tmp137508 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132170_ _L132703_))))
                (___kont136238136239_
                 (lambda (_L132577_ _L132578_)
                   (let* ((_accessor132600_
                           (let ((__tmp137510
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132578_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137510)))
                          (_klass132602_
                           (let ((__tmp137511
                                  (##structure-ref
                                   _accessor132600_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132171_
                              __tmp137511)))
                          (_slot132604_
                           (##structure-ref
                            _accessor132600_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137514
                                     (##structure-ref
                                      _accessor132600_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137514))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132602_
                                     _slot132604_))
                                  (##structure-ref
                                   _klass132602_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137513
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132170_ 'slots)))
                               (__tmp137512
                                (##structure-ref
                                 _accessor132600_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137513 __tmp137512 '#t))))))
                (___kont136240136241_
                 (lambda (_L132477_ _L132478_ _L132479_)
                   (let* ((_mutator132506_
                           (let ((__tmp137515
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132479_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137515)))
                          (_klass132508_
                           (let ((__tmp137516
                                  (##structure-ref
                                   _mutator132506_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132171_
                              __tmp137516)))
                          (_slot132510_
                           (##structure-ref
                            _mutator132506_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137518
                                     (##structure-ref
                                      _mutator132506_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137518))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132508_
                                     _slot132510_))
                                  (##structure-ref
                                   _klass132508_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137517
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132170_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137517 _slot132510_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132170_ _L132477_)))))
                (___kont136242136243_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132170_ _stx132171_)))))
            (let* ((___match136723136724_
                    (lambda (_e132375132413_
                             _hd132374132416_
                             _tl132373132418_
                             _e132378132421_
                             _hd132377132424_
                             _tl132376132426_
                             _e132381132429_
                             _hd132380132432_
                             _tl132379132434_
                             _e132384132437_
                             _hd132383132440_
                             _tl132382132442_
                             _e132387132445_
                             _hd132386132448_
                             _tl132385132450_
                             _e132390132453_
                             _hd132389132456_
                             _tl132388132458_
                             _e132393132461_
                             _hd132392132464_
                             _tl132391132466_
                             _e132396132469_
                             _hd132395132472_
                             _tl132394132474_)
                      (let ((_L132477_ _hd132395132472_)
                            (_L132478_ _hd132392132464_)
                            (_L132479_ _hd132383132440_))
                        (if (and (let ((__tmp137520
                                        (let ((__tmp137521
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132479_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137521))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137520
                                    'gxc#!mutator::t))
                                 (let ((__tmp137519
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132170_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132478_
                                    __tmp137519)))
                            (___kont136240136241_
                             _L132477_
                             _L132478_
                             _L132479_)
                            (___kont136242136243_)))))
                   (___match136721136722_
                    (lambda (_e132375132413_
                             _hd132374132416_
                             _tl132373132418_
                             _e132378132421_
                             _hd132377132424_
                             _tl132376132426_
                             _e132381132429_
                             _hd132380132432_
                             _tl132379132434_
                             _e132384132437_
                             _hd132383132440_
                             _tl132382132442_
                             _e132387132445_
                             _hd132386132448_
                             _tl132385132450_
                             _e132390132453_
                             _hd132389132456_
                             _tl132388132458_
                             _e132393132461_
                             _hd132392132464_
                             _tl132391132466_
                             _e132396132469_
                             _hd132395132472_
                             _tl132394132474_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132394132474_))
                          (___match136723136724_
                           _e132375132413_
                           _hd132374132416_
                           _tl132373132418_
                           _e132378132421_
                           _hd132377132424_
                           _tl132376132426_
                           _e132381132429_
                           _hd132380132432_
                           _tl132379132434_
                           _e132384132437_
                           _hd132383132440_
                           _tl132382132442_
                           _e132387132445_
                           _hd132386132448_
                           _tl132385132450_
                           _e132390132453_
                           _hd132389132456_
                           _tl132388132458_
                           _e132393132461_
                           _hd132392132464_
                           _tl132391132466_
                           _e132396132469_
                           _hd132395132472_
                           _tl132394132474_)
                          (___kont136242136243_))))
                   (___match136715136716_
                    (lambda (_e132375132413_
                             _hd132374132416_
                             _tl132373132418_
                             _e132378132421_
                             _hd132377132424_
                             _tl132376132426_
                             _e132381132429_
                             _hd132380132432_
                             _tl132379132434_
                             _e132384132437_
                             _hd132383132440_
                             _tl132382132442_
                             _e132387132445_
                             _hd132386132448_
                             _tl132385132450_
                             _e132390132453_
                             _hd132389132456_
                             _tl132388132458_
                             _e132393132461_
                             _hd132392132464_
                             _tl132391132466_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132385132450_))
                          (let ((_e132396132469_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132385132450_))))
                            (let ((_tl132394132474_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132396132469_)))
                                  (_hd132395132472_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132396132469_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132394132474_))
                                  (___match136723136724_
                                   _e132375132413_
                                   _hd132374132416_
                                   _tl132373132418_
                                   _e132378132421_
                                   _hd132377132424_
                                   _tl132376132426_
                                   _e132381132429_
                                   _hd132380132432_
                                   _tl132379132434_
                                   _e132384132437_
                                   _hd132383132440_
                                   _tl132382132442_
                                   _e132387132445_
                                   _hd132386132448_
                                   _tl132385132450_
                                   _e132390132453_
                                   _hd132389132456_
                                   _tl132388132458_
                                   _e132393132461_
                                   _hd132392132464_
                                   _tl132391132466_
                                   _e132396132469_
                                   _hd132395132472_
                                   _tl132394132474_)
                                  (___kont136242136243_))))
                          (___kont136242136243_))))
                   (___match136661136662_
                    (lambda (_e132351132521_
                             _hd132350132524_
                             _tl132349132526_
                             _e132354132529_
                             _hd132353132532_
                             _tl132352132534_
                             _e132357132537_
                             _hd132356132540_
                             _tl132355132542_
                             _e132360132545_
                             _hd132359132548_
                             _tl132358132550_
                             _e132363132553_
                             _hd132362132556_
                             _tl132361132558_
                             _e132366132561_
                             _hd132365132564_
                             _tl132364132566_
                             _e132369132569_
                             _hd132368132572_
                             _tl132367132574_)
                      (let ((_L132577_ _hd132368132572_)
                            (_L132578_ _hd132359132548_))
                        (if (and (let ((__tmp137523
                                        (let ((__tmp137524
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132578_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137524))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137523
                                    'gxc#!accessor::t))
                                 (let ((__tmp137522
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132170_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132577_
                                    __tmp137522)))
                            (___kont136238136239_ _L132577_ _L132578_)
                            (___kont136242136243_)))))
                   (___match136659136660_
                    (lambda (_e132351132521_
                             _hd132350132524_
                             _tl132349132526_
                             _e132354132529_
                             _hd132353132532_
                             _tl132352132534_
                             _e132357132537_
                             _hd132356132540_
                             _tl132355132542_
                             _e132360132545_
                             _hd132359132548_
                             _tl132358132550_
                             _e132363132553_
                             _hd132362132556_
                             _tl132361132558_
                             _e132366132561_
                             _hd132365132564_
                             _tl132364132566_
                             _e132369132569_
                             _hd132368132572_
                             _tl132367132574_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132361132558_))
                          (___match136661136662_
                           _e132351132521_
                           _hd132350132524_
                           _tl132349132526_
                           _e132354132529_
                           _hd132353132532_
                           _tl132352132534_
                           _e132357132537_
                           _hd132356132540_
                           _tl132355132542_
                           _e132360132545_
                           _hd132359132548_
                           _tl132358132550_
                           _e132363132553_
                           _hd132362132556_
                           _tl132361132558_
                           _e132366132561_
                           _hd132365132564_
                           _tl132364132566_
                           _e132369132569_
                           _hd132368132572_
                           _tl132367132574_)
                          (___match136715136716_
                           _e132351132521_
                           _hd132350132524_
                           _tl132349132526_
                           _e132354132529_
                           _hd132353132532_
                           _tl132352132534_
                           _e132357132537_
                           _hd132356132540_
                           _tl132355132542_
                           _e132360132545_
                           _hd132359132548_
                           _tl132358132550_
                           _e132363132553_
                           _hd132362132556_
                           _tl132361132558_
                           _e132366132561_
                           _hd132365132564_
                           _tl132364132566_
                           _e132369132569_
                           _hd132368132572_
                           _tl132367132574_))))
                   (___match136605136606_
                    (lambda (_e132316132615_
                             _hd132315132618_
                             _tl132314132620_
                             _e132319132623_
                             _hd132318132626_
                             _tl132317132628_
                             _e132322132631_
                             _hd132321132634_
                             _tl132320132636_
                             _e132325132639_
                             _hd132324132642_
                             _tl132323132644_
                             _e132328132647_
                             _hd132327132650_
                             _tl132326132652_
                             _e132331132655_
                             _hd132330132658_
                             _tl132329132660_
                             _e132334132663_
                             _hd132333132666_
                             _tl132332132668_
                             _e132337132671_
                             _hd132336132674_
                             _tl132335132676_
                             _e132340132679_
                             _hd132339132682_
                             _tl132338132684_
                             _e132343132687_
                             _hd132342132690_
                             _tl132341132692_
                             _e132346132695_
                             _hd132345132698_
                             _tl132344132700_)
                      (let ((_L132703_ _hd132345132698_)
                            (_L132704_ _hd132342132690_)
                            (_L132705_ _hd132333132666_)
                            (_L132706_ _hd132324132642_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132706_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132706_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137525
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132170_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132705_
                                    __tmp137525)))
                            (___kont136236136237_
                             _L132703_
                             _L132704_
                             _L132705_
                             _L132706_)
                            (___kont136242136243_)))))
                   (___match136597136598_
                    (lambda (_e132316132615_
                             _hd132315132618_
                             _tl132314132620_
                             _e132319132623_
                             _hd132318132626_
                             _tl132317132628_
                             _e132322132631_
                             _hd132321132634_
                             _tl132320132636_
                             _e132325132639_
                             _hd132324132642_
                             _tl132323132644_
                             _e132328132647_
                             _hd132327132650_
                             _tl132326132652_
                             _e132331132655_
                             _hd132330132658_
                             _tl132329132660_
                             _e132334132663_
                             _hd132333132666_
                             _tl132332132668_
                             _e132337132671_
                             _hd132336132674_
                             _tl132335132676_
                             _e132340132679_
                             _hd132339132682_
                             _tl132338132684_
                             _e132343132687_
                             _hd132342132690_
                             _tl132341132692_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132335132676_))
                          (let ((_e132346132695_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132335132676_))))
                            (let ((_tl132344132700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132346132695_)))
                                  (_hd132345132698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132346132695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132344132700_))
                                  (___match136605136606_
                                   _e132316132615_
                                   _hd132315132618_
                                   _tl132314132620_
                                   _e132319132623_
                                   _hd132318132626_
                                   _tl132317132628_
                                   _e132322132631_
                                   _hd132321132634_
                                   _tl132320132636_
                                   _e132325132639_
                                   _hd132324132642_
                                   _tl132323132644_
                                   _e132328132647_
                                   _hd132327132650_
                                   _tl132326132652_
                                   _e132331132655_
                                   _hd132330132658_
                                   _tl132329132660_
                                   _e132334132663_
                                   _hd132333132666_
                                   _tl132332132668_
                                   _e132337132671_
                                   _hd132336132674_
                                   _tl132335132676_
                                   _e132340132679_
                                   _hd132339132682_
                                   _tl132338132684_
                                   _e132343132687_
                                   _hd132342132690_
                                   _tl132341132692_
                                   _e132346132695_
                                   _hd132345132698_
                                   _tl132344132700_)
                                  (___kont136242136243_))))
                          (___match136721136722_
                           _e132316132615_
                           _hd132315132618_
                           _tl132314132620_
                           _e132319132623_
                           _hd132318132626_
                           _tl132317132628_
                           _e132322132631_
                           _hd132321132634_
                           _tl132320132636_
                           _e132325132639_
                           _hd132324132642_
                           _tl132323132644_
                           _e132328132647_
                           _hd132327132650_
                           _tl132326132652_
                           _e132331132655_
                           _hd132330132658_
                           _tl132329132660_
                           _e132334132663_
                           _hd132333132666_
                           _tl132332132668_
                           _e132337132671_
                           _hd132336132674_
                           _tl132335132676_))))
                   (___match136519136520_
                    (lambda (_e132282132746_
                             _hd132281132749_
                             _tl132280132751_
                             _e132285132754_
                             _hd132284132757_
                             _tl132283132759_
                             _e132288132762_
                             _hd132287132765_
                             _tl132286132767_
                             _e132291132770_
                             _hd132290132773_
                             _tl132289132775_
                             _e132294132778_
                             _hd132293132781_
                             _tl132292132783_
                             _e132297132786_
                             _hd132296132789_
                             _tl132295132791_
                             _e132300132794_
                             _hd132299132797_
                             _tl132298132799_
                             _e132303132802_
                             _hd132302132805_
                             _tl132301132807_
                             _e132306132810_
                             _hd132305132813_
                             _tl132304132815_
                             _e132309132818_
                             _hd132308132821_
                             _tl132307132823_)
                      (let ((_L132826_ _hd132308132821_)
                            (_L132827_ _hd132299132797_)
                            (_L132828_ _hd132290132773_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132828_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132828_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137526
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132170_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132827_
                                    __tmp137526)))
                            (___kont136234136235_
                             _L132826_
                             _L132827_
                             _L132828_)
                            (___match136723136724_
                             _e132282132746_
                             _hd132281132749_
                             _tl132280132751_
                             _e132285132754_
                             _hd132284132757_
                             _tl132283132759_
                             _e132288132762_
                             _hd132287132765_
                             _tl132286132767_
                             _e132291132770_
                             _hd132290132773_
                             _tl132289132775_
                             _e132294132778_
                             _hd132293132781_
                             _tl132292132783_
                             _e132297132786_
                             _hd132296132789_
                             _tl132295132791_
                             _e132300132794_
                             _hd132299132797_
                             _tl132298132799_
                             _e132303132802_
                             _hd132302132805_
                             _tl132301132807_)))))
                   (___match136517136518_
                    (lambda (_e132282132746_
                             _hd132281132749_
                             _tl132280132751_
                             _e132285132754_
                             _hd132284132757_
                             _tl132283132759_
                             _e132288132762_
                             _hd132287132765_
                             _tl132286132767_
                             _e132291132770_
                             _hd132290132773_
                             _tl132289132775_
                             _e132294132778_
                             _hd132293132781_
                             _tl132292132783_
                             _e132297132786_
                             _hd132296132789_
                             _tl132295132791_
                             _e132300132794_
                             _hd132299132797_
                             _tl132298132799_
                             _e132303132802_
                             _hd132302132805_
                             _tl132301132807_
                             _e132306132810_
                             _hd132305132813_
                             _tl132304132815_
                             _e132309132818_
                             _hd132308132821_
                             _tl132307132823_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132301132807_))
                          (___match136519136520_
                           _e132282132746_
                           _hd132281132749_
                           _tl132280132751_
                           _e132285132754_
                           _hd132284132757_
                           _tl132283132759_
                           _e132288132762_
                           _hd132287132765_
                           _tl132286132767_
                           _e132291132770_
                           _hd132290132773_
                           _tl132289132775_
                           _e132294132778_
                           _hd132293132781_
                           _tl132292132783_
                           _e132297132786_
                           _hd132296132789_
                           _tl132295132791_
                           _e132300132794_
                           _hd132299132797_
                           _tl132298132799_
                           _e132303132802_
                           _hd132302132805_
                           _tl132301132807_
                           _e132306132810_
                           _hd132305132813_
                           _tl132304132815_
                           _e132309132818_
                           _hd132308132821_
                           _tl132307132823_)
                          (___match136597136598_
                           _e132282132746_
                           _hd132281132749_
                           _tl132280132751_
                           _e132285132754_
                           _hd132284132757_
                           _tl132283132759_
                           _e132288132762_
                           _hd132287132765_
                           _tl132286132767_
                           _e132291132770_
                           _hd132290132773_
                           _tl132289132775_
                           _e132294132778_
                           _hd132293132781_
                           _tl132292132783_
                           _e132297132786_
                           _hd132296132789_
                           _tl132295132791_
                           _e132300132794_
                           _hd132299132797_
                           _tl132298132799_
                           _e132303132802_
                           _hd132302132805_
                           _tl132301132807_
                           _e132306132810_
                           _hd132305132813_
                           _tl132304132815_
                           _e132309132818_
                           _hd132308132821_
                           _tl132307132823_))))
                   (___match136507136508_
                    (lambda (_e132282132746_
                             _hd132281132749_
                             _tl132280132751_
                             _e132285132754_
                             _hd132284132757_
                             _tl132283132759_
                             _e132288132762_
                             _hd132287132765_
                             _tl132286132767_
                             _e132291132770_
                             _hd132290132773_
                             _tl132289132775_
                             _e132294132778_
                             _hd132293132781_
                             _tl132292132783_
                             _e132297132786_
                             _hd132296132789_
                             _tl132295132791_
                             _e132300132794_
                             _hd132299132797_
                             _tl132298132799_
                             _e132303132802_
                             _hd132302132805_
                             _tl132301132807_
                             _e132306132810_
                             _hd132305132813_
                             _tl132304132815_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132305132813_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132304132815_))
                              (let ((_e132309132818_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132304132815_))))
                                (let ((_tl132307132823_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132309132818_)))
                                      (_hd132308132821_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132309132818_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132307132823_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132301132807_))
                                          (___match136519136520_
                                           _e132282132746_
                                           _hd132281132749_
                                           _tl132280132751_
                                           _e132285132754_
                                           _hd132284132757_
                                           _tl132283132759_
                                           _e132288132762_
                                           _hd132287132765_
                                           _tl132286132767_
                                           _e132291132770_
                                           _hd132290132773_
                                           _tl132289132775_
                                           _e132294132778_
                                           _hd132293132781_
                                           _tl132292132783_
                                           _e132297132786_
                                           _hd132296132789_
                                           _tl132295132791_
                                           _e132300132794_
                                           _hd132299132797_
                                           _tl132298132799_
                                           _e132303132802_
                                           _hd132302132805_
                                           _tl132301132807_
                                           _e132306132810_
                                           _hd132305132813_
                                           _tl132304132815_
                                           _e132309132818_
                                           _hd132308132821_
                                           _tl132307132823_)
                                          (___match136597136598_
                                           _e132282132746_
                                           _hd132281132749_
                                           _tl132280132751_
                                           _e132285132754_
                                           _hd132284132757_
                                           _tl132283132759_
                                           _e132288132762_
                                           _hd132287132765_
                                           _tl132286132767_
                                           _e132291132770_
                                           _hd132290132773_
                                           _tl132289132775_
                                           _e132294132778_
                                           _hd132293132781_
                                           _tl132292132783_
                                           _e132297132786_
                                           _hd132296132789_
                                           _tl132295132791_
                                           _e132300132794_
                                           _hd132299132797_
                                           _tl132298132799_
                                           _e132303132802_
                                           _hd132302132805_
                                           _tl132301132807_
                                           _e132306132810_
                                           _hd132305132813_
                                           _tl132304132815_
                                           _e132309132818_
                                           _hd132308132821_
                                           _tl132307132823_))
                                      (___match136721136722_
                                       _e132282132746_
                                       _hd132281132749_
                                       _tl132280132751_
                                       _e132285132754_
                                       _hd132284132757_
                                       _tl132283132759_
                                       _e132288132762_
                                       _hd132287132765_
                                       _tl132286132767_
                                       _e132291132770_
                                       _hd132290132773_
                                       _tl132289132775_
                                       _e132294132778_
                                       _hd132293132781_
                                       _tl132292132783_
                                       _e132297132786_
                                       _hd132296132789_
                                       _tl132295132791_
                                       _e132300132794_
                                       _hd132299132797_
                                       _tl132298132799_
                                       _e132303132802_
                                       _hd132302132805_
                                       _tl132301132807_))))
                              (___match136721136722_
                               _e132282132746_
                               _hd132281132749_
                               _tl132280132751_
                               _e132285132754_
                               _hd132284132757_
                               _tl132283132759_
                               _e132288132762_
                               _hd132287132765_
                               _tl132286132767_
                               _e132291132770_
                               _hd132290132773_
                               _tl132289132775_
                               _e132294132778_
                               _hd132293132781_
                               _tl132292132783_
                               _e132297132786_
                               _hd132296132789_
                               _tl132295132791_
                               _e132300132794_
                               _hd132299132797_
                               _tl132298132799_
                               _e132303132802_
                               _hd132302132805_
                               _tl132301132807_))
                          (___match136721136722_
                           _e132282132746_
                           _hd132281132749_
                           _tl132280132751_
                           _e132285132754_
                           _hd132284132757_
                           _tl132283132759_
                           _e132288132762_
                           _hd132287132765_
                           _tl132286132767_
                           _e132291132770_
                           _hd132290132773_
                           _tl132289132775_
                           _e132294132778_
                           _hd132293132781_
                           _tl132292132783_
                           _e132297132786_
                           _hd132296132789_
                           _tl132295132791_
                           _e132300132794_
                           _hd132299132797_
                           _tl132298132799_
                           _e132303132802_
                           _hd132302132805_
                           _tl132301132807_))))
                   (___match136439136440_
                    (lambda (_e132231132865_
                             _hd132230132868_
                             _tl132229132870_
                             _e132234132873_
                             _hd132233132876_
                             _tl132232132878_
                             _e132237132881_
                             _hd132236132884_
                             _tl132235132886_
                             _e132240132889_
                             _hd132239132892_
                             _tl132238132894_
                             _e132243132897_
                             _hd132242132900_
                             _tl132241132902_
                             _e132246132905_
                             _hd132245132908_
                             _tl132244132910_
                             _e132249132913_
                             _hd132248132916_
                             _tl132247132918_
                             _e132252132921_
                             _hd132251132924_
                             _tl132250132926_
                             _e132255132929_
                             _hd132254132932_
                             _tl132253132934_
                             _e132258132937_
                             _hd132257132940_
                             _tl132256132942_
                             _e132261132945_
                             _hd132260132948_
                             _tl132259132950_
                             _e132264132953_
                             _hd132263132956_
                             _tl132262132958_
                             _e132267132961_
                             _hd132266132964_
                             _tl132265132966_
                             ___splice136232136233_
                             _target132268132969_
                             _tl132270132971_)
                      (letrec ((_loop132271132974_
                                (lambda (_hd132269132977_ _args132275132979_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132269132977_))
                                      (let ((_e132272132982_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132269132977_))))
                                        (let ((_lp-tl132274132987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132272132982_)))
                                              (_lp-hd132273132985_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132272132982_))))
                                          (let ((__tmp137528
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132273132985_
                                                         _args132275132979_))))
                                            (declare (not safe))
                                            (_loop132271132974_
                                             _lp-tl132274132987_
                                             __tmp137528))))
                                      (let ((_args132276132990_
                                             (reverse _args132275132979_)))
                                        (let ((_L132993_ _args132276132990_)
                                              (_L132994_ _hd132266132964_)
                                              (_L132995_ _hd132257132940_)
                                              (_L132996_ _hd132248132916_)
                                              (_L132997_ _hd132239132892_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132997_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132996_
                                                      'call-method))
                                                   (let ((__tmp137527
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132170_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132995_
                                                      __tmp137527)))
                                              (___kont136230136231_
                                               _L132993_
                                               _L132994_
                                               _L132995_
                                               _L132996_
                                               _L132997_)
                                              (___kont136242136243_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132271132974_ _target132268132969_ '())))))
                   (___match136397136398_
                    (lambda (_e132231132865_
                             _hd132230132868_
                             _tl132229132870_
                             _e132234132873_
                             _hd132233132876_
                             _tl132232132878_
                             _e132237132881_
                             _hd132236132884_
                             _tl132235132886_
                             _e132240132889_
                             _hd132239132892_
                             _tl132238132894_
                             _e132243132897_
                             _hd132242132900_
                             _tl132241132902_
                             _e132246132905_
                             _hd132245132908_
                             _tl132244132910_
                             _e132249132913_
                             _hd132248132916_
                             _tl132247132918_
                             _e132252132921_
                             _hd132251132924_
                             _tl132250132926_
                             _e132255132929_
                             _hd132254132932_
                             _tl132253132934_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132254132932_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132253132934_))
                              (let ((_e132258132937_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132253132934_))))
                                (let ((_tl132256132942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132258132937_)))
                                      (_hd132257132940_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132258132937_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132256132942_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132250132926_))
                                          (let ((_e132261132945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132250132926_))))
                                            (let ((_tl132259132950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132261132945_)))
                                                  (_hd132260132948_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132261132945_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132260132948_))
                                                  (let ((_e132264132953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132260132948_))))
                                                    (let ((_tl132262132958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132264132953_)))
                                                          (_hd132263132956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132264132953_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132263132956_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132263132956_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132262132958_))
                          (let ((_e132267132961_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132262132958_))))
                            (let ((_tl132265132966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132267132961_)))
                                  (_hd132266132964_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132267132961_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132265132966_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132259132950_))
                                      (let ((___splice136232136233_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132259132950_
                                                '0))))
                                        (let ((_tl132270132971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136232136233_
                                                  '1)))
                                              (_target132268132969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136232136233_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132270132971_))
                                              (___match136439136440_
                                               _e132231132865_
                                               _hd132230132868_
                                               _tl132229132870_
                                               _e132234132873_
                                               _hd132233132876_
                                               _tl132232132878_
                                               _e132237132881_
                                               _hd132236132884_
                                               _tl132235132886_
                                               _e132240132889_
                                               _hd132239132892_
                                               _tl132238132894_
                                               _e132243132897_
                                               _hd132242132900_
                                               _tl132241132902_
                                               _e132246132905_
                                               _hd132245132908_
                                               _tl132244132910_
                                               _e132249132913_
                                               _hd132248132916_
                                               _tl132247132918_
                                               _e132252132921_
                                               _hd132251132924_
                                               _tl132250132926_
                                               _e132255132929_
                                               _hd132254132932_
                                               _tl132253132934_
                                               _e132258132937_
                                               _hd132257132940_
                                               _tl132256132942_
                                               _e132261132945_
                                               _hd132260132948_
                                               _tl132259132950_
                                               _e132264132953_
                                               _hd132263132956_
                                               _tl132262132958_
                                               _e132267132961_
                                               _hd132266132964_
                                               _tl132265132966_
                                               ___splice136232136233_
                                               _target132268132969_
                                               _tl132270132971_)
                                              (___kont136242136243_))))
                                      (___kont136242136243_))
                                  (___kont136242136243_))))
                          (___kont136242136243_))
                      (___kont136242136243_))
                  (___kont136242136243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136242136243_))))
                                          (___match136721136722_
                                           _e132231132865_
                                           _hd132230132868_
                                           _tl132229132870_
                                           _e132234132873_
                                           _hd132233132876_
                                           _tl132232132878_
                                           _e132237132881_
                                           _hd132236132884_
                                           _tl132235132886_
                                           _e132240132889_
                                           _hd132239132892_
                                           _tl132238132894_
                                           _e132243132897_
                                           _hd132242132900_
                                           _tl132241132902_
                                           _e132246132905_
                                           _hd132245132908_
                                           _tl132244132910_
                                           _e132249132913_
                                           _hd132248132916_
                                           _tl132247132918_
                                           _e132252132921_
                                           _hd132251132924_
                                           _tl132250132926_))
                                      (___match136721136722_
                                       _e132231132865_
                                       _hd132230132868_
                                       _tl132229132870_
                                       _e132234132873_
                                       _hd132233132876_
                                       _tl132232132878_
                                       _e132237132881_
                                       _hd132236132884_
                                       _tl132235132886_
                                       _e132240132889_
                                       _hd132239132892_
                                       _tl132238132894_
                                       _e132243132897_
                                       _hd132242132900_
                                       _tl132241132902_
                                       _e132246132905_
                                       _hd132245132908_
                                       _tl132244132910_
                                       _e132249132913_
                                       _hd132248132916_
                                       _tl132247132918_
                                       _e132252132921_
                                       _hd132251132924_
                                       _tl132250132926_))))
                              (___match136721136722_
                               _e132231132865_
                               _hd132230132868_
                               _tl132229132870_
                               _e132234132873_
                               _hd132233132876_
                               _tl132232132878_
                               _e132237132881_
                               _hd132236132884_
                               _tl132235132886_
                               _e132240132889_
                               _hd132239132892_
                               _tl132238132894_
                               _e132243132897_
                               _hd132242132900_
                               _tl132241132902_
                               _e132246132905_
                               _hd132245132908_
                               _tl132244132910_
                               _e132249132913_
                               _hd132248132916_
                               _tl132247132918_
                               _e132252132921_
                               _hd132251132924_
                               _tl132250132926_))
                          (___match136507136508_
                           _e132231132865_
                           _hd132230132868_
                           _tl132229132870_
                           _e132234132873_
                           _hd132233132876_
                           _tl132232132878_
                           _e132237132881_
                           _hd132236132884_
                           _tl132235132886_
                           _e132240132889_
                           _hd132239132892_
                           _tl132238132894_
                           _e132243132897_
                           _hd132242132900_
                           _tl132241132902_
                           _e132246132905_
                           _hd132245132908_
                           _tl132244132910_
                           _e132249132913_
                           _hd132248132916_
                           _tl132247132918_
                           _e132252132921_
                           _hd132251132924_
                           _tl132250132926_
                           _e132255132929_
                           _hd132254132932_
                           _tl132253132934_))))
                   (___match136329136330_
                    (lambda (_e132187133054_
                             _hd132186133057_
                             _tl132185133059_
                             _e132190133062_
                             _hd132189133065_
                             _tl132188133067_
                             _e132193133070_
                             _hd132192133073_
                             _tl132191133075_
                             _e132196133078_
                             _hd132195133081_
                             _tl132194133083_
                             _e132199133086_
                             _hd132198133089_
                             _tl132197133091_
                             _e132202133094_
                             _hd132201133097_
                             _tl132200133099_
                             _e132205133102_
                             _hd132204133105_
                             _tl132203133107_
                             _e132208133110_
                             _hd132207133113_
                             _tl132206133115_
                             _e132211133118_
                             _hd132210133121_
                             _tl132209133123_
                             _e132214133126_
                             _hd132213133129_
                             _tl132212133131_
                             ___splice136228136229_
                             _target132215133134_
                             _tl132217133136_)
                      (letrec ((_loop132218133139_
                                (lambda (_hd132216133142_ _args132222133144_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132216133142_))
                                      (let ((_e132219133147_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132216133142_))))
                                        (let ((_lp-tl132221133152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132219133147_)))
                                              (_lp-hd132220133150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132219133147_))))
                                          (let ((__tmp137530
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132220133150_
                                                         _args132222133144_))))
                                            (declare (not safe))
                                            (_loop132218133139_
                                             _lp-tl132221133152_
                                             __tmp137530))))
                                      (let ((_args132223133155_
                                             (reverse _args132222133144_)))
                                        (let ((_L133158_ _args132223133155_)
                                              (_L133159_ _hd132213133129_)
                                              (_L133160_ _hd132204133105_)
                                              (_L133161_ _hd132195133081_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133161_
                                                      'call-method))
                                                   (let ((__tmp137529
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132170_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133160_
                                                      __tmp137529)))
                                              (___kont136226136227_
                                               _L133158_
                                               _L133159_
                                               _L133160_
                                               _L133161_)
                                              (___match136517136518_
                                               _e132187133054_
                                               _hd132186133057_
                                               _tl132185133059_
                                               _e132190133062_
                                               _hd132189133065_
                                               _tl132188133067_
                                               _e132193133070_
                                               _hd132192133073_
                                               _tl132191133075_
                                               _e132196133078_
                                               _hd132195133081_
                                               _tl132194133083_
                                               _e132199133086_
                                               _hd132198133089_
                                               _tl132197133091_
                                               _e132202133094_
                                               _hd132201133097_
                                               _tl132200133099_
                                               _e132205133102_
                                               _hd132204133105_
                                               _tl132203133107_
                                               _e132208133110_
                                               _hd132207133113_
                                               _tl132206133115_
                                               _e132211133118_
                                               _hd132210133121_
                                               _tl132209133123_
                                               _e132214133126_
                                               _hd132213133129_
                                               _tl132212133131_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132218133139_ _target132215133134_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136224136225_))
                  (let ((_e132187133054_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136224136225_))))
                    (let ((_tl132185133059_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132187133054_)))
                          (_hd132186133057_
                           (let ()
                             (declare (not safe))
                             (##car _e132187133054_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132185133059_))
                          (let ((_e132190133062_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132185133059_))))
                            (let ((_tl132188133067_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132190133062_)))
                                  (_hd132189133065_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132190133062_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132189133065_))
                                  (let ((_e132193133070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132189133065_))))
                                    (let ((_tl132191133075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132193133070_)))
                                          (_hd132192133073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132193133070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132192133073_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132192133073_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132191133075_))
                                                  (let ((_e132196133078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132191133075_))))
                                                    (let ((_tl132194133083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132196133078_)))
                                                          (_hd132195133081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132196133078_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132194133083_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132188133067_))
                      (let ((_e132199133086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132188133067_))))
                        (let ((_tl132197133091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132199133086_)))
                              (_hd132198133089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132199133086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132198133089_))
                              (let ((_e132202133094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132198133089_))))
                                (let ((_tl132200133099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132202133094_)))
                                      (_hd132201133097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132202133094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132201133097_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132201133097_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132200133099_))
                                              (let ((_e132205133102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132200133099_))))
                                                (let ((_tl132203133107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132205133102_)))
                                                      (_hd132204133105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132205133102_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132203133107_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132197133091_))
                                                          (let ((_e132208133110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132197133091_))))
                    (let ((_tl132206133115_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132208133110_)))
                          (_hd132207133113_
                           (let ()
                             (declare (not safe))
                             (##car _e132208133110_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132207133113_))
                          (let ((_e132211133118_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132207133113_))))
                            (let ((_tl132209133123_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132211133118_)))
                                  (_hd132210133121_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132211133118_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132210133121_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132210133121_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132209133123_))
                                          (let ((_e132214133126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132209133123_))))
                                            (let ((_tl132212133131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132214133126_)))
                                                  (_hd132213133129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132214133126_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132212133131_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132206133115_))
                                                      (let ((___splice136228136229_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132206133115_ '0))))
                (let ((_tl132217133136_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136228136229_ '1)))
                      (_target132215133134_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136228136229_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132217133136_))
                      (___match136329136330_
                       _e132187133054_
                       _hd132186133057_
                       _tl132185133059_
                       _e132190133062_
                       _hd132189133065_
                       _tl132188133067_
                       _e132193133070_
                       _hd132192133073_
                       _tl132191133075_
                       _e132196133078_
                       _hd132195133081_
                       _tl132194133083_
                       _e132199133086_
                       _hd132198133089_
                       _tl132197133091_
                       _e132202133094_
                       _hd132201133097_
                       _tl132200133099_
                       _e132205133102_
                       _hd132204133105_
                       _tl132203133107_
                       _e132208133110_
                       _hd132207133113_
                       _tl132206133115_
                       _e132211133118_
                       _hd132210133121_
                       _tl132209133123_
                       _e132214133126_
                       _hd132213133129_
                       _tl132212133131_
                       ___splice136228136229_
                       _target132215133134_
                       _tl132217133136_)
                      (___match136517136518_
                       _e132187133054_
                       _hd132186133057_
                       _tl132185133059_
                       _e132190133062_
                       _hd132189133065_
                       _tl132188133067_
                       _e132193133070_
                       _hd132192133073_
                       _tl132191133075_
                       _e132196133078_
                       _hd132195133081_
                       _tl132194133083_
                       _e132199133086_
                       _hd132198133089_
                       _tl132197133091_
                       _e132202133094_
                       _hd132201133097_
                       _tl132200133099_
                       _e132205133102_
                       _hd132204133105_
                       _tl132203133107_
                       _e132208133110_
                       _hd132207133113_
                       _tl132206133115_
                       _e132211133118_
                       _hd132210133121_
                       _tl132209133123_
                       _e132214133126_
                       _hd132213133129_
                       _tl132212133131_))))
              (___match136517136518_
               _e132187133054_
               _hd132186133057_
               _tl132185133059_
               _e132190133062_
               _hd132189133065_
               _tl132188133067_
               _e132193133070_
               _hd132192133073_
               _tl132191133075_
               _e132196133078_
               _hd132195133081_
               _tl132194133083_
               _e132199133086_
               _hd132198133089_
               _tl132197133091_
               _e132202133094_
               _hd132201133097_
               _tl132200133099_
               _e132205133102_
               _hd132204133105_
               _tl132203133107_
               _e132208133110_
               _hd132207133113_
               _tl132206133115_
               _e132211133118_
               _hd132210133121_
               _tl132209133123_
               _e132214133126_
               _hd132213133129_
               _tl132212133131_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136721136722_
                                                   _e132187133054_
                                                   _hd132186133057_
                                                   _tl132185133059_
                                                   _e132190133062_
                                                   _hd132189133065_
                                                   _tl132188133067_
                                                   _e132193133070_
                                                   _hd132192133073_
                                                   _tl132191133075_
                                                   _e132196133078_
                                                   _hd132195133081_
                                                   _tl132194133083_
                                                   _e132199133086_
                                                   _hd132198133089_
                                                   _tl132197133091_
                                                   _e132202133094_
                                                   _hd132201133097_
                                                   _tl132200133099_
                                                   _e132205133102_
                                                   _hd132204133105_
                                                   _tl132203133107_
                                                   _e132208133110_
                                                   _hd132207133113_
                                                   _tl132206133115_))))
                                          (___match136721136722_
                                           _e132187133054_
                                           _hd132186133057_
                                           _tl132185133059_
                                           _e132190133062_
                                           _hd132189133065_
                                           _tl132188133067_
                                           _e132193133070_
                                           _hd132192133073_
                                           _tl132191133075_
                                           _e132196133078_
                                           _hd132195133081_
                                           _tl132194133083_
                                           _e132199133086_
                                           _hd132198133089_
                                           _tl132197133091_
                                           _e132202133094_
                                           _hd132201133097_
                                           _tl132200133099_
                                           _e132205133102_
                                           _hd132204133105_
                                           _tl132203133107_
                                           _e132208133110_
                                           _hd132207133113_
                                           _tl132206133115_))
                                      (___match136397136398_
                                       _e132187133054_
                                       _hd132186133057_
                                       _tl132185133059_
                                       _e132190133062_
                                       _hd132189133065_
                                       _tl132188133067_
                                       _e132193133070_
                                       _hd132192133073_
                                       _tl132191133075_
                                       _e132196133078_
                                       _hd132195133081_
                                       _tl132194133083_
                                       _e132199133086_
                                       _hd132198133089_
                                       _tl132197133091_
                                       _e132202133094_
                                       _hd132201133097_
                                       _tl132200133099_
                                       _e132205133102_
                                       _hd132204133105_
                                       _tl132203133107_
                                       _e132208133110_
                                       _hd132207133113_
                                       _tl132206133115_
                                       _e132211133118_
                                       _hd132210133121_
                                       _tl132209133123_))
                                  (___match136721136722_
                                   _e132187133054_
                                   _hd132186133057_
                                   _tl132185133059_
                                   _e132190133062_
                                   _hd132189133065_
                                   _tl132188133067_
                                   _e132193133070_
                                   _hd132192133073_
                                   _tl132191133075_
                                   _e132196133078_
                                   _hd132195133081_
                                   _tl132194133083_
                                   _e132199133086_
                                   _hd132198133089_
                                   _tl132197133091_
                                   _e132202133094_
                                   _hd132201133097_
                                   _tl132200133099_
                                   _e132205133102_
                                   _hd132204133105_
                                   _tl132203133107_
                                   _e132208133110_
                                   _hd132207133113_
                                   _tl132206133115_))))
                          (___match136721136722_
                           _e132187133054_
                           _hd132186133057_
                           _tl132185133059_
                           _e132190133062_
                           _hd132189133065_
                           _tl132188133067_
                           _e132193133070_
                           _hd132192133073_
                           _tl132191133075_
                           _e132196133078_
                           _hd132195133081_
                           _tl132194133083_
                           _e132199133086_
                           _hd132198133089_
                           _tl132197133091_
                           _e132202133094_
                           _hd132201133097_
                           _tl132200133099_
                           _e132205133102_
                           _hd132204133105_
                           _tl132203133107_
                           _e132208133110_
                           _hd132207133113_
                           _tl132206133115_))))
                  (___match136659136660_
                   _e132187133054_
                   _hd132186133057_
                   _tl132185133059_
                   _e132190133062_
                   _hd132189133065_
                   _tl132188133067_
                   _e132193133070_
                   _hd132192133073_
                   _tl132191133075_
                   _e132196133078_
                   _hd132195133081_
                   _tl132194133083_
                   _e132199133086_
                   _hd132198133089_
                   _tl132197133091_
                   _e132202133094_
                   _hd132201133097_
                   _tl132200133099_
                   _e132205133102_
                   _hd132204133105_
                   _tl132203133107_))
              (___kont136242136243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136242136243_))
                                          (___kont136242136243_))
                                      (___kont136242136243_))))
                              (___kont136242136243_))))
                      (___kont136242136243_))
                  (___kont136242136243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136242136243_))
                                              (___kont136242136243_))
                                          (___kont136242136243_))))
                                  (___kont136242136243_))))
                          (___kont136242136243_))))
                  (___kont136242136243_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131109_ _stx131110_)
        (letrec ((_force-e131112_
                  (lambda (_target132168_)
                    (let ((__tmp137531
                           (let ((__tmp137535
                                  (let ((__tmp137536
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137536)))
                                 (__tmp137532
                                  (let ((__tmp137533
                                         (let ((__tmp137534
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132168_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137534))))
                                    (declare (not safe))
                                    (cons __tmp137533 '()))))
                             (declare (not safe))
                             (cons __tmp137535 __tmp137532))))
                      (declare (not safe))
                      (cons '%#call __tmp137531)))))
          (let* ((___stx136726136727_ _stx131110_)
                 (_g131120131342_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136726136727_)))))
            (let ((___kont136728136729_
                   (lambda (_L132114_ _L132115_ _L132116_ _L132117_)
                     (let ((_$method132162_
                            (let ((__tmp137538
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131109_ 'methods)))
                                  (__tmp137537
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132115_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137538 __tmp137537)))
                           (_args132163_
                            (map (lambda (_g132150132152_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131109_
                                      _g132150132152_)))
                                 (let ((__tmp137539
                                        (lambda (_g132154132157_
                                                 _g132155132159_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132154132157_
                                                  _g132155132159_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137539 '() _L132114_)))))
                       (let ((__tmp137540
                              (let ((__tmp137541
                                     (let ((__tmp137546
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131112_
                                               _$method132162_)))
                                           (__tmp137542
                                            (let ((__tmp137543
                                                   (let ((__tmp137544
                                                          (let ((__tmp137545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131109_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137545 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137544))))
                                              (declare (not safe))
                                              (cons __tmp137543
                                                    _args132163_))))
                                       (declare (not safe))
                                       (cons __tmp137546 __tmp137542))))
                                (declare (not safe))
                                (cons '%#call __tmp137541))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137540 _stx131110_)))))
                  (___kont136732136733_
                   (lambda (_L131946_ _L131947_ _L131948_ _L131949_ _L131950_)
                     (let ((_$method132002_
                            (let ((__tmp137548
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131109_ 'methods)))
                                  (__tmp137547
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131947_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137548 __tmp137547)))
                           (_args132003_
                            (map (lambda (_g131990131992_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131109_
                                      _g131990131992_)))
                                 (let ((__tmp137549
                                        (lambda (_g131994131997_
                                                 _g131995131999_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131994131997_
                                                  _g131995131999_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137549 '() _L131946_)))))
                       (let ((__tmp137550
                              (let ((__tmp137551
                                     (let ((__tmp137558
                                            (let ((__tmp137559
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137559)))
                                           (__tmp137552
                                            (let ((__tmp137557
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131112_
                                                      _$method132002_)))
                                                  (__tmp137553
                                                   (let ((__tmp137554
                                                          (let ((__tmp137555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137556
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131109_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137556 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137554
                                                           _args132003_))))
                                              (declare (not safe))
                                              (cons __tmp137557 __tmp137553))))
                                       (declare (not safe))
                                       (cons __tmp137558 __tmp137552))))
                                (declare (not safe))
                                (cons '%#call __tmp137551))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137550 _stx131110_)))))
                  (___kont136736136737_
                   (lambda (_L131777_ _L131778_ _L131779_)
                     (let* ((_$field131811_
                             (let ((__tmp137561
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131109_ 'slots)))
                                   (__tmp137560
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131777_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137561 __tmp137560)))
                            (__tmp137562
                             (let ((__tmp137563
                                    (let ((__tmp137571
                                           (let ((__tmp137572
                                                  (let ((__tmp137573
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131109_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137573 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137572)))
                                          (__tmp137564
                                           (let ((__tmp137569
                                                  (let ((__tmp137570
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137570)))
                                                 (__tmp137565
                                                  (let ((__tmp137566
                                                         (let ((__tmp137567
                                                                (let ((__tmp137568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131109_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137568 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137566 '()))))
                                             (declare (not safe))
                                             (cons __tmp137569 __tmp137565))))
                                      (declare (not safe))
                                      (cons __tmp137571 __tmp137564))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137563))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137562 _stx131110_))))
                  (___kont136738136739_
                   (lambda (_L131651_ _L131652_ _L131653_ _L131654_)
                     (let ((_$field131689_
                            (let ((__tmp137575
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131109_ 'slots)))
                                  (__tmp137574
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131652_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137575 __tmp137574)))
                           (_expr131690_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131109_ _L131651_))))
                       (let ((__tmp137576
                              (let ((__tmp137577
                                     (let ((__tmp137586
                                            (let ((__tmp137587
                                                   (let ((__tmp137588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131109_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137588 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137587)))
                                           (__tmp137578
                                            (let ((__tmp137584
                                                   (let ((__tmp137585
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137585)))
                                                  (__tmp137579
                                                   (let ((__tmp137581
                                                          (let ((__tmp137582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137583
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131109_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137583 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137582)))
                 (__tmp137580
                  (let () (declare (not safe)) (cons _expr131690_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137581
                                                           __tmp137580))))
                                              (declare (not safe))
                                              (cons __tmp137584 __tmp137579))))
                                       (declare (not safe))
                                       (cons __tmp137586 __tmp137578))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137577))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137576 _stx131110_)))))
                  (___kont136740136741_
                   (lambda (_L131523_ _L131524_)
                     (let* ((_accessor131546_
                             (let ((__tmp137589
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131524_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137589)))
                            (_klass131548_
                             (let ((__tmp137590
                                    (##structure-ref
                                     _accessor131546_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131110_
                                __tmp137590)))
                            (_slot131550_
                             (##structure-ref
                              _accessor131546_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137604
                                       (##structure-ref
                                        _accessor131546_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137604))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131548_
                                       _slot131550_))
                                    (##structure-ref
                                     _klass131548_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131110_
                           (let* ((_$field131556_
                                   (let ((__tmp137591
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137591 _slot131550_)))
                                  (__tmp137592
                                   (let ((__tmp137593
                                          (let ((__tmp137601
                                                 (let ((__tmp137602
                                                        (let ((__tmp137603
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131109_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137602)))
                                                (__tmp137594
                                                 (let ((__tmp137599
                                                        (let ((__tmp137600
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131556_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137600)))
               (__tmp137595
                (let ((__tmp137596
                       (let ((__tmp137597
                              (let ((__tmp137598
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131109_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137598 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137597))))
                  (declare (not safe))
                  (cons __tmp137596 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137599
                                                         __tmp137595))))
                                            (declare (not safe))
                                            (cons __tmp137601 __tmp137594))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137593))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137592
                              _stx131110_))))))
                  (___kont136742136743_
                   (lambda (_L131418_ _L131419_ _L131420_)
                     (let* ((_mutator131448_
                             (let ((__tmp137605
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131420_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137605)))
                            (_klass131450_
                             (let ((__tmp137606
                                    (##structure-ref
                                     _mutator131448_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131110_
                                __tmp137606)))
                            (_slot131452_
                             (##structure-ref
                              _mutator131448_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131454_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131109_ _L131418_))))
                       (if (and (let ((__tmp137631
                                       (##structure-ref
                                        _mutator131448_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137631))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131450_
                                       _slot131452_))
                                    (##structure-ref
                                     _klass131450_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137621
                                  (let ((__tmp137622
                                         (let ((__tmp137628
                                                (let ((__tmp137630
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137629
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131420_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137630
                                                        __tmp137629)))
                                               (__tmp137623
                                                (let ((__tmp137625
                                                       (let ((__tmp137627
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137626
                      (let () (declare (not safe)) (cons _L131419_ '()))))
                 (declare (not safe))
                 (cons __tmp137627 __tmp137626)))
              (__tmp137624
               (let () (declare (not safe)) (cons _expr131454_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137625
                                                        __tmp137624))))
                                           (declare (not safe))
                                           (cons __tmp137628 __tmp137623))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137622))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137621 _stx131110_))
                           (let* ((_$field131460_
                                   (let ((__tmp137607
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137607 _slot131452_)))
                                  (__tmp137608
                                   (let ((__tmp137609
                                          (let ((__tmp137618
                                                 (let ((__tmp137619
                                                        (let ((__tmp137620
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131109_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137619)))
                                                (__tmp137610
                                                 (let ((__tmp137616
                                                        (let ((__tmp137617
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131460_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137617)))
               (__tmp137611
                (let ((__tmp137613
                       (let ((__tmp137614
                              (let ((__tmp137615
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131109_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137615 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137614)))
                      (__tmp137612
                       (let () (declare (not safe)) (cons _expr131454_ '()))))
                  (declare (not safe))
                  (cons __tmp137613 __tmp137612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137616
                                                         __tmp137611))))
                                            (declare (not safe))
                                            (cons __tmp137618 __tmp137610))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137609))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137608
                              _stx131110_))))))
                  (___kont136744136745_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131109_ _stx131110_)))))
              (let* ((___match137225137226_
                      (lambda (_e131316131354_
                               _hd131315131357_
                               _tl131314131359_
                               _e131319131362_
                               _hd131318131365_
                               _tl131317131367_
                               _e131322131370_
                               _hd131321131373_
                               _tl131320131375_
                               _e131325131378_
                               _hd131324131381_
                               _tl131323131383_
                               _e131328131386_
                               _hd131327131389_
                               _tl131326131391_
                               _e131331131394_
                               _hd131330131397_
                               _tl131329131399_
                               _e131334131402_
                               _hd131333131405_
                               _tl131332131407_
                               _e131337131410_
                               _hd131336131413_
                               _tl131335131415_)
                        (let ((_L131418_ _hd131336131413_)
                              (_L131419_ _hd131333131405_)
                              (_L131420_ _hd131324131381_))
                          (if (and (let ((__tmp137634
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131419_
                                      __tmp137634))
                                   (let ((__tmp137632
                                          (let ((__tmp137633
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131420_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137633))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137632
                                      'gxc#!mutator::t)))
                              (___kont136742136743_
                               _L131418_
                               _L131419_
                               _L131420_)
                              (___kont136744136745_)))))
                     (___match137223137224_
                      (lambda (_e131316131354_
                               _hd131315131357_
                               _tl131314131359_
                               _e131319131362_
                               _hd131318131365_
                               _tl131317131367_
                               _e131322131370_
                               _hd131321131373_
                               _tl131320131375_
                               _e131325131378_
                               _hd131324131381_
                               _tl131323131383_
                               _e131328131386_
                               _hd131327131389_
                               _tl131326131391_
                               _e131331131394_
                               _hd131330131397_
                               _tl131329131399_
                               _e131334131402_
                               _hd131333131405_
                               _tl131332131407_
                               _e131337131410_
                               _hd131336131413_
                               _tl131335131415_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131335131415_))
                            (___match137225137226_
                             _e131316131354_
                             _hd131315131357_
                             _tl131314131359_
                             _e131319131362_
                             _hd131318131365_
                             _tl131317131367_
                             _e131322131370_
                             _hd131321131373_
                             _tl131320131375_
                             _e131325131378_
                             _hd131324131381_
                             _tl131323131383_
                             _e131328131386_
                             _hd131327131389_
                             _tl131326131391_
                             _e131331131394_
                             _hd131330131397_
                             _tl131329131399_
                             _e131334131402_
                             _hd131333131405_
                             _tl131332131407_
                             _e131337131410_
                             _hd131336131413_
                             _tl131335131415_)
                            (___kont136744136745_))))
                     (___match137217137218_
                      (lambda (_e131316131354_
                               _hd131315131357_
                               _tl131314131359_
                               _e131319131362_
                               _hd131318131365_
                               _tl131317131367_
                               _e131322131370_
                               _hd131321131373_
                               _tl131320131375_
                               _e131325131378_
                               _hd131324131381_
                               _tl131323131383_
                               _e131328131386_
                               _hd131327131389_
                               _tl131326131391_
                               _e131331131394_
                               _hd131330131397_
                               _tl131329131399_
                               _e131334131402_
                               _hd131333131405_
                               _tl131332131407_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131326131391_))
                            (let ((_e131337131410_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131326131391_))))
                              (let ((_tl131335131415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131337131410_)))
                                    (_hd131336131413_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131337131410_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131335131415_))
                                    (___match137225137226_
                                     _e131316131354_
                                     _hd131315131357_
                                     _tl131314131359_
                                     _e131319131362_
                                     _hd131318131365_
                                     _tl131317131367_
                                     _e131322131370_
                                     _hd131321131373_
                                     _tl131320131375_
                                     _e131325131378_
                                     _hd131324131381_
                                     _tl131323131383_
                                     _e131328131386_
                                     _hd131327131389_
                                     _tl131326131391_
                                     _e131331131394_
                                     _hd131330131397_
                                     _tl131329131399_
                                     _e131334131402_
                                     _hd131333131405_
                                     _tl131332131407_
                                     _e131337131410_
                                     _hd131336131413_
                                     _tl131335131415_)
                                    (___kont136744136745_))))
                            (___kont136744136745_))))
                     (___match137163137164_
                      (lambda (_e131292131467_
                               _hd131291131470_
                               _tl131290131472_
                               _e131295131475_
                               _hd131294131478_
                               _tl131293131480_
                               _e131298131483_
                               _hd131297131486_
                               _tl131296131488_
                               _e131301131491_
                               _hd131300131494_
                               _tl131299131496_
                               _e131304131499_
                               _hd131303131502_
                               _tl131302131504_
                               _e131307131507_
                               _hd131306131510_
                               _tl131305131512_
                               _e131310131515_
                               _hd131309131518_
                               _tl131308131520_)
                        (let ((_L131523_ _hd131309131518_)
                              (_L131524_ _hd131300131494_))
                          (if (and (let ((__tmp137637
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131523_
                                      __tmp137637))
                                   (let ((__tmp137635
                                          (let ((__tmp137636
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131524_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137636))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137635
                                      'gxc#!accessor::t)))
                              (___kont136740136741_ _L131523_ _L131524_)
                              (___kont136744136745_)))))
                     (___match137161137162_
                      (lambda (_e131292131467_
                               _hd131291131470_
                               _tl131290131472_
                               _e131295131475_
                               _hd131294131478_
                               _tl131293131480_
                               _e131298131483_
                               _hd131297131486_
                               _tl131296131488_
                               _e131301131491_
                               _hd131300131494_
                               _tl131299131496_
                               _e131304131499_
                               _hd131303131502_
                               _tl131302131504_
                               _e131307131507_
                               _hd131306131510_
                               _tl131305131512_
                               _e131310131515_
                               _hd131309131518_
                               _tl131308131520_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131302131504_))
                            (___match137163137164_
                             _e131292131467_
                             _hd131291131470_
                             _tl131290131472_
                             _e131295131475_
                             _hd131294131478_
                             _tl131293131480_
                             _e131298131483_
                             _hd131297131486_
                             _tl131296131488_
                             _e131301131491_
                             _hd131300131494_
                             _tl131299131496_
                             _e131304131499_
                             _hd131303131502_
                             _tl131302131504_
                             _e131307131507_
                             _hd131306131510_
                             _tl131305131512_
                             _e131310131515_
                             _hd131309131518_
                             _tl131308131520_)
                            (___match137217137218_
                             _e131292131467_
                             _hd131291131470_
                             _tl131290131472_
                             _e131295131475_
                             _hd131294131478_
                             _tl131293131480_
                             _e131298131483_
                             _hd131297131486_
                             _tl131296131488_
                             _e131301131491_
                             _hd131300131494_
                             _tl131299131496_
                             _e131304131499_
                             _hd131303131502_
                             _tl131302131504_
                             _e131307131507_
                             _hd131306131510_
                             _tl131305131512_
                             _e131310131515_
                             _hd131309131518_
                             _tl131308131520_))))
                     (___match137107137108_
                      (lambda (_e131257131563_
                               _hd131256131566_
                               _tl131255131568_
                               _e131260131571_
                               _hd131259131574_
                               _tl131258131576_
                               _e131263131579_
                               _hd131262131582_
                               _tl131261131584_
                               _e131266131587_
                               _hd131265131590_
                               _tl131264131592_
                               _e131269131595_
                               _hd131268131598_
                               _tl131267131600_
                               _e131272131603_
                               _hd131271131606_
                               _tl131270131608_
                               _e131275131611_
                               _hd131274131614_
                               _tl131273131616_
                               _e131278131619_
                               _hd131277131622_
                               _tl131276131624_
                               _e131281131627_
                               _hd131280131630_
                               _tl131279131632_
                               _e131284131635_
                               _hd131283131638_
                               _tl131282131640_
                               _e131287131643_
                               _hd131286131646_
                               _tl131285131648_)
                        (let ((_L131651_ _hd131286131646_)
                              (_L131652_ _hd131283131638_)
                              (_L131653_ _hd131274131614_)
                              (_L131654_ _hd131265131590_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131654_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131654_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137638
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131653_
                                      __tmp137638)))
                              (___kont136738136739_
                               _L131651_
                               _L131652_
                               _L131653_
                               _L131654_)
                              (___kont136744136745_)))))
                     (___match137099137100_
                      (lambda (_e131257131563_
                               _hd131256131566_
                               _tl131255131568_
                               _e131260131571_
                               _hd131259131574_
                               _tl131258131576_
                               _e131263131579_
                               _hd131262131582_
                               _tl131261131584_
                               _e131266131587_
                               _hd131265131590_
                               _tl131264131592_
                               _e131269131595_
                               _hd131268131598_
                               _tl131267131600_
                               _e131272131603_
                               _hd131271131606_
                               _tl131270131608_
                               _e131275131611_
                               _hd131274131614_
                               _tl131273131616_
                               _e131278131619_
                               _hd131277131622_
                               _tl131276131624_
                               _e131281131627_
                               _hd131280131630_
                               _tl131279131632_
                               _e131284131635_
                               _hd131283131638_
                               _tl131282131640_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131276131624_))
                            (let ((_e131287131643_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131276131624_))))
                              (let ((_tl131285131648_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131287131643_)))
                                    (_hd131286131646_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131287131643_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131285131648_))
                                    (___match137107137108_
                                     _e131257131563_
                                     _hd131256131566_
                                     _tl131255131568_
                                     _e131260131571_
                                     _hd131259131574_
                                     _tl131258131576_
                                     _e131263131579_
                                     _hd131262131582_
                                     _tl131261131584_
                                     _e131266131587_
                                     _hd131265131590_
                                     _tl131264131592_
                                     _e131269131595_
                                     _hd131268131598_
                                     _tl131267131600_
                                     _e131272131603_
                                     _hd131271131606_
                                     _tl131270131608_
                                     _e131275131611_
                                     _hd131274131614_
                                     _tl131273131616_
                                     _e131278131619_
                                     _hd131277131622_
                                     _tl131276131624_
                                     _e131281131627_
                                     _hd131280131630_
                                     _tl131279131632_
                                     _e131284131635_
                                     _hd131283131638_
                                     _tl131282131640_
                                     _e131287131643_
                                     _hd131286131646_
                                     _tl131285131648_)
                                    (___kont136744136745_))))
                            (___match137223137224_
                             _e131257131563_
                             _hd131256131566_
                             _tl131255131568_
                             _e131260131571_
                             _hd131259131574_
                             _tl131258131576_
                             _e131263131579_
                             _hd131262131582_
                             _tl131261131584_
                             _e131266131587_
                             _hd131265131590_
                             _tl131264131592_
                             _e131269131595_
                             _hd131268131598_
                             _tl131267131600_
                             _e131272131603_
                             _hd131271131606_
                             _tl131270131608_
                             _e131275131611_
                             _hd131274131614_
                             _tl131273131616_
                             _e131278131619_
                             _hd131277131622_
                             _tl131276131624_))))
                     (___match137021137022_
                      (lambda (_e131223131697_
                               _hd131222131700_
                               _tl131221131702_
                               _e131226131705_
                               _hd131225131708_
                               _tl131224131710_
                               _e131229131713_
                               _hd131228131716_
                               _tl131227131718_
                               _e131232131721_
                               _hd131231131724_
                               _tl131230131726_
                               _e131235131729_
                               _hd131234131732_
                               _tl131233131734_
                               _e131238131737_
                               _hd131237131740_
                               _tl131236131742_
                               _e131241131745_
                               _hd131240131748_
                               _tl131239131750_
                               _e131244131753_
                               _hd131243131756_
                               _tl131242131758_
                               _e131247131761_
                               _hd131246131764_
                               _tl131245131766_
                               _e131250131769_
                               _hd131249131772_
                               _tl131248131774_)
                        (let ((_L131777_ _hd131249131772_)
                              (_L131778_ _hd131240131748_)
                              (_L131779_ _hd131231131724_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131779_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131779_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137639
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131109_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131778_
                                      __tmp137639)))
                              (___kont136736136737_
                               _L131777_
                               _L131778_
                               _L131779_)
                              (___match137225137226_
                               _e131223131697_
                               _hd131222131700_
                               _tl131221131702_
                               _e131226131705_
                               _hd131225131708_
                               _tl131224131710_
                               _e131229131713_
                               _hd131228131716_
                               _tl131227131718_
                               _e131232131721_
                               _hd131231131724_
                               _tl131230131726_
                               _e131235131729_
                               _hd131234131732_
                               _tl131233131734_
                               _e131238131737_
                               _hd131237131740_
                               _tl131236131742_
                               _e131241131745_
                               _hd131240131748_
                               _tl131239131750_
                               _e131244131753_
                               _hd131243131756_
                               _tl131242131758_)))))
                     (___match137019137020_
                      (lambda (_e131223131697_
                               _hd131222131700_
                               _tl131221131702_
                               _e131226131705_
                               _hd131225131708_
                               _tl131224131710_
                               _e131229131713_
                               _hd131228131716_
                               _tl131227131718_
                               _e131232131721_
                               _hd131231131724_
                               _tl131230131726_
                               _e131235131729_
                               _hd131234131732_
                               _tl131233131734_
                               _e131238131737_
                               _hd131237131740_
                               _tl131236131742_
                               _e131241131745_
                               _hd131240131748_
                               _tl131239131750_
                               _e131244131753_
                               _hd131243131756_
                               _tl131242131758_
                               _e131247131761_
                               _hd131246131764_
                               _tl131245131766_
                               _e131250131769_
                               _hd131249131772_
                               _tl131248131774_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131242131758_))
                            (___match137021137022_
                             _e131223131697_
                             _hd131222131700_
                             _tl131221131702_
                             _e131226131705_
                             _hd131225131708_
                             _tl131224131710_
                             _e131229131713_
                             _hd131228131716_
                             _tl131227131718_
                             _e131232131721_
                             _hd131231131724_
                             _tl131230131726_
                             _e131235131729_
                             _hd131234131732_
                             _tl131233131734_
                             _e131238131737_
                             _hd131237131740_
                             _tl131236131742_
                             _e131241131745_
                             _hd131240131748_
                             _tl131239131750_
                             _e131244131753_
                             _hd131243131756_
                             _tl131242131758_
                             _e131247131761_
                             _hd131246131764_
                             _tl131245131766_
                             _e131250131769_
                             _hd131249131772_
                             _tl131248131774_)
                            (___match137099137100_
                             _e131223131697_
                             _hd131222131700_
                             _tl131221131702_
                             _e131226131705_
                             _hd131225131708_
                             _tl131224131710_
                             _e131229131713_
                             _hd131228131716_
                             _tl131227131718_
                             _e131232131721_
                             _hd131231131724_
                             _tl131230131726_
                             _e131235131729_
                             _hd131234131732_
                             _tl131233131734_
                             _e131238131737_
                             _hd131237131740_
                             _tl131236131742_
                             _e131241131745_
                             _hd131240131748_
                             _tl131239131750_
                             _e131244131753_
                             _hd131243131756_
                             _tl131242131758_
                             _e131247131761_
                             _hd131246131764_
                             _tl131245131766_
                             _e131250131769_
                             _hd131249131772_
                             _tl131248131774_))))
                     (___match137009137010_
                      (lambda (_e131223131697_
                               _hd131222131700_
                               _tl131221131702_
                               _e131226131705_
                               _hd131225131708_
                               _tl131224131710_
                               _e131229131713_
                               _hd131228131716_
                               _tl131227131718_
                               _e131232131721_
                               _hd131231131724_
                               _tl131230131726_
                               _e131235131729_
                               _hd131234131732_
                               _tl131233131734_
                               _e131238131737_
                               _hd131237131740_
                               _tl131236131742_
                               _e131241131745_
                               _hd131240131748_
                               _tl131239131750_
                               _e131244131753_
                               _hd131243131756_
                               _tl131242131758_
                               _e131247131761_
                               _hd131246131764_
                               _tl131245131766_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131246131764_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131245131766_))
                                (let ((_e131250131769_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131245131766_))))
                                  (let ((_tl131248131774_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131250131769_)))
                                        (_hd131249131772_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131250131769_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131248131774_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131242131758_))
                                            (___match137021137022_
                                             _e131223131697_
                                             _hd131222131700_
                                             _tl131221131702_
                                             _e131226131705_
                                             _hd131225131708_
                                             _tl131224131710_
                                             _e131229131713_
                                             _hd131228131716_
                                             _tl131227131718_
                                             _e131232131721_
                                             _hd131231131724_
                                             _tl131230131726_
                                             _e131235131729_
                                             _hd131234131732_
                                             _tl131233131734_
                                             _e131238131737_
                                             _hd131237131740_
                                             _tl131236131742_
                                             _e131241131745_
                                             _hd131240131748_
                                             _tl131239131750_
                                             _e131244131753_
                                             _hd131243131756_
                                             _tl131242131758_
                                             _e131247131761_
                                             _hd131246131764_
                                             _tl131245131766_
                                             _e131250131769_
                                             _hd131249131772_
                                             _tl131248131774_)
                                            (___match137099137100_
                                             _e131223131697_
                                             _hd131222131700_
                                             _tl131221131702_
                                             _e131226131705_
                                             _hd131225131708_
                                             _tl131224131710_
                                             _e131229131713_
                                             _hd131228131716_
                                             _tl131227131718_
                                             _e131232131721_
                                             _hd131231131724_
                                             _tl131230131726_
                                             _e131235131729_
                                             _hd131234131732_
                                             _tl131233131734_
                                             _e131238131737_
                                             _hd131237131740_
                                             _tl131236131742_
                                             _e131241131745_
                                             _hd131240131748_
                                             _tl131239131750_
                                             _e131244131753_
                                             _hd131243131756_
                                             _tl131242131758_
                                             _e131247131761_
                                             _hd131246131764_
                                             _tl131245131766_
                                             _e131250131769_
                                             _hd131249131772_
                                             _tl131248131774_))
                                        (___match137223137224_
                                         _e131223131697_
                                         _hd131222131700_
                                         _tl131221131702_
                                         _e131226131705_
                                         _hd131225131708_
                                         _tl131224131710_
                                         _e131229131713_
                                         _hd131228131716_
                                         _tl131227131718_
                                         _e131232131721_
                                         _hd131231131724_
                                         _tl131230131726_
                                         _e131235131729_
                                         _hd131234131732_
                                         _tl131233131734_
                                         _e131238131737_
                                         _hd131237131740_
                                         _tl131236131742_
                                         _e131241131745_
                                         _hd131240131748_
                                         _tl131239131750_
                                         _e131244131753_
                                         _hd131243131756_
                                         _tl131242131758_))))
                                (___match137223137224_
                                 _e131223131697_
                                 _hd131222131700_
                                 _tl131221131702_
                                 _e131226131705_
                                 _hd131225131708_
                                 _tl131224131710_
                                 _e131229131713_
                                 _hd131228131716_
                                 _tl131227131718_
                                 _e131232131721_
                                 _hd131231131724_
                                 _tl131230131726_
                                 _e131235131729_
                                 _hd131234131732_
                                 _tl131233131734_
                                 _e131238131737_
                                 _hd131237131740_
                                 _tl131236131742_
                                 _e131241131745_
                                 _hd131240131748_
                                 _tl131239131750_
                                 _e131244131753_
                                 _hd131243131756_
                                 _tl131242131758_))
                            (___match137223137224_
                             _e131223131697_
                             _hd131222131700_
                             _tl131221131702_
                             _e131226131705_
                             _hd131225131708_
                             _tl131224131710_
                             _e131229131713_
                             _hd131228131716_
                             _tl131227131718_
                             _e131232131721_
                             _hd131231131724_
                             _tl131230131726_
                             _e131235131729_
                             _hd131234131732_
                             _tl131233131734_
                             _e131238131737_
                             _hd131237131740_
                             _tl131236131742_
                             _e131241131745_
                             _hd131240131748_
                             _tl131239131750_
                             _e131244131753_
                             _hd131243131756_
                             _tl131242131758_))))
                     (___match136941136942_
                      (lambda (_e131172131818_
                               _hd131171131821_
                               _tl131170131823_
                               _e131175131826_
                               _hd131174131829_
                               _tl131173131831_
                               _e131178131834_
                               _hd131177131837_
                               _tl131176131839_
                               _e131181131842_
                               _hd131180131845_
                               _tl131179131847_
                               _e131184131850_
                               _hd131183131853_
                               _tl131182131855_
                               _e131187131858_
                               _hd131186131861_
                               _tl131185131863_
                               _e131190131866_
                               _hd131189131869_
                               _tl131188131871_
                               _e131193131874_
                               _hd131192131877_
                               _tl131191131879_
                               _e131196131882_
                               _hd131195131885_
                               _tl131194131887_
                               _e131199131890_
                               _hd131198131893_
                               _tl131197131895_
                               _e131202131898_
                               _hd131201131901_
                               _tl131200131903_
                               _e131205131906_
                               _hd131204131909_
                               _tl131203131911_
                               _e131208131914_
                               _hd131207131917_
                               _tl131206131919_
                               ___splice136734136735_
                               _target131209131922_
                               _tl131211131924_)
                        (letrec ((_loop131212131927_
                                  (lambda (_hd131210131930_ _args131216131932_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131210131930_))
                                        (let ((_e131213131935_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131210131930_))))
                                          (let ((_lp-tl131215131940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131213131935_)))
                                                (_lp-hd131214131938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131213131935_))))
                                            (let ((__tmp137641
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131214131938_
                                                           _args131216131932_))))
                                              (declare (not safe))
                                              (_loop131212131927_
                                               _lp-tl131215131940_
                                               __tmp137641))))
                                        (let ((_args131217131943_
                                               (reverse _args131216131932_)))
                                          (let ((_L131946_ _args131217131943_)
                                                (_L131947_ _hd131207131917_)
                                                (_L131948_ _hd131198131893_)
                                                (_L131949_ _hd131189131869_)
                                                (_L131950_ _hd131180131845_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131950_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131949_
                                                        'call-method))
                                                     (let ((__tmp137640
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131109_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131948_
                                                        __tmp137640)))
                                                (___kont136732136733_
                                                 _L131946_
                                                 _L131947_
                                                 _L131948_
                                                 _L131949_
                                                 _L131950_)
                                                (___kont136744136745_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131212131927_ _target131209131922_ '())))))
                     (___match136899136900_
                      (lambda (_e131172131818_
                               _hd131171131821_
                               _tl131170131823_
                               _e131175131826_
                               _hd131174131829_
                               _tl131173131831_
                               _e131178131834_
                               _hd131177131837_
                               _tl131176131839_
                               _e131181131842_
                               _hd131180131845_
                               _tl131179131847_
                               _e131184131850_
                               _hd131183131853_
                               _tl131182131855_
                               _e131187131858_
                               _hd131186131861_
                               _tl131185131863_
                               _e131190131866_
                               _hd131189131869_
                               _tl131188131871_
                               _e131193131874_
                               _hd131192131877_
                               _tl131191131879_
                               _e131196131882_
                               _hd131195131885_
                               _tl131194131887_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131195131885_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131194131887_))
                                (let ((_e131199131890_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131194131887_))))
                                  (let ((_tl131197131895_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131199131890_)))
                                        (_hd131198131893_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131199131890_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131197131895_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131191131879_))
                                            (let ((_e131202131898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131191131879_))))
                                              (let ((_tl131200131903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131202131898_)))
                                                    (_hd131201131901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131202131898_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131201131901_))
                                                    (let ((_e131205131906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131201131901_))))
                                                      (let ((_tl131203131911_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131205131906_)))
                    (_hd131204131909_
                     (let () (declare (not safe)) (##car _e131205131906_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131204131909_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131204131909_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131203131911_))
                            (let ((_e131208131914_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131203131911_))))
                              (let ((_tl131206131919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131208131914_)))
                                    (_hd131207131917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131208131914_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131206131919_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131200131903_))
                                        (let ((___splice136734136735_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131200131903_
                                                  '0))))
                                          (let ((_tl131211131924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136734136735_
                                                    '1)))
                                                (_target131209131922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136734136735_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131211131924_))
                                                (___match136941136942_
                                                 _e131172131818_
                                                 _hd131171131821_
                                                 _tl131170131823_
                                                 _e131175131826_
                                                 _hd131174131829_
                                                 _tl131173131831_
                                                 _e131178131834_
                                                 _hd131177131837_
                                                 _tl131176131839_
                                                 _e131181131842_
                                                 _hd131180131845_
                                                 _tl131179131847_
                                                 _e131184131850_
                                                 _hd131183131853_
                                                 _tl131182131855_
                                                 _e131187131858_
                                                 _hd131186131861_
                                                 _tl131185131863_
                                                 _e131190131866_
                                                 _hd131189131869_
                                                 _tl131188131871_
                                                 _e131193131874_
                                                 _hd131192131877_
                                                 _tl131191131879_
                                                 _e131196131882_
                                                 _hd131195131885_
                                                 _tl131194131887_
                                                 _e131199131890_
                                                 _hd131198131893_
                                                 _tl131197131895_
                                                 _e131202131898_
                                                 _hd131201131901_
                                                 _tl131200131903_
                                                 _e131205131906_
                                                 _hd131204131909_
                                                 _tl131203131911_
                                                 _e131208131914_
                                                 _hd131207131917_
                                                 _tl131206131919_
                                                 ___splice136734136735_
                                                 _target131209131922_
                                                 _tl131211131924_)
                                                (___kont136744136745_))))
                                        (___kont136744136745_))
                                    (___kont136744136745_))))
                            (___kont136744136745_))
                        (___kont136744136745_))
                    (___kont136744136745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136744136745_))))
                                            (___match137223137224_
                                             _e131172131818_
                                             _hd131171131821_
                                             _tl131170131823_
                                             _e131175131826_
                                             _hd131174131829_
                                             _tl131173131831_
                                             _e131178131834_
                                             _hd131177131837_
                                             _tl131176131839_
                                             _e131181131842_
                                             _hd131180131845_
                                             _tl131179131847_
                                             _e131184131850_
                                             _hd131183131853_
                                             _tl131182131855_
                                             _e131187131858_
                                             _hd131186131861_
                                             _tl131185131863_
                                             _e131190131866_
                                             _hd131189131869_
                                             _tl131188131871_
                                             _e131193131874_
                                             _hd131192131877_
                                             _tl131191131879_))
                                        (___match137223137224_
                                         _e131172131818_
                                         _hd131171131821_
                                         _tl131170131823_
                                         _e131175131826_
                                         _hd131174131829_
                                         _tl131173131831_
                                         _e131178131834_
                                         _hd131177131837_
                                         _tl131176131839_
                                         _e131181131842_
                                         _hd131180131845_
                                         _tl131179131847_
                                         _e131184131850_
                                         _hd131183131853_
                                         _tl131182131855_
                                         _e131187131858_
                                         _hd131186131861_
                                         _tl131185131863_
                                         _e131190131866_
                                         _hd131189131869_
                                         _tl131188131871_
                                         _e131193131874_
                                         _hd131192131877_
                                         _tl131191131879_))))
                                (___match137223137224_
                                 _e131172131818_
                                 _hd131171131821_
                                 _tl131170131823_
                                 _e131175131826_
                                 _hd131174131829_
                                 _tl131173131831_
                                 _e131178131834_
                                 _hd131177131837_
                                 _tl131176131839_
                                 _e131181131842_
                                 _hd131180131845_
                                 _tl131179131847_
                                 _e131184131850_
                                 _hd131183131853_
                                 _tl131182131855_
                                 _e131187131858_
                                 _hd131186131861_
                                 _tl131185131863_
                                 _e131190131866_
                                 _hd131189131869_
                                 _tl131188131871_
                                 _e131193131874_
                                 _hd131192131877_
                                 _tl131191131879_))
                            (___match137009137010_
                             _e131172131818_
                             _hd131171131821_
                             _tl131170131823_
                             _e131175131826_
                             _hd131174131829_
                             _tl131173131831_
                             _e131178131834_
                             _hd131177131837_
                             _tl131176131839_
                             _e131181131842_
                             _hd131180131845_
                             _tl131179131847_
                             _e131184131850_
                             _hd131183131853_
                             _tl131182131855_
                             _e131187131858_
                             _hd131186131861_
                             _tl131185131863_
                             _e131190131866_
                             _hd131189131869_
                             _tl131188131871_
                             _e131193131874_
                             _hd131192131877_
                             _tl131191131879_
                             _e131196131882_
                             _hd131195131885_
                             _tl131194131887_))))
                     (___match136831136832_
                      (lambda (_e131128132010_
                               _hd131127132013_
                               _tl131126132015_
                               _e131131132018_
                               _hd131130132021_
                               _tl131129132023_
                               _e131134132026_
                               _hd131133132029_
                               _tl131132132031_
                               _e131137132034_
                               _hd131136132037_
                               _tl131135132039_
                               _e131140132042_
                               _hd131139132045_
                               _tl131138132047_
                               _e131143132050_
                               _hd131142132053_
                               _tl131141132055_
                               _e131146132058_
                               _hd131145132061_
                               _tl131144132063_
                               _e131149132066_
                               _hd131148132069_
                               _tl131147132071_
                               _e131152132074_
                               _hd131151132077_
                               _tl131150132079_
                               _e131155132082_
                               _hd131154132085_
                               _tl131153132087_
                               ___splice136730136731_
                               _target131156132090_
                               _tl131158132092_)
                        (letrec ((_loop131159132095_
                                  (lambda (_hd131157132098_ _args131163132100_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131157132098_))
                                        (let ((_e131160132103_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131157132098_))))
                                          (let ((_lp-tl131162132108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131160132103_)))
                                                (_lp-hd131161132106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131160132103_))))
                                            (let ((__tmp137643
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131161132106_
                                                           _args131163132100_))))
                                              (declare (not safe))
                                              (_loop131159132095_
                                               _lp-tl131162132108_
                                               __tmp137643))))
                                        (let ((_args131164132111_
                                               (reverse _args131163132100_)))
                                          (let ((_L132114_ _args131164132111_)
                                                (_L132115_ _hd131154132085_)
                                                (_L132116_ _hd131145132061_)
                                                (_L132117_ _hd131136132037_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132117_
                                                        'call-method))
                                                     (let ((__tmp137642
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131109_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132116_
                                                        __tmp137642)))
                                                (___kont136728136729_
                                                 _L132114_
                                                 _L132115_
                                                 _L132116_
                                                 _L132117_)
                                                (___match137019137020_
                                                 _e131128132010_
                                                 _hd131127132013_
                                                 _tl131126132015_
                                                 _e131131132018_
                                                 _hd131130132021_
                                                 _tl131129132023_
                                                 _e131134132026_
                                                 _hd131133132029_
                                                 _tl131132132031_
                                                 _e131137132034_
                                                 _hd131136132037_
                                                 _tl131135132039_
                                                 _e131140132042_
                                                 _hd131139132045_
                                                 _tl131138132047_
                                                 _e131143132050_
                                                 _hd131142132053_
                                                 _tl131141132055_
                                                 _e131146132058_
                                                 _hd131145132061_
                                                 _tl131144132063_
                                                 _e131149132066_
                                                 _hd131148132069_
                                                 _tl131147132071_
                                                 _e131152132074_
                                                 _hd131151132077_
                                                 _tl131150132079_
                                                 _e131155132082_
                                                 _hd131154132085_
                                                 _tl131153132087_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131159132095_ _target131156132090_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136726136727_))
                    (let ((_e131128132010_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136726136727_))))
                      (let ((_tl131126132015_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131128132010_)))
                            (_hd131127132013_
                             (let ()
                               (declare (not safe))
                               (##car _e131128132010_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131126132015_))
                            (let ((_e131131132018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131126132015_))))
                              (let ((_tl131129132023_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131131132018_)))
                                    (_hd131130132021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131131132018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131130132021_))
                                    (let ((_e131134132026_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131130132021_))))
                                      (let ((_tl131132132031_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131134132026_)))
                                            (_hd131133132029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131134132026_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131133132029_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131133132029_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131132132031_))
                                                    (let ((_e131137132034_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131132132031_))))
                                                      (let ((_tl131135132039_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131137132034_)))
                    (_hd131136132037_
                     (let () (declare (not safe)) (##car _e131137132034_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131135132039_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131129132023_))
                        (let ((_e131140132042_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131129132023_))))
                          (let ((_tl131138132047_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131140132042_)))
                                (_hd131139132045_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131140132042_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131139132045_))
                                (let ((_e131143132050_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131139132045_))))
                                  (let ((_tl131141132055_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131143132050_)))
                                        (_hd131142132053_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131143132050_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131142132053_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131142132053_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131141132055_))
                                                (let ((_e131146132058_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131141132055_))))
                                                  (let ((_tl131144132063_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131146132058_)))
                                                        (_hd131145132061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131146132058_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131144132063_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131138132047_))
                                                            (let ((_e131149132066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131138132047_))))
                      (let ((_tl131147132071_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131149132066_)))
                            (_hd131148132069_
                             (let ()
                               (declare (not safe))
                               (##car _e131149132066_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131148132069_))
                            (let ((_e131152132074_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131148132069_))))
                              (let ((_tl131150132079_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131152132074_)))
                                    (_hd131151132077_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131152132074_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131151132077_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131151132077_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131150132079_))
                                            (let ((_e131155132082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131150132079_))))
                                              (let ((_tl131153132087_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131155132082_)))
                                                    (_hd131154132085_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131155132082_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131153132087_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131147132071_))
                                                        (let ((___splice136730136731_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131147132071_ '0))))
                  (let ((_tl131158132092_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136730136731_ '1)))
                        (_target131156132090_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136730136731_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131158132092_))
                        (___match136831136832_
                         _e131128132010_
                         _hd131127132013_
                         _tl131126132015_
                         _e131131132018_
                         _hd131130132021_
                         _tl131129132023_
                         _e131134132026_
                         _hd131133132029_
                         _tl131132132031_
                         _e131137132034_
                         _hd131136132037_
                         _tl131135132039_
                         _e131140132042_
                         _hd131139132045_
                         _tl131138132047_
                         _e131143132050_
                         _hd131142132053_
                         _tl131141132055_
                         _e131146132058_
                         _hd131145132061_
                         _tl131144132063_
                         _e131149132066_
                         _hd131148132069_
                         _tl131147132071_
                         _e131152132074_
                         _hd131151132077_
                         _tl131150132079_
                         _e131155132082_
                         _hd131154132085_
                         _tl131153132087_
                         ___splice136730136731_
                         _target131156132090_
                         _tl131158132092_)
                        (___match137019137020_
                         _e131128132010_
                         _hd131127132013_
                         _tl131126132015_
                         _e131131132018_
                         _hd131130132021_
                         _tl131129132023_
                         _e131134132026_
                         _hd131133132029_
                         _tl131132132031_
                         _e131137132034_
                         _hd131136132037_
                         _tl131135132039_
                         _e131140132042_
                         _hd131139132045_
                         _tl131138132047_
                         _e131143132050_
                         _hd131142132053_
                         _tl131141132055_
                         _e131146132058_
                         _hd131145132061_
                         _tl131144132063_
                         _e131149132066_
                         _hd131148132069_
                         _tl131147132071_
                         _e131152132074_
                         _hd131151132077_
                         _tl131150132079_
                         _e131155132082_
                         _hd131154132085_
                         _tl131153132087_))))
                (___match137019137020_
                 _e131128132010_
                 _hd131127132013_
                 _tl131126132015_
                 _e131131132018_
                 _hd131130132021_
                 _tl131129132023_
                 _e131134132026_
                 _hd131133132029_
                 _tl131132132031_
                 _e131137132034_
                 _hd131136132037_
                 _tl131135132039_
                 _e131140132042_
                 _hd131139132045_
                 _tl131138132047_
                 _e131143132050_
                 _hd131142132053_
                 _tl131141132055_
                 _e131146132058_
                 _hd131145132061_
                 _tl131144132063_
                 _e131149132066_
                 _hd131148132069_
                 _tl131147132071_
                 _e131152132074_
                 _hd131151132077_
                 _tl131150132079_
                 _e131155132082_
                 _hd131154132085_
                 _tl131153132087_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137223137224_
                                                     _e131128132010_
                                                     _hd131127132013_
                                                     _tl131126132015_
                                                     _e131131132018_
                                                     _hd131130132021_
                                                     _tl131129132023_
                                                     _e131134132026_
                                                     _hd131133132029_
                                                     _tl131132132031_
                                                     _e131137132034_
                                                     _hd131136132037_
                                                     _tl131135132039_
                                                     _e131140132042_
                                                     _hd131139132045_
                                                     _tl131138132047_
                                                     _e131143132050_
                                                     _hd131142132053_
                                                     _tl131141132055_
                                                     _e131146132058_
                                                     _hd131145132061_
                                                     _tl131144132063_
                                                     _e131149132066_
                                                     _hd131148132069_
                                                     _tl131147132071_))))
                                            (___match137223137224_
                                             _e131128132010_
                                             _hd131127132013_
                                             _tl131126132015_
                                             _e131131132018_
                                             _hd131130132021_
                                             _tl131129132023_
                                             _e131134132026_
                                             _hd131133132029_
                                             _tl131132132031_
                                             _e131137132034_
                                             _hd131136132037_
                                             _tl131135132039_
                                             _e131140132042_
                                             _hd131139132045_
                                             _tl131138132047_
                                             _e131143132050_
                                             _hd131142132053_
                                             _tl131141132055_
                                             _e131146132058_
                                             _hd131145132061_
                                             _tl131144132063_
                                             _e131149132066_
                                             _hd131148132069_
                                             _tl131147132071_))
                                        (___match136899136900_
                                         _e131128132010_
                                         _hd131127132013_
                                         _tl131126132015_
                                         _e131131132018_
                                         _hd131130132021_
                                         _tl131129132023_
                                         _e131134132026_
                                         _hd131133132029_
                                         _tl131132132031_
                                         _e131137132034_
                                         _hd131136132037_
                                         _tl131135132039_
                                         _e131140132042_
                                         _hd131139132045_
                                         _tl131138132047_
                                         _e131143132050_
                                         _hd131142132053_
                                         _tl131141132055_
                                         _e131146132058_
                                         _hd131145132061_
                                         _tl131144132063_
                                         _e131149132066_
                                         _hd131148132069_
                                         _tl131147132071_
                                         _e131152132074_
                                         _hd131151132077_
                                         _tl131150132079_))
                                    (___match137223137224_
                                     _e131128132010_
                                     _hd131127132013_
                                     _tl131126132015_
                                     _e131131132018_
                                     _hd131130132021_
                                     _tl131129132023_
                                     _e131134132026_
                                     _hd131133132029_
                                     _tl131132132031_
                                     _e131137132034_
                                     _hd131136132037_
                                     _tl131135132039_
                                     _e131140132042_
                                     _hd131139132045_
                                     _tl131138132047_
                                     _e131143132050_
                                     _hd131142132053_
                                     _tl131141132055_
                                     _e131146132058_
                                     _hd131145132061_
                                     _tl131144132063_
                                     _e131149132066_
                                     _hd131148132069_
                                     _tl131147132071_))))
                            (___match137223137224_
                             _e131128132010_
                             _hd131127132013_
                             _tl131126132015_
                             _e131131132018_
                             _hd131130132021_
                             _tl131129132023_
                             _e131134132026_
                             _hd131133132029_
                             _tl131132132031_
                             _e131137132034_
                             _hd131136132037_
                             _tl131135132039_
                             _e131140132042_
                             _hd131139132045_
                             _tl131138132047_
                             _e131143132050_
                             _hd131142132053_
                             _tl131141132055_
                             _e131146132058_
                             _hd131145132061_
                             _tl131144132063_
                             _e131149132066_
                             _hd131148132069_
                             _tl131147132071_))))
                    (___match137161137162_
                     _e131128132010_
                     _hd131127132013_
                     _tl131126132015_
                     _e131131132018_
                     _hd131130132021_
                     _tl131129132023_
                     _e131134132026_
                     _hd131133132029_
                     _tl131132132031_
                     _e131137132034_
                     _hd131136132037_
                     _tl131135132039_
                     _e131140132042_
                     _hd131139132045_
                     _tl131138132047_
                     _e131143132050_
                     _hd131142132053_
                     _tl131141132055_
                     _e131146132058_
                     _hd131145132061_
                     _tl131144132063_))
                (___kont136744136745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136744136745_))
                                            (___kont136744136745_))
                                        (___kont136744136745_))))
                                (___kont136744136745_))))
                        (___kont136744136745_))
                    (___kont136744136745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136744136745_))
                                                (___kont136744136745_))
                                            (___kont136744136745_))))
                                    (___kont136744136745_))))
                            (___kont136744136745_))))
                    (___kont136744136745_))))))))))
