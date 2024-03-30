(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1711108657)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp137226 (list gxc#::identity::t))
            (__tmp137224
             (let ((__tmp137225
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137225 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp137226
         '()
         __tmp137224
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args136090_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args136090_)))
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
      (lambda (_stx136082_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self136085_
                (let ((__obj137219
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj137219))
               (__tmp137227
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self136085_ _stx136082_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp137227
           gxc#current-compile-method
           _self136085_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp137230 (list gxc#::void::t))
            (__tmp137228
             (let ((__tmp137229
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137229 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp137230
         '(receiver methods slots)
         __tmp137228
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args136079_
        (apply make-instance gxc#::collect-object-refs::t _$args136079_)))
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
      (lambda (_g137231_
               _receiver136040136045_
               _methods136041136047_
               _slots136042136049_
               _stx136051_)
        (let* ((_receiver136054_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver136040136045_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver136040136045_))
               (_methods136056_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods136041136047_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods136041136047_))
               (_slots136058_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots136042136049_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots136042136049_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self136060_
                  (let ((__obj137221
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
                       __obj137221
                       _receiver136054_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137221
                       _methods136056_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137221
                       _slots136058_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj137221))
                 (__tmp137232
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136060_ _stx136051_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137232
             gxc#current-compile-method
             _self136060_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys136039136067_ . _args136069_)
        (apply gxc#apply-collect-object-refs__%
               _keys136039136067_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136039136067_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys136039136067_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys136039136067_ 'slots: absent-value))
               _args136069_)))
    (define gxc#apply-collect-object-refs
      (lambda _args136043136075_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args136043136075_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp137235 (list gxc#::basic-xform-expression::t))
            (__tmp137233
             (let ((__tmp137234
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp137234 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp137235
         '(receiver klass methods slots)
         __tmp137233
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args136035_
        (apply make-instance gxc#::subst-object-refs::t _$args136035_)))
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
      (lambda (_g137236_
               _receiver135991135997_
               _klass135992135999_
               _methods135993136001_
               _slots135994136003_
               _stx136005_)
        (let* ((_receiver136008_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135991135997_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135991135997_))
               (_klass136010_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135992135999_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135992135999_))
               (_methods136012_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135993136001_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135993136001_))
               (_slots136014_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135994136003_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135994136003_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self136016_
                  (let ((__obj137223
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
                       __obj137223
                       _receiver136008_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137223
                       _klass136010_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137223
                       _methods136012_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj137223
                       _slots136014_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj137223))
                 (__tmp137237
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self136016_ _stx136005_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp137237
             gxc#current-compile-method
             _self136016_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135990136023_ . _args136025_)
        (apply gxc#apply-subst-object-refs__%
               _keys135990136023_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135990136023_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135990136023_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135990136023_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135990136023_ 'slots: absent-value))
               _args136025_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135995136031_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135995136031_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self133200_ _stx133201_)
        (letrec ((_generate-method-bind133203_
                  (lambda (_$klass135982_
                           _$method-table135983_
                           _id135984_
                           _$id135985_)
                    (let ((_$tmp135987_
                           (let ((__tmp137238 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137238))))
                      (let ((__tmp137286
                             (let ()
                               (declare (not safe))
                               (cons _$id135985_ '())))
                            (__tmp137239
                             (let ((__tmp137240
                                    (let ((__tmp137241
                                           (let ((__tmp137284
                                                  (let ((__tmp137285
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137285)))
                                                 (__tmp137242
                                                  (let ((__tmp137243
                                                         (let ((__tmp137244
                                                                (let ((__tmp137245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137246
                                      (let ((__tmp137247
                                             (let ((__tmp137267
                                                    (let ((__tmp137268
                                                           (let ((__tmp137283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135987_ '())))
                         (__tmp137269
                          (let ((__tmp137270
                                 (let ((__tmp137271
                                        (let ((__tmp137281
                                               (let ((__tmp137282
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp137282)))
                                              (__tmp137272
                                               (let ((__tmp137279
                                                      (let ((__tmp137280
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135983_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp137280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp137273
                                                      (let ((__tmp137277
                                                             (let ((__tmp137278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135984_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp137278)))
                    (__tmp137274
                     (let ((__tmp137275
                            (let ((__tmp137276
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137276))))
                       (declare (not safe))
                       (cons __tmp137275 '()))))
                (declare (not safe))
                (cons __tmp137277 __tmp137274))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp137279
                                                       __tmp137273))))
                                          (declare (not safe))
                                          (cons __tmp137281 __tmp137272))))
                                   (declare (not safe))
                                   (cons '%#call __tmp137271))))
                            (declare (not safe))
                            (cons __tmp137270 '()))))
                     (declare (not safe))
                     (cons __tmp137283 __tmp137269))))
              (declare (not safe))
              (cons __tmp137268 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137248
                                                    (let ((__tmp137249
                                                           (let ((__tmp137250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137265
                                 (let ((__tmp137266
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135987_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp137266)))
                                (__tmp137251
                                 (let ((__tmp137263
                                        (let ((__tmp137264
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135987_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp137264)))
                                       (__tmp137252
                                        (let ((__tmp137253
                                               (let ((__tmp137254
                                                      (let ((__tmp137261
                                                             (let ((__tmp137262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp137262)))
                    (__tmp137255
                     (let ((__tmp137259
                            (let ((__tmp137260
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp137260)))
                           (__tmp137256
                            (let ((__tmp137257
                                   (let ((__tmp137258
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135984_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp137258))))
                              (declare (not safe))
                              (cons __tmp137257 '()))))
                       (declare (not safe))
                       (cons __tmp137259 __tmp137256))))
                (declare (not safe))
                (cons __tmp137261 __tmp137255))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp137254))))
                                          (declare (not safe))
                                          (cons __tmp137253 '()))))
                                   (declare (not safe))
                                   (cons __tmp137263 __tmp137252))))
                            (declare (not safe))
                            (cons __tmp137265 __tmp137251))))
                     (declare (not safe))
                     (cons '%#if __tmp137250))))
              (declare (not safe))
              (cons __tmp137249 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137267
                                                     __tmp137248))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp137247))))
                                 (declare (not safe))
                                 (cons __tmp137246 '()))))
                          (declare (not safe))
                          (cons '() __tmp137245))))
                   (declare (not safe))
                   (cons '%#lambda __tmp137244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137243 '()))))
                                             (declare (not safe))
                                             (cons __tmp137284 __tmp137242))))
                                      (declare (not safe))
                                      (cons '%#call __tmp137241))))
                               (declare (not safe))
                               (cons __tmp137240 '()))))
                        (declare (not safe))
                        (cons __tmp137286 __tmp137239)))))
                 (_generate-slot-bind133204_
                  (lambda (_$klass135976_ _id135977_ _$id135978_)
                    (let ((_$tmp135980_
                           (let ((__tmp137287 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp137287))))
                      (let ((__tmp137324
                             (let ()
                               (declare (not safe))
                               (cons _$id135978_ '())))
                            (__tmp137288
                             (let ((__tmp137289
                                    (let ((__tmp137290
                                           (let ((__tmp137310
                                                  (let ((__tmp137311
                                                         (let ((__tmp137323
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135980_ '())))
                       (__tmp137312
                        (let ((__tmp137313
                               (let ((__tmp137314
                                      (let ((__tmp137321
                                             (let ((__tmp137322
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp137322)))
                                            (__tmp137315
                                             (let ((__tmp137319
                                                    (let ((__tmp137320
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp137320)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp137316
                                                    (let ((__tmp137317
                                                           (let ((__tmp137318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135977_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp137318))))
              (declare (not safe))
              (cons __tmp137317 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp137319
                                                     __tmp137316))))
                                        (declare (not safe))
                                        (cons __tmp137321 __tmp137315))))
                                 (declare (not safe))
                                 (cons '%#call __tmp137314))))
                          (declare (not safe))
                          (cons __tmp137313 '()))))
                   (declare (not safe))
                   (cons __tmp137323 __tmp137312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137311 '())))
                                                 (__tmp137291
                                                  (let ((__tmp137292
                                                         (let ((__tmp137293
                                                                (let ((__tmp137308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp137309
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135980_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp137309)))
                              (__tmp137294
                               (let ((__tmp137306
                                      (let ((__tmp137307
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135980_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp137307)))
                                     (__tmp137295
                                      (let ((__tmp137296
                                             (let ((__tmp137297
                                                    (let ((__tmp137304
                                                           (let ((__tmp137305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp137305)))
                  (__tmp137298
                   (let ((__tmp137302
                          (let ((__tmp137303
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp137303)))
                         (__tmp137299
                          (let ((__tmp137300
                                 (let ((__tmp137301
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135977_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp137301))))
                            (declare (not safe))
                            (cons __tmp137300 '()))))
                     (declare (not safe))
                     (cons __tmp137302 __tmp137299))))
              (declare (not safe))
              (cons __tmp137304 __tmp137298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp137297))))
                                        (declare (not safe))
                                        (cons __tmp137296 '()))))
                                 (declare (not safe))
                                 (cons __tmp137306 __tmp137295))))
                          (declare (not safe))
                          (cons __tmp137308 __tmp137294))))
                   (declare (not safe))
                   (cons '%#if __tmp137293))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137292 '()))))
                                             (declare (not safe))
                                             (cons __tmp137310 __tmp137291))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp137290))))
                               (declare (not safe))
                               (cons __tmp137289 '()))))
                        (declare (not safe))
                        (cons __tmp137324 __tmp137288)))))
                 (_generate-specializer-impl133205_
                  (lambda (_$klass135970_
                           _$method-table135971_
                           _methods-bind135972_
                           _slots-bind135973_
                           _specializer-impl135974_)
                    (let ((__tmp137325
                           (let ((__tmp137326
                                  (let ((__tmp137332
                                         (let ((__tmp137333
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135971_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135970_ __tmp137333)))
                                        (__tmp137327
                                         (let ((__tmp137328
                                                (let ((__tmp137329
                                                       (let ((__tmp137331
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135973_ _methods-bind135972_)))
                     (__tmp137330
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135974_ '()))))
                 (declare (not safe))
                 (cons __tmp137331 __tmp137330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137329))))
                                           (declare (not safe))
                                           (cons __tmp137328 '()))))
                                    (declare (not safe))
                                    (cons __tmp137332 __tmp137327))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137326))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137325 _stx133201_))))
                 (_generate-specializer-def133206_
                  (lambda (_id135966_
                           _specializer-id135967_
                           _specializer-impl135968_)
                    (let ((__tmp137334
                           (let ((__tmp137335
                                  (let ((__tmp137336
                                         (let ((__tmp137349
                                                (let ((__tmp137350
                                                       (let ((__tmp137351
                                                              (let ((__tmp137353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135967_ '())))
                            (__tmp137352
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135968_ '()))))
                        (declare (not safe))
                        (cons __tmp137353 __tmp137352))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137351))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137350
                                                   _stx133201_)))
                                               (__tmp137337
                                                (let ((__tmp137338
                                                       (let ((__tmp137339
                                                              (let ((__tmp137340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137347
                                    (let ((__tmp137348
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137348)))
                                   (__tmp137341
                                    (let ((__tmp137345
                                           (let ((__tmp137346
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135966_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137346)))
                                          (__tmp137342
                                           (let ((__tmp137343
                                                  (let ((__tmp137344
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137344))))
                                             (declare (not safe))
                                             (cons __tmp137343 '()))))
                                      (declare (not safe))
                                      (cons __tmp137345 __tmp137342))))
                               (declare (not safe))
                               (cons __tmp137347 __tmp137341))))
                        (declare (not safe))
                        (cons '%#call __tmp137340))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137339 _stx133201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137338 '()))))
                                           (declare (not safe))
                                           (cons __tmp137349 __tmp137337))))
                                    (declare (not safe))
                                    (cons _stx133201_ __tmp137336))))
                             (declare (not safe))
                             (cons '%#begin __tmp137335))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137334 _stx133201_)))))
          (let* ((___stx136179136180_ _stx133201_)
                 (_g133209133229_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136179136180_)))))
            (let ((___kont136181136182_
                   (lambda (_L133273_ _L133274_)
                     (let ((_method-calls133293_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs133294_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty133295_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?133297_
                                 (lambda ()
                                   (if (let ((__tmp137355
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls133293_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137355))
                                       (let ((__tmp137354
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs133294_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137354))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L133273_))
                             (let* ((___stx136093136094_ _L133273_)
                                    (_g133684133702_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx136093136094_)))))
                               (let ((___kont136095136096_
                                      (lambda (_L133738_ _L133739_ _L133740_)
                                        (for-each
                                         (lambda (_g133755133757_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133755133757_
                                              'receiver:
                                              _L133740_
                                              'methods:
                                              _method-calls133293_
                                              'slots:
                                              _slot-refs133294_)))
                                         _L133738_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?133297_))
                                            _stx133201_
                                            (let* ((_specializer-id133766_
                                                    (let* ((_id133760_
                                                            (let ((__tmp137477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L133274_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137477 '"::specialize")))
                   (_specializer-id133763_
                    (let ((__tmp137478
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx133201_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133760_ __tmp137478))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133763_))
              _specializer-id133763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133768_
                                                    (let ((__tmp137479
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137479)))
                                                   (_$method-table133770_
                                                    (let ((__tmp137480
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137480)))
                                                   (_methods133772_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls133293_)))
                                                   (_$methods133776_
                                                    (map (lambda (_id133774_)
                                                           (let ((__tmp137481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133774_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137481)))
                 _methods133772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137482_
                                                    (for-each
                                                     (lambda (_g133777133780_
                                                              _g133778133782_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls133293_
                                                          _g133777133780_
                                                          _g133778133782_)))
                                                     _methods133772_
                                                     _$methods133776_))
                                                   (_methods-bind133793_
                                                    (map (lambda (_g133785133788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133786133790_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind133203_
                      _$klass133768_
                      _$method-table133770_
                      _g133785133788_
                      _g133786133790_)))
                 _methods133772_
                 _$methods133776_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133795_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs133294_)))
                                                   (_$slots133799_
                                                    (map (lambda (_id133797_)
                                                           (let ((__tmp137483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133797_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137483)))
                 _slots133795_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137484_
                                                    (for-each
                                                     (lambda (_g133800133803_
                                                              _g133801133805_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs133294_
                                                          _g133800133803_
                                                          _g133801133805_)))
                                                     _slots133795_
                                                     _$slots133799_))
                                                   (_slots-bind133816_
                                                    (map (lambda (_g133808133811_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133809133813_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind133204_
                      _$klass133768_
                      _g133808133811_
                      _g133809133813_)))
                 _slots133795_
                 _$slots133799_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133822_
                                                    (map (lambda (_g133817133819_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133817133819_
                                                              'receiver:
                                                              _L133740_
                                                              'klass:
                                                              _$klass133768_
                                                              'methods:
                                                              _method-calls133293_
                                                              'slots:
                                                              _slot-refs133294_)))
                                                         _L133738_))
                                                   (_specializer-impl133824_
                                                    (let ((__tmp137485
                                                           (let ((__tmp137486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137487
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133740_ _L133739_))))
                            (declare (not safe))
                            (cons __tmp137487 _specializer-body133822_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137486))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137485 _stx133201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133826_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl133205_
                                                       _$klass133768_
                                                       _$method-table133770_
                                                       _methods-bind133793_
                                                       _slots-bind133816_
                                                       _specializer-impl133824_))))
                                              (let ((__tmp137489
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L133274_)))
                                                    (__tmp137488
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133766_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137489
                                                 '" => "
                                                 __tmp137488))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def133206_
                                                 _L133274_
                                                 _specializer-id133766_
                                                 _specializer-impl133826_))))))
                                     (___kont136097136098_
                                      (lambda () _stx133201_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx136093136094_))
                                     (let ((_e133691133714_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx136093136094_))))
                                       (let ((_tl133689133719_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133691133714_)))
                                             (_hd133690133717_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133691133714_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133689133719_))
                                             (let ((_e133694133722_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133689133719_))))
                                               (let ((_tl133692133727_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133694133722_)))
                                                     (_hd133693133725_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133694133722_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133693133725_))
                                                     (let ((_e133697133730_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133693133725_))))
                                                       (let ((_tl133695133735_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133697133730_)))
                     (_hd133696133733_
                      (let () (declare (not safe)) (##car _e133697133730_))))
                 (___kont136095136096_
                  _tl133692133727_
                  _tl133695133735_
                  _hd133696133733_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136097136098_))))
                                             (___kont136097136098_))))
                                     (___kont136097136098_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L133273_))
                                 (let* ((_g133832133851_
                                         (lambda (_g133833133848_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133833133848_))))
                                        (_g133831134134_
                                         (lambda (_g133833133854_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133833133854_))
                                               (let ((_e133837133856_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133833133854_))))
                                                 (let ((_hd133836133859_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133837133856_)))
                                                       (_tl133835133861_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133837133856_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133835133861_))
                                                       (let ((_g137460_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133835133861_ '0))))
                 (begin
                   (let ((_g137461_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137460_)
                                (##vector-length _g137460_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137461_ 2)))
                         (error "Context expects 2 values" _g137461_)))
                   (let ((_target133838133864_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137460_ 0)))
                         (_tl133840133866_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137460_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133840133866_))
                         (letrec ((_loop133841133869_
                                   (lambda (_hd133839133872_
                                            _clause133845133874_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133839133872_))
                                         (let ((_e133842133877_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133839133872_))))
                                           (let ((_lp-hd133843133880_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133842133877_)))
                                                 (_lp-tl133844133882_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133842133877_))))
                                             (let ((__tmp137476
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133843133880_
                                                            _clause133845133874_))))
                                               (declare (not safe))
                                               (_loop133841133869_
                                                _lp-tl133844133882_
                                                __tmp137476))))
                                         (let ((_clause133846133885_
                                                (reverse _clause133845133874_)))
                                           ((lambda (_L133888_)
                                              (for-each
                                               (lambda (_clause133901_)
                                                 (let* ((___stx136119136120_
                                                         _clause133901_)
                                                        (_g133904133919_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx136119136120_)))))
                                                   (let ((___kont136121136122_
                                                          (lambda (_L133947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133948_
                           _L133949_)
                    (for-each
                     (lambda (_g133964133966_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133964133966_
                          'receiver:
                          _L133949_
                          'methods:
                          _method-calls133293_
                          'slots:
                          _slot-refs133294_)))
                     _L133947_)))
                 (___kont136123136124_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx136119136120_))
                                                         (let ((_e133911133931_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx136119136120_))))
                   (let ((_tl133909133936_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133911133931_)))
                         (_hd133910133934_
                          (let ()
                            (declare (not safe))
                            (##car _e133911133931_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133910133934_))
                         (let ((_e133914133939_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133910133934_))))
                           (let ((_tl133912133944_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133914133939_)))
                                 (_hd133913133942_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133914133939_))))
                             (___kont136121136122_
                              _tl133909133936_
                              _tl133912133944_
                              _hd133913133942_)))
                         (___kont136123136124_))))
                 (___kont136123136124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137462
                                                      (lambda (_g133971133974_
                                                               _g133972133976_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133971133974_
                                                                _g133972133976_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137462
                                                         '()
                                                         _L133888_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133297_))
                                                  _stx133201_
                                                  (let* ((_specializer-id133985_
                                                          (let* ((_id133979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137463
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133274_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137463 '"::specialize")))
                         (_specializer-id133982_
                          (let ((__tmp137464
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133201_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133979_ __tmp137464))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133982_))
                    _specializer-id133982_))
                 (_$klass133987_
                  (let ((__tmp137465 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137465)))
                 (_$method-table133989_
                  (let ((__tmp137466 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137466)))
                 (_methods133991_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133293_)))
                 (_$methods133995_
                  (map (lambda (_id133993_)
                         (let ((__tmp137467 (gensym _id133993_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137467)))
                       _methods133991_))
                 (_g137468_
                  (for-each
                   (lambda (_g133996133999_ _g133997134001_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133293_
                        _g133996133999_
                        _g133997134001_)))
                   _methods133991_
                   _$methods133995_))
                 (_methods-bind134012_
                  (map (lambda (_g134004134007_ _g134005134009_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133203_
                            _$klass133987_
                            _$method-table133989_
                            _g134004134007_
                            _g134005134009_)))
                       _methods133991_
                       _$methods133995_))
                 (_slots134014_
                  (let () (declare (not safe)) (hash-keys _slot-refs133294_)))
                 (_$slots134018_
                  (map (lambda (_id134016_)
                         (let ((__tmp137469 (gensym _id134016_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137469)))
                       _slots134014_))
                 (_g137470_
                  (for-each
                   (lambda (_g134019134022_ _g134020134024_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133294_
                        _g134019134022_
                        _g134020134024_)))
                   _slots134014_
                   _$slots134018_))
                 (_slots-bind134035_
                  (map (lambda (_g134027134030_ _g134028134032_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133204_
                            _$klass133987_
                            _g134027134030_
                            _g134028134032_)))
                       _slots134014_
                       _$slots134018_))
                 (_specializer-clauses134127_
                  (map (lambda (_clause134037_)
                         (let* ((___stx136139136140_ _clause134037_)
                                (_g134040134055_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx136139136140_)))))
                           (let ((___kont136141136142_
                                  (lambda (_L134083_ _L134084_ _L134085_)
                                    (let* ((_body134115_
                                            (map (lambda (_g134110134112_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g134110134112_
                                                      'receiver:
                                                      _L134085_
                                                      'klass:
                                                      _$klass133987_
                                                      'methods:
                                                      _method-calls133293_
                                                      'slots:
                                                      _slot-refs133294_)))
                                                 _L134083_))
                                           (__tmp137471
                                            (let ()
                                              (declare (not safe))
                                              (cons _L134085_ _L134084_))))
                                      (declare (not safe))
                                      (cons __tmp137471 _body134115_))))
                                 (___kont136143136144_
                                  (lambda () _clause134037_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx136139136140_))
                                 (let ((_e134047134067_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx136139136140_))))
                                   (let ((_tl134045134072_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e134047134067_)))
                                         (_hd134046134070_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e134047134067_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd134046134070_))
                                         (let ((_e134050134075_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd134046134070_))))
                                           (let ((_tl134048134080_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e134050134075_)))
                                                 (_hd134049134078_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e134050134075_))))
                                             (___kont136141136142_
                                              _tl134045134072_
                                              _tl134048134080_
                                              _hd134049134078_)))
                                         (___kont136143136144_))))
                                 (___kont136143136144_)))))
                       (let ((__tmp137472
                              (lambda (_g134119134122_ _g134120134124_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g134119134122_ _g134120134124_)))))
                         (declare (not safe))
                         (foldr1 __tmp137472 '() _L133888_))))
                 (_specializer-impl134129_
                  (let ((__tmp137473
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses134127_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137473 _stx133201_)))
                 (_specializer-impl134131_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133205_
                     _$klass133987_
                     _$method-table133989_
                     _methods-bind134012_
                     _slots-bind134035_
                     _specializer-impl134129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137475
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133274_)))
                                                          (__tmp137474
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133985_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137475
                                                       '" => "
                                                       __tmp137474))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133206_
                                                       _L133274_
                                                       _specializer-id133985_
                                                       _specializer-impl134131_)))))
                                            _clause133846133885_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133841133869_ _target133838133864_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133832133851_ _g133833133854_))))))
               (let ()
                 (declare (not safe))
                 (_g133832133851_ _g133833133854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133832133851_
                                                  _g133833133854_))))))
                                   (declare (not safe))
                                   (_g133831134134_ _L133273_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L133273_))
                                     (let* ((_g134137134167_
                                             (lambda (_g134138134164_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134138134164_))))
                                            (_g134136134772_
                                             (lambda (_g134138134170_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134138134170_))
                                                   (let ((_e134144134172_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134138134170_))))
                                                     (let ((_hd134143134175_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134144134172_)))
                                                           (_tl134142134177_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134144134172_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134142134177_))
                                                           (let ((_e134147134180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134142134177_))))
                     (let ((_hd134146134183_
                            (let ()
                              (declare (not safe))
                              (##car _e134147134180_)))
                           (_tl134145134185_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134147134180_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134146134183_))
                           (let ((_e134150134188_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134146134183_))))
                             (let ((_hd134149134191_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134150134188_)))
                                   (_tl134148134193_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134150134188_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134149134191_))
                                   (let ((_e134153134196_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134149134191_))))
                                     (let ((_hd134152134199_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134153134196_)))
                                           (_tl134151134201_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134153134196_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd134152134199_))
                                           (let ((_e134156134204_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd134152134199_))))
                                             (let ((_hd134155134207_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134156134204_)))
                                                   (_tl134154134209_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134156134204_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134154134209_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl134151134201_))
                                                       (let ((_e134159134212_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl134151134201_))))
                 (let ((_hd134158134215_
                        (let () (declare (not safe)) (##car _e134159134212_)))
                       (_tl134157134217_
                        (let () (declare (not safe)) (##cdr _e134159134212_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134157134217_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl134148134193_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134145134185_))
                               (let ((_e134162134220_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134145134185_))))
                                 (let ((_hd134161134223_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134162134220_)))
                                       (_tl134160134225_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134162134220_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134160134225_))
                                       ((lambda (_L134228_ _L134229_ _L134230_)
                                          (let* ((_g134253134271_
                                                  (lambda (_g134254134268_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134254134268_))))
                                                 (_g134252134322_
                                                  (lambda (_g134254134274_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134254134274_))
                                                        (let ((_e134260134276_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134254134274_))))
                  (let ((_hd134259134279_
                         (let () (declare (not safe)) (##car _e134260134276_)))
                        (_tl134258134281_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134260134276_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl134258134281_))
                        (let ((_e134263134284_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl134258134281_))))
                          (let ((_hd134262134287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e134263134284_)))
                                (_tl134261134289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e134263134284_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd134262134287_))
                                (let ((_e134266134292_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd134262134287_))))
                                  (let ((_hd134265134295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134266134292_)))
                                        (_tl134264134297_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134266134292_))))
                                    ((lambda (_L134300_ _L134301_ _L134302_)
                                       (for-each
                                        (lambda (_g134317134319_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g134317134319_
                                             'receiver:
                                             _L134302_
                                             'methods:
                                             _method-calls133293_
                                             'slots:
                                             _slot-refs133294_)))
                                        _L134300_))
                                     _tl134261134289_
                                     _tl134264134297_
                                     _hd134265134295_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134253134271_ _g134254134274_)))))
                        (let ()
                          (declare (not safe))
                          (_g134253134271_ _g134254134274_)))))
                (let ()
                  (declare (not safe))
                  (_g134253134271_ _g134254134274_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134252134322_ _L134229_))
                                          (let* ((_g134325134344_
                                                  (lambda (_g134326134341_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134326134341_))))
                                                 (_g134324134463_
                                                  (lambda (_g134326134347_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134326134347_))
                                                        (let ((_e134330134349_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134326134347_))))
                  (let ((_hd134329134352_
                         (let () (declare (not safe)) (##car _e134330134349_)))
                        (_tl134328134354_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134330134349_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134328134354_))
                        (let ((_g137430_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134328134354_
                                  '0))))
                          (begin
                            (let ((_g137431_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137430_)
                                         (##vector-length _g137430_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137431_ 2)))
                                  (error "Context expects 2 values"
                                         _g137431_)))
                            (let ((_target134331134357_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137430_ 0)))
                                  (_tl134333134359_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137430_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134333134359_))
                                  (letrec ((_loop134334134362_
                                            (lambda (_hd134332134365_
                                                     _clause134338134367_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134332134365_))
                                                  (let ((_e134335134370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134332134365_))))
                                                    (let ((_lp-hd134336134373_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134335134370_)))
                                                          (_lp-tl134337134375_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134335134370_))))
                                                      (let ((__tmp137433
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134336134373_ _clause134338134367_))))
                (declare (not safe))
                (_loop134334134362_ _lp-tl134337134375_ __tmp137433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134339134378_
                                                         (reverse _clause134338134367_)))
                                                    ((lambda (_L134381_)
                                                       (for-each
                                                        (lambda (_clause134394_)
                                                          (let* ((_g134396134411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134397134408_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134397134408_))))
                         (_g134395134453_
                          (lambda (_g134397134414_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134397134414_))
                                (let ((_e134403134416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134397134414_))))
                                  (let ((_hd134402134419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134403134416_)))
                                        (_tl134401134421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134403134416_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134402134419_))
                                        (let ((_e134406134424_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134402134419_))))
                                          (let ((_hd134405134427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134406134424_)))
                                                (_tl134404134429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134406134424_))))
                                            ((lambda (_L134432_
                                                      _L134433_
                                                      _L134434_)
                                               (for-each
                                                (lambda (_g134448134450_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134448134450_
                                                     'receiver:
                                                     _L134434_
                                                     'methods:
                                                     _method-calls133293_
                                                     'slots:
                                                     _slot-refs133294_)))
                                                _L134432_))
                                             _tl134401134421_
                                             _tl134404134429_
                                             _hd134405134427_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134396134411_ _g134397134414_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134396134411_ _g134397134414_))))))
                    (declare (not safe))
                    (_g134395134453_ _clause134394_)))
                (let ((__tmp137432
                       (lambda (_g134455134458_ _g134456134460_)
                         (let ()
                           (declare (not safe))
                           (cons _g134455134458_ _g134456134460_)))))
                  (declare (not safe))
                  (foldr1 __tmp137432 '() _L134381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134339134378_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134334134362_
                                       _target134331134357_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g134325134344_ _g134326134347_))))))
                        (let ()
                          (declare (not safe))
                          (_g134325134344_ _g134326134347_)))))
                (let ()
                  (declare (not safe))
                  (_g134325134344_ _g134326134347_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g134324134463_ _L134228_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?133297_))
                                              _stx133201_
                                              (let* ((_specializer-id134472_
                                                      (let* ((_id134466_
                                                              (let ((__tmp137434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L133274_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137434 '"::specialize")))
                     (_specializer-id134469_
                      (let ((__tmp137435
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx133201_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134466_ __tmp137435))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134469_))
                _specializer-id134469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134474_
                                                      (let ((__tmp137436
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137436)))
                                                     (_$method-table134476_
                                                      (let ((__tmp137437
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137437)))
                                                     (_methods134478_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls133293_)))
                                                     (_$methods134482_
                                                      (map (lambda (_id134480_)
                                                             (let ((__tmp137438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134480_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137438)))
                   _methods134478_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137439_
                                                      (for-each
                                                       (lambda (_g134483134486_
                                                                _g134484134488_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls133293_
                                                            _g134483134486_
                                                            _g134484134488_)))
                                                       _methods134478_
                                                       _$methods134482_))
                                                     (_methods-bind134499_
                                                      (map (lambda (_g134491134494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134492134496_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind133203_
                        _$klass134474_
                        _$method-table134476_
                        _g134491134494_
                        _g134492134496_)))
                   _methods134478_
                   _$methods134482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134501_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs133294_)))
                                                     (_$slots134505_
                                                      (map (lambda (_id134503_)
                                                             (let ((__tmp137440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134503_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137440)))
                   _slots134501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137441_
                                                      (for-each
                                                       (lambda (_g134506134509_
                                                                _g134507134511_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs133294_
                                                            _g134506134509_
                                                            _g134507134511_)))
                                                       _slots134501_
                                                       _$slots134505_))
                                                     (_slots-bind134522_
                                                      (map (lambda (_g134514134517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134515134519_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind133204_
                        _$klass134474_
                        _g134514134517_
                        _g134515134519_)))
                   _slots134501_
                   _$slots134505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134608_
                                                      (let* ((_g134524134542_
                                                              (lambda (_g134525134539_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134525134539_))))
                     (_g134523134605_
                      (lambda (_g134525134545_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134525134545_))
                            (let ((_e134531134547_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134525134545_))))
                              (let ((_hd134530134550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134531134547_)))
                                    (_tl134529134552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134531134547_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134529134552_))
                                    (let ((_e134534134555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134529134552_))))
                                      (let ((_hd134533134558_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134534134555_)))
                                            (_tl134532134560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134534134555_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134533134558_))
                                            (let ((_e134537134563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134533134558_))))
                                              (let ((_hd134536134566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134537134563_)))
                                                    (_tl134535134568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134537134563_))))
                                                ((lambda (_L134571_
                                                          _L134572_
                                                          _L134573_)
                                                   (let* ((_body134603_
                                                           (map (lambda (_g134598134600_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134598134600_
                             'receiver:
                             _L134573_
                             'klass:
                             _$klass134474_
                             'methods:
                             _method-calls133293_
                             'slots:
                             _slot-refs133294_)))
                        _L134571_))
                  (__tmp137442
                   (let ((__tmp137443
                          (let ((__tmp137444
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134573_ _L134572_))))
                            (declare (not safe))
                            (cons __tmp137444 _body134603_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137442
                                                      _L134229_)))
                                                 _tl134532134560_
                                                 _tl134535134568_
                                                 _hd134536134566_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134524134542_
                                               _g134525134545_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134524134542_ _g134525134545_)))))
                            (let ()
                              (declare (not safe))
                              (_g134524134542_ _g134525134545_))))))
                (declare (not safe))
                (_g134523134605_ _L134229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134765_
                                                      (let* ((_g134610134629_
                                                              (lambda (_g134611134626_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134611134626_))))
                     (_g134609134762_
                      (lambda (_g134611134632_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134611134632_))
                            (let ((_e134615134634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134611134632_))))
                              (let ((_hd134614134637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134615134634_)))
                                    (_tl134613134639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134615134634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134613134639_))
                                    (let ((_g137445_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134613134639_
                                              '0))))
                                      (begin
                                        (let ((_g137446_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137445_)
                                                     (##vector-length
                                                      _g137445_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137446_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137446_)))
                                        (let ((_target134616134642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137445_ 0)))
                                              (_tl134618134644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137445_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134618134644_))
                                              (letrec ((_loop134619134647_
                                                        (lambda (_hd134617134650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134623134652_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134617134650_))
                      (let ((_e134620134655_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134617134650_))))
                        (let ((_lp-hd134621134658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134620134655_)))
                              (_lp-tl134622134660_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134620134655_))))
                          (let ((__tmp137450
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134621134658_
                                         _clause134623134652_))))
                            (declare (not safe))
                            (_loop134619134647_
                             _lp-tl134622134660_
                             __tmp137450))))
                      (let ((_clause134624134663_
                             (reverse _clause134623134652_)))
                        ((lambda (_L134666_)
                           (let* ((_clauses134760_
                                   (map (lambda (_clause134680_)
                                          (let* ((___stx136159136160_
                                                  _clause134680_)
                                                 (_g134683134698_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136159136160_)))))
                                            (let ((___kont136161136162_
                                                   (lambda (_L134726_
                                                            _L134727_
                                                            _L134728_)
                                                     (let* ((_body134748_
                                                             (map (lambda (_g134743134745_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134743134745_
                               'receiver:
                               _L134728_
                               'klass:
                               _$klass134474_
                               'methods:
                               _method-calls133293_
                               'slots:
                               _slot-refs133294_)))
                          _L134726_))
                    (__tmp137447
                     (let () (declare (not safe)) (cons _L134728_ _L134727_))))
               (declare (not safe))
               (cons __tmp137447 _body134748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136163136164_
                                                   (lambda () _clause134680_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx136159136160_))
                                                  (let ((_e134690134710_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx136159136160_))))
                                                    (let ((_tl134688134715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134690134710_)))
                                                          (_hd134689134713_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134690134710_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134689134713_))
                                                          (let ((_e134693134718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134689134713_))))
                    (let ((_tl134691134723_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134693134718_)))
                          (_hd134692134721_
                           (let ()
                             (declare (not safe))
                             (##car _e134693134718_))))
                      (___kont136161136162_
                       _tl134688134715_
                       _tl134691134723_
                       _hd134692134721_)))
                  (___kont136163136164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136163136164_)))))
                                        (let ((__tmp137448
                                               (lambda (_g134752134755_
                                                        _g134753134757_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134752134755_
                                                         _g134753134757_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137448 '() _L134666_))))
                                  (__tmp137449
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134760_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137449 _L134228_)))
                         _clause134624134663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134619134647_
                                                   _target134616134642_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134610134629_
                                                 _g134611134632_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134610134629_ _g134611134632_)))))
                            (let ()
                              (declare (not safe))
                              (_g134610134629_ _g134611134632_))))))
                (declare (not safe))
                (_g134609134762_ _L134228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134767_
                                                      (let ((__tmp137451
                                                             (let ((__tmp137452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137454
                                   (let ((__tmp137455
                                          (let ((__tmp137457
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L134230_ '())))
                                                (__tmp137456
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134608_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137457 __tmp137456))))
                                     (declare (not safe))
                                     (cons __tmp137455 '())))
                                  (__tmp137453
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134765_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137454 __tmp137453))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137452))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137451 _stx133201_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134769_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl133205_
                                                         _$klass134474_
                                                         _$method-table134476_
                                                         _methods-bind134499_
                                                         _slots-bind134522_
                                                         _specializer-impl134767_))))
                                                (let ((__tmp137459
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L133274_)))
                                                      (__tmp137458
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134472_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137459
                                                   '" => "
                                                   __tmp137458))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def133206_
                                                   _L133274_
                                                   _specializer-id134472_
                                                   _specializer-impl134769_)))))
                                        _hd134161134223_
                                        _hd134158134215_
                                        _hd134155134207_)
                                       (let ()
                                         (declare (not safe))
                                         (_g134137134167_ _g134138134170_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134137134167_ _g134138134170_)))
                           (let ()
                             (declare (not safe))
                             (_g134137134167_ _g134138134170_)))
                       (let ()
                         (declare (not safe))
                         (_g134137134167_ _g134138134170_)))))
               (let () (declare (not safe)) (_g134137134167_ _g134138134170_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134137134167_
                                                      _g134138134170_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134137134167_
                                              _g134138134170_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134137134167_ _g134138134170_)))))
                           (let ()
                             (declare (not safe))
                             (_g134137134167_ _g134138134170_)))))
                   (let ()
                     (declare (not safe))
                     (_g134137134167_ _g134138134170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134137134167_
                                                      _g134138134170_))))))
                                       (declare (not safe))
                                       (_g134136134772_ _L133273_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L133273_))
                                         (let* ((_g134775134828_
                                                 (lambda (_g134776134825_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134776134825_))))
                                                (_g134774135959_
                                                 (lambda (_g134776134831_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134776134831_))
                                                       (let ((_e134784134833_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134776134831_))))
                 (let ((_hd134783134836_
                        (let () (declare (not safe)) (##car _e134784134833_)))
                       (_tl134782134838_
                        (let () (declare (not safe)) (##cdr _e134784134833_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134783134836_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134783134836_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134782134838_))
                               (let ((_e134787134841_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134782134838_))))
                                 (let ((_hd134786134844_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134787134841_)))
                                       (_tl134785134846_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134787134841_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134786134844_))
                                       (let ((_e134790134849_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134786134844_))))
                                         (let ((_hd134789134852_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134790134849_)))
                                               (_tl134788134854_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134790134849_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134789134852_))
                                               (let ((_e134793134857_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134789134852_))))
                                                 (let ((_hd134792134860_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134793134857_)))
                                                       (_tl134791134862_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134793134857_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134792134860_))
                                                       (let ((_e134796134865_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134792134860_))))
                 (let ((_hd134795134868_
                        (let () (declare (not safe)) (##car _e134796134865_)))
                       (_tl134794134870_
                        (let () (declare (not safe)) (##cdr _e134796134865_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134794134870_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134791134862_))
                           (let ((_e134799134873_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134791134862_))))
                             (let ((_hd134798134876_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134799134873_)))
                                   (_tl134797134878_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134799134873_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134798134876_))
                                   (let ((_e134802134881_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134798134876_))))
                                     (let ((_hd134801134884_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134802134881_)))
                                           (_tl134800134886_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134802134881_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134801134884_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134801134884_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134800134886_))
                                                   (let ((_e134805134889_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134800134886_))))
                                                     (let ((_hd134804134892_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134805134889_)))
                                                           (_tl134803134894_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134805134889_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134804134892_))
                                                           (let ((_e134808134897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134804134892_))))
                     (let ((_hd134807134900_
                            (let ()
                              (declare (not safe))
                              (##car _e134808134897_)))
                           (_tl134806134902_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134808134897_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134807134900_))
                           (let ((_e134811134905_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134807134900_))))
                             (let ((_hd134810134908_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134811134905_)))
                                   (_tl134809134910_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134811134905_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134810134908_))
                                   (let ((_e134814134913_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134810134908_))))
                                     (let ((_hd134813134916_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134814134913_)))
                                           (_tl134812134918_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134814134913_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134812134918_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134809134910_))
                                               (let ((_e134817134921_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134809134910_))))
                                                 (let ((_hd134816134924_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134817134921_)))
                                                       (_tl134815134926_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134817134921_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134815134926_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134806134902_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134803134894_))
                       (let ((_e134820134929_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134803134894_))))
                         (let ((_hd134819134932_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134820134929_)))
                               (_tl134818134934_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134820134929_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134818134934_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134797134878_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134788134854_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134785134846_))
                                           (let ((_e134823134937_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134785134846_))))
                                             (let ((_hd134822134940_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134823134937_)))
                                                   (_tl134821134942_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134823134937_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134821134942_))
                                                   ((lambda (_L134945_
                                                             _L134946_
                                                             _L134947_
                                                             _L134948_
                                                             _L134949_)
                                                      (let* ((_g134988135050_
                                                              (lambda (_g134989135047_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134989135047_))))
                     (_g134987135956_
                      (lambda (_g134989135053_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134989135053_))
                            (let ((_e134997135055_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134989135053_))))
                              (let ((_hd134996135058_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134997135055_)))
                                    (_tl134995135060_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134997135055_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134996135058_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134996135058_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134995135060_))
                                            (let ((_e135000135063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134995135060_))))
                                              (let ((_hd134999135066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135000135063_)))
                                                    (_tl134998135068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135000135063_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134998135068_))
                                                    (let ((_e135003135071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134998135068_))))
                                                      (let ((_hd135002135074_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135003135071_)))
                    (_tl135001135076_
                     (let () (declare (not safe)) (##cdr _e135003135071_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd135002135074_))
                    (let ((_e135006135079_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd135002135074_))))
                      (let ((_hd135005135082_
                             (let ()
                               (declare (not safe))
                               (##car _e135006135079_)))
                            (_tl135004135084_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135006135079_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd135005135082_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd135005135082_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl135004135084_))
                                    (let ((_e135009135087_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl135004135084_))))
                                      (let ((_hd135008135090_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135009135087_)))
                                            (_tl135007135092_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135009135087_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd135008135090_))
                                            (let ((_e135012135095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd135008135090_))))
                                              (let ((_hd135011135098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e135012135095_)))
                                                    (_tl135010135100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e135012135095_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd135011135098_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd135011135098_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl135010135100_))
                                                            (let ((_e135015135103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl135010135100_))))
                      (let ((_hd135014135106_
                             (let ()
                               (declare (not safe))
                               (##car _e135015135103_)))
                            (_tl135013135108_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135015135103_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135013135108_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl135007135092_))
                                (let ((_e135018135111_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl135007135092_))))
                                  (let ((_hd135017135114_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135018135111_)))
                                        (_tl135016135116_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135018135111_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd135017135114_))
                                        (let ((_e135021135119_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd135017135114_))))
                                          (let ((_hd135020135122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135021135119_)))
                                                (_tl135019135124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135021135119_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd135020135122_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd135020135122_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl135019135124_))
                                                        (let ((_e135024135127_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl135019135124_))))
                  (let ((_hd135023135130_
                         (let () (declare (not safe)) (##car _e135024135127_)))
                        (_tl135022135132_
                         (let ()
                           (declare (not safe))
                           (##cdr _e135024135127_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl135022135132_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135016135116_))
                            (let ((_e135027135135_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135016135116_))))
                              (let ((_hd135026135138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135027135135_)))
                                    (_tl135025135140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135027135135_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd135026135138_))
                                    (let ((_e135030135143_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd135026135138_))))
                                      (let ((_hd135029135146_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135030135143_)))
                                            (_tl135028135148_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135030135143_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd135029135146_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd135029135146_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl135028135148_))
                                                    (let ((_e135033135151_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl135028135148_))))
                                                      (let ((_hd135032135154_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e135033135151_)))
                    (_tl135031135156_
                     (let () (declare (not safe)) (##cdr _e135033135151_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl135031135156_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl135025135140_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl135025135140_))
                                  '1)
                            (let ((_g137356_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135025135140_
                                      '1))))
                              (begin
                                (let ((_g137357_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137356_)
                                             (##vector-length _g137356_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137357_ 2)))
                                      (error "Context expects 2 values"
                                             _g137357_)))
                                (let ((_target135034135159_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137356_ 0)))
                                      (_tl135036135161_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137356_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl135036135161_))
                                      (let ((_e135045135164_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl135036135161_))))
                                        (let ((_hd135044135167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e135045135164_)))
                                              (_tl135043135169_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e135045135164_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl135043135169_))
                                              (letrec ((_loop135037135172_
                                                        (lambda (_hd135035135175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref135041135177_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd135035135175_))
                      (let ((_e135038135180_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd135035135175_))))
                        (let ((_lp-hd135039135183_
                               (let ()
                                 (declare (not safe))
                                 (##car _e135038135180_)))
                              (_lp-tl135040135185_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e135038135180_))))
                          (let ((__tmp137429
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd135039135183_
                                         _kw-ref135041135177_))))
                            (declare (not safe))
                            (_loop135037135172_
                             _lp-tl135040135185_
                             __tmp137429))))
                      (let ((_kw-ref135042135188_
                             (reverse _kw-ref135041135177_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl135001135076_))
                            ((lambda (_L135191_
                                      _L135192_
                                      _L135193_
                                      _L135194_
                                      _L135195_)
                               (let* ((_kw-count135246_
                                       (length (let ((__tmp137358
                                                      (lambda (_g135238135241_
                                                               _g135239135243_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g135238135241_
                                                                _g135239135243_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137358
                                                         '()
                                                         _L135192_))))
                                      (_self-index135248_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count135246_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134947_))
                                     (let* ((_g135251135265_
                                             (lambda (_g135252135262_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g135252135262_))))
                                            (_g135250135378_
                                             (lambda (_g135252135268_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g135252135268_))
                                                   (let ((_e135257135270_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g135252135268_))))
                                                     (let ((_hd135256135273_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e135257135270_)))
                                                           (_tl135255135275_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e135257135270_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135255135275_))
                                                           (let ((_e135260135278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135255135275_))))
                     (let ((_hd135259135281_
                            (let ()
                              (declare (not safe))
                              (##car _e135260135278_)))
                           (_tl135258135283_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135260135278_))))
                       ((lambda (_L135286_ _L135287_)
                          (let ((_self135303_
                                 (list-ref _L135287_ _self-index135248_)))
                            (for-each
                             (lambda (_g135304135306_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g135304135306_
                                  'receiver:
                                  _self135303_
                                  'methods:
                                  _method-calls133293_
                                  'slots:
                                  _slot-refs133294_)))
                             _L135286_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?133297_))
                                _stx133201_
                                (let* ((_specializer-id135315_
                                        (let* ((_id135309_
                                                (let ((__tmp137402
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L133274_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137402
                                                   '"::specialize")))
                                               (_specializer-id135312_
                                                (let ((__tmp137403
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx133201_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id135309_
                                                   __tmp137403))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id135312_))
                                          _specializer-id135312_))
                                       (_$klass135317_
                                        (let ((__tmp137404 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137404)))
                                       (_$method-table135319_
                                        (let ((__tmp137405
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137405)))
                                       (_methods135321_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls133293_)))
                                       (_$methods135325_
                                        (map (lambda (_id135323_)
                                               (let ((__tmp137406
                                                      (gensym _id135323_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137406)))
                                             _methods135321_))
                                       (_g137407_
                                        (for-each
                                         (lambda (_g135326135329_
                                                  _g135327135331_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls133293_
                                              _g135326135329_
                                              _g135327135331_)))
                                         _methods135321_
                                         _$methods135325_))
                                       (_methods-bind135342_
                                        (map (lambda (_g135334135337_
                                                      _g135335135339_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind133203_
                                                  _$klass135317_
                                                  _$method-table135319_
                                                  _g135334135337_
                                                  _g135335135339_)))
                                             _methods135321_
                                             _$methods135325_))
                                       (_slots135344_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs133294_)))
                                       (_$slots135348_
                                        (map (lambda (_id135346_)
                                               (let ((__tmp137408
                                                      (gensym _id135346_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137408)))
                                             _slots135344_))
                                       (_g137409_
                                        (for-each
                                         (lambda (_g135349135352_
                                                  _g135350135354_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs133294_
                                              _g135349135352_
                                              _g135350135354_)))
                                         _slots135344_
                                         _$slots135348_))
                                       (_slots-bind135365_
                                        (map (lambda (_g135357135360_
                                                      _g135358135362_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind133204_
                                                  _$klass135317_
                                                  _g135357135360_
                                                  _g135358135362_)))
                                             _slots135344_
                                             _$slots135348_))
                                       (_specializer-impl135373_
                                        (let* ((_specializer-body135371_
                                                (map (lambda (_g135366135368_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135366135368_
                                                          'receiver:
                                                          _self135303_
                                                          'klass:
                                                          _$klass135317_
                                                          'methods:
                                                          _method-calls133293_
                                                          'slots:
                                                          _slot-refs133294_)))
                                                     _L135286_))
                                               (__tmp137410
                                                (let ((__tmp137411
                                                       (let ((__tmp137413
                                                              (let ((__tmp137414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137426
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134949_ '())))
                                   (__tmp137415
                                    (let ((__tmp137416
                                           (let ((__tmp137417
                                                  (let ((__tmp137419
                                                         (let ((__tmp137420
                                                                (let ((__tmp137425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134948_ '())))
                              (__tmp137421
                               (let ((__tmp137422
                                      (let ((__tmp137423
                                             (let ((__tmp137424
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L135287_
                                                            _specializer-body135371_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137424))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137423
                                         _L134947_))))
                                 (declare (not safe))
                                 (cons __tmp137422 '()))))
                          (declare (not safe))
                          (cons __tmp137425 __tmp137421))))
                   (declare (not safe))
                   (cons __tmp137420 '())))
                (__tmp137418
                 (let () (declare (not safe)) (cons _L134946_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137419
                                                          __tmp137418))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137417))))
                                      (declare (not safe))
                                      (cons __tmp137416 '()))))
                               (declare (not safe))
                               (cons __tmp137426 __tmp137415))))
                        (declare (not safe))
                        (cons __tmp137414 '())))
                     (__tmp137412
                      (let () (declare (not safe)) (cons _L134945_ '()))))
                 (declare (not safe))
                 (cons __tmp137413 __tmp137412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137411))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137410
                                           _stx133201_)))
                                       (_specializer-impl135375_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl133205_
                                           _$klass135317_
                                           _$method-table135319_
                                           _methods-bind135342_
                                           _slots-bind135365_
                                           _specializer-impl135373_))))
                                  (let ((__tmp137428
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L133274_)))
                                        (__tmp137427
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id135315_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137428
                                     '" => "
                                     __tmp137427))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def133206_
                                     _L133274_
                                     _specializer-id135315_
                                     _specializer-impl135375_))))))
                        _tl135258135283_
                        _hd135259135281_)))
                   (let ()
                     (declare (not safe))
                     (_g135251135265_ _g135252135268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g135251135265_
                                                      _g135252135268_))))))
                                       (declare (not safe))
                                       (_g135250135378_ _L134947_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134947_))
                                         (let* ((_g135381135411_
                                                 (lambda (_g135382135408_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135382135408_))))
                                                (_g135380135953_
                                                 (lambda (_g135382135414_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135382135414_))
                                                       (let ((_e135388135416_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135382135414_))))
                 (let ((_hd135387135419_
                        (let () (declare (not safe)) (##car _e135388135416_)))
                       (_tl135386135421_
                        (let () (declare (not safe)) (##cdr _e135388135416_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135386135421_))
                       (let ((_e135391135424_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135386135421_))))
                         (let ((_hd135390135427_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135391135424_)))
                               (_tl135389135429_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135391135424_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135390135427_))
                               (let ((_e135394135432_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135390135427_))))
                                 (let ((_hd135393135435_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135394135432_)))
                                       (_tl135392135437_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135394135432_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135393135435_))
                                       (let ((_e135397135440_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135393135435_))))
                                         (let ((_hd135396135443_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135397135440_)))
                                               (_tl135395135445_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135397135440_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135396135443_))
                                               (let ((_e135400135448_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135396135443_))))
                                                 (let ((_hd135399135451_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135400135448_)))
                                                       (_tl135398135453_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135400135448_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135398135453_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135395135445_))
                                                           (let ((_e135403135456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135395135445_))))
                     (let ((_hd135402135459_
                            (let ()
                              (declare (not safe))
                              (##car _e135403135456_)))
                           (_tl135401135461_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135403135456_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135401135461_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135392135437_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135389135429_))
                                   (let ((_e135406135464_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135389135429_))))
                                     (let ((_hd135405135467_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135406135464_)))
                                           (_tl135404135469_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135406135464_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135404135469_))
                                           ((lambda (_L135472_
                                                     _L135473_
                                                     _L135474_)
                                              (let* ((_g135497135511_
                                                      (lambda (_g135498135508_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135498135508_))))
                                                     (_g135496135552_
                                                      (lambda (_g135498135514_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135498135514_))
                                                            (let ((_e135503135516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135498135514_))))
                      (let ((_hd135502135519_
                             (let ()
                               (declare (not safe))
                               (##car _e135503135516_)))
                            (_tl135501135521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135503135516_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135501135521_))
                            (let ((_e135506135524_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135501135521_))))
                              (let ((_hd135505135527_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135506135524_)))
                                    (_tl135504135529_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135506135524_))))
                                ((lambda (_L135532_ _L135533_)
                                   (let ((_self135546_
                                          (list-ref
                                           _L135533_
                                           _self-index135248_)))
                                     (for-each
                                      (lambda (_g135547135549_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135547135549_
                                           'receiver:
                                           _self135546_
                                           'methods:
                                           _method-calls133293_
                                           'slots:
                                           _slot-refs133294_)))
                                      _L135532_)))
                                 _tl135504135529_
                                 _hd135505135527_)))
                            (let ()
                              (declare (not safe))
                              (_g135497135511_ _g135498135514_)))))
                    (let ()
                      (declare (not safe))
                      (_g135497135511_ _g135498135514_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135496135552_ _L135473_))
                                              (let* ((_g135555135574_
                                                      (lambda (_g135556135571_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135556135571_))))
                                                     (_g135554135679_
                                                      (lambda (_g135556135577_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135556135577_))
                                                            (let ((_e135560135579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135556135577_))))
                      (let ((_hd135559135582_
                             (let ()
                               (declare (not safe))
                               (##car _e135560135579_)))
                            (_tl135558135584_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135560135579_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135558135584_))
                            (let ((_g137359_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135558135584_
                                      '0))))
                              (begin
                                (let ((_g137360_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137359_)
                                             (##vector-length _g137359_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137360_ 2)))
                                      (error "Context expects 2 values"
                                             _g137360_)))
                                (let ((_target135561135587_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137359_ 0)))
                                      (_tl135563135589_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137359_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135563135589_))
                                      (letrec ((_loop135564135592_
                                                (lambda (_hd135562135595_
                                                         _clause135568135597_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135562135595_))
                                                      (let ((_e135565135600_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135562135595_))))
                (let ((_lp-hd135566135603_
                       (let () (declare (not safe)) (##car _e135565135600_)))
                      (_lp-tl135567135605_
                       (let () (declare (not safe)) (##cdr _e135565135600_))))
                  (let ((__tmp137362
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135566135603_ _clause135568135597_))))
                    (declare (not safe))
                    (_loop135564135592_ _lp-tl135567135605_ __tmp137362))))
              (let ((_clause135569135608_ (reverse _clause135568135597_)))
                ((lambda (_L135611_)
                   (for-each
                    (lambda (_clause135624_)
                      (let* ((_g135626135637_
                              (lambda (_g135627135634_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135627135634_))))
                             (_g135625135669_
                              (lambda (_g135627135640_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135627135640_))
                                    (let ((_e135632135642_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135627135640_))))
                                      (let ((_hd135631135645_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135632135642_)))
                                            (_tl135630135647_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135632135642_))))
                                        ((lambda (_L135650_ _L135651_)
                                           (let ((_self135663_
                                                  (list-ref
                                                   _L135651_
                                                   _self-index135248_)))
                                             (for-each
                                              (lambda (_g135664135666_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135664135666_
                                                   'receiver:
                                                   _self135663_
                                                   'methods:
                                                   _method-calls133293_
                                                   'slots:
                                                   _slot-refs133294_)))
                                              _L135650_)))
                                         _tl135630135647_
                                         _hd135631135645_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135626135637_ _g135627135640_))))))
                        (declare (not safe))
                        (_g135625135669_ _clause135624_)))
                    (let ((__tmp137361
                           (lambda (_g135671135674_ _g135672135676_)
                             (let ()
                               (declare (not safe))
                               (cons _g135671135674_ _g135672135676_)))))
                      (declare (not safe))
                      (foldr1 __tmp137361 '() _L135611_))))
                 _clause135569135608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135564135592_
                                           _target135561135587_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135555135574_ _g135556135577_))))))
                            (let ()
                              (declare (not safe))
                              (_g135555135574_ _g135556135577_)))))
                    (let ()
                      (declare (not safe))
                      (_g135555135574_ _g135556135577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135554135679_ _L135472_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?133297_))
                                                  _stx133201_
                                                  (let* ((_specializer-id135688_
                                                          (let* ((_id135682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137363
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L133274_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137363 '"::specialize")))
                         (_specializer-id135685_
                          (let ((__tmp137364
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx133201_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135682_ __tmp137364))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135685_))
                    _specializer-id135685_))
                 (_$klass135690_
                  (let ((__tmp137365 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137365)))
                 (_$method-table135692_
                  (let ((__tmp137366 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137366)))
                 (_methods135694_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls133293_)))
                 (_$methods135698_
                  (map (lambda (_id135696_)
                         (let ((__tmp137367 (gensym _id135696_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137367)))
                       _methods135694_))
                 (_g137368_
                  (for-each
                   (lambda (_g135699135702_ _g135700135704_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls133293_
                        _g135699135702_
                        _g135700135704_)))
                   _methods135694_
                   _$methods135698_))
                 (_methods-bind135715_
                  (map (lambda (_g135707135710_ _g135708135712_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind133203_
                            _$klass135690_
                            _$method-table135692_
                            _g135707135710_
                            _g135708135712_)))
                       _methods135694_
                       _$methods135698_))
                 (_slots135717_
                  (let () (declare (not safe)) (hash-keys _slot-refs133294_)))
                 (_$slots135721_
                  (map (lambda (_id135719_)
                         (let ((__tmp137369 (gensym _id135719_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137369)))
                       _slots135717_))
                 (_g137370_
                  (for-each
                   (lambda (_g135722135725_ _g135723135727_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs133294_
                        _g135722135725_
                        _g135723135727_)))
                   _slots135717_
                   _$slots135721_))
                 (_slots-bind135738_
                  (map (lambda (_g135730135733_ _g135731135735_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind133204_
                            _$klass135690_
                            _g135730135733_
                            _g135731135735_)))
                       _slots135717_
                       _$slots135721_))
                 (_specializer-lambda-expr135811_
                  (let* ((_g135740135754_
                          (lambda (_g135741135751_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135741135751_))))
                         (_g135739135808_
                          (lambda (_g135741135757_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135741135757_))
                                (let ((_e135746135759_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135741135757_))))
                                  (let ((_hd135745135762_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135746135759_)))
                                        (_tl135744135764_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135746135759_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135744135764_))
                                        (let ((_e135749135767_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135744135764_))))
                                          (let ((_hd135748135770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135749135767_)))
                                                (_tl135747135772_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135749135767_))))
                                            ((lambda (_L135775_ _L135776_)
                                               (let* ((_self135799_
                                                       (list-ref
                                                        _L135776_
                                                        _self-index135248_))
                                                      (_body135805_
                                                       (map (lambda (_g135800135802_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135800135802_
                         'receiver:
                         _self135799_
                         'klass:
                         _$klass135690_
                         'methods:
                         _method-calls133293_
                         'slots:
                         _slot-refs133294_)))
                    _L135775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137371
                                                        (let ((__tmp137372
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135776_ _body135805_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137371
                                                    _L135473_))))
                                             _tl135747135772_
                                             _hd135748135770_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135740135754_ _g135741135757_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135740135754_ _g135741135757_))))))
                    (declare (not safe))
                    (_g135739135808_ _L135473_)))
                 (_specializer-case-lambda-expr135946_
                  (let* ((_g135813135832_
                          (lambda (_g135814135829_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135814135829_))))
                         (_g135812135943_
                          (lambda (_g135814135835_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135814135835_))
                                (let ((_e135818135837_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135814135835_))))
                                  (let ((_hd135817135840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135818135837_)))
                                        (_tl135816135842_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135818135837_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135816135842_))
                                        (let ((_g137373_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135816135842_
                                                  '0))))
                                          (begin
                                            (let ((_g137374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137373_)
                                                         (##vector-length
                                                          _g137373_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137374_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137374_)))
                                            (let ((_target135819135845_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137373_
                                                      0)))
                                                  (_tl135821135847_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137373_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135821135847_))
                                                  (letrec ((_loop135822135850_
                                                            (lambda (_hd135820135853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135826135855_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135820135853_))
                          (let ((_e135823135858_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135820135853_))))
                            (let ((_lp-hd135824135861_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135823135858_)))
                                  (_lp-tl135825135863_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135823135858_))))
                              (let ((__tmp137377
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135824135861_
                                             _clause135826135855_))))
                                (declare (not safe))
                                (_loop135822135850_
                                 _lp-tl135825135863_
                                 __tmp137377))))
                          (let ((_clause135827135866_
                                 (reverse _clause135826135855_)))
                            ((lambda (_L135869_)
                               (let* ((_clauses135941_
                                       (map (lambda (_clause135883_)
                                              (let* ((_g135885135896_
                                                      (lambda (_g135886135893_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135886135893_))))
                                                     (_g135884135931_
                                                      (lambda (_g135886135899_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135886135899_))
                                                            (let ((_e135891135901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135886135899_))))
                      (let ((_hd135890135904_
                             (let ()
                               (declare (not safe))
                               (##car _e135891135901_)))
                            (_tl135889135906_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135891135901_))))
                        ((lambda (_L135909_ _L135910_)
                           (let* ((_self135922_
                                   (list-ref _L135910_ _self-index135248_))
                                  (_body135928_
                                   (map (lambda (_g135923135925_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135923135925_
                                             'receiver:
                                             _self135922_
                                             'klass:
                                             _$klass135690_
                                             'methods:
                                             _method-calls133293_
                                             'slots:
                                             _slot-refs133294_)))
                                        _L135909_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135910_ _body135928_))))
                         _tl135889135906_
                         _hd135890135904_)))
                    (let ()
                      (declare (not safe))
                      (_g135885135896_ _g135886135899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135884135931_
                                                 _clause135883_)))
                                            (let ((__tmp137375
                                                   (lambda (_g135933135936_
                                                            _g135934135938_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135933135936_
                                                             _g135934135938_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137375
                                                      '()
                                                      _L135869_))))
                                      (__tmp137376
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135941_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137376
                                  _L135472_)))
                             _clause135827135866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135822135850_
                                                       _target135819135845_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135813135832_
                                                     _g135814135835_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135813135832_ _g135814135835_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135813135832_ _g135814135835_))))))
                    (declare (not safe))
                    (_g135812135943_ _L135472_)))
                 (_specializer-impl135948_
                  (let ((__tmp137378
                         (let ((__tmp137379
                                (let ((__tmp137381
                                       (let ((__tmp137382
                                              (let ((__tmp137399
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134949_ '())))
                                                    (__tmp137383
                                                     (let ((__tmp137384
                                                            (let ((__tmp137385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137387
                                  (let ((__tmp137388
                                         (let ((__tmp137398
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134948_ '())))
                                               (__tmp137389
                                                (let ((__tmp137390
                                                       (let ((__tmp137391
                                                              (let ((__tmp137392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137394
                                    (let ((__tmp137395
                                           (let ((__tmp137397
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135474_ '())))
                                                 (__tmp137396
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135811_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137397 __tmp137396))))
                                      (declare (not safe))
                                      (cons __tmp137395 '())))
                                   (__tmp137393
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135946_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137394 __tmp137393))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137392))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137391 _stx133201_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137390 '()))))
                                           (declare (not safe))
                                           (cons __tmp137398 __tmp137389))))
                                    (declare (not safe))
                                    (cons __tmp137388 '())))
                                 (__tmp137386
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134946_ '()))))
                             (declare (not safe))
                             (cons __tmp137387 __tmp137386))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137385))))
               (declare (not safe))
               (cons __tmp137384 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137399
                                                      __tmp137383))))
                                         (declare (not safe))
                                         (cons __tmp137382 '())))
                                      (__tmp137380
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134945_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137381 __tmp137380))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137379))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137378 _stx133201_)))
                 (_specializer-impl135950_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl133205_
                     _$klass135690_
                     _$method-table135692_
                     _methods-bind135715_
                     _slots-bind135738_
                     _specializer-impl135948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137401
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L133274_)))
                                                          (__tmp137400
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135688_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137401
                                                       '" => "
                                                       __tmp137400))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def133206_
                                                       _L133274_
                                                       _specializer-id135688_
                                                       _specializer-impl135950_)))))
                                            _hd135405135467_
                                            _hd135402135459_
                                            _hd135399135451_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135381135411_
                                              _g135382135414_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135381135411_ _g135382135414_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135381135411_ _g135382135414_)))
                           (let ()
                             (declare (not safe))
                             (_g135381135411_ _g135382135414_)))))
                   (let ()
                     (declare (not safe))
                     (_g135381135411_ _g135382135414_)))
               (let ()
                 (declare (not safe))
                 (_g135381135411_ _g135382135414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135381135411_
                                                  _g135382135414_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135381135411_ _g135382135414_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135381135411_ _g135382135414_)))))
                       (let ()
                         (declare (not safe))
                         (_g135381135411_ _g135382135414_)))))
               (let ()
                 (declare (not safe))
                 (_g135381135411_ _g135382135414_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135380135953_ _L134947_))
                                         _stx133201_))))
                             _hd135044135167_
                             _kw-ref135042135188_
                             _hd135032135154_
                             _hd135023135130_
                             _hd135014135106_)
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop135037135172_
                                                   _target135034135159_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134988135050_
                                                 _g134989135053_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134988135050_ _g134989135053_))))))
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_)))
                        (let ()
                          (declare (not safe))
                          (_g134988135050_ _g134989135053_)))
                    (let ()
                      (declare (not safe))
                      (_g134988135050_ _g134989135053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134988135050_
                                                       _g134989135053_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134988135050_
                                                   _g134989135053_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134988135050_
                                               _g134989135053_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134988135050_ _g134989135053_)))))
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_)))
                        (let ()
                          (declare (not safe))
                          (_g134988135050_ _g134989135053_)))))
                (let ()
                  (declare (not safe))
                  (_g134988135050_ _g134989135053_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134988135050_
                                                       _g134989135053_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134988135050_
                                                   _g134989135053_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134988135050_ _g134989135053_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134988135050_ _g134989135053_)))
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_)))))
                    (let ()
                      (declare (not safe))
                      (_g134988135050_ _g134989135053_)))
                (let ()
                  (declare (not safe))
                  (_g134988135050_ _g134989135053_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134988135050_
                                                       _g134989135053_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134988135050_
                                               _g134989135053_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134988135050_ _g134989135053_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134988135050_ _g134989135053_)))
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_)))))
                    (let ()
                      (declare (not safe))
                      (_g134988135050_ _g134989135053_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134988135050_
                                                       _g134989135053_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134988135050_
                                               _g134989135053_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134988135050_ _g134989135053_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134988135050_ _g134989135053_)))))
                            (let ()
                              (declare (not safe))
                              (_g134988135050_ _g134989135053_))))))
                (declare (not safe))
                (_g134987135956_ _L134946_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134822134940_
                                                    _hd134819134932_
                                                    _hd134816134924_
                                                    _hd134813134916_
                                                    _hd134795134868_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134775134828_
                                                      _g134776134831_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134775134828_
                                              _g134776134831_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134775134828_ _g134776134831_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134775134828_ _g134776134831_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134775134828_ _g134776134831_)))))
                       (let ()
                         (declare (not safe))
                         (_g134775134828_ _g134776134831_)))
                   (let ()
                     (declare (not safe))
                     (_g134775134828_ _g134776134831_)))
               (let ()
                 (declare (not safe))
                 (_g134775134828_ _g134776134831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134775134828_
                                                  _g134776134831_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134775134828_
                                              _g134776134831_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134775134828_ _g134776134831_)))))
                           (let ()
                             (declare (not safe))
                             (_g134775134828_ _g134776134831_)))))
                   (let ()
                     (declare (not safe))
                     (_g134775134828_ _g134776134831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134775134828_
                                                      _g134776134831_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134775134828_
                                                  _g134776134831_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134775134828_
                                              _g134776134831_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134775134828_ _g134776134831_)))))
                           (let ()
                             (declare (not safe))
                             (_g134775134828_ _g134776134831_)))
                       (let ()
                         (declare (not safe))
                         (_g134775134828_ _g134776134831_)))))
               (let ()
                 (declare (not safe))
                 (_g134775134828_ _g134776134831_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134775134828_
                                                  _g134776134831_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134775134828_ _g134776134831_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134775134828_ _g134776134831_)))
                           (let ()
                             (declare (not safe))
                             (_g134775134828_ _g134776134831_)))
                       (let ()
                         (declare (not safe))
                         (_g134775134828_ _g134776134831_)))))
               (let ()
                 (declare (not safe))
                 (_g134775134828_ _g134776134831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134774135959_ _L133273_))
                                         _stx133201_))))))))
                  (___kont136183136184_ (lambda () _stx133201_)))
              (let ((___match136212136213_
                     (lambda (_e133215133241_
                              _hd133214133244_
                              _tl133213133246_
                              _e133218133249_
                              _hd133217133252_
                              _tl133216133254_
                              _e133221133257_
                              _hd133220133260_
                              _tl133219133262_
                              _e133224133265_
                              _hd133223133268_
                              _tl133222133270_)
                       (let ((_L133273_ _hd133223133268_)
                             (_L133274_ _hd133220133260_))
                         (if (let ((__tmp137490
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L133274_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137490))
                             (___kont136181136182_ _L133273_ _L133274_)
                             (___kont136183136184_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136179136180_))
                    (let ((_e133215133241_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136179136180_))))
                      (let ((_tl133213133246_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133215133241_)))
                            (_hd133214133244_
                             (let ()
                               (declare (not safe))
                               (##car _e133215133241_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133213133246_))
                            (let ((_e133218133249_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133213133246_))))
                              (let ((_tl133216133254_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133218133249_)))
                                    (_hd133217133252_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133218133249_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133217133252_))
                                    (let ((_e133221133257_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133217133252_))))
                                      (let ((_tl133219133262_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133221133257_)))
                                            (_hd133220133260_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133221133257_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl133219133262_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl133216133254_))
                                                (let ((_e133224133265_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl133216133254_))))
                                                  (let ((_tl133222133270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e133224133265_)))
                                                        (_hd133223133268_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e133224133265_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl133222133270_))
                                                        (___match136212136213_
                                                         _e133215133241_
                                                         _hd133214133244_
                                                         _tl133213133246_
                                                         _e133218133249_
                                                         _hd133217133252_
                                                         _tl133216133254_
                                                         _e133221133257_
                                                         _hd133220133260_
                                                         _tl133219133262_
                                                         _e133224133265_
                                                         _hd133223133268_
                                                         _tl133222133270_)
                                                        (___kont136183136184_))))
                                                (___kont136183136184_))
                                            (___kont136183136184_))))
                                    (___kont136183136184_))))
                            (___kont136183136184_))))
                    (___kont136183136184_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self132161_ _stx132162_)
        (let* ((___stx136215136216_ _stx132162_)
               (_g132170132392_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx136215136216_)))))
          (let ((___kont136217136218_
                 (lambda (_L133149_ _L133150_ _L133151_ _L133152_)
                   (let ((__tmp137492
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132161_ 'methods)))
                         (__tmp137491
                          (let () (declare (not safe)) (gx#stx-e _L133150_))))
                     (declare (not safe))
                     (hash-put! __tmp137492 __tmp137491 '#t))
                   (for-each
                    (lambda (_g133185133187_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132161_ _g133185133187_)))
                    (let ((__tmp137493
                           (lambda (_g133189133192_ _g133190133194_)
                             (let ()
                               (declare (not safe))
                               (cons _g133189133192_ _g133190133194_)))))
                      (declare (not safe))
                      (foldr1 __tmp137493 '() _L133149_)))))
                (___kont136221136222_
                 (lambda (_L132984_ _L132985_ _L132986_ _L132987_ _L132988_)
                   (let ((__tmp137495
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132161_ 'methods)))
                         (__tmp137494
                          (let () (declare (not safe)) (gx#stx-e _L132985_))))
                     (declare (not safe))
                     (hash-put! __tmp137495 __tmp137494 '#t))
                   (for-each
                    (lambda (_g133028133030_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self132161_ _g133028133030_)))
                    (let ((__tmp137496
                           (lambda (_g133032133035_ _g133033133037_)
                             (let ()
                               (declare (not safe))
                               (cons _g133032133035_ _g133033133037_)))))
                      (declare (not safe))
                      (foldr1 __tmp137496 '() _L132984_)))))
                (___kont136225136226_
                 (lambda (_L132817_ _L132818_ _L132819_)
                   (let ((__tmp137498
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132161_ 'slots)))
                         (__tmp137497
                          (let () (declare (not safe)) (gx#stx-e _L132817_))))
                     (declare (not safe))
                     (hash-put! __tmp137498 __tmp137497 '#t))))
                (___kont136227136228_
                 (lambda (_L132694_ _L132695_ _L132696_ _L132697_)
                   (let ((__tmp137500
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self132161_ 'slots)))
                         (__tmp137499
                          (let () (declare (not safe)) (gx#stx-e _L132695_))))
                     (declare (not safe))
                     (hash-put! __tmp137500 __tmp137499 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self132161_ _L132694_))))
                (___kont136229136230_
                 (lambda (_L132568_ _L132569_)
                   (let* ((_accessor132591_
                           (let ((__tmp137501
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132569_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137501)))
                          (_klass132593_
                           (let ((__tmp137502
                                  (##structure-ref
                                   _accessor132591_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132162_
                              __tmp137502)))
                          (_slot132595_
                           (##structure-ref
                            _accessor132591_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137505
                                     (##structure-ref
                                      _accessor132591_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137505))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132593_
                                     _slot132595_))
                                  (##structure-ref
                                   _klass132593_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137504
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132161_ 'slots)))
                               (__tmp137503
                                (##structure-ref
                                 _accessor132591_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137504 __tmp137503 '#t))))))
                (___kont136231136232_
                 (lambda (_L132468_ _L132469_ _L132470_)
                   (let* ((_mutator132497_
                           (let ((__tmp137506
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132470_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137506)))
                          (_klass132499_
                           (let ((__tmp137507
                                  (##structure-ref
                                   _mutator132497_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx132162_
                              __tmp137507)))
                          (_slot132501_
                           (##structure-ref
                            _mutator132497_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137509
                                     (##structure-ref
                                      _mutator132497_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137509))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132499_
                                     _slot132501_))
                                  (##structure-ref
                                   _klass132499_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137508
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self132161_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137508 _slot132501_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self132161_ _L132468_)))))
                (___kont136233136234_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self132161_ _stx132162_)))))
            (let* ((___match136714136715_
                    (lambda (_e132366132404_
                             _hd132365132407_
                             _tl132364132409_
                             _e132369132412_
                             _hd132368132415_
                             _tl132367132417_
                             _e132372132420_
                             _hd132371132423_
                             _tl132370132425_
                             _e132375132428_
                             _hd132374132431_
                             _tl132373132433_
                             _e132378132436_
                             _hd132377132439_
                             _tl132376132441_
                             _e132381132444_
                             _hd132380132447_
                             _tl132379132449_
                             _e132384132452_
                             _hd132383132455_
                             _tl132382132457_
                             _e132387132460_
                             _hd132386132463_
                             _tl132385132465_)
                      (let ((_L132468_ _hd132386132463_)
                            (_L132469_ _hd132383132455_)
                            (_L132470_ _hd132374132431_))
                        (if (and (let ((__tmp137511
                                        (let ((__tmp137512
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132470_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137512))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137511
                                    'gxc#!mutator::t))
                                 (let ((__tmp137510
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132161_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132469_
                                    __tmp137510)))
                            (___kont136231136232_
                             _L132468_
                             _L132469_
                             _L132470_)
                            (___kont136233136234_)))))
                   (___match136712136713_
                    (lambda (_e132366132404_
                             _hd132365132407_
                             _tl132364132409_
                             _e132369132412_
                             _hd132368132415_
                             _tl132367132417_
                             _e132372132420_
                             _hd132371132423_
                             _tl132370132425_
                             _e132375132428_
                             _hd132374132431_
                             _tl132373132433_
                             _e132378132436_
                             _hd132377132439_
                             _tl132376132441_
                             _e132381132444_
                             _hd132380132447_
                             _tl132379132449_
                             _e132384132452_
                             _hd132383132455_
                             _tl132382132457_
                             _e132387132460_
                             _hd132386132463_
                             _tl132385132465_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132385132465_))
                          (___match136714136715_
                           _e132366132404_
                           _hd132365132407_
                           _tl132364132409_
                           _e132369132412_
                           _hd132368132415_
                           _tl132367132417_
                           _e132372132420_
                           _hd132371132423_
                           _tl132370132425_
                           _e132375132428_
                           _hd132374132431_
                           _tl132373132433_
                           _e132378132436_
                           _hd132377132439_
                           _tl132376132441_
                           _e132381132444_
                           _hd132380132447_
                           _tl132379132449_
                           _e132384132452_
                           _hd132383132455_
                           _tl132382132457_
                           _e132387132460_
                           _hd132386132463_
                           _tl132385132465_)
                          (___kont136233136234_))))
                   (___match136706136707_
                    (lambda (_e132366132404_
                             _hd132365132407_
                             _tl132364132409_
                             _e132369132412_
                             _hd132368132415_
                             _tl132367132417_
                             _e132372132420_
                             _hd132371132423_
                             _tl132370132425_
                             _e132375132428_
                             _hd132374132431_
                             _tl132373132433_
                             _e132378132436_
                             _hd132377132439_
                             _tl132376132441_
                             _e132381132444_
                             _hd132380132447_
                             _tl132379132449_
                             _e132384132452_
                             _hd132383132455_
                             _tl132382132457_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132376132441_))
                          (let ((_e132387132460_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132376132441_))))
                            (let ((_tl132385132465_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132387132460_)))
                                  (_hd132386132463_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132387132460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132385132465_))
                                  (___match136714136715_
                                   _e132366132404_
                                   _hd132365132407_
                                   _tl132364132409_
                                   _e132369132412_
                                   _hd132368132415_
                                   _tl132367132417_
                                   _e132372132420_
                                   _hd132371132423_
                                   _tl132370132425_
                                   _e132375132428_
                                   _hd132374132431_
                                   _tl132373132433_
                                   _e132378132436_
                                   _hd132377132439_
                                   _tl132376132441_
                                   _e132381132444_
                                   _hd132380132447_
                                   _tl132379132449_
                                   _e132384132452_
                                   _hd132383132455_
                                   _tl132382132457_
                                   _e132387132460_
                                   _hd132386132463_
                                   _tl132385132465_)
                                  (___kont136233136234_))))
                          (___kont136233136234_))))
                   (___match136652136653_
                    (lambda (_e132342132512_
                             _hd132341132515_
                             _tl132340132517_
                             _e132345132520_
                             _hd132344132523_
                             _tl132343132525_
                             _e132348132528_
                             _hd132347132531_
                             _tl132346132533_
                             _e132351132536_
                             _hd132350132539_
                             _tl132349132541_
                             _e132354132544_
                             _hd132353132547_
                             _tl132352132549_
                             _e132357132552_
                             _hd132356132555_
                             _tl132355132557_
                             _e132360132560_
                             _hd132359132563_
                             _tl132358132565_)
                      (let ((_L132568_ _hd132359132563_)
                            (_L132569_ _hd132350132539_))
                        (if (and (let ((__tmp137514
                                        (let ((__tmp137515
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132569_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137515))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137514
                                    'gxc#!accessor::t))
                                 (let ((__tmp137513
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132161_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132568_
                                    __tmp137513)))
                            (___kont136229136230_ _L132568_ _L132569_)
                            (___kont136233136234_)))))
                   (___match136650136651_
                    (lambda (_e132342132512_
                             _hd132341132515_
                             _tl132340132517_
                             _e132345132520_
                             _hd132344132523_
                             _tl132343132525_
                             _e132348132528_
                             _hd132347132531_
                             _tl132346132533_
                             _e132351132536_
                             _hd132350132539_
                             _tl132349132541_
                             _e132354132544_
                             _hd132353132547_
                             _tl132352132549_
                             _e132357132552_
                             _hd132356132555_
                             _tl132355132557_
                             _e132360132560_
                             _hd132359132563_
                             _tl132358132565_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132352132549_))
                          (___match136652136653_
                           _e132342132512_
                           _hd132341132515_
                           _tl132340132517_
                           _e132345132520_
                           _hd132344132523_
                           _tl132343132525_
                           _e132348132528_
                           _hd132347132531_
                           _tl132346132533_
                           _e132351132536_
                           _hd132350132539_
                           _tl132349132541_
                           _e132354132544_
                           _hd132353132547_
                           _tl132352132549_
                           _e132357132552_
                           _hd132356132555_
                           _tl132355132557_
                           _e132360132560_
                           _hd132359132563_
                           _tl132358132565_)
                          (___match136706136707_
                           _e132342132512_
                           _hd132341132515_
                           _tl132340132517_
                           _e132345132520_
                           _hd132344132523_
                           _tl132343132525_
                           _e132348132528_
                           _hd132347132531_
                           _tl132346132533_
                           _e132351132536_
                           _hd132350132539_
                           _tl132349132541_
                           _e132354132544_
                           _hd132353132547_
                           _tl132352132549_
                           _e132357132552_
                           _hd132356132555_
                           _tl132355132557_
                           _e132360132560_
                           _hd132359132563_
                           _tl132358132565_))))
                   (___match136596136597_
                    (lambda (_e132307132606_
                             _hd132306132609_
                             _tl132305132611_
                             _e132310132614_
                             _hd132309132617_
                             _tl132308132619_
                             _e132313132622_
                             _hd132312132625_
                             _tl132311132627_
                             _e132316132630_
                             _hd132315132633_
                             _tl132314132635_
                             _e132319132638_
                             _hd132318132641_
                             _tl132317132643_
                             _e132322132646_
                             _hd132321132649_
                             _tl132320132651_
                             _e132325132654_
                             _hd132324132657_
                             _tl132323132659_
                             _e132328132662_
                             _hd132327132665_
                             _tl132326132667_
                             _e132331132670_
                             _hd132330132673_
                             _tl132329132675_
                             _e132334132678_
                             _hd132333132681_
                             _tl132332132683_
                             _e132337132686_
                             _hd132336132689_
                             _tl132335132691_)
                      (let ((_L132694_ _hd132336132689_)
                            (_L132695_ _hd132333132681_)
                            (_L132696_ _hd132324132657_)
                            (_L132697_ _hd132315132633_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132697_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132697_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137516
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132161_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132696_
                                    __tmp137516)))
                            (___kont136227136228_
                             _L132694_
                             _L132695_
                             _L132696_
                             _L132697_)
                            (___kont136233136234_)))))
                   (___match136588136589_
                    (lambda (_e132307132606_
                             _hd132306132609_
                             _tl132305132611_
                             _e132310132614_
                             _hd132309132617_
                             _tl132308132619_
                             _e132313132622_
                             _hd132312132625_
                             _tl132311132627_
                             _e132316132630_
                             _hd132315132633_
                             _tl132314132635_
                             _e132319132638_
                             _hd132318132641_
                             _tl132317132643_
                             _e132322132646_
                             _hd132321132649_
                             _tl132320132651_
                             _e132325132654_
                             _hd132324132657_
                             _tl132323132659_
                             _e132328132662_
                             _hd132327132665_
                             _tl132326132667_
                             _e132331132670_
                             _hd132330132673_
                             _tl132329132675_
                             _e132334132678_
                             _hd132333132681_
                             _tl132332132683_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132326132667_))
                          (let ((_e132337132686_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132326132667_))))
                            (let ((_tl132335132691_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132337132686_)))
                                  (_hd132336132689_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132337132686_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132335132691_))
                                  (___match136596136597_
                                   _e132307132606_
                                   _hd132306132609_
                                   _tl132305132611_
                                   _e132310132614_
                                   _hd132309132617_
                                   _tl132308132619_
                                   _e132313132622_
                                   _hd132312132625_
                                   _tl132311132627_
                                   _e132316132630_
                                   _hd132315132633_
                                   _tl132314132635_
                                   _e132319132638_
                                   _hd132318132641_
                                   _tl132317132643_
                                   _e132322132646_
                                   _hd132321132649_
                                   _tl132320132651_
                                   _e132325132654_
                                   _hd132324132657_
                                   _tl132323132659_
                                   _e132328132662_
                                   _hd132327132665_
                                   _tl132326132667_
                                   _e132331132670_
                                   _hd132330132673_
                                   _tl132329132675_
                                   _e132334132678_
                                   _hd132333132681_
                                   _tl132332132683_
                                   _e132337132686_
                                   _hd132336132689_
                                   _tl132335132691_)
                                  (___kont136233136234_))))
                          (___match136712136713_
                           _e132307132606_
                           _hd132306132609_
                           _tl132305132611_
                           _e132310132614_
                           _hd132309132617_
                           _tl132308132619_
                           _e132313132622_
                           _hd132312132625_
                           _tl132311132627_
                           _e132316132630_
                           _hd132315132633_
                           _tl132314132635_
                           _e132319132638_
                           _hd132318132641_
                           _tl132317132643_
                           _e132322132646_
                           _hd132321132649_
                           _tl132320132651_
                           _e132325132654_
                           _hd132324132657_
                           _tl132323132659_
                           _e132328132662_
                           _hd132327132665_
                           _tl132326132667_))))
                   (___match136510136511_
                    (lambda (_e132273132737_
                             _hd132272132740_
                             _tl132271132742_
                             _e132276132745_
                             _hd132275132748_
                             _tl132274132750_
                             _e132279132753_
                             _hd132278132756_
                             _tl132277132758_
                             _e132282132761_
                             _hd132281132764_
                             _tl132280132766_
                             _e132285132769_
                             _hd132284132772_
                             _tl132283132774_
                             _e132288132777_
                             _hd132287132780_
                             _tl132286132782_
                             _e132291132785_
                             _hd132290132788_
                             _tl132289132790_
                             _e132294132793_
                             _hd132293132796_
                             _tl132292132798_
                             _e132297132801_
                             _hd132296132804_
                             _tl132295132806_
                             _e132300132809_
                             _hd132299132812_
                             _tl132298132814_)
                      (let ((_L132817_ _hd132299132812_)
                            (_L132818_ _hd132290132788_)
                            (_L132819_ _hd132281132764_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132819_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132819_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137517
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self132161_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132818_
                                    __tmp137517)))
                            (___kont136225136226_
                             _L132817_
                             _L132818_
                             _L132819_)
                            (___match136714136715_
                             _e132273132737_
                             _hd132272132740_
                             _tl132271132742_
                             _e132276132745_
                             _hd132275132748_
                             _tl132274132750_
                             _e132279132753_
                             _hd132278132756_
                             _tl132277132758_
                             _e132282132761_
                             _hd132281132764_
                             _tl132280132766_
                             _e132285132769_
                             _hd132284132772_
                             _tl132283132774_
                             _e132288132777_
                             _hd132287132780_
                             _tl132286132782_
                             _e132291132785_
                             _hd132290132788_
                             _tl132289132790_
                             _e132294132793_
                             _hd132293132796_
                             _tl132292132798_)))))
                   (___match136508136509_
                    (lambda (_e132273132737_
                             _hd132272132740_
                             _tl132271132742_
                             _e132276132745_
                             _hd132275132748_
                             _tl132274132750_
                             _e132279132753_
                             _hd132278132756_
                             _tl132277132758_
                             _e132282132761_
                             _hd132281132764_
                             _tl132280132766_
                             _e132285132769_
                             _hd132284132772_
                             _tl132283132774_
                             _e132288132777_
                             _hd132287132780_
                             _tl132286132782_
                             _e132291132785_
                             _hd132290132788_
                             _tl132289132790_
                             _e132294132793_
                             _hd132293132796_
                             _tl132292132798_
                             _e132297132801_
                             _hd132296132804_
                             _tl132295132806_
                             _e132300132809_
                             _hd132299132812_
                             _tl132298132814_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132292132798_))
                          (___match136510136511_
                           _e132273132737_
                           _hd132272132740_
                           _tl132271132742_
                           _e132276132745_
                           _hd132275132748_
                           _tl132274132750_
                           _e132279132753_
                           _hd132278132756_
                           _tl132277132758_
                           _e132282132761_
                           _hd132281132764_
                           _tl132280132766_
                           _e132285132769_
                           _hd132284132772_
                           _tl132283132774_
                           _e132288132777_
                           _hd132287132780_
                           _tl132286132782_
                           _e132291132785_
                           _hd132290132788_
                           _tl132289132790_
                           _e132294132793_
                           _hd132293132796_
                           _tl132292132798_
                           _e132297132801_
                           _hd132296132804_
                           _tl132295132806_
                           _e132300132809_
                           _hd132299132812_
                           _tl132298132814_)
                          (___match136588136589_
                           _e132273132737_
                           _hd132272132740_
                           _tl132271132742_
                           _e132276132745_
                           _hd132275132748_
                           _tl132274132750_
                           _e132279132753_
                           _hd132278132756_
                           _tl132277132758_
                           _e132282132761_
                           _hd132281132764_
                           _tl132280132766_
                           _e132285132769_
                           _hd132284132772_
                           _tl132283132774_
                           _e132288132777_
                           _hd132287132780_
                           _tl132286132782_
                           _e132291132785_
                           _hd132290132788_
                           _tl132289132790_
                           _e132294132793_
                           _hd132293132796_
                           _tl132292132798_
                           _e132297132801_
                           _hd132296132804_
                           _tl132295132806_
                           _e132300132809_
                           _hd132299132812_
                           _tl132298132814_))))
                   (___match136498136499_
                    (lambda (_e132273132737_
                             _hd132272132740_
                             _tl132271132742_
                             _e132276132745_
                             _hd132275132748_
                             _tl132274132750_
                             _e132279132753_
                             _hd132278132756_
                             _tl132277132758_
                             _e132282132761_
                             _hd132281132764_
                             _tl132280132766_
                             _e132285132769_
                             _hd132284132772_
                             _tl132283132774_
                             _e132288132777_
                             _hd132287132780_
                             _tl132286132782_
                             _e132291132785_
                             _hd132290132788_
                             _tl132289132790_
                             _e132294132793_
                             _hd132293132796_
                             _tl132292132798_
                             _e132297132801_
                             _hd132296132804_
                             _tl132295132806_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd132296132804_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132295132806_))
                              (let ((_e132300132809_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132295132806_))))
                                (let ((_tl132298132814_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132300132809_)))
                                      (_hd132299132812_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132300132809_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132298132814_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl132292132798_))
                                          (___match136510136511_
                                           _e132273132737_
                                           _hd132272132740_
                                           _tl132271132742_
                                           _e132276132745_
                                           _hd132275132748_
                                           _tl132274132750_
                                           _e132279132753_
                                           _hd132278132756_
                                           _tl132277132758_
                                           _e132282132761_
                                           _hd132281132764_
                                           _tl132280132766_
                                           _e132285132769_
                                           _hd132284132772_
                                           _tl132283132774_
                                           _e132288132777_
                                           _hd132287132780_
                                           _tl132286132782_
                                           _e132291132785_
                                           _hd132290132788_
                                           _tl132289132790_
                                           _e132294132793_
                                           _hd132293132796_
                                           _tl132292132798_
                                           _e132297132801_
                                           _hd132296132804_
                                           _tl132295132806_
                                           _e132300132809_
                                           _hd132299132812_
                                           _tl132298132814_)
                                          (___match136588136589_
                                           _e132273132737_
                                           _hd132272132740_
                                           _tl132271132742_
                                           _e132276132745_
                                           _hd132275132748_
                                           _tl132274132750_
                                           _e132279132753_
                                           _hd132278132756_
                                           _tl132277132758_
                                           _e132282132761_
                                           _hd132281132764_
                                           _tl132280132766_
                                           _e132285132769_
                                           _hd132284132772_
                                           _tl132283132774_
                                           _e132288132777_
                                           _hd132287132780_
                                           _tl132286132782_
                                           _e132291132785_
                                           _hd132290132788_
                                           _tl132289132790_
                                           _e132294132793_
                                           _hd132293132796_
                                           _tl132292132798_
                                           _e132297132801_
                                           _hd132296132804_
                                           _tl132295132806_
                                           _e132300132809_
                                           _hd132299132812_
                                           _tl132298132814_))
                                      (___match136712136713_
                                       _e132273132737_
                                       _hd132272132740_
                                       _tl132271132742_
                                       _e132276132745_
                                       _hd132275132748_
                                       _tl132274132750_
                                       _e132279132753_
                                       _hd132278132756_
                                       _tl132277132758_
                                       _e132282132761_
                                       _hd132281132764_
                                       _tl132280132766_
                                       _e132285132769_
                                       _hd132284132772_
                                       _tl132283132774_
                                       _e132288132777_
                                       _hd132287132780_
                                       _tl132286132782_
                                       _e132291132785_
                                       _hd132290132788_
                                       _tl132289132790_
                                       _e132294132793_
                                       _hd132293132796_
                                       _tl132292132798_))))
                              (___match136712136713_
                               _e132273132737_
                               _hd132272132740_
                               _tl132271132742_
                               _e132276132745_
                               _hd132275132748_
                               _tl132274132750_
                               _e132279132753_
                               _hd132278132756_
                               _tl132277132758_
                               _e132282132761_
                               _hd132281132764_
                               _tl132280132766_
                               _e132285132769_
                               _hd132284132772_
                               _tl132283132774_
                               _e132288132777_
                               _hd132287132780_
                               _tl132286132782_
                               _e132291132785_
                               _hd132290132788_
                               _tl132289132790_
                               _e132294132793_
                               _hd132293132796_
                               _tl132292132798_))
                          (___match136712136713_
                           _e132273132737_
                           _hd132272132740_
                           _tl132271132742_
                           _e132276132745_
                           _hd132275132748_
                           _tl132274132750_
                           _e132279132753_
                           _hd132278132756_
                           _tl132277132758_
                           _e132282132761_
                           _hd132281132764_
                           _tl132280132766_
                           _e132285132769_
                           _hd132284132772_
                           _tl132283132774_
                           _e132288132777_
                           _hd132287132780_
                           _tl132286132782_
                           _e132291132785_
                           _hd132290132788_
                           _tl132289132790_
                           _e132294132793_
                           _hd132293132796_
                           _tl132292132798_))))
                   (___match136430136431_
                    (lambda (_e132222132856_
                             _hd132221132859_
                             _tl132220132861_
                             _e132225132864_
                             _hd132224132867_
                             _tl132223132869_
                             _e132228132872_
                             _hd132227132875_
                             _tl132226132877_
                             _e132231132880_
                             _hd132230132883_
                             _tl132229132885_
                             _e132234132888_
                             _hd132233132891_
                             _tl132232132893_
                             _e132237132896_
                             _hd132236132899_
                             _tl132235132901_
                             _e132240132904_
                             _hd132239132907_
                             _tl132238132909_
                             _e132243132912_
                             _hd132242132915_
                             _tl132241132917_
                             _e132246132920_
                             _hd132245132923_
                             _tl132244132925_
                             _e132249132928_
                             _hd132248132931_
                             _tl132247132933_
                             _e132252132936_
                             _hd132251132939_
                             _tl132250132941_
                             _e132255132944_
                             _hd132254132947_
                             _tl132253132949_
                             _e132258132952_
                             _hd132257132955_
                             _tl132256132957_
                             ___splice136223136224_
                             _target132259132960_
                             _tl132261132962_)
                      (letrec ((_loop132262132965_
                                (lambda (_hd132260132968_ _args132266132970_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132260132968_))
                                      (let ((_e132263132973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132260132968_))))
                                        (let ((_lp-tl132265132978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132263132973_)))
                                              (_lp-hd132264132976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132263132973_))))
                                          (let ((__tmp137519
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132264132976_
                                                         _args132266132970_))))
                                            (declare (not safe))
                                            (_loop132262132965_
                                             _lp-tl132265132978_
                                             __tmp137519))))
                                      (let ((_args132267132981_
                                             (reverse _args132266132970_)))
                                        (let ((_L132984_ _args132267132981_)
                                              (_L132985_ _hd132257132955_)
                                              (_L132986_ _hd132248132931_)
                                              (_L132987_ _hd132239132907_)
                                              (_L132988_ _hd132230132883_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132988_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132987_
                                                      'call-method))
                                                   (let ((__tmp137518
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132161_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132986_
                                                      __tmp137518)))
                                              (___kont136221136222_
                                               _L132984_
                                               _L132985_
                                               _L132986_
                                               _L132987_
                                               _L132988_)
                                              (___kont136233136234_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132262132965_ _target132259132960_ '())))))
                   (___match136388136389_
                    (lambda (_e132222132856_
                             _hd132221132859_
                             _tl132220132861_
                             _e132225132864_
                             _hd132224132867_
                             _tl132223132869_
                             _e132228132872_
                             _hd132227132875_
                             _tl132226132877_
                             _e132231132880_
                             _hd132230132883_
                             _tl132229132885_
                             _e132234132888_
                             _hd132233132891_
                             _tl132232132893_
                             _e132237132896_
                             _hd132236132899_
                             _tl132235132901_
                             _e132240132904_
                             _hd132239132907_
                             _tl132238132909_
                             _e132243132912_
                             _hd132242132915_
                             _tl132241132917_
                             _e132246132920_
                             _hd132245132923_
                             _tl132244132925_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd132245132923_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl132244132925_))
                              (let ((_e132249132928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl132244132925_))))
                                (let ((_tl132247132933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132249132928_)))
                                      (_hd132248132931_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132249132928_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132247132933_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132241132917_))
                                          (let ((_e132252132936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132241132917_))))
                                            (let ((_tl132250132941_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132252132936_)))
                                                  (_hd132251132939_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132252132936_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132251132939_))
                                                  (let ((_e132255132944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132251132939_))))
                                                    (let ((_tl132253132949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132255132944_)))
                                                          (_hd132254132947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132255132944_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd132254132947_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd132254132947_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132253132949_))
                          (let ((_e132258132952_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132253132949_))))
                            (let ((_tl132256132957_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132258132952_)))
                                  (_hd132257132955_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132258132952_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132256132957_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl132250132941_))
                                      (let ((___splice136223136224_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl132250132941_
                                                '0))))
                                        (let ((_tl132261132962_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136223136224_
                                                  '1)))
                                              (_target132259132960_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice136223136224_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132261132962_))
                                              (___match136430136431_
                                               _e132222132856_
                                               _hd132221132859_
                                               _tl132220132861_
                                               _e132225132864_
                                               _hd132224132867_
                                               _tl132223132869_
                                               _e132228132872_
                                               _hd132227132875_
                                               _tl132226132877_
                                               _e132231132880_
                                               _hd132230132883_
                                               _tl132229132885_
                                               _e132234132888_
                                               _hd132233132891_
                                               _tl132232132893_
                                               _e132237132896_
                                               _hd132236132899_
                                               _tl132235132901_
                                               _e132240132904_
                                               _hd132239132907_
                                               _tl132238132909_
                                               _e132243132912_
                                               _hd132242132915_
                                               _tl132241132917_
                                               _e132246132920_
                                               _hd132245132923_
                                               _tl132244132925_
                                               _e132249132928_
                                               _hd132248132931_
                                               _tl132247132933_
                                               _e132252132936_
                                               _hd132251132939_
                                               _tl132250132941_
                                               _e132255132944_
                                               _hd132254132947_
                                               _tl132253132949_
                                               _e132258132952_
                                               _hd132257132955_
                                               _tl132256132957_
                                               ___splice136223136224_
                                               _target132259132960_
                                               _tl132261132962_)
                                              (___kont136233136234_))))
                                      (___kont136233136234_))
                                  (___kont136233136234_))))
                          (___kont136233136234_))
                      (___kont136233136234_))
                  (___kont136233136234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136233136234_))))
                                          (___match136712136713_
                                           _e132222132856_
                                           _hd132221132859_
                                           _tl132220132861_
                                           _e132225132864_
                                           _hd132224132867_
                                           _tl132223132869_
                                           _e132228132872_
                                           _hd132227132875_
                                           _tl132226132877_
                                           _e132231132880_
                                           _hd132230132883_
                                           _tl132229132885_
                                           _e132234132888_
                                           _hd132233132891_
                                           _tl132232132893_
                                           _e132237132896_
                                           _hd132236132899_
                                           _tl132235132901_
                                           _e132240132904_
                                           _hd132239132907_
                                           _tl132238132909_
                                           _e132243132912_
                                           _hd132242132915_
                                           _tl132241132917_))
                                      (___match136712136713_
                                       _e132222132856_
                                       _hd132221132859_
                                       _tl132220132861_
                                       _e132225132864_
                                       _hd132224132867_
                                       _tl132223132869_
                                       _e132228132872_
                                       _hd132227132875_
                                       _tl132226132877_
                                       _e132231132880_
                                       _hd132230132883_
                                       _tl132229132885_
                                       _e132234132888_
                                       _hd132233132891_
                                       _tl132232132893_
                                       _e132237132896_
                                       _hd132236132899_
                                       _tl132235132901_
                                       _e132240132904_
                                       _hd132239132907_
                                       _tl132238132909_
                                       _e132243132912_
                                       _hd132242132915_
                                       _tl132241132917_))))
                              (___match136712136713_
                               _e132222132856_
                               _hd132221132859_
                               _tl132220132861_
                               _e132225132864_
                               _hd132224132867_
                               _tl132223132869_
                               _e132228132872_
                               _hd132227132875_
                               _tl132226132877_
                               _e132231132880_
                               _hd132230132883_
                               _tl132229132885_
                               _e132234132888_
                               _hd132233132891_
                               _tl132232132893_
                               _e132237132896_
                               _hd132236132899_
                               _tl132235132901_
                               _e132240132904_
                               _hd132239132907_
                               _tl132238132909_
                               _e132243132912_
                               _hd132242132915_
                               _tl132241132917_))
                          (___match136498136499_
                           _e132222132856_
                           _hd132221132859_
                           _tl132220132861_
                           _e132225132864_
                           _hd132224132867_
                           _tl132223132869_
                           _e132228132872_
                           _hd132227132875_
                           _tl132226132877_
                           _e132231132880_
                           _hd132230132883_
                           _tl132229132885_
                           _e132234132888_
                           _hd132233132891_
                           _tl132232132893_
                           _e132237132896_
                           _hd132236132899_
                           _tl132235132901_
                           _e132240132904_
                           _hd132239132907_
                           _tl132238132909_
                           _e132243132912_
                           _hd132242132915_
                           _tl132241132917_
                           _e132246132920_
                           _hd132245132923_
                           _tl132244132925_))))
                   (___match136320136321_
                    (lambda (_e132178133045_
                             _hd132177133048_
                             _tl132176133050_
                             _e132181133053_
                             _hd132180133056_
                             _tl132179133058_
                             _e132184133061_
                             _hd132183133064_
                             _tl132182133066_
                             _e132187133069_
                             _hd132186133072_
                             _tl132185133074_
                             _e132190133077_
                             _hd132189133080_
                             _tl132188133082_
                             _e132193133085_
                             _hd132192133088_
                             _tl132191133090_
                             _e132196133093_
                             _hd132195133096_
                             _tl132194133098_
                             _e132199133101_
                             _hd132198133104_
                             _tl132197133106_
                             _e132202133109_
                             _hd132201133112_
                             _tl132200133114_
                             _e132205133117_
                             _hd132204133120_
                             _tl132203133122_
                             ___splice136219136220_
                             _target132206133125_
                             _tl132208133127_)
                      (letrec ((_loop132209133130_
                                (lambda (_hd132207133133_ _args132213133135_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd132207133133_))
                                      (let ((_e132210133138_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd132207133133_))))
                                        (let ((_lp-tl132212133143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132210133138_)))
                                              (_lp-hd132211133141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132210133138_))))
                                          (let ((__tmp137521
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd132211133141_
                                                         _args132213133135_))))
                                            (declare (not safe))
                                            (_loop132209133130_
                                             _lp-tl132212133143_
                                             __tmp137521))))
                                      (let ((_args132214133146_
                                             (reverse _args132213133135_)))
                                        (let ((_L133149_ _args132214133146_)
                                              (_L133150_ _hd132204133120_)
                                              (_L133151_ _hd132195133096_)
                                              (_L133152_ _hd132186133072_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L133152_
                                                      'call-method))
                                                   (let ((__tmp137520
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self132161_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L133151_
                                                      __tmp137520)))
                                              (___kont136217136218_
                                               _L133149_
                                               _L133150_
                                               _L133151_
                                               _L133152_)
                                              (___match136508136509_
                                               _e132178133045_
                                               _hd132177133048_
                                               _tl132176133050_
                                               _e132181133053_
                                               _hd132180133056_
                                               _tl132179133058_
                                               _e132184133061_
                                               _hd132183133064_
                                               _tl132182133066_
                                               _e132187133069_
                                               _hd132186133072_
                                               _tl132185133074_
                                               _e132190133077_
                                               _hd132189133080_
                                               _tl132188133082_
                                               _e132193133085_
                                               _hd132192133088_
                                               _tl132191133090_
                                               _e132196133093_
                                               _hd132195133096_
                                               _tl132194133098_
                                               _e132199133101_
                                               _hd132198133104_
                                               _tl132197133106_
                                               _e132202133109_
                                               _hd132201133112_
                                               _tl132200133114_
                                               _e132205133117_
                                               _hd132204133120_
                                               _tl132203133122_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop132209133130_ _target132206133125_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx136215136216_))
                  (let ((_e132178133045_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx136215136216_))))
                    (let ((_tl132176133050_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132178133045_)))
                          (_hd132177133048_
                           (let ()
                             (declare (not safe))
                             (##car _e132178133045_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132176133050_))
                          (let ((_e132181133053_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132176133050_))))
                            (let ((_tl132179133058_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132181133053_)))
                                  (_hd132180133056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132181133053_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd132180133056_))
                                  (let ((_e132184133061_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd132180133056_))))
                                    (let ((_tl132182133066_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e132184133061_)))
                                          (_hd132183133064_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e132184133061_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd132183133064_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd132183133064_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl132182133066_))
                                                  (let ((_e132187133069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl132182133066_))))
                                                    (let ((_tl132185133074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132187133069_)))
                                                          (_hd132186133072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132187133069_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl132185133074_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl132179133058_))
                      (let ((_e132190133077_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl132179133058_))))
                        (let ((_tl132188133082_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132190133077_)))
                              (_hd132189133080_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132190133077_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd132189133080_))
                              (let ((_e132193133085_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd132189133080_))))
                                (let ((_tl132191133090_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e132193133085_)))
                                      (_hd132192133088_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e132193133085_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd132192133088_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd132192133088_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl132191133090_))
                                              (let ((_e132196133093_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl132191133090_))))
                                                (let ((_tl132194133098_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e132196133093_)))
                                                      (_hd132195133096_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e132196133093_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl132194133098_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl132188133082_))
                                                          (let ((_e132199133101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl132188133082_))))
                    (let ((_tl132197133106_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132199133101_)))
                          (_hd132198133104_
                           (let ()
                             (declare (not safe))
                             (##car _e132199133101_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132198133104_))
                          (let ((_e132202133109_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132198133104_))))
                            (let ((_tl132200133114_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132202133109_)))
                                  (_hd132201133112_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132202133109_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd132201133112_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd132201133112_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl132200133114_))
                                          (let ((_e132205133117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl132200133114_))))
                                            (let ((_tl132203133122_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e132205133117_)))
                                                  (_hd132204133120_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e132205133117_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132203133122_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl132197133106_))
                                                      (let ((___splice136219136220_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl132197133106_ '0))))
                (let ((_tl132208133127_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136219136220_ '1)))
                      (_target132206133125_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice136219136220_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl132208133127_))
                      (___match136320136321_
                       _e132178133045_
                       _hd132177133048_
                       _tl132176133050_
                       _e132181133053_
                       _hd132180133056_
                       _tl132179133058_
                       _e132184133061_
                       _hd132183133064_
                       _tl132182133066_
                       _e132187133069_
                       _hd132186133072_
                       _tl132185133074_
                       _e132190133077_
                       _hd132189133080_
                       _tl132188133082_
                       _e132193133085_
                       _hd132192133088_
                       _tl132191133090_
                       _e132196133093_
                       _hd132195133096_
                       _tl132194133098_
                       _e132199133101_
                       _hd132198133104_
                       _tl132197133106_
                       _e132202133109_
                       _hd132201133112_
                       _tl132200133114_
                       _e132205133117_
                       _hd132204133120_
                       _tl132203133122_
                       ___splice136219136220_
                       _target132206133125_
                       _tl132208133127_)
                      (___match136508136509_
                       _e132178133045_
                       _hd132177133048_
                       _tl132176133050_
                       _e132181133053_
                       _hd132180133056_
                       _tl132179133058_
                       _e132184133061_
                       _hd132183133064_
                       _tl132182133066_
                       _e132187133069_
                       _hd132186133072_
                       _tl132185133074_
                       _e132190133077_
                       _hd132189133080_
                       _tl132188133082_
                       _e132193133085_
                       _hd132192133088_
                       _tl132191133090_
                       _e132196133093_
                       _hd132195133096_
                       _tl132194133098_
                       _e132199133101_
                       _hd132198133104_
                       _tl132197133106_
                       _e132202133109_
                       _hd132201133112_
                       _tl132200133114_
                       _e132205133117_
                       _hd132204133120_
                       _tl132203133122_))))
              (___match136508136509_
               _e132178133045_
               _hd132177133048_
               _tl132176133050_
               _e132181133053_
               _hd132180133056_
               _tl132179133058_
               _e132184133061_
               _hd132183133064_
               _tl132182133066_
               _e132187133069_
               _hd132186133072_
               _tl132185133074_
               _e132190133077_
               _hd132189133080_
               _tl132188133082_
               _e132193133085_
               _hd132192133088_
               _tl132191133090_
               _e132196133093_
               _hd132195133096_
               _tl132194133098_
               _e132199133101_
               _hd132198133104_
               _tl132197133106_
               _e132202133109_
               _hd132201133112_
               _tl132200133114_
               _e132205133117_
               _hd132204133120_
               _tl132203133122_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136712136713_
                                                   _e132178133045_
                                                   _hd132177133048_
                                                   _tl132176133050_
                                                   _e132181133053_
                                                   _hd132180133056_
                                                   _tl132179133058_
                                                   _e132184133061_
                                                   _hd132183133064_
                                                   _tl132182133066_
                                                   _e132187133069_
                                                   _hd132186133072_
                                                   _tl132185133074_
                                                   _e132190133077_
                                                   _hd132189133080_
                                                   _tl132188133082_
                                                   _e132193133085_
                                                   _hd132192133088_
                                                   _tl132191133090_
                                                   _e132196133093_
                                                   _hd132195133096_
                                                   _tl132194133098_
                                                   _e132199133101_
                                                   _hd132198133104_
                                                   _tl132197133106_))))
                                          (___match136712136713_
                                           _e132178133045_
                                           _hd132177133048_
                                           _tl132176133050_
                                           _e132181133053_
                                           _hd132180133056_
                                           _tl132179133058_
                                           _e132184133061_
                                           _hd132183133064_
                                           _tl132182133066_
                                           _e132187133069_
                                           _hd132186133072_
                                           _tl132185133074_
                                           _e132190133077_
                                           _hd132189133080_
                                           _tl132188133082_
                                           _e132193133085_
                                           _hd132192133088_
                                           _tl132191133090_
                                           _e132196133093_
                                           _hd132195133096_
                                           _tl132194133098_
                                           _e132199133101_
                                           _hd132198133104_
                                           _tl132197133106_))
                                      (___match136388136389_
                                       _e132178133045_
                                       _hd132177133048_
                                       _tl132176133050_
                                       _e132181133053_
                                       _hd132180133056_
                                       _tl132179133058_
                                       _e132184133061_
                                       _hd132183133064_
                                       _tl132182133066_
                                       _e132187133069_
                                       _hd132186133072_
                                       _tl132185133074_
                                       _e132190133077_
                                       _hd132189133080_
                                       _tl132188133082_
                                       _e132193133085_
                                       _hd132192133088_
                                       _tl132191133090_
                                       _e132196133093_
                                       _hd132195133096_
                                       _tl132194133098_
                                       _e132199133101_
                                       _hd132198133104_
                                       _tl132197133106_
                                       _e132202133109_
                                       _hd132201133112_
                                       _tl132200133114_))
                                  (___match136712136713_
                                   _e132178133045_
                                   _hd132177133048_
                                   _tl132176133050_
                                   _e132181133053_
                                   _hd132180133056_
                                   _tl132179133058_
                                   _e132184133061_
                                   _hd132183133064_
                                   _tl132182133066_
                                   _e132187133069_
                                   _hd132186133072_
                                   _tl132185133074_
                                   _e132190133077_
                                   _hd132189133080_
                                   _tl132188133082_
                                   _e132193133085_
                                   _hd132192133088_
                                   _tl132191133090_
                                   _e132196133093_
                                   _hd132195133096_
                                   _tl132194133098_
                                   _e132199133101_
                                   _hd132198133104_
                                   _tl132197133106_))))
                          (___match136712136713_
                           _e132178133045_
                           _hd132177133048_
                           _tl132176133050_
                           _e132181133053_
                           _hd132180133056_
                           _tl132179133058_
                           _e132184133061_
                           _hd132183133064_
                           _tl132182133066_
                           _e132187133069_
                           _hd132186133072_
                           _tl132185133074_
                           _e132190133077_
                           _hd132189133080_
                           _tl132188133082_
                           _e132193133085_
                           _hd132192133088_
                           _tl132191133090_
                           _e132196133093_
                           _hd132195133096_
                           _tl132194133098_
                           _e132199133101_
                           _hd132198133104_
                           _tl132197133106_))))
                  (___match136650136651_
                   _e132178133045_
                   _hd132177133048_
                   _tl132176133050_
                   _e132181133053_
                   _hd132180133056_
                   _tl132179133058_
                   _e132184133061_
                   _hd132183133064_
                   _tl132182133066_
                   _e132187133069_
                   _hd132186133072_
                   _tl132185133074_
                   _e132190133077_
                   _hd132189133080_
                   _tl132188133082_
                   _e132193133085_
                   _hd132192133088_
                   _tl132191133090_
                   _e132196133093_
                   _hd132195133096_
                   _tl132194133098_))
              (___kont136233136234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont136233136234_))
                                          (___kont136233136234_))
                                      (___kont136233136234_))))
                              (___kont136233136234_))))
                      (___kont136233136234_))
                  (___kont136233136234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont136233136234_))
                                              (___kont136233136234_))
                                          (___kont136233136234_))))
                                  (___kont136233136234_))))
                          (___kont136233136234_))))
                  (___kont136233136234_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self131100_ _stx131101_)
        (letrec ((_force-e131103_
                  (lambda (_target132159_)
                    (let ((__tmp137522
                           (let ((__tmp137526
                                  (let ((__tmp137527
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137527)))
                                 (__tmp137523
                                  (let ((__tmp137524
                                         (let ((__tmp137525
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target132159_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137525))))
                                    (declare (not safe))
                                    (cons __tmp137524 '()))))
                             (declare (not safe))
                             (cons __tmp137526 __tmp137523))))
                      (declare (not safe))
                      (cons '%#call __tmp137522)))))
          (let* ((___stx136717136718_ _stx131101_)
                 (_g131111131333_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136717136718_)))))
            (let ((___kont136719136720_
                   (lambda (_L132105_ _L132106_ _L132107_ _L132108_)
                     (let ((_$method132153_
                            (let ((__tmp137529
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131100_ 'methods)))
                                  (__tmp137528
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L132106_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137529 __tmp137528)))
                           (_args132154_
                            (map (lambda (_g132141132143_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131100_
                                      _g132141132143_)))
                                 (let ((__tmp137530
                                        (lambda (_g132145132148_
                                                 _g132146132150_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g132145132148_
                                                  _g132146132150_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137530 '() _L132105_)))))
                       (let ((__tmp137531
                              (let ((__tmp137532
                                     (let ((__tmp137537
                                            (let ()
                                              (declare (not safe))
                                              (_force-e131103_
                                               _$method132153_)))
                                           (__tmp137533
                                            (let ((__tmp137534
                                                   (let ((__tmp137535
                                                          (let ((__tmp137536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self131100_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137535))))
                                              (declare (not safe))
                                              (cons __tmp137534
                                                    _args132154_))))
                                       (declare (not safe))
                                       (cons __tmp137537 __tmp137533))))
                                (declare (not safe))
                                (cons '%#call __tmp137532))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137531 _stx131101_)))))
                  (___kont136723136724_
                   (lambda (_L131937_ _L131938_ _L131939_ _L131940_ _L131941_)
                     (let ((_$method131993_
                            (let ((__tmp137539
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131100_ 'methods)))
                                  (__tmp137538
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131938_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137539 __tmp137538)))
                           (_args131994_
                            (map (lambda (_g131981131983_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self131100_
                                      _g131981131983_)))
                                 (let ((__tmp137540
                                        (lambda (_g131985131988_
                                                 _g131986131990_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131985131988_
                                                  _g131986131990_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137540 '() _L131937_)))))
                       (let ((__tmp137541
                              (let ((__tmp137542
                                     (let ((__tmp137549
                                            (let ((__tmp137550
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137550)))
                                           (__tmp137543
                                            (let ((__tmp137548
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e131103_
                                                      _$method131993_)))
                                                  (__tmp137544
                                                   (let ((__tmp137545
                                                          (let ((__tmp137546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137547
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131100_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137547 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137545
                                                           _args131994_))))
                                              (declare (not safe))
                                              (cons __tmp137548 __tmp137544))))
                                       (declare (not safe))
                                       (cons __tmp137549 __tmp137543))))
                                (declare (not safe))
                                (cons '%#call __tmp137542))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137541 _stx131101_)))))
                  (___kont136727136728_
                   (lambda (_L131768_ _L131769_ _L131770_)
                     (let* ((_$field131802_
                             (let ((__tmp137552
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self131100_ 'slots)))
                                   (__tmp137551
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131768_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137552 __tmp137551)))
                            (__tmp137553
                             (let ((__tmp137554
                                    (let ((__tmp137562
                                           (let ((__tmp137563
                                                  (let ((__tmp137564
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self131100_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137564 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137563)))
                                          (__tmp137555
                                           (let ((__tmp137560
                                                  (let ((__tmp137561
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137561)))
                                                 (__tmp137556
                                                  (let ((__tmp137557
                                                         (let ((__tmp137558
                                                                (let ((__tmp137559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self131100_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137559 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137557 '()))))
                                             (declare (not safe))
                                             (cons __tmp137560 __tmp137556))))
                                      (declare (not safe))
                                      (cons __tmp137562 __tmp137555))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137554))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137553 _stx131101_))))
                  (___kont136729136730_
                   (lambda (_L131642_ _L131643_ _L131644_ _L131645_)
                     (let ((_$field131680_
                            (let ((__tmp137566
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self131100_ 'slots)))
                                  (__tmp137565
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131643_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137566 __tmp137565)))
                           (_expr131681_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self131100_ _L131642_))))
                       (let ((__tmp137567
                              (let ((__tmp137568
                                     (let ((__tmp137577
                                            (let ((__tmp137578
                                                   (let ((__tmp137579
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131100_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137579 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137578)))
                                           (__tmp137569
                                            (let ((__tmp137575
                                                   (let ((__tmp137576
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137576)))
                                                  (__tmp137570
                                                   (let ((__tmp137572
                                                          (let ((__tmp137573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137574
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131100_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137574 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137573)))
                 (__tmp137571
                  (let () (declare (not safe)) (cons _expr131681_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137572
                                                           __tmp137571))))
                                              (declare (not safe))
                                              (cons __tmp137575 __tmp137570))))
                                       (declare (not safe))
                                       (cons __tmp137577 __tmp137569))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137568))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137567 _stx131101_)))))
                  (___kont136731136732_
                   (lambda (_L131514_ _L131515_)
                     (let* ((_accessor131537_
                             (let ((__tmp137580
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131515_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137580)))
                            (_klass131539_
                             (let ((__tmp137581
                                    (##structure-ref
                                     _accessor131537_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131101_
                                __tmp137581)))
                            (_slot131541_
                             (##structure-ref
                              _accessor131537_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137595
                                       (##structure-ref
                                        _accessor131537_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137595))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131539_
                                       _slot131541_))
                                    (##structure-ref
                                     _klass131539_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx131101_
                           (let* ((_$field131547_
                                   (let ((__tmp137582
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137582 _slot131541_)))
                                  (__tmp137583
                                   (let ((__tmp137584
                                          (let ((__tmp137592
                                                 (let ((__tmp137593
                                                        (let ((__tmp137594
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131100_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137594 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137593)))
                                                (__tmp137585
                                                 (let ((__tmp137590
                                                        (let ((__tmp137591
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131547_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137591)))
               (__tmp137586
                (let ((__tmp137587
                       (let ((__tmp137588
                              (let ((__tmp137589
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131100_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137589 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137588))))
                  (declare (not safe))
                  (cons __tmp137587 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137590
                                                         __tmp137586))))
                                            (declare (not safe))
                                            (cons __tmp137592 __tmp137585))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137584))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137583
                              _stx131101_))))))
                  (___kont136733136734_
                   (lambda (_L131409_ _L131410_ _L131411_)
                     (let* ((_mutator131439_
                             (let ((__tmp137596
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131411_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137596)))
                            (_klass131441_
                             (let ((__tmp137597
                                    (##structure-ref
                                     _mutator131439_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx131101_
                                __tmp137597)))
                            (_slot131443_
                             (##structure-ref
                              _mutator131439_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131445_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self131100_ _L131409_))))
                       (if (and (let ((__tmp137622
                                       (##structure-ref
                                        _mutator131439_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137622))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131441_
                                       _slot131443_))
                                    (##structure-ref
                                     _klass131441_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137612
                                  (let ((__tmp137613
                                         (let ((__tmp137619
                                                (let ((__tmp137621
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137620
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131411_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137621
                                                        __tmp137620)))
                                               (__tmp137614
                                                (let ((__tmp137616
                                                       (let ((__tmp137618
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137617
                      (let () (declare (not safe)) (cons _L131410_ '()))))
                 (declare (not safe))
                 (cons __tmp137618 __tmp137617)))
              (__tmp137615
               (let () (declare (not safe)) (cons _expr131445_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137616
                                                        __tmp137615))))
                                           (declare (not safe))
                                           (cons __tmp137619 __tmp137614))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137613))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137612 _stx131101_))
                           (let* ((_$field131451_
                                   (let ((__tmp137598
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137598 _slot131443_)))
                                  (__tmp137599
                                   (let ((__tmp137600
                                          (let ((__tmp137609
                                                 (let ((__tmp137610
                                                        (let ((__tmp137611
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self131100_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137611 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137610)))
                                                (__tmp137601
                                                 (let ((__tmp137607
                                                        (let ((__tmp137608
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131451_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137608)))
               (__tmp137602
                (let ((__tmp137604
                       (let ((__tmp137605
                              (let ((__tmp137606
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self131100_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137606 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137605)))
                      (__tmp137603
                       (let () (declare (not safe)) (cons _expr131445_ '()))))
                  (declare (not safe))
                  (cons __tmp137604 __tmp137603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137607
                                                         __tmp137602))))
                                            (declare (not safe))
                                            (cons __tmp137609 __tmp137601))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137600))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137599
                              _stx131101_))))))
                  (___kont136735136736_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self131100_ _stx131101_)))))
              (let* ((___match137216137217_
                      (lambda (_e131307131345_
                               _hd131306131348_
                               _tl131305131350_
                               _e131310131353_
                               _hd131309131356_
                               _tl131308131358_
                               _e131313131361_
                               _hd131312131364_
                               _tl131311131366_
                               _e131316131369_
                               _hd131315131372_
                               _tl131314131374_
                               _e131319131377_
                               _hd131318131380_
                               _tl131317131382_
                               _e131322131385_
                               _hd131321131388_
                               _tl131320131390_
                               _e131325131393_
                               _hd131324131396_
                               _tl131323131398_
                               _e131328131401_
                               _hd131327131404_
                               _tl131326131406_)
                        (let ((_L131409_ _hd131327131404_)
                              (_L131410_ _hd131324131396_)
                              (_L131411_ _hd131315131372_))
                          (if (and (let ((__tmp137625
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131410_
                                      __tmp137625))
                                   (let ((__tmp137623
                                          (let ((__tmp137624
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131411_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137624))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137623
                                      'gxc#!mutator::t)))
                              (___kont136733136734_
                               _L131409_
                               _L131410_
                               _L131411_)
                              (___kont136735136736_)))))
                     (___match137214137215_
                      (lambda (_e131307131345_
                               _hd131306131348_
                               _tl131305131350_
                               _e131310131353_
                               _hd131309131356_
                               _tl131308131358_
                               _e131313131361_
                               _hd131312131364_
                               _tl131311131366_
                               _e131316131369_
                               _hd131315131372_
                               _tl131314131374_
                               _e131319131377_
                               _hd131318131380_
                               _tl131317131382_
                               _e131322131385_
                               _hd131321131388_
                               _tl131320131390_
                               _e131325131393_
                               _hd131324131396_
                               _tl131323131398_
                               _e131328131401_
                               _hd131327131404_
                               _tl131326131406_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131326131406_))
                            (___match137216137217_
                             _e131307131345_
                             _hd131306131348_
                             _tl131305131350_
                             _e131310131353_
                             _hd131309131356_
                             _tl131308131358_
                             _e131313131361_
                             _hd131312131364_
                             _tl131311131366_
                             _e131316131369_
                             _hd131315131372_
                             _tl131314131374_
                             _e131319131377_
                             _hd131318131380_
                             _tl131317131382_
                             _e131322131385_
                             _hd131321131388_
                             _tl131320131390_
                             _e131325131393_
                             _hd131324131396_
                             _tl131323131398_
                             _e131328131401_
                             _hd131327131404_
                             _tl131326131406_)
                            (___kont136735136736_))))
                     (___match137208137209_
                      (lambda (_e131307131345_
                               _hd131306131348_
                               _tl131305131350_
                               _e131310131353_
                               _hd131309131356_
                               _tl131308131358_
                               _e131313131361_
                               _hd131312131364_
                               _tl131311131366_
                               _e131316131369_
                               _hd131315131372_
                               _tl131314131374_
                               _e131319131377_
                               _hd131318131380_
                               _tl131317131382_
                               _e131322131385_
                               _hd131321131388_
                               _tl131320131390_
                               _e131325131393_
                               _hd131324131396_
                               _tl131323131398_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131317131382_))
                            (let ((_e131328131401_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131317131382_))))
                              (let ((_tl131326131406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131328131401_)))
                                    (_hd131327131404_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131328131401_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131326131406_))
                                    (___match137216137217_
                                     _e131307131345_
                                     _hd131306131348_
                                     _tl131305131350_
                                     _e131310131353_
                                     _hd131309131356_
                                     _tl131308131358_
                                     _e131313131361_
                                     _hd131312131364_
                                     _tl131311131366_
                                     _e131316131369_
                                     _hd131315131372_
                                     _tl131314131374_
                                     _e131319131377_
                                     _hd131318131380_
                                     _tl131317131382_
                                     _e131322131385_
                                     _hd131321131388_
                                     _tl131320131390_
                                     _e131325131393_
                                     _hd131324131396_
                                     _tl131323131398_
                                     _e131328131401_
                                     _hd131327131404_
                                     _tl131326131406_)
                                    (___kont136735136736_))))
                            (___kont136735136736_))))
                     (___match137154137155_
                      (lambda (_e131283131458_
                               _hd131282131461_
                               _tl131281131463_
                               _e131286131466_
                               _hd131285131469_
                               _tl131284131471_
                               _e131289131474_
                               _hd131288131477_
                               _tl131287131479_
                               _e131292131482_
                               _hd131291131485_
                               _tl131290131487_
                               _e131295131490_
                               _hd131294131493_
                               _tl131293131495_
                               _e131298131498_
                               _hd131297131501_
                               _tl131296131503_
                               _e131301131506_
                               _hd131300131509_
                               _tl131299131511_)
                        (let ((_L131514_ _hd131300131509_)
                              (_L131515_ _hd131291131485_))
                          (if (and (let ((__tmp137628
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131514_
                                      __tmp137628))
                                   (let ((__tmp137626
                                          (let ((__tmp137627
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131515_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137627))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137626
                                      'gxc#!accessor::t)))
                              (___kont136731136732_ _L131514_ _L131515_)
                              (___kont136735136736_)))))
                     (___match137152137153_
                      (lambda (_e131283131458_
                               _hd131282131461_
                               _tl131281131463_
                               _e131286131466_
                               _hd131285131469_
                               _tl131284131471_
                               _e131289131474_
                               _hd131288131477_
                               _tl131287131479_
                               _e131292131482_
                               _hd131291131485_
                               _tl131290131487_
                               _e131295131490_
                               _hd131294131493_
                               _tl131293131495_
                               _e131298131498_
                               _hd131297131501_
                               _tl131296131503_
                               _e131301131506_
                               _hd131300131509_
                               _tl131299131511_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131293131495_))
                            (___match137154137155_
                             _e131283131458_
                             _hd131282131461_
                             _tl131281131463_
                             _e131286131466_
                             _hd131285131469_
                             _tl131284131471_
                             _e131289131474_
                             _hd131288131477_
                             _tl131287131479_
                             _e131292131482_
                             _hd131291131485_
                             _tl131290131487_
                             _e131295131490_
                             _hd131294131493_
                             _tl131293131495_
                             _e131298131498_
                             _hd131297131501_
                             _tl131296131503_
                             _e131301131506_
                             _hd131300131509_
                             _tl131299131511_)
                            (___match137208137209_
                             _e131283131458_
                             _hd131282131461_
                             _tl131281131463_
                             _e131286131466_
                             _hd131285131469_
                             _tl131284131471_
                             _e131289131474_
                             _hd131288131477_
                             _tl131287131479_
                             _e131292131482_
                             _hd131291131485_
                             _tl131290131487_
                             _e131295131490_
                             _hd131294131493_
                             _tl131293131495_
                             _e131298131498_
                             _hd131297131501_
                             _tl131296131503_
                             _e131301131506_
                             _hd131300131509_
                             _tl131299131511_))))
                     (___match137098137099_
                      (lambda (_e131248131554_
                               _hd131247131557_
                               _tl131246131559_
                               _e131251131562_
                               _hd131250131565_
                               _tl131249131567_
                               _e131254131570_
                               _hd131253131573_
                               _tl131252131575_
                               _e131257131578_
                               _hd131256131581_
                               _tl131255131583_
                               _e131260131586_
                               _hd131259131589_
                               _tl131258131591_
                               _e131263131594_
                               _hd131262131597_
                               _tl131261131599_
                               _e131266131602_
                               _hd131265131605_
                               _tl131264131607_
                               _e131269131610_
                               _hd131268131613_
                               _tl131267131615_
                               _e131272131618_
                               _hd131271131621_
                               _tl131270131623_
                               _e131275131626_
                               _hd131274131629_
                               _tl131273131631_
                               _e131278131634_
                               _hd131277131637_
                               _tl131276131639_)
                        (let ((_L131642_ _hd131277131637_)
                              (_L131643_ _hd131274131629_)
                              (_L131644_ _hd131265131605_)
                              (_L131645_ _hd131256131581_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131645_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131645_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137629
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131644_
                                      __tmp137629)))
                              (___kont136729136730_
                               _L131642_
                               _L131643_
                               _L131644_
                               _L131645_)
                              (___kont136735136736_)))))
                     (___match137090137091_
                      (lambda (_e131248131554_
                               _hd131247131557_
                               _tl131246131559_
                               _e131251131562_
                               _hd131250131565_
                               _tl131249131567_
                               _e131254131570_
                               _hd131253131573_
                               _tl131252131575_
                               _e131257131578_
                               _hd131256131581_
                               _tl131255131583_
                               _e131260131586_
                               _hd131259131589_
                               _tl131258131591_
                               _e131263131594_
                               _hd131262131597_
                               _tl131261131599_
                               _e131266131602_
                               _hd131265131605_
                               _tl131264131607_
                               _e131269131610_
                               _hd131268131613_
                               _tl131267131615_
                               _e131272131618_
                               _hd131271131621_
                               _tl131270131623_
                               _e131275131626_
                               _hd131274131629_
                               _tl131273131631_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131267131615_))
                            (let ((_e131278131634_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131267131615_))))
                              (let ((_tl131276131639_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131278131634_)))
                                    (_hd131277131637_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131278131634_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131276131639_))
                                    (___match137098137099_
                                     _e131248131554_
                                     _hd131247131557_
                                     _tl131246131559_
                                     _e131251131562_
                                     _hd131250131565_
                                     _tl131249131567_
                                     _e131254131570_
                                     _hd131253131573_
                                     _tl131252131575_
                                     _e131257131578_
                                     _hd131256131581_
                                     _tl131255131583_
                                     _e131260131586_
                                     _hd131259131589_
                                     _tl131258131591_
                                     _e131263131594_
                                     _hd131262131597_
                                     _tl131261131599_
                                     _e131266131602_
                                     _hd131265131605_
                                     _tl131264131607_
                                     _e131269131610_
                                     _hd131268131613_
                                     _tl131267131615_
                                     _e131272131618_
                                     _hd131271131621_
                                     _tl131270131623_
                                     _e131275131626_
                                     _hd131274131629_
                                     _tl131273131631_
                                     _e131278131634_
                                     _hd131277131637_
                                     _tl131276131639_)
                                    (___kont136735136736_))))
                            (___match137214137215_
                             _e131248131554_
                             _hd131247131557_
                             _tl131246131559_
                             _e131251131562_
                             _hd131250131565_
                             _tl131249131567_
                             _e131254131570_
                             _hd131253131573_
                             _tl131252131575_
                             _e131257131578_
                             _hd131256131581_
                             _tl131255131583_
                             _e131260131586_
                             _hd131259131589_
                             _tl131258131591_
                             _e131263131594_
                             _hd131262131597_
                             _tl131261131599_
                             _e131266131602_
                             _hd131265131605_
                             _tl131264131607_
                             _e131269131610_
                             _hd131268131613_
                             _tl131267131615_))))
                     (___match137012137013_
                      (lambda (_e131214131688_
                               _hd131213131691_
                               _tl131212131693_
                               _e131217131696_
                               _hd131216131699_
                               _tl131215131701_
                               _e131220131704_
                               _hd131219131707_
                               _tl131218131709_
                               _e131223131712_
                               _hd131222131715_
                               _tl131221131717_
                               _e131226131720_
                               _hd131225131723_
                               _tl131224131725_
                               _e131229131728_
                               _hd131228131731_
                               _tl131227131733_
                               _e131232131736_
                               _hd131231131739_
                               _tl131230131741_
                               _e131235131744_
                               _hd131234131747_
                               _tl131233131749_
                               _e131238131752_
                               _hd131237131755_
                               _tl131236131757_
                               _e131241131760_
                               _hd131240131763_
                               _tl131239131765_)
                        (let ((_L131768_ _hd131240131763_)
                              (_L131769_ _hd131231131739_)
                              (_L131770_ _hd131222131715_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131770_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131770_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137630
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self131100_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131769_
                                      __tmp137630)))
                              (___kont136727136728_
                               _L131768_
                               _L131769_
                               _L131770_)
                              (___match137216137217_
                               _e131214131688_
                               _hd131213131691_
                               _tl131212131693_
                               _e131217131696_
                               _hd131216131699_
                               _tl131215131701_
                               _e131220131704_
                               _hd131219131707_
                               _tl131218131709_
                               _e131223131712_
                               _hd131222131715_
                               _tl131221131717_
                               _e131226131720_
                               _hd131225131723_
                               _tl131224131725_
                               _e131229131728_
                               _hd131228131731_
                               _tl131227131733_
                               _e131232131736_
                               _hd131231131739_
                               _tl131230131741_
                               _e131235131744_
                               _hd131234131747_
                               _tl131233131749_)))))
                     (___match137010137011_
                      (lambda (_e131214131688_
                               _hd131213131691_
                               _tl131212131693_
                               _e131217131696_
                               _hd131216131699_
                               _tl131215131701_
                               _e131220131704_
                               _hd131219131707_
                               _tl131218131709_
                               _e131223131712_
                               _hd131222131715_
                               _tl131221131717_
                               _e131226131720_
                               _hd131225131723_
                               _tl131224131725_
                               _e131229131728_
                               _hd131228131731_
                               _tl131227131733_
                               _e131232131736_
                               _hd131231131739_
                               _tl131230131741_
                               _e131235131744_
                               _hd131234131747_
                               _tl131233131749_
                               _e131238131752_
                               _hd131237131755_
                               _tl131236131757_
                               _e131241131760_
                               _hd131240131763_
                               _tl131239131765_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131233131749_))
                            (___match137012137013_
                             _e131214131688_
                             _hd131213131691_
                             _tl131212131693_
                             _e131217131696_
                             _hd131216131699_
                             _tl131215131701_
                             _e131220131704_
                             _hd131219131707_
                             _tl131218131709_
                             _e131223131712_
                             _hd131222131715_
                             _tl131221131717_
                             _e131226131720_
                             _hd131225131723_
                             _tl131224131725_
                             _e131229131728_
                             _hd131228131731_
                             _tl131227131733_
                             _e131232131736_
                             _hd131231131739_
                             _tl131230131741_
                             _e131235131744_
                             _hd131234131747_
                             _tl131233131749_
                             _e131238131752_
                             _hd131237131755_
                             _tl131236131757_
                             _e131241131760_
                             _hd131240131763_
                             _tl131239131765_)
                            (___match137090137091_
                             _e131214131688_
                             _hd131213131691_
                             _tl131212131693_
                             _e131217131696_
                             _hd131216131699_
                             _tl131215131701_
                             _e131220131704_
                             _hd131219131707_
                             _tl131218131709_
                             _e131223131712_
                             _hd131222131715_
                             _tl131221131717_
                             _e131226131720_
                             _hd131225131723_
                             _tl131224131725_
                             _e131229131728_
                             _hd131228131731_
                             _tl131227131733_
                             _e131232131736_
                             _hd131231131739_
                             _tl131230131741_
                             _e131235131744_
                             _hd131234131747_
                             _tl131233131749_
                             _e131238131752_
                             _hd131237131755_
                             _tl131236131757_
                             _e131241131760_
                             _hd131240131763_
                             _tl131239131765_))))
                     (___match137000137001_
                      (lambda (_e131214131688_
                               _hd131213131691_
                               _tl131212131693_
                               _e131217131696_
                               _hd131216131699_
                               _tl131215131701_
                               _e131220131704_
                               _hd131219131707_
                               _tl131218131709_
                               _e131223131712_
                               _hd131222131715_
                               _tl131221131717_
                               _e131226131720_
                               _hd131225131723_
                               _tl131224131725_
                               _e131229131728_
                               _hd131228131731_
                               _tl131227131733_
                               _e131232131736_
                               _hd131231131739_
                               _tl131230131741_
                               _e131235131744_
                               _hd131234131747_
                               _tl131233131749_
                               _e131238131752_
                               _hd131237131755_
                               _tl131236131757_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd131237131755_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131236131757_))
                                (let ((_e131241131760_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131236131757_))))
                                  (let ((_tl131239131765_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131241131760_)))
                                        (_hd131240131763_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131241131760_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131239131765_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131233131749_))
                                            (___match137012137013_
                                             _e131214131688_
                                             _hd131213131691_
                                             _tl131212131693_
                                             _e131217131696_
                                             _hd131216131699_
                                             _tl131215131701_
                                             _e131220131704_
                                             _hd131219131707_
                                             _tl131218131709_
                                             _e131223131712_
                                             _hd131222131715_
                                             _tl131221131717_
                                             _e131226131720_
                                             _hd131225131723_
                                             _tl131224131725_
                                             _e131229131728_
                                             _hd131228131731_
                                             _tl131227131733_
                                             _e131232131736_
                                             _hd131231131739_
                                             _tl131230131741_
                                             _e131235131744_
                                             _hd131234131747_
                                             _tl131233131749_
                                             _e131238131752_
                                             _hd131237131755_
                                             _tl131236131757_
                                             _e131241131760_
                                             _hd131240131763_
                                             _tl131239131765_)
                                            (___match137090137091_
                                             _e131214131688_
                                             _hd131213131691_
                                             _tl131212131693_
                                             _e131217131696_
                                             _hd131216131699_
                                             _tl131215131701_
                                             _e131220131704_
                                             _hd131219131707_
                                             _tl131218131709_
                                             _e131223131712_
                                             _hd131222131715_
                                             _tl131221131717_
                                             _e131226131720_
                                             _hd131225131723_
                                             _tl131224131725_
                                             _e131229131728_
                                             _hd131228131731_
                                             _tl131227131733_
                                             _e131232131736_
                                             _hd131231131739_
                                             _tl131230131741_
                                             _e131235131744_
                                             _hd131234131747_
                                             _tl131233131749_
                                             _e131238131752_
                                             _hd131237131755_
                                             _tl131236131757_
                                             _e131241131760_
                                             _hd131240131763_
                                             _tl131239131765_))
                                        (___match137214137215_
                                         _e131214131688_
                                         _hd131213131691_
                                         _tl131212131693_
                                         _e131217131696_
                                         _hd131216131699_
                                         _tl131215131701_
                                         _e131220131704_
                                         _hd131219131707_
                                         _tl131218131709_
                                         _e131223131712_
                                         _hd131222131715_
                                         _tl131221131717_
                                         _e131226131720_
                                         _hd131225131723_
                                         _tl131224131725_
                                         _e131229131728_
                                         _hd131228131731_
                                         _tl131227131733_
                                         _e131232131736_
                                         _hd131231131739_
                                         _tl131230131741_
                                         _e131235131744_
                                         _hd131234131747_
                                         _tl131233131749_))))
                                (___match137214137215_
                                 _e131214131688_
                                 _hd131213131691_
                                 _tl131212131693_
                                 _e131217131696_
                                 _hd131216131699_
                                 _tl131215131701_
                                 _e131220131704_
                                 _hd131219131707_
                                 _tl131218131709_
                                 _e131223131712_
                                 _hd131222131715_
                                 _tl131221131717_
                                 _e131226131720_
                                 _hd131225131723_
                                 _tl131224131725_
                                 _e131229131728_
                                 _hd131228131731_
                                 _tl131227131733_
                                 _e131232131736_
                                 _hd131231131739_
                                 _tl131230131741_
                                 _e131235131744_
                                 _hd131234131747_
                                 _tl131233131749_))
                            (___match137214137215_
                             _e131214131688_
                             _hd131213131691_
                             _tl131212131693_
                             _e131217131696_
                             _hd131216131699_
                             _tl131215131701_
                             _e131220131704_
                             _hd131219131707_
                             _tl131218131709_
                             _e131223131712_
                             _hd131222131715_
                             _tl131221131717_
                             _e131226131720_
                             _hd131225131723_
                             _tl131224131725_
                             _e131229131728_
                             _hd131228131731_
                             _tl131227131733_
                             _e131232131736_
                             _hd131231131739_
                             _tl131230131741_
                             _e131235131744_
                             _hd131234131747_
                             _tl131233131749_))))
                     (___match136932136933_
                      (lambda (_e131163131809_
                               _hd131162131812_
                               _tl131161131814_
                               _e131166131817_
                               _hd131165131820_
                               _tl131164131822_
                               _e131169131825_
                               _hd131168131828_
                               _tl131167131830_
                               _e131172131833_
                               _hd131171131836_
                               _tl131170131838_
                               _e131175131841_
                               _hd131174131844_
                               _tl131173131846_
                               _e131178131849_
                               _hd131177131852_
                               _tl131176131854_
                               _e131181131857_
                               _hd131180131860_
                               _tl131179131862_
                               _e131184131865_
                               _hd131183131868_
                               _tl131182131870_
                               _e131187131873_
                               _hd131186131876_
                               _tl131185131878_
                               _e131190131881_
                               _hd131189131884_
                               _tl131188131886_
                               _e131193131889_
                               _hd131192131892_
                               _tl131191131894_
                               _e131196131897_
                               _hd131195131900_
                               _tl131194131902_
                               _e131199131905_
                               _hd131198131908_
                               _tl131197131910_
                               ___splice136725136726_
                               _target131200131913_
                               _tl131202131915_)
                        (letrec ((_loop131203131918_
                                  (lambda (_hd131201131921_ _args131207131923_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131201131921_))
                                        (let ((_e131204131926_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131201131921_))))
                                          (let ((_lp-tl131206131931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131204131926_)))
                                                (_lp-hd131205131929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131204131926_))))
                                            (let ((__tmp137632
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131205131929_
                                                           _args131207131923_))))
                                              (declare (not safe))
                                              (_loop131203131918_
                                               _lp-tl131206131931_
                                               __tmp137632))))
                                        (let ((_args131208131934_
                                               (reverse _args131207131923_)))
                                          (let ((_L131937_ _args131208131934_)
                                                (_L131938_ _hd131198131908_)
                                                (_L131939_ _hd131189131884_)
                                                (_L131940_ _hd131180131860_)
                                                (_L131941_ _hd131171131836_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131941_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131940_
                                                        'call-method))
                                                     (let ((__tmp137631
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131100_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131939_
                                                        __tmp137631)))
                                                (___kont136723136724_
                                                 _L131937_
                                                 _L131938_
                                                 _L131939_
                                                 _L131940_
                                                 _L131941_)
                                                (___kont136735136736_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131203131918_ _target131200131913_ '())))))
                     (___match136890136891_
                      (lambda (_e131163131809_
                               _hd131162131812_
                               _tl131161131814_
                               _e131166131817_
                               _hd131165131820_
                               _tl131164131822_
                               _e131169131825_
                               _hd131168131828_
                               _tl131167131830_
                               _e131172131833_
                               _hd131171131836_
                               _tl131170131838_
                               _e131175131841_
                               _hd131174131844_
                               _tl131173131846_
                               _e131178131849_
                               _hd131177131852_
                               _tl131176131854_
                               _e131181131857_
                               _hd131180131860_
                               _tl131179131862_
                               _e131184131865_
                               _hd131183131868_
                               _tl131182131870_
                               _e131187131873_
                               _hd131186131876_
                               _tl131185131878_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd131186131876_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl131185131878_))
                                (let ((_e131190131881_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl131185131878_))))
                                  (let ((_tl131188131886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131190131881_)))
                                        (_hd131189131884_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131190131881_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl131188131886_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131182131870_))
                                            (let ((_e131193131889_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131182131870_))))
                                              (let ((_tl131191131894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131193131889_)))
                                                    (_hd131192131892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131193131889_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd131192131892_))
                                                    (let ((_e131196131897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd131192131892_))))
                                                      (let ((_tl131194131902_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131196131897_)))
                    (_hd131195131900_
                     (let () (declare (not safe)) (##car _e131196131897_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd131195131900_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd131195131900_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131194131902_))
                            (let ((_e131199131905_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131194131902_))))
                              (let ((_tl131197131910_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131199131905_)))
                                    (_hd131198131908_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131199131905_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131197131910_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl131191131894_))
                                        (let ((___splice136725136726_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl131191131894_
                                                  '0))))
                                          (let ((_tl131202131915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136725136726_
                                                    '1)))
                                                (_target131200131913_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136725136726_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl131202131915_))
                                                (___match136932136933_
                                                 _e131163131809_
                                                 _hd131162131812_
                                                 _tl131161131814_
                                                 _e131166131817_
                                                 _hd131165131820_
                                                 _tl131164131822_
                                                 _e131169131825_
                                                 _hd131168131828_
                                                 _tl131167131830_
                                                 _e131172131833_
                                                 _hd131171131836_
                                                 _tl131170131838_
                                                 _e131175131841_
                                                 _hd131174131844_
                                                 _tl131173131846_
                                                 _e131178131849_
                                                 _hd131177131852_
                                                 _tl131176131854_
                                                 _e131181131857_
                                                 _hd131180131860_
                                                 _tl131179131862_
                                                 _e131184131865_
                                                 _hd131183131868_
                                                 _tl131182131870_
                                                 _e131187131873_
                                                 _hd131186131876_
                                                 _tl131185131878_
                                                 _e131190131881_
                                                 _hd131189131884_
                                                 _tl131188131886_
                                                 _e131193131889_
                                                 _hd131192131892_
                                                 _tl131191131894_
                                                 _e131196131897_
                                                 _hd131195131900_
                                                 _tl131194131902_
                                                 _e131199131905_
                                                 _hd131198131908_
                                                 _tl131197131910_
                                                 ___splice136725136726_
                                                 _target131200131913_
                                                 _tl131202131915_)
                                                (___kont136735136736_))))
                                        (___kont136735136736_))
                                    (___kont136735136736_))))
                            (___kont136735136736_))
                        (___kont136735136736_))
                    (___kont136735136736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136735136736_))))
                                            (___match137214137215_
                                             _e131163131809_
                                             _hd131162131812_
                                             _tl131161131814_
                                             _e131166131817_
                                             _hd131165131820_
                                             _tl131164131822_
                                             _e131169131825_
                                             _hd131168131828_
                                             _tl131167131830_
                                             _e131172131833_
                                             _hd131171131836_
                                             _tl131170131838_
                                             _e131175131841_
                                             _hd131174131844_
                                             _tl131173131846_
                                             _e131178131849_
                                             _hd131177131852_
                                             _tl131176131854_
                                             _e131181131857_
                                             _hd131180131860_
                                             _tl131179131862_
                                             _e131184131865_
                                             _hd131183131868_
                                             _tl131182131870_))
                                        (___match137214137215_
                                         _e131163131809_
                                         _hd131162131812_
                                         _tl131161131814_
                                         _e131166131817_
                                         _hd131165131820_
                                         _tl131164131822_
                                         _e131169131825_
                                         _hd131168131828_
                                         _tl131167131830_
                                         _e131172131833_
                                         _hd131171131836_
                                         _tl131170131838_
                                         _e131175131841_
                                         _hd131174131844_
                                         _tl131173131846_
                                         _e131178131849_
                                         _hd131177131852_
                                         _tl131176131854_
                                         _e131181131857_
                                         _hd131180131860_
                                         _tl131179131862_
                                         _e131184131865_
                                         _hd131183131868_
                                         _tl131182131870_))))
                                (___match137214137215_
                                 _e131163131809_
                                 _hd131162131812_
                                 _tl131161131814_
                                 _e131166131817_
                                 _hd131165131820_
                                 _tl131164131822_
                                 _e131169131825_
                                 _hd131168131828_
                                 _tl131167131830_
                                 _e131172131833_
                                 _hd131171131836_
                                 _tl131170131838_
                                 _e131175131841_
                                 _hd131174131844_
                                 _tl131173131846_
                                 _e131178131849_
                                 _hd131177131852_
                                 _tl131176131854_
                                 _e131181131857_
                                 _hd131180131860_
                                 _tl131179131862_
                                 _e131184131865_
                                 _hd131183131868_
                                 _tl131182131870_))
                            (___match137000137001_
                             _e131163131809_
                             _hd131162131812_
                             _tl131161131814_
                             _e131166131817_
                             _hd131165131820_
                             _tl131164131822_
                             _e131169131825_
                             _hd131168131828_
                             _tl131167131830_
                             _e131172131833_
                             _hd131171131836_
                             _tl131170131838_
                             _e131175131841_
                             _hd131174131844_
                             _tl131173131846_
                             _e131178131849_
                             _hd131177131852_
                             _tl131176131854_
                             _e131181131857_
                             _hd131180131860_
                             _tl131179131862_
                             _e131184131865_
                             _hd131183131868_
                             _tl131182131870_
                             _e131187131873_
                             _hd131186131876_
                             _tl131185131878_))))
                     (___match136822136823_
                      (lambda (_e131119132001_
                               _hd131118132004_
                               _tl131117132006_
                               _e131122132009_
                               _hd131121132012_
                               _tl131120132014_
                               _e131125132017_
                               _hd131124132020_
                               _tl131123132022_
                               _e131128132025_
                               _hd131127132028_
                               _tl131126132030_
                               _e131131132033_
                               _hd131130132036_
                               _tl131129132038_
                               _e131134132041_
                               _hd131133132044_
                               _tl131132132046_
                               _e131137132049_
                               _hd131136132052_
                               _tl131135132054_
                               _e131140132057_
                               _hd131139132060_
                               _tl131138132062_
                               _e131143132065_
                               _hd131142132068_
                               _tl131141132070_
                               _e131146132073_
                               _hd131145132076_
                               _tl131144132078_
                               ___splice136721136722_
                               _target131147132081_
                               _tl131149132083_)
                        (letrec ((_loop131150132086_
                                  (lambda (_hd131148132089_ _args131154132091_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131148132089_))
                                        (let ((_e131151132094_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131148132089_))))
                                          (let ((_lp-tl131153132099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131151132094_)))
                                                (_lp-hd131152132097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131151132094_))))
                                            (let ((__tmp137634
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd131152132097_
                                                           _args131154132091_))))
                                              (declare (not safe))
                                              (_loop131150132086_
                                               _lp-tl131153132099_
                                               __tmp137634))))
                                        (let ((_args131155132102_
                                               (reverse _args131154132091_)))
                                          (let ((_L132105_ _args131155132102_)
                                                (_L132106_ _hd131145132076_)
                                                (_L132107_ _hd131136132052_)
                                                (_L132108_ _hd131127132028_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L132108_
                                                        'call-method))
                                                     (let ((__tmp137633
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self131100_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L132107_
                                                        __tmp137633)))
                                                (___kont136719136720_
                                                 _L132105_
                                                 _L132106_
                                                 _L132107_
                                                 _L132108_)
                                                (___match137010137011_
                                                 _e131119132001_
                                                 _hd131118132004_
                                                 _tl131117132006_
                                                 _e131122132009_
                                                 _hd131121132012_
                                                 _tl131120132014_
                                                 _e131125132017_
                                                 _hd131124132020_
                                                 _tl131123132022_
                                                 _e131128132025_
                                                 _hd131127132028_
                                                 _tl131126132030_
                                                 _e131131132033_
                                                 _hd131130132036_
                                                 _tl131129132038_
                                                 _e131134132041_
                                                 _hd131133132044_
                                                 _tl131132132046_
                                                 _e131137132049_
                                                 _hd131136132052_
                                                 _tl131135132054_
                                                 _e131140132057_
                                                 _hd131139132060_
                                                 _tl131138132062_
                                                 _e131143132065_
                                                 _hd131142132068_
                                                 _tl131141132070_
                                                 _e131146132073_
                                                 _hd131145132076_
                                                 _tl131144132078_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop131150132086_ _target131147132081_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136717136718_))
                    (let ((_e131119132001_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136717136718_))))
                      (let ((_tl131117132006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131119132001_)))
                            (_hd131118132004_
                             (let ()
                               (declare (not safe))
                               (##car _e131119132001_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131117132006_))
                            (let ((_e131122132009_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131117132006_))))
                              (let ((_tl131120132014_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131122132009_)))
                                    (_hd131121132012_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131122132009_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131121132012_))
                                    (let ((_e131125132017_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131121132012_))))
                                      (let ((_tl131123132022_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131125132017_)))
                                            (_hd131124132020_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131125132017_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd131124132020_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd131124132020_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl131123132022_))
                                                    (let ((_e131128132025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl131123132022_))))
                                                      (let ((_tl131126132030_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131128132025_)))
                    (_hd131127132028_
                     (let () (declare (not safe)) (##car _e131128132025_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl131126132030_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131120132014_))
                        (let ((_e131131132033_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131120132014_))))
                          (let ((_tl131129132038_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131131132033_)))
                                (_hd131130132036_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131131132033_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131130132036_))
                                (let ((_e131134132041_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131130132036_))))
                                  (let ((_tl131132132046_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131134132041_)))
                                        (_hd131133132044_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131134132041_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd131133132044_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd131133132044_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131132132046_))
                                                (let ((_e131137132049_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131132132046_))))
                                                  (let ((_tl131135132054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131137132049_)))
                                                        (_hd131136132052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131137132049_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131135132054_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl131129132038_))
                                                            (let ((_e131140132057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl131129132038_))))
                      (let ((_tl131138132062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131140132057_)))
                            (_hd131139132060_
                             (let ()
                               (declare (not safe))
                               (##car _e131140132057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd131139132060_))
                            (let ((_e131143132065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd131139132060_))))
                              (let ((_tl131141132070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131143132065_)))
                                    (_hd131142132068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131143132065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd131142132068_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd131142132068_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl131141132070_))
                                            (let ((_e131146132073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl131141132070_))))
                                              (let ((_tl131144132078_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131146132073_)))
                                                    (_hd131145132076_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131146132073_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl131144132078_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl131138132062_))
                                                        (let ((___splice136721136722_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl131138132062_ '0))))
                  (let ((_tl131149132083_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136721136722_ '1)))
                        (_target131147132081_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136721136722_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl131149132083_))
                        (___match136822136823_
                         _e131119132001_
                         _hd131118132004_
                         _tl131117132006_
                         _e131122132009_
                         _hd131121132012_
                         _tl131120132014_
                         _e131125132017_
                         _hd131124132020_
                         _tl131123132022_
                         _e131128132025_
                         _hd131127132028_
                         _tl131126132030_
                         _e131131132033_
                         _hd131130132036_
                         _tl131129132038_
                         _e131134132041_
                         _hd131133132044_
                         _tl131132132046_
                         _e131137132049_
                         _hd131136132052_
                         _tl131135132054_
                         _e131140132057_
                         _hd131139132060_
                         _tl131138132062_
                         _e131143132065_
                         _hd131142132068_
                         _tl131141132070_
                         _e131146132073_
                         _hd131145132076_
                         _tl131144132078_
                         ___splice136721136722_
                         _target131147132081_
                         _tl131149132083_)
                        (___match137010137011_
                         _e131119132001_
                         _hd131118132004_
                         _tl131117132006_
                         _e131122132009_
                         _hd131121132012_
                         _tl131120132014_
                         _e131125132017_
                         _hd131124132020_
                         _tl131123132022_
                         _e131128132025_
                         _hd131127132028_
                         _tl131126132030_
                         _e131131132033_
                         _hd131130132036_
                         _tl131129132038_
                         _e131134132041_
                         _hd131133132044_
                         _tl131132132046_
                         _e131137132049_
                         _hd131136132052_
                         _tl131135132054_
                         _e131140132057_
                         _hd131139132060_
                         _tl131138132062_
                         _e131143132065_
                         _hd131142132068_
                         _tl131141132070_
                         _e131146132073_
                         _hd131145132076_
                         _tl131144132078_))))
                (___match137010137011_
                 _e131119132001_
                 _hd131118132004_
                 _tl131117132006_
                 _e131122132009_
                 _hd131121132012_
                 _tl131120132014_
                 _e131125132017_
                 _hd131124132020_
                 _tl131123132022_
                 _e131128132025_
                 _hd131127132028_
                 _tl131126132030_
                 _e131131132033_
                 _hd131130132036_
                 _tl131129132038_
                 _e131134132041_
                 _hd131133132044_
                 _tl131132132046_
                 _e131137132049_
                 _hd131136132052_
                 _tl131135132054_
                 _e131140132057_
                 _hd131139132060_
                 _tl131138132062_
                 _e131143132065_
                 _hd131142132068_
                 _tl131141132070_
                 _e131146132073_
                 _hd131145132076_
                 _tl131144132078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match137214137215_
                                                     _e131119132001_
                                                     _hd131118132004_
                                                     _tl131117132006_
                                                     _e131122132009_
                                                     _hd131121132012_
                                                     _tl131120132014_
                                                     _e131125132017_
                                                     _hd131124132020_
                                                     _tl131123132022_
                                                     _e131128132025_
                                                     _hd131127132028_
                                                     _tl131126132030_
                                                     _e131131132033_
                                                     _hd131130132036_
                                                     _tl131129132038_
                                                     _e131134132041_
                                                     _hd131133132044_
                                                     _tl131132132046_
                                                     _e131137132049_
                                                     _hd131136132052_
                                                     _tl131135132054_
                                                     _e131140132057_
                                                     _hd131139132060_
                                                     _tl131138132062_))))
                                            (___match137214137215_
                                             _e131119132001_
                                             _hd131118132004_
                                             _tl131117132006_
                                             _e131122132009_
                                             _hd131121132012_
                                             _tl131120132014_
                                             _e131125132017_
                                             _hd131124132020_
                                             _tl131123132022_
                                             _e131128132025_
                                             _hd131127132028_
                                             _tl131126132030_
                                             _e131131132033_
                                             _hd131130132036_
                                             _tl131129132038_
                                             _e131134132041_
                                             _hd131133132044_
                                             _tl131132132046_
                                             _e131137132049_
                                             _hd131136132052_
                                             _tl131135132054_
                                             _e131140132057_
                                             _hd131139132060_
                                             _tl131138132062_))
                                        (___match136890136891_
                                         _e131119132001_
                                         _hd131118132004_
                                         _tl131117132006_
                                         _e131122132009_
                                         _hd131121132012_
                                         _tl131120132014_
                                         _e131125132017_
                                         _hd131124132020_
                                         _tl131123132022_
                                         _e131128132025_
                                         _hd131127132028_
                                         _tl131126132030_
                                         _e131131132033_
                                         _hd131130132036_
                                         _tl131129132038_
                                         _e131134132041_
                                         _hd131133132044_
                                         _tl131132132046_
                                         _e131137132049_
                                         _hd131136132052_
                                         _tl131135132054_
                                         _e131140132057_
                                         _hd131139132060_
                                         _tl131138132062_
                                         _e131143132065_
                                         _hd131142132068_
                                         _tl131141132070_))
                                    (___match137214137215_
                                     _e131119132001_
                                     _hd131118132004_
                                     _tl131117132006_
                                     _e131122132009_
                                     _hd131121132012_
                                     _tl131120132014_
                                     _e131125132017_
                                     _hd131124132020_
                                     _tl131123132022_
                                     _e131128132025_
                                     _hd131127132028_
                                     _tl131126132030_
                                     _e131131132033_
                                     _hd131130132036_
                                     _tl131129132038_
                                     _e131134132041_
                                     _hd131133132044_
                                     _tl131132132046_
                                     _e131137132049_
                                     _hd131136132052_
                                     _tl131135132054_
                                     _e131140132057_
                                     _hd131139132060_
                                     _tl131138132062_))))
                            (___match137214137215_
                             _e131119132001_
                             _hd131118132004_
                             _tl131117132006_
                             _e131122132009_
                             _hd131121132012_
                             _tl131120132014_
                             _e131125132017_
                             _hd131124132020_
                             _tl131123132022_
                             _e131128132025_
                             _hd131127132028_
                             _tl131126132030_
                             _e131131132033_
                             _hd131130132036_
                             _tl131129132038_
                             _e131134132041_
                             _hd131133132044_
                             _tl131132132046_
                             _e131137132049_
                             _hd131136132052_
                             _tl131135132054_
                             _e131140132057_
                             _hd131139132060_
                             _tl131138132062_))))
                    (___match137152137153_
                     _e131119132001_
                     _hd131118132004_
                     _tl131117132006_
                     _e131122132009_
                     _hd131121132012_
                     _tl131120132014_
                     _e131125132017_
                     _hd131124132020_
                     _tl131123132022_
                     _e131128132025_
                     _hd131127132028_
                     _tl131126132030_
                     _e131131132033_
                     _hd131130132036_
                     _tl131129132038_
                     _e131134132041_
                     _hd131133132044_
                     _tl131132132046_
                     _e131137132049_
                     _hd131136132052_
                     _tl131135132054_))
                (___kont136735136736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136735136736_))
                                            (___kont136735136736_))
                                        (___kont136735136736_))))
                                (___kont136735136736_))))
                        (___kont136735136736_))
                    (___kont136735136736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136735136736_))
                                                (___kont136735136736_))
                                            (___kont136735136736_))))
                                    (___kont136735136736_))))
                            (___kont136735136736_))))
                    (___kont136735136736_))))))))))
