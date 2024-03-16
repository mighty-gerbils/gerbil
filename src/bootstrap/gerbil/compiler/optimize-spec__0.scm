(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710617607)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp134246 (list gxc#::identity::t))
            (__tmp134244
             (let ((__tmp134245
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134245 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp134246
         '()
         __tmp134244
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args133110_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args133110_)))
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
      (lambda (_stx133102_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self133105_
                (let ((__obj134239
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj134239))
               (__tmp134247
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self133105_ _stx133102_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp134247
           gxc#current-compile-method
           _self133105_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp134250 (list gxc#::void::t))
            (__tmp134248
             (let ((__tmp134249
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134249 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp134250
         '(receiver methods slots)
         __tmp134248
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args133099_
        (apply make-instance gxc#::collect-object-refs::t _$args133099_)))
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
      (lambda (_g134251_
               _receiver133060133065_
               _methods133061133067_
               _slots133062133069_
               _stx133071_)
        (let* ((_receiver133074_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver133060133065_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver133060133065_))
               (_methods133076_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods133061133067_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods133061133067_))
               (_slots133078_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots133062133069_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots133062133069_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self133080_
                  (let ((__obj134241
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
                       __obj134241
                       _receiver133074_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134241
                       _methods133076_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134241
                       _slots133078_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj134241))
                 (__tmp134252
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self133080_ _stx133071_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp134252
             gxc#current-compile-method
             _self133080_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys133059133087_ . _args133089_)
        (apply gxc#apply-collect-object-refs__%
               _keys133059133087_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133059133087_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133059133087_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133059133087_ 'slots: absent-value))
               _args133089_)))
    (define gxc#apply-collect-object-refs
      (lambda _args133063133095_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args133063133095_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp134255 (list gxc#::basic-xform-expression::t))
            (__tmp134253
             (let ((__tmp134254
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp134254 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp134255
         '(receiver klass methods slots)
         __tmp134253
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args133055_
        (apply make-instance gxc#::subst-object-refs::t _$args133055_)))
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
      (lambda (_g134256_
               _receiver133011133017_
               _klass133012133019_
               _methods133013133021_
               _slots133014133023_
               _stx133025_)
        (let* ((_receiver133028_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver133011133017_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver133011133017_))
               (_klass133030_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass133012133019_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass133012133019_))
               (_methods133032_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods133013133021_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods133013133021_))
               (_slots133034_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots133014133023_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots133014133023_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self133036_
                  (let ((__obj134243
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
                       __obj134243
                       _receiver133028_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134243
                       _klass133030_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134243
                       _methods133032_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134243
                       _slots133034_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj134243))
                 (__tmp134257
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self133036_ _stx133025_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp134257
             gxc#current-compile-method
             _self133036_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys133010133043_ . _args133045_)
        (apply gxc#apply-subst-object-refs__%
               _keys133010133043_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133010133043_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133010133043_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133010133043_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133010133043_ 'slots: absent-value))
               _args133045_)))
    (define gxc#apply-subst-object-refs
      (lambda _args133015133051_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args133015133051_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self130220_ _stx130221_)
        (letrec ((_generate-method-bind130223_
                  (lambda (_$klass133002_
                           _$method-table133003_
                           _id133004_
                           _$id133005_)
                    (let ((_$tmp133007_
                           (let ((__tmp134258 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134258))))
                      (let ((__tmp134306
                             (let ()
                               (declare (not safe))
                               (cons _$id133005_ '())))
                            (__tmp134259
                             (let ((__tmp134260
                                    (let ((__tmp134261
                                           (let ((__tmp134304
                                                  (let ((__tmp134305
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134305)))
                                                 (__tmp134262
                                                  (let ((__tmp134263
                                                         (let ((__tmp134264
                                                                (let ((__tmp134265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134266
                                      (let ((__tmp134267
                                             (let ((__tmp134287
                                                    (let ((__tmp134288
                                                           (let ((__tmp134303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133007_ '())))
                         (__tmp134289
                          (let ((__tmp134290
                                 (let ((__tmp134291
                                        (let ((__tmp134301
                                               (let ((__tmp134302
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134302)))
                                              (__tmp134292
                                               (let ((__tmp134299
                                                      (let ((__tmp134300
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table133003_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134300)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134293
                                                      (let ((__tmp134297
                                                             (let ((__tmp134298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id133004_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134298)))
                    (__tmp134294
                     (let ((__tmp134295
                            (let ((__tmp134296
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134296))))
                       (declare (not safe))
                       (cons __tmp134295 '()))))
                (declare (not safe))
                (cons __tmp134297 __tmp134294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134299
                                                       __tmp134293))))
                                          (declare (not safe))
                                          (cons __tmp134301 __tmp134292))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134291))))
                            (declare (not safe))
                            (cons __tmp134290 '()))))
                     (declare (not safe))
                     (cons __tmp134303 __tmp134289))))
              (declare (not safe))
              (cons __tmp134288 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134268
                                                    (let ((__tmp134269
                                                           (let ((__tmp134270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134285
                                 (let ((__tmp134286
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133007_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134286)))
                                (__tmp134271
                                 (let ((__tmp134283
                                        (let ((__tmp134284
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133007_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134284)))
                                       (__tmp134272
                                        (let ((__tmp134273
                                               (let ((__tmp134274
                                                      (let ((__tmp134281
                                                             (let ((__tmp134282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134282)))
                    (__tmp134275
                     (let ((__tmp134279
                            (let ((__tmp134280
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134280)))
                           (__tmp134276
                            (let ((__tmp134277
                                   (let ((__tmp134278
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133004_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134278))))
                              (declare (not safe))
                              (cons __tmp134277 '()))))
                       (declare (not safe))
                       (cons __tmp134279 __tmp134276))))
                (declare (not safe))
                (cons __tmp134281 __tmp134275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134274))))
                                          (declare (not safe))
                                          (cons __tmp134273 '()))))
                                   (declare (not safe))
                                   (cons __tmp134283 __tmp134272))))
                            (declare (not safe))
                            (cons __tmp134285 __tmp134271))))
                     (declare (not safe))
                     (cons '%#if __tmp134270))))
              (declare (not safe))
              (cons __tmp134269 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134287
                                                     __tmp134268))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134267))))
                                 (declare (not safe))
                                 (cons __tmp134266 '()))))
                          (declare (not safe))
                          (cons '() __tmp134265))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134263 '()))))
                                             (declare (not safe))
                                             (cons __tmp134304 __tmp134262))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134261))))
                               (declare (not safe))
                               (cons __tmp134260 '()))))
                        (declare (not safe))
                        (cons __tmp134306 __tmp134259)))))
                 (_generate-slot-bind130224_
                  (lambda (_$klass132996_ _id132997_ _$id132998_)
                    (let ((_$tmp133000_
                           (let ((__tmp134307 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134307))))
                      (let ((__tmp134344
                             (let ()
                               (declare (not safe))
                               (cons _$id132998_ '())))
                            (__tmp134308
                             (let ((__tmp134309
                                    (let ((__tmp134310
                                           (let ((__tmp134330
                                                  (let ((__tmp134331
                                                         (let ((__tmp134343
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133000_ '())))
                       (__tmp134332
                        (let ((__tmp134333
                               (let ((__tmp134334
                                      (let ((__tmp134341
                                             (let ((__tmp134342
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134342)))
                                            (__tmp134335
                                             (let ((__tmp134339
                                                    (let ((__tmp134340
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass132996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134340)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134336
                                                    (let ((__tmp134337
                                                           (let ((__tmp134338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id132997_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134338))))
              (declare (not safe))
              (cons __tmp134337 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134339
                                                     __tmp134336))))
                                        (declare (not safe))
                                        (cons __tmp134341 __tmp134335))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134334))))
                          (declare (not safe))
                          (cons __tmp134333 '()))))
                   (declare (not safe))
                   (cons __tmp134343 __tmp134332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134331 '())))
                                                 (__tmp134311
                                                  (let ((__tmp134312
                                                         (let ((__tmp134313
                                                                (let ((__tmp134328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134329
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133000_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134329)))
                              (__tmp134314
                               (let ((__tmp134326
                                      (let ((__tmp134327
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133000_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134327)))
                                     (__tmp134315
                                      (let ((__tmp134316
                                             (let ((__tmp134317
                                                    (let ((__tmp134324
                                                           (let ((__tmp134325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134325)))
                  (__tmp134318
                   (let ((__tmp134322
                          (let ((__tmp134323
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134323)))
                         (__tmp134319
                          (let ((__tmp134320
                                 (let ((__tmp134321
                                        (let ()
                                          (declare (not safe))
                                          (cons _id132997_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134321))))
                            (declare (not safe))
                            (cons __tmp134320 '()))))
                     (declare (not safe))
                     (cons __tmp134322 __tmp134319))))
              (declare (not safe))
              (cons __tmp134324 __tmp134318))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134317))))
                                        (declare (not safe))
                                        (cons __tmp134316 '()))))
                                 (declare (not safe))
                                 (cons __tmp134326 __tmp134315))))
                          (declare (not safe))
                          (cons __tmp134328 __tmp134314))))
                   (declare (not safe))
                   (cons '%#if __tmp134313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134312 '()))))
                                             (declare (not safe))
                                             (cons __tmp134330 __tmp134311))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134310))))
                               (declare (not safe))
                               (cons __tmp134309 '()))))
                        (declare (not safe))
                        (cons __tmp134344 __tmp134308)))))
                 (_generate-specializer-impl130225_
                  (lambda (_$klass132990_
                           _$method-table132991_
                           _methods-bind132992_
                           _slots-bind132993_
                           _specializer-impl132994_)
                    (let ((__tmp134345
                           (let ((__tmp134346
                                  (let ((__tmp134352
                                         (let ((__tmp134353
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table132991_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass132990_ __tmp134353)))
                                        (__tmp134347
                                         (let ((__tmp134348
                                                (let ((__tmp134349
                                                       (let ((__tmp134351
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind132993_ _methods-bind132992_)))
                     (__tmp134350
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl132994_ '()))))
                 (declare (not safe))
                 (cons __tmp134351 __tmp134350))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134349))))
                                           (declare (not safe))
                                           (cons __tmp134348 '()))))
                                    (declare (not safe))
                                    (cons __tmp134352 __tmp134347))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134346))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134345 _stx130221_))))
                 (_generate-specializer-def130226_
                  (lambda (_id132986_
                           _specializer-id132987_
                           _specializer-impl132988_)
                    (let ((__tmp134354
                           (let ((__tmp134355
                                  (let ((__tmp134356
                                         (let ((__tmp134369
                                                (let ((__tmp134370
                                                       (let ((__tmp134371
                                                              (let ((__tmp134373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id132987_ '())))
                            (__tmp134372
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl132988_ '()))))
                        (declare (not safe))
                        (cons __tmp134373 __tmp134372))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134370
                                                   _stx130221_)))
                                               (__tmp134357
                                                (let ((__tmp134358
                                                       (let ((__tmp134359
                                                              (let ((__tmp134360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134367
                                    (let ((__tmp134368
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp134368)))
                                   (__tmp134361
                                    (let ((__tmp134365
                                           (let ((__tmp134366
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id132986_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134366)))
                                          (__tmp134362
                                           (let ((__tmp134363
                                                  (let ((__tmp134364
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id132987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp134364))))
                                             (declare (not safe))
                                             (cons __tmp134363 '()))))
                                      (declare (not safe))
                                      (cons __tmp134365 __tmp134362))))
                               (declare (not safe))
                               (cons __tmp134367 __tmp134361))))
                        (declare (not safe))
                        (cons '%#call __tmp134360))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134359 _stx130221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134358 '()))))
                                           (declare (not safe))
                                           (cons __tmp134369 __tmp134357))))
                                    (declare (not safe))
                                    (cons _stx130221_ __tmp134356))))
                             (declare (not safe))
                             (cons '%#begin __tmp134355))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134354 _stx130221_)))))
          (let* ((___stx133199133200_ _stx130221_)
                 (_g130229130249_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133199133200_)))))
            (let ((___kont133201133202_
                   (lambda (_L130293_ _L130294_)
                     (let ((_method-calls130313_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130314_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130315_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130317_
                                 (lambda ()
                                   (if (let ((__tmp134374
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130313_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134374))
                                       (let ((__tmp134375
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs130314_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134375))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130293_))
                             (let* ((___stx133113133114_ _L130293_)
                                    (_g130704130722_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133113133114_)))))
                               (let ((___kont133115133116_
                                      (lambda (_L130758_ _L130759_ _L130760_)
                                        (for-each
                                         (lambda (_g130775130777_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130775130777_
                                              'receiver:
                                              _L130760_
                                              'methods:
                                              _method-calls130313_
                                              'slots:
                                              _slot-refs130314_)))
                                         _L130758_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130317_))
                                            _stx130221_
                                            (let* ((_specializer-id130786_
                                                    (let* ((_id130780_
                                                            (let ((__tmp134376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130294_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp134376 '"::specialize")))
                   (_specializer-id130783_
                    (let ((__tmp134377
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130221_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130780_ __tmp134377))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130783_))
              _specializer-id130783_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass130788_
                                                    (let ((__tmp134378
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134378)))
                                                   (_$method-table130790_
                                                    (let ((__tmp134379
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134379)))
                                                   (_methods130792_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130313_)))
                                                   (_$methods130796_
                                                    (map (lambda (_id130794_)
                                                           (let ((__tmp134380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130794_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134380)))
                 _methods130792_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134381_
                                                    (for-each
                                                     (lambda (_g130797130800_
                                                              _g130798130802_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130313_
                                                          _g130797130800_
                                                          _g130798130802_)))
                                                     _methods130792_
                                                     _$methods130796_))
                                                   (_methods-bind130813_
                                                    (map (lambda (_g130805130808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130806130810_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130223_
                      _$klass130788_
                      _$method-table130790_
                      _g130805130808_
                      _g130806130810_)))
                 _methods130792_
                 _$methods130796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130815_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130314_)))
                                                   (_$slots130819_
                                                    (map (lambda (_id130817_)
                                                           (let ((__tmp134382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130817_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134382)))
                 _slots130815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134383_
                                                    (for-each
                                                     (lambda (_g130820130823_
                                                              _g130821130825_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130314_
                                                          _g130820130823_
                                                          _g130821130825_)))
                                                     _slots130815_
                                                     _$slots130819_))
                                                   (_slots-bind130836_
                                                    (map (lambda (_g130828130831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130829130833_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130224_
                      _$klass130788_
                      _g130828130831_
                      _g130829130833_)))
                 _slots130815_
                 _$slots130819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body130842_
                                                    (map (lambda (_g130837130839_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g130837130839_
                                                              'receiver:
                                                              _L130760_
                                                              'klass:
                                                              _$klass130788_
                                                              'methods:
                                                              _method-calls130313_
                                                              'slots:
                                                              _slot-refs130314_)))
                                                         _L130758_))
                                                   (_specializer-impl130844_
                                                    (let ((__tmp134384
                                                           (let ((__tmp134385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134386
                                 (let ()
                                   (declare (not safe))
                                   (cons _L130760_ _L130759_))))
                            (declare (not safe))
                            (cons __tmp134386 _specializer-body130842_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134385))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp134384 _stx130221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl130846_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130225_
                                                       _$klass130788_
                                                       _$method-table130790_
                                                       _methods-bind130813_
                                                       _slots-bind130836_
                                                       _specializer-impl130844_))))
                                              (let ((__tmp134388
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130294_)))
                                                    (__tmp134387
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130786_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp134388
                                                 '" => "
                                                 __tmp134387))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130226_
                                                 _L130294_
                                                 _specializer-id130786_
                                                 _specializer-impl130846_))))))
                                     (___kont133117133118_
                                      (lambda () _stx130221_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133113133114_))
                                     (let ((_e130709130734_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133113133114_))))
                                       (let ((_tl130711130739_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130709130734_)))
                                             (_hd130710130737_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130709130734_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130711130739_))
                                             (let ((_e130712130742_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130711130739_))))
                                               (let ((_tl130714130747_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130712130742_)))
                                                     (_hd130713130745_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130712130742_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130713130745_))
                                                     (let ((_e130715130750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130713130745_))))
                                                       (let ((_tl130717130755_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130715130750_)))
                     (_hd130716130753_
                      (let () (declare (not safe)) (##car _e130715130750_))))
                 (___kont133115133116_
                  _tl130714130747_
                  _tl130717130755_
                  _hd130716130753_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133117133118_))))
                                             (___kont133117133118_))))
                                     (___kont133117133118_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130293_))
                                 (let* ((_g130852130871_
                                         (lambda (_g130853130868_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130853130868_))))
                                        (_g130851131154_
                                         (lambda (_g130853130874_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g130853130874_))
                                               (let ((_e130855130876_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g130853130874_))))
                                                 (let ((_hd130856130879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e130855130876_)))
                                                       (_tl130857130881_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e130855130876_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl130857130881_))
                                                       (let ((_g134389_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl130857130881_ '0))))
                 (begin
                   (let ((_g134390_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g134389_)
                                (##vector-length _g134389_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g134390_ 2)))
                         (error "Context expects 2 values" _g134390_)))
                   (let ((_target130858130884_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134389_ 0)))
                         (_tl130860130886_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134389_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl130860130886_))
                         (letrec ((_loop130861130889_
                                   (lambda (_hd130859130892_
                                            _clause130865130894_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd130859130892_))
                                         (let ((_e130862130897_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd130859130892_))))
                                           (let ((_lp-hd130863130900_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130862130897_)))
                                                 (_lp-tl130864130902_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130862130897_))))
                                             (let ((__tmp134391
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd130863130900_
                                                            _clause130865130894_))))
                                               (declare (not safe))
                                               (_loop130861130889_
                                                _lp-tl130864130902_
                                                __tmp134391))))
                                         (let ((_clause130866130905_
                                                (reverse _clause130865130894_)))
                                           ((lambda (_L130908_)
                                              (for-each
                                               (lambda (_clause130921_)
                                                 (let* ((___stx133139133140_
                                                         _clause130921_)
                                                        (_g130924130939_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133139133140_)))))
                                                   (let ((___kont133141133142_
                                                          (lambda (_L130967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130968_
                           _L130969_)
                    (for-each
                     (lambda (_g130984130986_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g130984130986_
                          'receiver:
                          _L130969_
                          'methods:
                          _method-calls130313_
                          'slots:
                          _slot-refs130314_)))
                     _L130967_)))
                 (___kont133143133144_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133139133140_))
                                                         (let ((_e130929130951_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133139133140_))))
                   (let ((_tl130931130956_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130929130951_)))
                         (_hd130930130954_
                          (let ()
                            (declare (not safe))
                            (##car _e130929130951_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd130930130954_))
                         (let ((_e130932130959_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd130930130954_))))
                           (let ((_tl130934130964_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e130932130959_)))
                                 (_hd130933130962_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e130932130959_))))
                             (___kont133141133142_
                              _tl130931130956_
                              _tl130934130964_
                              _hd130933130962_)))
                         (___kont133143133144_))))
                 (___kont133143133144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp134392
                                                      (lambda (_g130991130994_
                                                               _g130992130996_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g130991130994_
                                                                _g130992130996_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134392
                                                         '()
                                                         _L130908_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130317_))
                                                  _stx130221_
                                                  (let* ((_specializer-id131005_
                                                          (let* ((_id130999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134393
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130294_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134393 '"::specialize")))
                         (_specializer-id131002_
                          (let ((__tmp134394
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130221_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id130999_ __tmp134394))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131002_))
                    _specializer-id131002_))
                 (_$klass131007_
                  (let ((__tmp134395 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134395)))
                 (_$method-table131009_
                  (let ((__tmp134396 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134396)))
                 (_methods131011_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130313_)))
                 (_$methods131015_
                  (map (lambda (_id131013_)
                         (let ((__tmp134397 (gensym _id131013_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134397)))
                       _methods131011_))
                 (_g134398_
                  (for-each
                   (lambda (_g131016131019_ _g131017131021_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130313_
                        _g131016131019_
                        _g131017131021_)))
                   _methods131011_
                   _$methods131015_))
                 (_methods-bind131032_
                  (map (lambda (_g131024131027_ _g131025131029_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130223_
                            _$klass131007_
                            _$method-table131009_
                            _g131024131027_
                            _g131025131029_)))
                       _methods131011_
                       _$methods131015_))
                 (_slots131034_
                  (let () (declare (not safe)) (hash-keys _slot-refs130314_)))
                 (_$slots131038_
                  (map (lambda (_id131036_)
                         (let ((__tmp134399 (gensym _id131036_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134399)))
                       _slots131034_))
                 (_g134400_
                  (for-each
                   (lambda (_g131039131042_ _g131040131044_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130314_
                        _g131039131042_
                        _g131040131044_)))
                   _slots131034_
                   _$slots131038_))
                 (_slots-bind131055_
                  (map (lambda (_g131047131050_ _g131048131052_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130224_
                            _$klass131007_
                            _g131047131050_
                            _g131048131052_)))
                       _slots131034_
                       _$slots131038_))
                 (_specializer-clauses131147_
                  (map (lambda (_clause131057_)
                         (let* ((___stx133159133160_ _clause131057_)
                                (_g131060131075_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133159133160_)))))
                           (let ((___kont133161133162_
                                  (lambda (_L131103_ _L131104_ _L131105_)
                                    (let* ((_body131135_
                                            (map (lambda (_g131130131132_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g131130131132_
                                                      'receiver:
                                                      _L131105_
                                                      'klass:
                                                      _$klass131007_
                                                      'methods:
                                                      _method-calls130313_
                                                      'slots:
                                                      _slot-refs130314_)))
                                                 _L131103_))
                                           (__tmp134401
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131105_ _L131104_))))
                                      (declare (not safe))
                                      (cons __tmp134401 _body131135_))))
                                 (___kont133163133164_
                                  (lambda () _clause131057_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133159133160_))
                                 (let ((_e131065131087_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133159133160_))))
                                   (let ((_tl131067131092_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131065131087_)))
                                         (_hd131066131090_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131065131087_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131066131090_))
                                         (let ((_e131068131095_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131066131090_))))
                                           (let ((_tl131070131100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131068131095_)))
                                                 (_hd131069131098_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131068131095_))))
                                             (___kont133161133162_
                                              _tl131067131092_
                                              _tl131070131100_
                                              _hd131069131098_)))
                                         (___kont133163133164_))))
                                 (___kont133163133164_)))))
                       (let ((__tmp134402
                              (lambda (_g131139131142_ _g131140131144_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g131139131142_ _g131140131144_)))))
                         (declare (not safe))
                         (foldr1 __tmp134402 '() _L130908_))))
                 (_specializer-impl131149_
                  (let ((__tmp134403
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses131147_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134403 _stx130221_)))
                 (_specializer-impl131151_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130225_
                     _$klass131007_
                     _$method-table131009_
                     _methods-bind131032_
                     _slots-bind131055_
                     _specializer-impl131149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134405
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130294_)))
                                                          (__tmp134404
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131005_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134405
                                                       '" => "
                                                       __tmp134404))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130226_
                                                       _L130294_
                                                       _specializer-id131005_
                                                       _specializer-impl131151_)))))
                                            _clause130866130905_))))))
                           (let ()
                             (declare (not safe))
                             (_loop130861130889_ _target130858130884_ '())))
                         (let ()
                           (declare (not safe))
                           (_g130852130871_ _g130853130874_))))))
               (let ()
                 (declare (not safe))
                 (_g130852130871_ _g130853130874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g130852130871_
                                                  _g130853130874_))))))
                                   (declare (not safe))
                                   (_g130851131154_ _L130293_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130293_))
                                     (let* ((_g131157131187_
                                             (lambda (_g131158131184_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131158131184_))))
                                            (_g131156131792_
                                             (lambda (_g131158131190_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131158131190_))
                                                   (let ((_e131162131192_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131158131190_))))
                                                     (let ((_hd131163131195_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131162131192_)))
                                                           (_tl131164131197_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131162131192_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131164131197_))
                                                           (let ((_e131165131200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131164131197_))))
                     (let ((_hd131166131203_
                            (let ()
                              (declare (not safe))
                              (##car _e131165131200_)))
                           (_tl131167131205_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131165131200_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131166131203_))
                           (let ((_e131168131208_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131166131203_))))
                             (let ((_hd131169131211_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131168131208_)))
                                   (_tl131170131213_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131168131208_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131169131211_))
                                   (let ((_e131171131216_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131169131211_))))
                                     (let ((_hd131172131219_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131171131216_)))
                                           (_tl131173131221_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131171131216_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131172131219_))
                                           (let ((_e131174131224_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131172131219_))))
                                             (let ((_hd131175131227_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131174131224_)))
                                                   (_tl131176131229_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131174131224_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131176131229_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131173131221_))
                                                       (let ((_e131177131232_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131173131221_))))
                 (let ((_hd131178131235_
                        (let () (declare (not safe)) (##car _e131177131232_)))
                       (_tl131179131237_
                        (let () (declare (not safe)) (##cdr _e131177131232_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131179131237_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131170131213_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131167131205_))
                               (let ((_e131180131240_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131167131205_))))
                                 (let ((_hd131181131243_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131180131240_)))
                                       (_tl131182131245_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131180131240_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131182131245_))
                                       ((lambda (_L131248_ _L131249_ _L131250_)
                                          (let* ((_g131273131291_
                                                  (lambda (_g131274131288_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131274131288_))))
                                                 (_g131272131342_
                                                  (lambda (_g131274131294_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131274131294_))
                                                        (let ((_e131278131296_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131274131294_))))
                  (let ((_hd131279131299_
                         (let () (declare (not safe)) (##car _e131278131296_)))
                        (_tl131280131301_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131278131296_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131280131301_))
                        (let ((_e131281131304_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131280131301_))))
                          (let ((_hd131282131307_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131281131304_)))
                                (_tl131283131309_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131281131304_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131282131307_))
                                (let ((_e131284131312_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131282131307_))))
                                  (let ((_hd131285131315_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131284131312_)))
                                        (_tl131286131317_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131284131312_))))
                                    ((lambda (_L131320_ _L131321_ _L131322_)
                                       (for-each
                                        (lambda (_g131337131339_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131337131339_
                                             'receiver:
                                             _L131322_
                                             'methods:
                                             _method-calls130313_
                                             'slots:
                                             _slot-refs130314_)))
                                        _L131320_))
                                     _tl131283131309_
                                     _tl131286131317_
                                     _hd131285131315_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131273131291_ _g131274131294_)))))
                        (let ()
                          (declare (not safe))
                          (_g131273131291_ _g131274131294_)))))
                (let ()
                  (declare (not safe))
                  (_g131273131291_ _g131274131294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131272131342_ _L131249_))
                                          (let* ((_g131345131364_
                                                  (lambda (_g131346131361_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131346131361_))))
                                                 (_g131344131483_
                                                  (lambda (_g131346131367_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131346131367_))
                                                        (let ((_e131348131369_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131346131367_))))
                  (let ((_hd131349131372_
                         (let () (declare (not safe)) (##car _e131348131369_)))
                        (_tl131350131374_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131348131369_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131350131374_))
                        (let ((_g134406_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131350131374_
                                  '0))))
                          (begin
                            (let ((_g134407_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134406_)
                                         (##vector-length _g134406_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134407_ 2)))
                                  (error "Context expects 2 values"
                                         _g134407_)))
                            (let ((_target131351131377_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134406_ 0)))
                                  (_tl131353131379_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134406_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131353131379_))
                                  (letrec ((_loop131354131382_
                                            (lambda (_hd131352131385_
                                                     _clause131358131387_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131352131385_))
                                                  (let ((_e131355131390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131352131385_))))
                                                    (let ((_lp-hd131356131393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131355131390_)))
                                                          (_lp-tl131357131395_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131355131390_))))
                                                      (let ((__tmp134408
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131356131393_ _clause131358131387_))))
                (declare (not safe))
                (_loop131354131382_ _lp-tl131357131395_ __tmp134408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131359131398_
                                                         (reverse _clause131358131387_)))
                                                    ((lambda (_L131401_)
                                                       (for-each
                                                        (lambda (_clause131414_)
                                                          (let* ((_g131416131431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131417131428_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131417131428_))))
                         (_g131415131473_
                          (lambda (_g131417131434_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131417131434_))
                                (let ((_e131421131436_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131417131434_))))
                                  (let ((_hd131422131439_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131421131436_)))
                                        (_tl131423131441_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131421131436_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131422131439_))
                                        (let ((_e131424131444_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131422131439_))))
                                          (let ((_hd131425131447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131424131444_)))
                                                (_tl131426131449_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131424131444_))))
                                            ((lambda (_L131452_
                                                      _L131453_
                                                      _L131454_)
                                               (for-each
                                                (lambda (_g131468131470_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131468131470_
                                                     'receiver:
                                                     _L131454_
                                                     'methods:
                                                     _method-calls130313_
                                                     'slots:
                                                     _slot-refs130314_)))
                                                _L131452_))
                                             _tl131423131441_
                                             _tl131426131449_
                                             _hd131425131447_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131416131431_ _g131417131434_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131416131431_ _g131417131434_))))))
                    (declare (not safe))
                    (_g131415131473_ _clause131414_)))
                (let ((__tmp134409
                       (lambda (_g131475131478_ _g131476131480_)
                         (let ()
                           (declare (not safe))
                           (cons _g131475131478_ _g131476131480_)))))
                  (declare (not safe))
                  (foldr1 __tmp134409 '() _L131401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131359131398_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131354131382_
                                       _target131351131377_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131345131364_ _g131346131367_))))))
                        (let ()
                          (declare (not safe))
                          (_g131345131364_ _g131346131367_)))))
                (let ()
                  (declare (not safe))
                  (_g131345131364_ _g131346131367_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131344131483_ _L131248_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130317_))
                                              _stx130221_
                                              (let* ((_specializer-id131492_
                                                      (let* ((_id131486_
                                                              (let ((__tmp134410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130294_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp134410 '"::specialize")))
                     (_specializer-id131489_
                      (let ((__tmp134411
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130221_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131486_ __tmp134411))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131489_))
                _specializer-id131489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass131494_
                                                      (let ((__tmp134412
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134412)))
                                                     (_$method-table131496_
                                                      (let ((__tmp134413
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134413)))
                                                     (_methods131498_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130313_)))
                                                     (_$methods131502_
                                                      (map (lambda (_id131500_)
                                                             (let ((__tmp134414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131500_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134414)))
                   _methods131498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134415_
                                                      (for-each
                                                       (lambda (_g131503131506_
                                                                _g131504131508_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130313_
                                                            _g131503131506_
                                                            _g131504131508_)))
                                                       _methods131498_
                                                       _$methods131502_))
                                                     (_methods-bind131519_
                                                      (map (lambda (_g131511131514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131512131516_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130223_
                        _$klass131494_
                        _$method-table131496_
                        _g131511131514_
                        _g131512131516_)))
                   _methods131498_
                   _$methods131502_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131521_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130314_)))
                                                     (_$slots131525_
                                                      (map (lambda (_id131523_)
                                                             (let ((__tmp134416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131523_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134416)))
                   _slots131521_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134417_
                                                      (for-each
                                                       (lambda (_g131526131529_
                                                                _g131527131531_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130314_
                                                            _g131526131529_
                                                            _g131527131531_)))
                                                       _slots131521_
                                                       _$slots131525_))
                                                     (_slots-bind131542_
                                                      (map (lambda (_g131534131537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131535131539_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130224_
                        _$klass131494_
                        _g131534131537_
                        _g131535131539_)))
                   _slots131521_
                   _$slots131525_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr131628_
                                                      (let* ((_g131544131562_
                                                              (lambda (_g131545131559_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131545131559_))))
                     (_g131543131625_
                      (lambda (_g131545131565_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131545131565_))
                            (let ((_e131549131567_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131545131565_))))
                              (let ((_hd131550131570_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131549131567_)))
                                    (_tl131551131572_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131549131567_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl131551131572_))
                                    (let ((_e131552131575_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl131551131572_))))
                                      (let ((_hd131553131578_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131552131575_)))
                                            (_tl131554131580_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131552131575_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd131553131578_))
                                            (let ((_e131555131583_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd131553131578_))))
                                              (let ((_hd131556131586_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131555131583_)))
                                                    (_tl131557131588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131555131583_))))
                                                ((lambda (_L131591_
                                                          _L131592_
                                                          _L131593_)
                                                   (let* ((_body131623_
                                                           (map (lambda (_g131618131620_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g131618131620_
                             'receiver:
                             _L131593_
                             'klass:
                             _$klass131494_
                             'methods:
                             _method-calls130313_
                             'slots:
                             _slot-refs130314_)))
                        _L131591_))
                  (__tmp134418
                   (let ((__tmp134419
                          (let ((__tmp134420
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131593_ _L131592_))))
                            (declare (not safe))
                            (cons __tmp134420 _body131623_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134418
                                                      _L131249_)))
                                                 _tl131554131580_
                                                 _tl131557131588_
                                                 _hd131556131586_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g131544131562_
                                               _g131545131565_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131544131562_ _g131545131565_)))))
                            (let ()
                              (declare (not safe))
                              (_g131544131562_ _g131545131565_))))))
                (declare (not safe))
                (_g131543131625_ _L131249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr131785_
                                                      (let* ((_g131630131649_
                                                              (lambda (_g131631131646_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131631131646_))))
                     (_g131629131782_
                      (lambda (_g131631131652_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131631131652_))
                            (let ((_e131633131654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131631131652_))))
                              (let ((_hd131634131657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131633131654_)))
                                    (_tl131635131659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131633131654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl131635131659_))
                                    (let ((_g134421_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl131635131659_
                                              '0))))
                                      (begin
                                        (let ((_g134422_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134421_)
                                                     (##vector-length
                                                      _g134421_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134422_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134422_)))
                                        (let ((_target131636131662_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134421_ 0)))
                                              (_tl131638131664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134421_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131638131664_))
                                              (letrec ((_loop131639131667_
                                                        (lambda (_hd131637131670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause131643131672_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd131637131670_))
                      (let ((_e131640131675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd131637131670_))))
                        (let ((_lp-hd131641131678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131640131675_)))
                              (_lp-tl131642131680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131640131675_))))
                          (let ((__tmp134423
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd131641131678_
                                         _clause131643131672_))))
                            (declare (not safe))
                            (_loop131639131667_
                             _lp-tl131642131680_
                             __tmp134423))))
                      (let ((_clause131644131683_
                             (reverse _clause131643131672_)))
                        ((lambda (_L131686_)
                           (let* ((_clauses131780_
                                   (map (lambda (_clause131700_)
                                          (let* ((___stx133179133180_
                                                  _clause131700_)
                                                 (_g131703131718_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133179133180_)))))
                                            (let ((___kont133181133182_
                                                   (lambda (_L131746_
                                                            _L131747_
                                                            _L131748_)
                                                     (let* ((_body131768_
                                                             (map (lambda (_g131763131765_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g131763131765_
                               'receiver:
                               _L131748_
                               'klass:
                               _$klass131494_
                               'methods:
                               _method-calls130313_
                               'slots:
                               _slot-refs130314_)))
                          _L131746_))
                    (__tmp134424
                     (let () (declare (not safe)) (cons _L131748_ _L131747_))))
               (declare (not safe))
               (cons __tmp134424 _body131768_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133183133184_
                                                   (lambda () _clause131700_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133179133180_))
                                                  (let ((_e131708131730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133179133180_))))
                                                    (let ((_tl131710131735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131708131730_)))
                                                          (_hd131709131733_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131708131730_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd131709131733_))
                                                          (let ((_e131711131738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd131709131733_))))
                    (let ((_tl131713131743_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131711131738_)))
                          (_hd131712131741_
                           (let ()
                             (declare (not safe))
                             (##car _e131711131738_))))
                      (___kont133181133182_
                       _tl131710131735_
                       _tl131713131743_
                       _hd131712131741_)))
                  (___kont133183133184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133183133184_)))))
                                        (let ((__tmp134425
                                               (lambda (_g131772131775_
                                                        _g131773131777_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g131772131775_
                                                         _g131773131777_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp134425 '() _L131686_))))
                                  (__tmp134426
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses131780_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134426 _L131248_)))
                         _clause131644131683_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop131639131667_
                                                   _target131636131662_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g131630131649_
                                                 _g131631131652_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131630131649_ _g131631131652_)))))
                            (let ()
                              (declare (not safe))
                              (_g131630131649_ _g131631131652_))))))
                (declare (not safe))
                (_g131629131782_ _L131248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131787_
                                                      (let ((__tmp134427
                                                             (let ((__tmp134428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp134430
                                   (let ((__tmp134431
                                          (let ((__tmp134433
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L131250_ '())))
                                                (__tmp134432
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr131628_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp134433 __tmp134432))))
                                     (declare (not safe))
                                     (cons __tmp134431 '())))
                                  (__tmp134429
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr131785_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp134430 __tmp134429))))
                       (declare (not safe))
                       (cons '%#let-values __tmp134428))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp134427 _stx130221_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131789_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130225_
                                                         _$klass131494_
                                                         _$method-table131496_
                                                         _methods-bind131519_
                                                         _slots-bind131542_
                                                         _specializer-impl131787_))))
                                                (let ((__tmp134435
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130294_)))
                                                      (__tmp134434
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131492_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp134435
                                                   '" => "
                                                   __tmp134434))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130226_
                                                   _L130294_
                                                   _specializer-id131492_
                                                   _specializer-impl131789_)))))
                                        _hd131181131243_
                                        _hd131178131235_
                                        _hd131175131227_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131157131187_ _g131158131190_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131157131187_ _g131158131190_)))
                           (let ()
                             (declare (not safe))
                             (_g131157131187_ _g131158131190_)))
                       (let ()
                         (declare (not safe))
                         (_g131157131187_ _g131158131190_)))))
               (let () (declare (not safe)) (_g131157131187_ _g131158131190_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131157131187_
                                                      _g131158131190_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131157131187_
                                              _g131158131190_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131157131187_ _g131158131190_)))))
                           (let ()
                             (declare (not safe))
                             (_g131157131187_ _g131158131190_)))))
                   (let ()
                     (declare (not safe))
                     (_g131157131187_ _g131158131190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131157131187_
                                                      _g131158131190_))))))
                                       (declare (not safe))
                                       (_g131156131792_ _L130293_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130293_))
                                         (let* ((_g131795131848_
                                                 (lambda (_g131796131845_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g131796131845_))))
                                                (_g131794132979_
                                                 (lambda (_g131796131851_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g131796131851_))
                                                       (let ((_e131802131853_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g131796131851_))))
                 (let ((_hd131803131856_
                        (let () (declare (not safe)) (##car _e131802131853_)))
                       (_tl131804131858_
                        (let () (declare (not safe)) (##cdr _e131802131853_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd131803131856_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd131803131856_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131804131858_))
                               (let ((_e131805131861_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131804131858_))))
                                 (let ((_hd131806131864_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131805131861_)))
                                       (_tl131807131866_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131805131861_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd131806131864_))
                                       (let ((_e131808131869_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd131806131864_))))
                                         (let ((_hd131809131872_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e131808131869_)))
                                               (_tl131810131874_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e131808131869_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd131809131872_))
                                               (let ((_e131811131877_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd131809131872_))))
                                                 (let ((_hd131812131880_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131811131877_)))
                                                       (_tl131813131882_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131811131877_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd131812131880_))
                                                       (let ((_e131814131885_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd131812131880_))))
                 (let ((_hd131815131888_
                        (let () (declare (not safe)) (##car _e131814131885_)))
                       (_tl131816131890_
                        (let () (declare (not safe)) (##cdr _e131814131885_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131816131890_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl131813131882_))
                           (let ((_e131817131893_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl131813131882_))))
                             (let ((_hd131818131896_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131817131893_)))
                                   (_tl131819131898_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131817131893_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131818131896_))
                                   (let ((_e131820131901_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131818131896_))))
                                     (let ((_hd131821131904_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131820131901_)))
                                           (_tl131822131906_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131820131901_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd131821131904_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd131821131904_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl131822131906_))
                                                   (let ((_e131823131909_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl131822131906_))))
                                                     (let ((_hd131824131912_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131823131909_)))
                                                           (_tl131825131914_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131823131909_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd131824131912_))
                                                           (let ((_e131826131917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd131824131912_))))
                     (let ((_hd131827131920_
                            (let ()
                              (declare (not safe))
                              (##car _e131826131917_)))
                           (_tl131828131922_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131826131917_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131827131920_))
                           (let ((_e131829131925_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131827131920_))))
                             (let ((_hd131830131928_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131829131925_)))
                                   (_tl131831131930_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131829131925_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131830131928_))
                                   (let ((_e131832131933_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131830131928_))))
                                     (let ((_hd131833131936_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131832131933_)))
                                           (_tl131834131938_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131832131933_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl131834131938_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl131831131930_))
                                               (let ((_e131835131941_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl131831131930_))))
                                                 (let ((_hd131836131944_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131835131941_)))
                                                       (_tl131837131946_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131835131941_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl131837131946_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl131828131922_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl131825131914_))
                       (let ((_e131838131949_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl131825131914_))))
                         (let ((_hd131839131952_
                                (let ()
                                  (declare (not safe))
                                  (##car _e131838131949_)))
                               (_tl131840131954_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e131838131949_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl131840131954_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl131819131898_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131810131874_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl131807131866_))
                                           (let ((_e131841131957_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl131807131866_))))
                                             (let ((_hd131842131960_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131841131957_)))
                                                   (_tl131843131962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131841131957_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131843131962_))
                                                   ((lambda (_L131965_
                                                             _L131966_
                                                             _L131967_
                                                             _L131968_
                                                             _L131969_)
                                                      (let* ((_g132008132070_
                                                              (lambda (_g132009132067_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132009132067_))))
                     (_g132007132976_
                      (lambda (_g132009132073_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132009132073_))
                            (let ((_e132015132075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132009132073_))))
                              (let ((_hd132016132078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132015132075_)))
                                    (_tl132017132080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132015132075_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132016132078_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132016132078_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132017132080_))
                                            (let ((_e132018132083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132017132080_))))
                                              (let ((_hd132019132086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132018132083_)))
                                                    (_tl132020132088_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132018132083_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132020132088_))
                                                    (let ((_e132021132091_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132020132088_))))
                                                      (let ((_hd132022132094_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132021132091_)))
                    (_tl132023132096_
                     (let () (declare (not safe)) (##cdr _e132021132091_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132022132094_))
                    (let ((_e132024132099_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132022132094_))))
                      (let ((_hd132025132102_
                             (let ()
                               (declare (not safe))
                               (##car _e132024132099_)))
                            (_tl132026132104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132024132099_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132025132102_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132025132102_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132026132104_))
                                    (let ((_e132027132107_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132026132104_))))
                                      (let ((_hd132028132110_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132027132107_)))
                                            (_tl132029132112_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132027132107_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132028132110_))
                                            (let ((_e132030132115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132028132110_))))
                                              (let ((_hd132031132118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132030132115_)))
                                                    (_tl132032132120_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132030132115_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132031132118_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132031132118_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132032132120_))
                                                            (let ((_e132033132123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132032132120_))))
                      (let ((_hd132034132126_
                             (let ()
                               (declare (not safe))
                               (##car _e132033132123_)))
                            (_tl132035132128_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132033132123_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132035132128_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132029132112_))
                                (let ((_e132036132131_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132029132112_))))
                                  (let ((_hd132037132134_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132036132131_)))
                                        (_tl132038132136_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132036132131_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132037132134_))
                                        (let ((_e132039132139_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132037132134_))))
                                          (let ((_hd132040132142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132039132139_)))
                                                (_tl132041132144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132039132139_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132040132142_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132040132142_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132041132144_))
                                                        (let ((_e132042132147_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132041132144_))))
                  (let ((_hd132043132150_
                         (let () (declare (not safe)) (##car _e132042132147_)))
                        (_tl132044132152_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132042132147_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132044132152_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132038132136_))
                            (let ((_e132045132155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132038132136_))))
                              (let ((_hd132046132158_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132045132155_)))
                                    (_tl132047132160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132045132155_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132046132158_))
                                    (let ((_e132048132163_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132046132158_))))
                                      (let ((_hd132049132166_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132048132163_)))
                                            (_tl132050132168_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132048132163_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132049132166_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132049132166_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132050132168_))
                                                    (let ((_e132051132171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132050132168_))))
                                                      (let ((_hd132052132174_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132051132171_)))
                    (_tl132053132176_
                     (let () (declare (not safe)) (##cdr _e132051132171_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132053132176_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132047132160_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132047132160_))
                                  '1)
                            (let ((_g134436_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132047132160_
                                      '1))))
                              (begin
                                (let ((_g134437_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134436_)
                                             (##vector-length _g134436_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134437_ 2)))
                                      (error "Context expects 2 values"
                                             _g134437_)))
                                (let ((_target132054132179_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134436_ 0)))
                                      (_tl132056132181_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134436_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132056132181_))
                                      (let ((_e132063132184_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132056132181_))))
                                        (let ((_hd132064132187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132063132184_)))
                                              (_tl132065132189_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132063132184_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132065132189_))
                                              (letrec ((_loop132057132192_
                                                        (lambda (_hd132055132195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132061132197_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132055132195_))
                      (let ((_e132058132200_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132055132195_))))
                        (let ((_lp-hd132059132203_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132058132200_)))
                              (_lp-tl132060132205_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132058132200_))))
                          (let ((__tmp134438
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132059132203_
                                         _kw-ref132061132197_))))
                            (declare (not safe))
                            (_loop132057132192_
                             _lp-tl132060132205_
                             __tmp134438))))
                      (let ((_kw-ref132062132208_
                             (reverse _kw-ref132061132197_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132023132096_))
                            ((lambda (_L132211_
                                      _L132212_
                                      _L132213_
                                      _L132214_
                                      _L132215_)
                               (let* ((_kw-count132266_
                                       (length (let ((__tmp134439
                                                      (lambda (_g132258132261_
                                                               _g132259132263_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132258132261_
                                                                _g132259132263_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134439
                                                         '()
                                                         _L132212_))))
                                      (_self-index132268_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132266_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L131967_))
                                     (let* ((_g132271132285_
                                             (lambda (_g132272132282_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132272132282_))))
                                            (_g132270132398_
                                             (lambda (_g132272132288_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132272132288_))
                                                   (let ((_e132275132290_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132272132288_))))
                                                     (let ((_hd132276132293_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132275132290_)))
                                                           (_tl132277132295_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132275132290_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132277132295_))
                                                           (let ((_e132278132298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132277132295_))))
                     (let ((_hd132279132301_
                            (let ()
                              (declare (not safe))
                              (##car _e132278132298_)))
                           (_tl132280132303_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132278132298_))))
                       ((lambda (_L132306_ _L132307_)
                          (let ((_self132323_
                                 (list-ref _L132307_ _self-index132268_)))
                            (for-each
                             (lambda (_g132324132326_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132324132326_
                                  'receiver:
                                  _self132323_
                                  'methods:
                                  _method-calls130313_
                                  'slots:
                                  _slot-refs130314_)))
                             _L132306_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130317_))
                                _stx130221_
                                (let* ((_specializer-id132335_
                                        (let* ((_id132329_
                                                (let ((__tmp134440
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130294_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134440
                                                   '"::specialize")))
                                               (_specializer-id132332_
                                                (let ((__tmp134441
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130221_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132329_
                                                   __tmp134441))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132332_))
                                          _specializer-id132332_))
                                       (_$klass132337_
                                        (let ((__tmp134442 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134442)))
                                       (_$method-table132339_
                                        (let ((__tmp134443
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134443)))
                                       (_methods132341_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130313_)))
                                       (_$methods132345_
                                        (map (lambda (_id132343_)
                                               (let ((__tmp134444
                                                      (gensym _id132343_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134444)))
                                             _methods132341_))
                                       (_g134445_
                                        (for-each
                                         (lambda (_g132346132349_
                                                  _g132347132351_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130313_
                                              _g132346132349_
                                              _g132347132351_)))
                                         _methods132341_
                                         _$methods132345_))
                                       (_methods-bind132362_
                                        (map (lambda (_g132354132357_
                                                      _g132355132359_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130223_
                                                  _$klass132337_
                                                  _$method-table132339_
                                                  _g132354132357_
                                                  _g132355132359_)))
                                             _methods132341_
                                             _$methods132345_))
                                       (_slots132364_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130314_)))
                                       (_$slots132368_
                                        (map (lambda (_id132366_)
                                               (let ((__tmp134446
                                                      (gensym _id132366_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134446)))
                                             _slots132364_))
                                       (_g134447_
                                        (for-each
                                         (lambda (_g132369132372_
                                                  _g132370132374_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130314_
                                              _g132369132372_
                                              _g132370132374_)))
                                         _slots132364_
                                         _$slots132368_))
                                       (_slots-bind132385_
                                        (map (lambda (_g132377132380_
                                                      _g132378132382_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130224_
                                                  _$klass132337_
                                                  _g132377132380_
                                                  _g132378132382_)))
                                             _slots132364_
                                             _$slots132368_))
                                       (_specializer-impl132393_
                                        (let* ((_specializer-body132391_
                                                (map (lambda (_g132386132388_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g132386132388_
                                                          'receiver:
                                                          _self132323_
                                                          'klass:
                                                          _$klass132337_
                                                          'methods:
                                                          _method-calls130313_
                                                          'slots:
                                                          _slot-refs130314_)))
                                                     _L132306_))
                                               (__tmp134448
                                                (let ((__tmp134449
                                                       (let ((__tmp134451
                                                              (let ((__tmp134452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134464
                                    (let ()
                                      (declare (not safe))
                                      (cons _L131969_ '())))
                                   (__tmp134453
                                    (let ((__tmp134454
                                           (let ((__tmp134455
                                                  (let ((__tmp134457
                                                         (let ((__tmp134458
                                                                (let ((__tmp134463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L131968_ '())))
                              (__tmp134459
                               (let ((__tmp134460
                                      (let ((__tmp134461
                                             (let ((__tmp134462
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132307_
                                                            _specializer-body132391_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp134462))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134461
                                         _L131967_))))
                                 (declare (not safe))
                                 (cons __tmp134460 '()))))
                          (declare (not safe))
                          (cons __tmp134463 __tmp134459))))
                   (declare (not safe))
                   (cons __tmp134458 '())))
                (__tmp134456
                 (let () (declare (not safe)) (cons _L131966_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134457
                                                          __tmp134456))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp134455))))
                                      (declare (not safe))
                                      (cons __tmp134454 '()))))
                               (declare (not safe))
                               (cons __tmp134464 __tmp134453))))
                        (declare (not safe))
                        (cons __tmp134452 '())))
                     (__tmp134450
                      (let () (declare (not safe)) (cons _L131965_ '()))))
                 (declare (not safe))
                 (cons __tmp134451 __tmp134450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134449))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp134448
                                           _stx130221_)))
                                       (_specializer-impl132395_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130225_
                                           _$klass132337_
                                           _$method-table132339_
                                           _methods-bind132362_
                                           _slots-bind132385_
                                           _specializer-impl132393_))))
                                  (let ((__tmp134466
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130294_)))
                                        (__tmp134465
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132335_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp134466
                                     '" => "
                                     __tmp134465))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130226_
                                     _L130294_
                                     _specializer-id132335_
                                     _specializer-impl132395_))))))
                        _tl132280132303_
                        _hd132279132301_)))
                   (let ()
                     (declare (not safe))
                     (_g132271132285_ _g132272132288_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132271132285_
                                                      _g132272132288_))))))
                                       (declare (not safe))
                                       (_g132270132398_ _L131967_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L131967_))
                                         (let* ((_g132401132431_
                                                 (lambda (_g132402132428_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132402132428_))))
                                                (_g132400132973_
                                                 (lambda (_g132402132434_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132402132434_))
                                                       (let ((_e132406132436_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132402132434_))))
                 (let ((_hd132407132439_
                        (let () (declare (not safe)) (##car _e132406132436_)))
                       (_tl132408132441_
                        (let () (declare (not safe)) (##cdr _e132406132436_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132408132441_))
                       (let ((_e132409132444_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132408132441_))))
                         (let ((_hd132410132447_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132409132444_)))
                               (_tl132411132449_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132409132444_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132410132447_))
                               (let ((_e132412132452_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132410132447_))))
                                 (let ((_hd132413132455_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132412132452_)))
                                       (_tl132414132457_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132412132452_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132413132455_))
                                       (let ((_e132415132460_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132413132455_))))
                                         (let ((_hd132416132463_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132415132460_)))
                                               (_tl132417132465_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132415132460_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132416132463_))
                                               (let ((_e132418132468_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132416132463_))))
                                                 (let ((_hd132419132471_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132418132468_)))
                                                       (_tl132420132473_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132418132468_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132420132473_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132417132465_))
                                                           (let ((_e132421132476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132417132465_))))
                     (let ((_hd132422132479_
                            (let ()
                              (declare (not safe))
                              (##car _e132421132476_)))
                           (_tl132423132481_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132421132476_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132423132481_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132414132457_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132411132449_))
                                   (let ((_e132424132484_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132411132449_))))
                                     (let ((_hd132425132487_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132424132484_)))
                                           (_tl132426132489_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132424132484_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132426132489_))
                                           ((lambda (_L132492_
                                                     _L132493_
                                                     _L132494_)
                                              (let* ((_g132517132531_
                                                      (lambda (_g132518132528_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132518132528_))))
                                                     (_g132516132572_
                                                      (lambda (_g132518132534_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132518132534_))
                                                            (let ((_e132521132536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132518132534_))))
                      (let ((_hd132522132539_
                             (let ()
                               (declare (not safe))
                               (##car _e132521132536_)))
                            (_tl132523132541_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132521132536_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132523132541_))
                            (let ((_e132524132544_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132523132541_))))
                              (let ((_hd132525132547_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132524132544_)))
                                    (_tl132526132549_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132524132544_))))
                                ((lambda (_L132552_ _L132553_)
                                   (let ((_self132566_
                                          (list-ref
                                           _L132553_
                                           _self-index132268_)))
                                     (for-each
                                      (lambda (_g132567132569_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132567132569_
                                           'receiver:
                                           _self132566_
                                           'methods:
                                           _method-calls130313_
                                           'slots:
                                           _slot-refs130314_)))
                                      _L132552_)))
                                 _tl132526132549_
                                 _hd132525132547_)))
                            (let ()
                              (declare (not safe))
                              (_g132517132531_ _g132518132534_)))))
                    (let ()
                      (declare (not safe))
                      (_g132517132531_ _g132518132534_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132516132572_ _L132493_))
                                              (let* ((_g132575132594_
                                                      (lambda (_g132576132591_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132576132591_))))
                                                     (_g132574132699_
                                                      (lambda (_g132576132597_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132576132597_))
                                                            (let ((_e132578132599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132576132597_))))
                      (let ((_hd132579132602_
                             (let ()
                               (declare (not safe))
                               (##car _e132578132599_)))
                            (_tl132580132604_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132578132599_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132580132604_))
                            (let ((_g134467_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132580132604_
                                      '0))))
                              (begin
                                (let ((_g134468_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134467_)
                                             (##vector-length _g134467_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134468_ 2)))
                                      (error "Context expects 2 values"
                                             _g134468_)))
                                (let ((_target132581132607_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134467_ 0)))
                                      (_tl132583132609_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134467_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132583132609_))
                                      (letrec ((_loop132584132612_
                                                (lambda (_hd132582132615_
                                                         _clause132588132617_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd132582132615_))
                                                      (let ((_e132585132620_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd132582132615_))))
                (let ((_lp-hd132586132623_
                       (let () (declare (not safe)) (##car _e132585132620_)))
                      (_lp-tl132587132625_
                       (let () (declare (not safe)) (##cdr _e132585132620_))))
                  (let ((__tmp134469
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd132586132623_ _clause132588132617_))))
                    (declare (not safe))
                    (_loop132584132612_ _lp-tl132587132625_ __tmp134469))))
              (let ((_clause132589132628_ (reverse _clause132588132617_)))
                ((lambda (_L132631_)
                   (for-each
                    (lambda (_clause132644_)
                      (let* ((_g132646132657_
                              (lambda (_g132647132654_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g132647132654_))))
                             (_g132645132689_
                              (lambda (_g132647132660_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g132647132660_))
                                    (let ((_e132650132662_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g132647132660_))))
                                      (let ((_hd132651132665_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132650132662_)))
                                            (_tl132652132667_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132650132662_))))
                                        ((lambda (_L132670_ _L132671_)
                                           (let ((_self132683_
                                                  (list-ref
                                                   _L132671_
                                                   _self-index132268_)))
                                             (for-each
                                              (lambda (_g132684132686_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g132684132686_
                                                   'receiver:
                                                   _self132683_
                                                   'methods:
                                                   _method-calls130313_
                                                   'slots:
                                                   _slot-refs130314_)))
                                              _L132670_)))
                                         _tl132652132667_
                                         _hd132651132665_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132646132657_ _g132647132660_))))))
                        (declare (not safe))
                        (_g132645132689_ _clause132644_)))
                    (let ((__tmp134470
                           (lambda (_g132691132694_ _g132692132696_)
                             (let ()
                               (declare (not safe))
                               (cons _g132691132694_ _g132692132696_)))))
                      (declare (not safe))
                      (foldr1 __tmp134470 '() _L132631_))))
                 _clause132589132628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop132584132612_
                                           _target132581132607_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132575132594_ _g132576132597_))))))
                            (let ()
                              (declare (not safe))
                              (_g132575132594_ _g132576132597_)))))
                    (let ()
                      (declare (not safe))
                      (_g132575132594_ _g132576132597_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132574132699_ _L132492_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130317_))
                                                  _stx130221_
                                                  (let* ((_specializer-id132708_
                                                          (let* ((_id132702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134471
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130294_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134471 '"::specialize")))
                         (_specializer-id132705_
                          (let ((__tmp134472
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130221_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132702_ __tmp134472))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132705_))
                    _specializer-id132705_))
                 (_$klass132710_
                  (let ((__tmp134473 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134473)))
                 (_$method-table132712_
                  (let ((__tmp134474 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134474)))
                 (_methods132714_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130313_)))
                 (_$methods132718_
                  (map (lambda (_id132716_)
                         (let ((__tmp134475 (gensym _id132716_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134475)))
                       _methods132714_))
                 (_g134476_
                  (for-each
                   (lambda (_g132719132722_ _g132720132724_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130313_
                        _g132719132722_
                        _g132720132724_)))
                   _methods132714_
                   _$methods132718_))
                 (_methods-bind132735_
                  (map (lambda (_g132727132730_ _g132728132732_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130223_
                            _$klass132710_
                            _$method-table132712_
                            _g132727132730_
                            _g132728132732_)))
                       _methods132714_
                       _$methods132718_))
                 (_slots132737_
                  (let () (declare (not safe)) (hash-keys _slot-refs130314_)))
                 (_$slots132741_
                  (map (lambda (_id132739_)
                         (let ((__tmp134477 (gensym _id132739_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134477)))
                       _slots132737_))
                 (_g134478_
                  (for-each
                   (lambda (_g132742132745_ _g132743132747_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130314_
                        _g132742132745_
                        _g132743132747_)))
                   _slots132737_
                   _$slots132741_))
                 (_slots-bind132758_
                  (map (lambda (_g132750132753_ _g132751132755_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130224_
                            _$klass132710_
                            _g132750132753_
                            _g132751132755_)))
                       _slots132737_
                       _$slots132741_))
                 (_specializer-lambda-expr132831_
                  (let* ((_g132760132774_
                          (lambda (_g132761132771_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132761132771_))))
                         (_g132759132828_
                          (lambda (_g132761132777_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132761132777_))
                                (let ((_e132764132779_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132761132777_))))
                                  (let ((_hd132765132782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132764132779_)))
                                        (_tl132766132784_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132764132779_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl132766132784_))
                                        (let ((_e132767132787_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl132766132784_))))
                                          (let ((_hd132768132790_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132767132787_)))
                                                (_tl132769132792_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132767132787_))))
                                            ((lambda (_L132795_ _L132796_)
                                               (let* ((_self132819_
                                                       (list-ref
                                                        _L132796_
                                                        _self-index132268_))
                                                      (_body132825_
                                                       (map (lambda (_g132820132822_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g132820132822_
                         'receiver:
                         _self132819_
                         'klass:
                         _$klass132710_
                         'methods:
                         _method-calls130313_
                         'slots:
                         _slot-refs130314_)))
                    _L132795_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp134479
                                                        (let ((__tmp134480
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L132796_ _body132825_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp134480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134479
                                                    _L132493_))))
                                             _tl132769132792_
                                             _hd132768132790_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132760132774_ _g132761132777_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132760132774_ _g132761132777_))))))
                    (declare (not safe))
                    (_g132759132828_ _L132493_)))
                 (_specializer-case-lambda-expr132966_
                  (let* ((_g132833132852_
                          (lambda (_g132834132849_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132834132849_))))
                         (_g132832132963_
                          (lambda (_g132834132855_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132834132855_))
                                (let ((_e132836132857_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132834132855_))))
                                  (let ((_hd132837132860_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132836132857_)))
                                        (_tl132838132862_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132836132857_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl132838132862_))
                                        (let ((_g134481_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl132838132862_
                                                  '0))))
                                          (begin
                                            (let ((_g134482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g134481_)
                                                         (##vector-length
                                                          _g134481_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g134482_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g134482_)))
                                            (let ((_target132839132865_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134481_
                                                      0)))
                                                  (_tl132841132867_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134481_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl132841132867_))
                                                  (letrec ((_loop132842132870_
                                                            (lambda (_hd132840132873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause132846132875_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd132840132873_))
                          (let ((_e132843132878_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd132840132873_))))
                            (let ((_lp-hd132844132881_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132843132878_)))
                                  (_lp-tl132845132883_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132843132878_))))
                              (let ((__tmp134483
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd132844132881_
                                             _clause132846132875_))))
                                (declare (not safe))
                                (_loop132842132870_
                                 _lp-tl132845132883_
                                 __tmp134483))))
                          (let ((_clause132847132886_
                                 (reverse _clause132846132875_)))
                            ((lambda (_L132889_)
                               (let* ((_clauses132961_
                                       (map (lambda (_clause132903_)
                                              (let* ((_g132905132916_
                                                      (lambda (_g132906132913_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132906132913_))))
                                                     (_g132904132951_
                                                      (lambda (_g132906132919_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132906132919_))
                                                            (let ((_e132909132921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132906132919_))))
                      (let ((_hd132910132924_
                             (let ()
                               (declare (not safe))
                               (##car _e132909132921_)))
                            (_tl132911132926_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132909132921_))))
                        ((lambda (_L132929_ _L132930_)
                           (let* ((_self132942_
                                   (list-ref _L132930_ _self-index132268_))
                                  (_body132948_
                                   (map (lambda (_g132943132945_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g132943132945_
                                             'receiver:
                                             _self132942_
                                             'klass:
                                             _$klass132710_
                                             'methods:
                                             _method-calls130313_
                                             'slots:
                                             _slot-refs130314_)))
                                        _L132929_)))
                             (let ()
                               (declare (not safe))
                               (cons _L132930_ _body132948_))))
                         _tl132911132926_
                         _hd132910132924_)))
                    (let ()
                      (declare (not safe))
                      (_g132905132916_ _g132906132919_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132904132951_
                                                 _clause132903_)))
                                            (let ((__tmp134484
                                                   (lambda (_g132953132956_
                                                            _g132954132958_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g132953132956_
                                                             _g132954132958_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp134484
                                                      '()
                                                      _L132889_))))
                                      (__tmp134485
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses132961_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134485
                                  _L132492_)))
                             _clause132847132886_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop132842132870_
                                                       _target132839132865_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g132833132852_
                                                     _g132834132855_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132833132852_ _g132834132855_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132833132852_ _g132834132855_))))))
                    (declare (not safe))
                    (_g132832132963_ _L132492_)))
                 (_specializer-impl132968_
                  (let ((__tmp134486
                         (let ((__tmp134487
                                (let ((__tmp134489
                                       (let ((__tmp134490
                                              (let ((__tmp134507
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L131969_ '())))
                                                    (__tmp134491
                                                     (let ((__tmp134492
                                                            (let ((__tmp134493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134495
                                  (let ((__tmp134496
                                         (let ((__tmp134506
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131968_ '())))
                                               (__tmp134497
                                                (let ((__tmp134498
                                                       (let ((__tmp134499
                                                              (let ((__tmp134500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134502
                                    (let ((__tmp134503
                                           (let ((__tmp134505
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132494_ '())))
                                                 (__tmp134504
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr132831_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp134505 __tmp134504))))
                                      (declare (not safe))
                                      (cons __tmp134503 '())))
                                   (__tmp134501
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr132966_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp134502 __tmp134501))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134500))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134499 _stx130221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134498 '()))))
                                           (declare (not safe))
                                           (cons __tmp134506 __tmp134497))))
                                    (declare (not safe))
                                    (cons __tmp134496 '())))
                                 (__tmp134494
                                  (let ()
                                    (declare (not safe))
                                    (cons _L131966_ '()))))
                             (declare (not safe))
                             (cons __tmp134495 __tmp134494))))
                      (declare (not safe))
                      (cons '%#let-values __tmp134493))))
               (declare (not safe))
               (cons __tmp134492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134507
                                                      __tmp134491))))
                                         (declare (not safe))
                                         (cons __tmp134490 '())))
                                      (__tmp134488
                                       (let ()
                                         (declare (not safe))
                                         (cons _L131965_ '()))))
                                  (declare (not safe))
                                  (cons __tmp134489 __tmp134488))))
                           (declare (not safe))
                           (cons '%#let-values __tmp134487))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134486 _stx130221_)))
                 (_specializer-impl132970_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130225_
                     _$klass132710_
                     _$method-table132712_
                     _methods-bind132735_
                     _slots-bind132758_
                     _specializer-impl132968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134509
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130294_)))
                                                          (__tmp134508
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132708_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134509
                                                       '" => "
                                                       __tmp134508))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130226_
                                                       _L130294_
                                                       _specializer-id132708_
                                                       _specializer-impl132970_)))))
                                            _hd132425132487_
                                            _hd132422132479_
                                            _hd132419132471_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132401132431_
                                              _g132402132434_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132401132431_ _g132402132434_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132401132431_ _g132402132434_)))
                           (let ()
                             (declare (not safe))
                             (_g132401132431_ _g132402132434_)))))
                   (let ()
                     (declare (not safe))
                     (_g132401132431_ _g132402132434_)))
               (let ()
                 (declare (not safe))
                 (_g132401132431_ _g132402132434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132401132431_
                                                  _g132402132434_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132401132431_ _g132402132434_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132401132431_ _g132402132434_)))))
                       (let ()
                         (declare (not safe))
                         (_g132401132431_ _g132402132434_)))))
               (let ()
                 (declare (not safe))
                 (_g132401132431_ _g132402132434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132400132973_ _L131967_))
                                         _stx130221_))))
                             _hd132064132187_
                             _kw-ref132062132208_
                             _hd132052132174_
                             _hd132043132150_
                             _hd132034132126_)
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132057132192_
                                                   _target132054132179_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132008132070_
                                                 _g132009132073_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132008132070_ _g132009132073_))))))
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_)))
                        (let ()
                          (declare (not safe))
                          (_g132008132070_ _g132009132073_)))
                    (let ()
                      (declare (not safe))
                      (_g132008132070_ _g132009132073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132008132070_
                                                       _g132009132073_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132008132070_
                                                   _g132009132073_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132008132070_
                                               _g132009132073_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132008132070_ _g132009132073_)))))
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_)))
                        (let ()
                          (declare (not safe))
                          (_g132008132070_ _g132009132073_)))))
                (let ()
                  (declare (not safe))
                  (_g132008132070_ _g132009132073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132008132070_
                                                       _g132009132073_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132008132070_
                                                   _g132009132073_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132008132070_ _g132009132073_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132008132070_ _g132009132073_)))
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_)))))
                    (let ()
                      (declare (not safe))
                      (_g132008132070_ _g132009132073_)))
                (let ()
                  (declare (not safe))
                  (_g132008132070_ _g132009132073_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132008132070_
                                                       _g132009132073_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132008132070_
                                               _g132009132073_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132008132070_ _g132009132073_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132008132070_ _g132009132073_)))
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_)))))
                    (let ()
                      (declare (not safe))
                      (_g132008132070_ _g132009132073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132008132070_
                                                       _g132009132073_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132008132070_
                                               _g132009132073_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132008132070_ _g132009132073_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132008132070_ _g132009132073_)))))
                            (let ()
                              (declare (not safe))
                              (_g132008132070_ _g132009132073_))))))
                (declare (not safe))
                (_g132007132976_ _L131966_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd131842131960_
                                                    _hd131839131952_
                                                    _hd131836131944_
                                                    _hd131833131936_
                                                    _hd131815131888_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131795131848_
                                                      _g131796131851_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131795131848_
                                              _g131796131851_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g131795131848_ _g131796131851_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g131795131848_ _g131796131851_)))
                               (let ()
                                 (declare (not safe))
                                 (_g131795131848_ _g131796131851_)))))
                       (let ()
                         (declare (not safe))
                         (_g131795131848_ _g131796131851_)))
                   (let ()
                     (declare (not safe))
                     (_g131795131848_ _g131796131851_)))
               (let ()
                 (declare (not safe))
                 (_g131795131848_ _g131796131851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131795131848_
                                                  _g131796131851_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131795131848_
                                              _g131796131851_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131795131848_ _g131796131851_)))))
                           (let ()
                             (declare (not safe))
                             (_g131795131848_ _g131796131851_)))))
                   (let ()
                     (declare (not safe))
                     (_g131795131848_ _g131796131851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131795131848_
                                                      _g131796131851_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131795131848_
                                                  _g131796131851_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131795131848_
                                              _g131796131851_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131795131848_ _g131796131851_)))))
                           (let ()
                             (declare (not safe))
                             (_g131795131848_ _g131796131851_)))
                       (let ()
                         (declare (not safe))
                         (_g131795131848_ _g131796131851_)))))
               (let ()
                 (declare (not safe))
                 (_g131795131848_ _g131796131851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131795131848_
                                                  _g131796131851_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g131795131848_ _g131796131851_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131795131848_ _g131796131851_)))
                           (let ()
                             (declare (not safe))
                             (_g131795131848_ _g131796131851_)))
                       (let ()
                         (declare (not safe))
                         (_g131795131848_ _g131796131851_)))))
               (let ()
                 (declare (not safe))
                 (_g131795131848_ _g131796131851_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g131794132979_ _L130293_))
                                         _stx130221_))))))))
                  (___kont133203133204_ (lambda () _stx130221_)))
              (let ((___match133232133233_
                     (lambda (_e130233130261_
                              _hd130234130264_
                              _tl130235130266_
                              _e130236130269_
                              _hd130237130272_
                              _tl130238130274_
                              _e130239130277_
                              _hd130240130280_
                              _tl130241130282_
                              _e130242130285_
                              _hd130243130288_
                              _tl130244130290_)
                       (let ((_L130293_ _hd130243130288_)
                             (_L130294_ _hd130240130280_))
                         (if (let ((__tmp134510
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130294_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp134510))
                             (___kont133201133202_ _L130293_ _L130294_)
                             (___kont133203133204_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133199133200_))
                    (let ((_e130233130261_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133199133200_))))
                      (let ((_tl130235130266_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130233130261_)))
                            (_hd130234130264_
                             (let ()
                               (declare (not safe))
                               (##car _e130233130261_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130235130266_))
                            (let ((_e130236130269_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130235130266_))))
                              (let ((_tl130238130274_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130236130269_)))
                                    (_hd130237130272_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130236130269_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130237130272_))
                                    (let ((_e130239130277_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130237130272_))))
                                      (let ((_tl130241130282_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130239130277_)))
                                            (_hd130240130280_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130239130277_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130241130282_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130238130274_))
                                                (let ((_e130242130285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130238130274_))))
                                                  (let ((_tl130244130290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130242130285_)))
                                                        (_hd130243130288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130242130285_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130244130290_))
                                                        (___match133232133233_
                                                         _e130233130261_
                                                         _hd130234130264_
                                                         _tl130235130266_
                                                         _e130236130269_
                                                         _hd130237130272_
                                                         _tl130238130274_
                                                         _e130239130277_
                                                         _hd130240130280_
                                                         _tl130241130282_
                                                         _e130242130285_
                                                         _hd130243130288_
                                                         _tl130244130290_)
                                                        (___kont133203133204_))))
                                                (___kont133203133204_))
                                            (___kont133203133204_))))
                                    (___kont133203133204_))))
                            (___kont133203133204_))))
                    (___kont133203133204_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self129181_ _stx129182_)
        (let* ((___stx133235133236_ _stx129182_)
               (_g129190129412_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133235133236_)))))
          (let ((___kont133237133238_
                 (lambda (_L130169_ _L130170_ _L130171_ _L130172_)
                   (let ((__tmp134512
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129181_ 'methods)))
                         (__tmp134511
                          (let () (declare (not safe)) (gx#stx-e _L130170_))))
                     (declare (not safe))
                     (hash-put! __tmp134512 __tmp134511 '#t))
                   (for-each
                    (lambda (_g130205130207_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129181_ _g130205130207_)))
                    (let ((__tmp134513
                           (lambda (_g130209130212_ _g130210130214_)
                             (let ()
                               (declare (not safe))
                               (cons _g130209130212_ _g130210130214_)))))
                      (declare (not safe))
                      (foldr1 __tmp134513 '() _L130169_)))))
                (___kont133241133242_
                 (lambda (_L130004_ _L130005_ _L130006_ _L130007_ _L130008_)
                   (let ((__tmp134515
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129181_ 'methods)))
                         (__tmp134514
                          (let () (declare (not safe)) (gx#stx-e _L130005_))))
                     (declare (not safe))
                     (hash-put! __tmp134515 __tmp134514 '#t))
                   (for-each
                    (lambda (_g130048130050_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129181_ _g130048130050_)))
                    (let ((__tmp134516
                           (lambda (_g130052130055_ _g130053130057_)
                             (let ()
                               (declare (not safe))
                               (cons _g130052130055_ _g130053130057_)))))
                      (declare (not safe))
                      (foldr1 __tmp134516 '() _L130004_)))))
                (___kont133245133246_
                 (lambda (_L129837_ _L129838_ _L129839_)
                   (let ((__tmp134518
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129181_ 'slots)))
                         (__tmp134517
                          (let () (declare (not safe)) (gx#stx-e _L129837_))))
                     (declare (not safe))
                     (hash-put! __tmp134518 __tmp134517 '#t))))
                (___kont133247133248_
                 (lambda (_L129714_ _L129715_ _L129716_ _L129717_)
                   (let ((__tmp134520
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129181_ 'slots)))
                         (__tmp134519
                          (let () (declare (not safe)) (gx#stx-e _L129715_))))
                     (declare (not safe))
                     (hash-put! __tmp134520 __tmp134519 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self129181_ _L129714_))))
                (___kont133249133250_
                 (lambda (_L129588_ _L129589_)
                   (let* ((_accessor129611_
                           (let ((__tmp134521
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129589_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134521)))
                          (_klass129613_
                           (let ((__tmp134522
                                  (##structure-ref
                                   _accessor129611_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129182_
                              __tmp134522)))
                          (_slot129615_
                           (##structure-ref
                            _accessor129611_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp134523
                                     (##structure-ref
                                      _accessor129611_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134523))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129613_
                                     _slot129615_))
                                  (##structure-ref
                                   _klass129613_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134525
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129181_ 'slots)))
                               (__tmp134524
                                (##structure-ref
                                 _accessor129611_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp134525 __tmp134524 '#t))))))
                (___kont133251133252_
                 (lambda (_L129488_ _L129489_ _L129490_)
                   (let* ((_mutator129517_
                           (let ((__tmp134526
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129490_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134526)))
                          (_klass129519_
                           (let ((__tmp134527
                                  (##structure-ref
                                   _mutator129517_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129182_
                              __tmp134527)))
                          (_slot129521_
                           (##structure-ref
                            _mutator129517_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp134528
                                     (##structure-ref
                                      _mutator129517_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134528))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129519_
                                     _slot129521_))
                                  (##structure-ref
                                   _klass129519_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134529
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129181_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp134529 _slot129521_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self129181_ _L129488_)))))
                (___kont133253133254_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self129181_ _stx129182_)))))
            (let* ((___match133734133735_
                    (lambda (_e129384129424_
                             _hd129385129427_
                             _tl129386129429_
                             _e129387129432_
                             _hd129388129435_
                             _tl129389129437_
                             _e129390129440_
                             _hd129391129443_
                             _tl129392129445_
                             _e129393129448_
                             _hd129394129451_
                             _tl129395129453_
                             _e129396129456_
                             _hd129397129459_
                             _tl129398129461_
                             _e129399129464_
                             _hd129400129467_
                             _tl129401129469_
                             _e129402129472_
                             _hd129403129475_
                             _tl129404129477_
                             _e129405129480_
                             _hd129406129483_
                             _tl129407129485_)
                      (let ((_L129488_ _hd129406129483_)
                            (_L129489_ _hd129403129475_)
                            (_L129490_ _hd129394129451_))
                        (if (and (let ((__tmp134530
                                        (let ((__tmp134531
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129490_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134531))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134530
                                    'gxc#!mutator::t))
                                 (let ((__tmp134532
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129181_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129489_
                                    __tmp134532)))
                            (___kont133251133252_
                             _L129488_
                             _L129489_
                             _L129490_)
                            (___kont133253133254_)))))
                   (___match133732133733_
                    (lambda (_e129384129424_
                             _hd129385129427_
                             _tl129386129429_
                             _e129387129432_
                             _hd129388129435_
                             _tl129389129437_
                             _e129390129440_
                             _hd129391129443_
                             _tl129392129445_
                             _e129393129448_
                             _hd129394129451_
                             _tl129395129453_
                             _e129396129456_
                             _hd129397129459_
                             _tl129398129461_
                             _e129399129464_
                             _hd129400129467_
                             _tl129401129469_
                             _e129402129472_
                             _hd129403129475_
                             _tl129404129477_
                             _e129405129480_
                             _hd129406129483_
                             _tl129407129485_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129407129485_))
                          (___match133734133735_
                           _e129384129424_
                           _hd129385129427_
                           _tl129386129429_
                           _e129387129432_
                           _hd129388129435_
                           _tl129389129437_
                           _e129390129440_
                           _hd129391129443_
                           _tl129392129445_
                           _e129393129448_
                           _hd129394129451_
                           _tl129395129453_
                           _e129396129456_
                           _hd129397129459_
                           _tl129398129461_
                           _e129399129464_
                           _hd129400129467_
                           _tl129401129469_
                           _e129402129472_
                           _hd129403129475_
                           _tl129404129477_
                           _e129405129480_
                           _hd129406129483_
                           _tl129407129485_)
                          (___kont133253133254_))))
                   (___match133726133727_
                    (lambda (_e129384129424_
                             _hd129385129427_
                             _tl129386129429_
                             _e129387129432_
                             _hd129388129435_
                             _tl129389129437_
                             _e129390129440_
                             _hd129391129443_
                             _tl129392129445_
                             _e129393129448_
                             _hd129394129451_
                             _tl129395129453_
                             _e129396129456_
                             _hd129397129459_
                             _tl129398129461_
                             _e129399129464_
                             _hd129400129467_
                             _tl129401129469_
                             _e129402129472_
                             _hd129403129475_
                             _tl129404129477_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129398129461_))
                          (let ((_e129405129480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129398129461_))))
                            (let ((_tl129407129485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129405129480_)))
                                  (_hd129406129483_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129405129480_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129407129485_))
                                  (___match133734133735_
                                   _e129384129424_
                                   _hd129385129427_
                                   _tl129386129429_
                                   _e129387129432_
                                   _hd129388129435_
                                   _tl129389129437_
                                   _e129390129440_
                                   _hd129391129443_
                                   _tl129392129445_
                                   _e129393129448_
                                   _hd129394129451_
                                   _tl129395129453_
                                   _e129396129456_
                                   _hd129397129459_
                                   _tl129398129461_
                                   _e129399129464_
                                   _hd129400129467_
                                   _tl129401129469_
                                   _e129402129472_
                                   _hd129403129475_
                                   _tl129404129477_
                                   _e129405129480_
                                   _hd129406129483_
                                   _tl129407129485_)
                                  (___kont133253133254_))))
                          (___kont133253133254_))))
                   (___match133672133673_
                    (lambda (_e129360129532_
                             _hd129361129535_
                             _tl129362129537_
                             _e129363129540_
                             _hd129364129543_
                             _tl129365129545_
                             _e129366129548_
                             _hd129367129551_
                             _tl129368129553_
                             _e129369129556_
                             _hd129370129559_
                             _tl129371129561_
                             _e129372129564_
                             _hd129373129567_
                             _tl129374129569_
                             _e129375129572_
                             _hd129376129575_
                             _tl129377129577_
                             _e129378129580_
                             _hd129379129583_
                             _tl129380129585_)
                      (let ((_L129588_ _hd129379129583_)
                            (_L129589_ _hd129370129559_))
                        (if (and (let ((__tmp134533
                                        (let ((__tmp134534
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129589_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134534))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134533
                                    'gxc#!accessor::t))
                                 (let ((__tmp134535
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129181_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129588_
                                    __tmp134535)))
                            (___kont133249133250_ _L129588_ _L129589_)
                            (___kont133253133254_)))))
                   (___match133670133671_
                    (lambda (_e129360129532_
                             _hd129361129535_
                             _tl129362129537_
                             _e129363129540_
                             _hd129364129543_
                             _tl129365129545_
                             _e129366129548_
                             _hd129367129551_
                             _tl129368129553_
                             _e129369129556_
                             _hd129370129559_
                             _tl129371129561_
                             _e129372129564_
                             _hd129373129567_
                             _tl129374129569_
                             _e129375129572_
                             _hd129376129575_
                             _tl129377129577_
                             _e129378129580_
                             _hd129379129583_
                             _tl129380129585_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129374129569_))
                          (___match133672133673_
                           _e129360129532_
                           _hd129361129535_
                           _tl129362129537_
                           _e129363129540_
                           _hd129364129543_
                           _tl129365129545_
                           _e129366129548_
                           _hd129367129551_
                           _tl129368129553_
                           _e129369129556_
                           _hd129370129559_
                           _tl129371129561_
                           _e129372129564_
                           _hd129373129567_
                           _tl129374129569_
                           _e129375129572_
                           _hd129376129575_
                           _tl129377129577_
                           _e129378129580_
                           _hd129379129583_
                           _tl129380129585_)
                          (___match133726133727_
                           _e129360129532_
                           _hd129361129535_
                           _tl129362129537_
                           _e129363129540_
                           _hd129364129543_
                           _tl129365129545_
                           _e129366129548_
                           _hd129367129551_
                           _tl129368129553_
                           _e129369129556_
                           _hd129370129559_
                           _tl129371129561_
                           _e129372129564_
                           _hd129373129567_
                           _tl129374129569_
                           _e129375129572_
                           _hd129376129575_
                           _tl129377129577_
                           _e129378129580_
                           _hd129379129583_
                           _tl129380129585_))))
                   (___match133616133617_
                    (lambda (_e129325129626_
                             _hd129326129629_
                             _tl129327129631_
                             _e129328129634_
                             _hd129329129637_
                             _tl129330129639_
                             _e129331129642_
                             _hd129332129645_
                             _tl129333129647_
                             _e129334129650_
                             _hd129335129653_
                             _tl129336129655_
                             _e129337129658_
                             _hd129338129661_
                             _tl129339129663_
                             _e129340129666_
                             _hd129341129669_
                             _tl129342129671_
                             _e129343129674_
                             _hd129344129677_
                             _tl129345129679_
                             _e129346129682_
                             _hd129347129685_
                             _tl129348129687_
                             _e129349129690_
                             _hd129350129693_
                             _tl129351129695_
                             _e129352129698_
                             _hd129353129701_
                             _tl129354129703_
                             _e129355129706_
                             _hd129356129709_
                             _tl129357129711_)
                      (let ((_L129714_ _hd129356129709_)
                            (_L129715_ _hd129353129701_)
                            (_L129716_ _hd129344129677_)
                            (_L129717_ _hd129335129653_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129717_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129717_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp134536
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129181_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129716_
                                    __tmp134536)))
                            (___kont133247133248_
                             _L129714_
                             _L129715_
                             _L129716_
                             _L129717_)
                            (___kont133253133254_)))))
                   (___match133608133609_
                    (lambda (_e129325129626_
                             _hd129326129629_
                             _tl129327129631_
                             _e129328129634_
                             _hd129329129637_
                             _tl129330129639_
                             _e129331129642_
                             _hd129332129645_
                             _tl129333129647_
                             _e129334129650_
                             _hd129335129653_
                             _tl129336129655_
                             _e129337129658_
                             _hd129338129661_
                             _tl129339129663_
                             _e129340129666_
                             _hd129341129669_
                             _tl129342129671_
                             _e129343129674_
                             _hd129344129677_
                             _tl129345129679_
                             _e129346129682_
                             _hd129347129685_
                             _tl129348129687_
                             _e129349129690_
                             _hd129350129693_
                             _tl129351129695_
                             _e129352129698_
                             _hd129353129701_
                             _tl129354129703_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129348129687_))
                          (let ((_e129355129706_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129348129687_))))
                            (let ((_tl129357129711_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129355129706_)))
                                  (_hd129356129709_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129355129706_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129357129711_))
                                  (___match133616133617_
                                   _e129325129626_
                                   _hd129326129629_
                                   _tl129327129631_
                                   _e129328129634_
                                   _hd129329129637_
                                   _tl129330129639_
                                   _e129331129642_
                                   _hd129332129645_
                                   _tl129333129647_
                                   _e129334129650_
                                   _hd129335129653_
                                   _tl129336129655_
                                   _e129337129658_
                                   _hd129338129661_
                                   _tl129339129663_
                                   _e129340129666_
                                   _hd129341129669_
                                   _tl129342129671_
                                   _e129343129674_
                                   _hd129344129677_
                                   _tl129345129679_
                                   _e129346129682_
                                   _hd129347129685_
                                   _tl129348129687_
                                   _e129349129690_
                                   _hd129350129693_
                                   _tl129351129695_
                                   _e129352129698_
                                   _hd129353129701_
                                   _tl129354129703_
                                   _e129355129706_
                                   _hd129356129709_
                                   _tl129357129711_)
                                  (___kont133253133254_))))
                          (___match133732133733_
                           _e129325129626_
                           _hd129326129629_
                           _tl129327129631_
                           _e129328129634_
                           _hd129329129637_
                           _tl129330129639_
                           _e129331129642_
                           _hd129332129645_
                           _tl129333129647_
                           _e129334129650_
                           _hd129335129653_
                           _tl129336129655_
                           _e129337129658_
                           _hd129338129661_
                           _tl129339129663_
                           _e129340129666_
                           _hd129341129669_
                           _tl129342129671_
                           _e129343129674_
                           _hd129344129677_
                           _tl129345129679_
                           _e129346129682_
                           _hd129347129685_
                           _tl129348129687_))))
                   (___match133530133531_
                    (lambda (_e129291129757_
                             _hd129292129760_
                             _tl129293129762_
                             _e129294129765_
                             _hd129295129768_
                             _tl129296129770_
                             _e129297129773_
                             _hd129298129776_
                             _tl129299129778_
                             _e129300129781_
                             _hd129301129784_
                             _tl129302129786_
                             _e129303129789_
                             _hd129304129792_
                             _tl129305129794_
                             _e129306129797_
                             _hd129307129800_
                             _tl129308129802_
                             _e129309129805_
                             _hd129310129808_
                             _tl129311129810_
                             _e129312129813_
                             _hd129313129816_
                             _tl129314129818_
                             _e129315129821_
                             _hd129316129824_
                             _tl129317129826_
                             _e129318129829_
                             _hd129319129832_
                             _tl129320129834_)
                      (let ((_L129837_ _hd129319129832_)
                            (_L129838_ _hd129310129808_)
                            (_L129839_ _hd129301129784_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129839_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129839_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp134537
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129181_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129838_
                                    __tmp134537)))
                            (___kont133245133246_
                             _L129837_
                             _L129838_
                             _L129839_)
                            (___match133734133735_
                             _e129291129757_
                             _hd129292129760_
                             _tl129293129762_
                             _e129294129765_
                             _hd129295129768_
                             _tl129296129770_
                             _e129297129773_
                             _hd129298129776_
                             _tl129299129778_
                             _e129300129781_
                             _hd129301129784_
                             _tl129302129786_
                             _e129303129789_
                             _hd129304129792_
                             _tl129305129794_
                             _e129306129797_
                             _hd129307129800_
                             _tl129308129802_
                             _e129309129805_
                             _hd129310129808_
                             _tl129311129810_
                             _e129312129813_
                             _hd129313129816_
                             _tl129314129818_)))))
                   (___match133528133529_
                    (lambda (_e129291129757_
                             _hd129292129760_
                             _tl129293129762_
                             _e129294129765_
                             _hd129295129768_
                             _tl129296129770_
                             _e129297129773_
                             _hd129298129776_
                             _tl129299129778_
                             _e129300129781_
                             _hd129301129784_
                             _tl129302129786_
                             _e129303129789_
                             _hd129304129792_
                             _tl129305129794_
                             _e129306129797_
                             _hd129307129800_
                             _tl129308129802_
                             _e129309129805_
                             _hd129310129808_
                             _tl129311129810_
                             _e129312129813_
                             _hd129313129816_
                             _tl129314129818_
                             _e129315129821_
                             _hd129316129824_
                             _tl129317129826_
                             _e129318129829_
                             _hd129319129832_
                             _tl129320129834_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129314129818_))
                          (___match133530133531_
                           _e129291129757_
                           _hd129292129760_
                           _tl129293129762_
                           _e129294129765_
                           _hd129295129768_
                           _tl129296129770_
                           _e129297129773_
                           _hd129298129776_
                           _tl129299129778_
                           _e129300129781_
                           _hd129301129784_
                           _tl129302129786_
                           _e129303129789_
                           _hd129304129792_
                           _tl129305129794_
                           _e129306129797_
                           _hd129307129800_
                           _tl129308129802_
                           _e129309129805_
                           _hd129310129808_
                           _tl129311129810_
                           _e129312129813_
                           _hd129313129816_
                           _tl129314129818_
                           _e129315129821_
                           _hd129316129824_
                           _tl129317129826_
                           _e129318129829_
                           _hd129319129832_
                           _tl129320129834_)
                          (___match133608133609_
                           _e129291129757_
                           _hd129292129760_
                           _tl129293129762_
                           _e129294129765_
                           _hd129295129768_
                           _tl129296129770_
                           _e129297129773_
                           _hd129298129776_
                           _tl129299129778_
                           _e129300129781_
                           _hd129301129784_
                           _tl129302129786_
                           _e129303129789_
                           _hd129304129792_
                           _tl129305129794_
                           _e129306129797_
                           _hd129307129800_
                           _tl129308129802_
                           _e129309129805_
                           _hd129310129808_
                           _tl129311129810_
                           _e129312129813_
                           _hd129313129816_
                           _tl129314129818_
                           _e129315129821_
                           _hd129316129824_
                           _tl129317129826_
                           _e129318129829_
                           _hd129319129832_
                           _tl129320129834_))))
                   (___match133518133519_
                    (lambda (_e129291129757_
                             _hd129292129760_
                             _tl129293129762_
                             _e129294129765_
                             _hd129295129768_
                             _tl129296129770_
                             _e129297129773_
                             _hd129298129776_
                             _tl129299129778_
                             _e129300129781_
                             _hd129301129784_
                             _tl129302129786_
                             _e129303129789_
                             _hd129304129792_
                             _tl129305129794_
                             _e129306129797_
                             _hd129307129800_
                             _tl129308129802_
                             _e129309129805_
                             _hd129310129808_
                             _tl129311129810_
                             _e129312129813_
                             _hd129313129816_
                             _tl129314129818_
                             _e129315129821_
                             _hd129316129824_
                             _tl129317129826_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129316129824_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129317129826_))
                              (let ((_e129318129829_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129317129826_))))
                                (let ((_tl129320129834_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129318129829_)))
                                      (_hd129319129832_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129318129829_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129320129834_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129314129818_))
                                          (___match133530133531_
                                           _e129291129757_
                                           _hd129292129760_
                                           _tl129293129762_
                                           _e129294129765_
                                           _hd129295129768_
                                           _tl129296129770_
                                           _e129297129773_
                                           _hd129298129776_
                                           _tl129299129778_
                                           _e129300129781_
                                           _hd129301129784_
                                           _tl129302129786_
                                           _e129303129789_
                                           _hd129304129792_
                                           _tl129305129794_
                                           _e129306129797_
                                           _hd129307129800_
                                           _tl129308129802_
                                           _e129309129805_
                                           _hd129310129808_
                                           _tl129311129810_
                                           _e129312129813_
                                           _hd129313129816_
                                           _tl129314129818_
                                           _e129315129821_
                                           _hd129316129824_
                                           _tl129317129826_
                                           _e129318129829_
                                           _hd129319129832_
                                           _tl129320129834_)
                                          (___match133608133609_
                                           _e129291129757_
                                           _hd129292129760_
                                           _tl129293129762_
                                           _e129294129765_
                                           _hd129295129768_
                                           _tl129296129770_
                                           _e129297129773_
                                           _hd129298129776_
                                           _tl129299129778_
                                           _e129300129781_
                                           _hd129301129784_
                                           _tl129302129786_
                                           _e129303129789_
                                           _hd129304129792_
                                           _tl129305129794_
                                           _e129306129797_
                                           _hd129307129800_
                                           _tl129308129802_
                                           _e129309129805_
                                           _hd129310129808_
                                           _tl129311129810_
                                           _e129312129813_
                                           _hd129313129816_
                                           _tl129314129818_
                                           _e129315129821_
                                           _hd129316129824_
                                           _tl129317129826_
                                           _e129318129829_
                                           _hd129319129832_
                                           _tl129320129834_))
                                      (___match133732133733_
                                       _e129291129757_
                                       _hd129292129760_
                                       _tl129293129762_
                                       _e129294129765_
                                       _hd129295129768_
                                       _tl129296129770_
                                       _e129297129773_
                                       _hd129298129776_
                                       _tl129299129778_
                                       _e129300129781_
                                       _hd129301129784_
                                       _tl129302129786_
                                       _e129303129789_
                                       _hd129304129792_
                                       _tl129305129794_
                                       _e129306129797_
                                       _hd129307129800_
                                       _tl129308129802_
                                       _e129309129805_
                                       _hd129310129808_
                                       _tl129311129810_
                                       _e129312129813_
                                       _hd129313129816_
                                       _tl129314129818_))))
                              (___match133732133733_
                               _e129291129757_
                               _hd129292129760_
                               _tl129293129762_
                               _e129294129765_
                               _hd129295129768_
                               _tl129296129770_
                               _e129297129773_
                               _hd129298129776_
                               _tl129299129778_
                               _e129300129781_
                               _hd129301129784_
                               _tl129302129786_
                               _e129303129789_
                               _hd129304129792_
                               _tl129305129794_
                               _e129306129797_
                               _hd129307129800_
                               _tl129308129802_
                               _e129309129805_
                               _hd129310129808_
                               _tl129311129810_
                               _e129312129813_
                               _hd129313129816_
                               _tl129314129818_))
                          (___match133732133733_
                           _e129291129757_
                           _hd129292129760_
                           _tl129293129762_
                           _e129294129765_
                           _hd129295129768_
                           _tl129296129770_
                           _e129297129773_
                           _hd129298129776_
                           _tl129299129778_
                           _e129300129781_
                           _hd129301129784_
                           _tl129302129786_
                           _e129303129789_
                           _hd129304129792_
                           _tl129305129794_
                           _e129306129797_
                           _hd129307129800_
                           _tl129308129802_
                           _e129309129805_
                           _hd129310129808_
                           _tl129311129810_
                           _e129312129813_
                           _hd129313129816_
                           _tl129314129818_))))
                   (___match133450133451_
                    (lambda (_e129240129876_
                             _hd129241129879_
                             _tl129242129881_
                             _e129243129884_
                             _hd129244129887_
                             _tl129245129889_
                             _e129246129892_
                             _hd129247129895_
                             _tl129248129897_
                             _e129249129900_
                             _hd129250129903_
                             _tl129251129905_
                             _e129252129908_
                             _hd129253129911_
                             _tl129254129913_
                             _e129255129916_
                             _hd129256129919_
                             _tl129257129921_
                             _e129258129924_
                             _hd129259129927_
                             _tl129260129929_
                             _e129261129932_
                             _hd129262129935_
                             _tl129263129937_
                             _e129264129940_
                             _hd129265129943_
                             _tl129266129945_
                             _e129267129948_
                             _hd129268129951_
                             _tl129269129953_
                             _e129270129956_
                             _hd129271129959_
                             _tl129272129961_
                             _e129273129964_
                             _hd129274129967_
                             _tl129275129969_
                             _e129276129972_
                             _hd129277129975_
                             _tl129278129977_
                             ___splice133243133244_
                             _target129279129980_
                             _tl129281129982_)
                      (letrec ((_loop129282129985_
                                (lambda (_hd129280129988_ _args129286129990_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129280129988_))
                                      (let ((_e129283129993_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129280129988_))))
                                        (let ((_lp-tl129285129998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129283129993_)))
                                              (_lp-hd129284129996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129283129993_))))
                                          (let ((__tmp134538
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129284129996_
                                                         _args129286129990_))))
                                            (declare (not safe))
                                            (_loop129282129985_
                                             _lp-tl129285129998_
                                             __tmp134538))))
                                      (let ((_args129287130001_
                                             (reverse _args129286129990_)))
                                        (let ((_L130004_ _args129287130001_)
                                              (_L130005_ _hd129277129975_)
                                              (_L130006_ _hd129268129951_)
                                              (_L130007_ _hd129259129927_)
                                              (_L130008_ _hd129250129903_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130008_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130007_
                                                      'call-method))
                                                   (let ((__tmp134539
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129181_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130006_
                                                      __tmp134539)))
                                              (___kont133241133242_
                                               _L130004_
                                               _L130005_
                                               _L130006_
                                               _L130007_
                                               _L130008_)
                                              (___kont133253133254_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129282129985_ _target129279129980_ '())))))
                   (___match133408133409_
                    (lambda (_e129240129876_
                             _hd129241129879_
                             _tl129242129881_
                             _e129243129884_
                             _hd129244129887_
                             _tl129245129889_
                             _e129246129892_
                             _hd129247129895_
                             _tl129248129897_
                             _e129249129900_
                             _hd129250129903_
                             _tl129251129905_
                             _e129252129908_
                             _hd129253129911_
                             _tl129254129913_
                             _e129255129916_
                             _hd129256129919_
                             _tl129257129921_
                             _e129258129924_
                             _hd129259129927_
                             _tl129260129929_
                             _e129261129932_
                             _hd129262129935_
                             _tl129263129937_
                             _e129264129940_
                             _hd129265129943_
                             _tl129266129945_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129265129943_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129266129945_))
                              (let ((_e129267129948_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129266129945_))))
                                (let ((_tl129269129953_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129267129948_)))
                                      (_hd129268129951_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129267129948_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129269129953_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129263129937_))
                                          (let ((_e129270129956_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129263129937_))))
                                            (let ((_tl129272129961_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129270129956_)))
                                                  (_hd129271129959_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129270129956_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129271129959_))
                                                  (let ((_e129273129964_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129271129959_))))
                                                    (let ((_tl129275129969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129273129964_)))
                                                          (_hd129274129967_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129273129964_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129274129967_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129274129967_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129275129969_))
                          (let ((_e129276129972_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129275129969_))))
                            (let ((_tl129278129977_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129276129972_)))
                                  (_hd129277129975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129276129972_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129278129977_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129272129961_))
                                      (let ((___splice133243133244_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129272129961_
                                                '0))))
                                        (let ((_tl129281129982_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133243133244_
                                                  '1)))
                                              (_target129279129980_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133243133244_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129281129982_))
                                              (___match133450133451_
                                               _e129240129876_
                                               _hd129241129879_
                                               _tl129242129881_
                                               _e129243129884_
                                               _hd129244129887_
                                               _tl129245129889_
                                               _e129246129892_
                                               _hd129247129895_
                                               _tl129248129897_
                                               _e129249129900_
                                               _hd129250129903_
                                               _tl129251129905_
                                               _e129252129908_
                                               _hd129253129911_
                                               _tl129254129913_
                                               _e129255129916_
                                               _hd129256129919_
                                               _tl129257129921_
                                               _e129258129924_
                                               _hd129259129927_
                                               _tl129260129929_
                                               _e129261129932_
                                               _hd129262129935_
                                               _tl129263129937_
                                               _e129264129940_
                                               _hd129265129943_
                                               _tl129266129945_
                                               _e129267129948_
                                               _hd129268129951_
                                               _tl129269129953_
                                               _e129270129956_
                                               _hd129271129959_
                                               _tl129272129961_
                                               _e129273129964_
                                               _hd129274129967_
                                               _tl129275129969_
                                               _e129276129972_
                                               _hd129277129975_
                                               _tl129278129977_
                                               ___splice133243133244_
                                               _target129279129980_
                                               _tl129281129982_)
                                              (___kont133253133254_))))
                                      (___kont133253133254_))
                                  (___kont133253133254_))))
                          (___kont133253133254_))
                      (___kont133253133254_))
                  (___kont133253133254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133253133254_))))
                                          (___match133732133733_
                                           _e129240129876_
                                           _hd129241129879_
                                           _tl129242129881_
                                           _e129243129884_
                                           _hd129244129887_
                                           _tl129245129889_
                                           _e129246129892_
                                           _hd129247129895_
                                           _tl129248129897_
                                           _e129249129900_
                                           _hd129250129903_
                                           _tl129251129905_
                                           _e129252129908_
                                           _hd129253129911_
                                           _tl129254129913_
                                           _e129255129916_
                                           _hd129256129919_
                                           _tl129257129921_
                                           _e129258129924_
                                           _hd129259129927_
                                           _tl129260129929_
                                           _e129261129932_
                                           _hd129262129935_
                                           _tl129263129937_))
                                      (___match133732133733_
                                       _e129240129876_
                                       _hd129241129879_
                                       _tl129242129881_
                                       _e129243129884_
                                       _hd129244129887_
                                       _tl129245129889_
                                       _e129246129892_
                                       _hd129247129895_
                                       _tl129248129897_
                                       _e129249129900_
                                       _hd129250129903_
                                       _tl129251129905_
                                       _e129252129908_
                                       _hd129253129911_
                                       _tl129254129913_
                                       _e129255129916_
                                       _hd129256129919_
                                       _tl129257129921_
                                       _e129258129924_
                                       _hd129259129927_
                                       _tl129260129929_
                                       _e129261129932_
                                       _hd129262129935_
                                       _tl129263129937_))))
                              (___match133732133733_
                               _e129240129876_
                               _hd129241129879_
                               _tl129242129881_
                               _e129243129884_
                               _hd129244129887_
                               _tl129245129889_
                               _e129246129892_
                               _hd129247129895_
                               _tl129248129897_
                               _e129249129900_
                               _hd129250129903_
                               _tl129251129905_
                               _e129252129908_
                               _hd129253129911_
                               _tl129254129913_
                               _e129255129916_
                               _hd129256129919_
                               _tl129257129921_
                               _e129258129924_
                               _hd129259129927_
                               _tl129260129929_
                               _e129261129932_
                               _hd129262129935_
                               _tl129263129937_))
                          (___match133518133519_
                           _e129240129876_
                           _hd129241129879_
                           _tl129242129881_
                           _e129243129884_
                           _hd129244129887_
                           _tl129245129889_
                           _e129246129892_
                           _hd129247129895_
                           _tl129248129897_
                           _e129249129900_
                           _hd129250129903_
                           _tl129251129905_
                           _e129252129908_
                           _hd129253129911_
                           _tl129254129913_
                           _e129255129916_
                           _hd129256129919_
                           _tl129257129921_
                           _e129258129924_
                           _hd129259129927_
                           _tl129260129929_
                           _e129261129932_
                           _hd129262129935_
                           _tl129263129937_
                           _e129264129940_
                           _hd129265129943_
                           _tl129266129945_))))
                   (___match133340133341_
                    (lambda (_e129196130065_
                             _hd129197130068_
                             _tl129198130070_
                             _e129199130073_
                             _hd129200130076_
                             _tl129201130078_
                             _e129202130081_
                             _hd129203130084_
                             _tl129204130086_
                             _e129205130089_
                             _hd129206130092_
                             _tl129207130094_
                             _e129208130097_
                             _hd129209130100_
                             _tl129210130102_
                             _e129211130105_
                             _hd129212130108_
                             _tl129213130110_
                             _e129214130113_
                             _hd129215130116_
                             _tl129216130118_
                             _e129217130121_
                             _hd129218130124_
                             _tl129219130126_
                             _e129220130129_
                             _hd129221130132_
                             _tl129222130134_
                             _e129223130137_
                             _hd129224130140_
                             _tl129225130142_
                             ___splice133239133240_
                             _target129226130145_
                             _tl129228130147_)
                      (letrec ((_loop129229130150_
                                (lambda (_hd129227130153_ _args129233130155_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129227130153_))
                                      (let ((_e129230130158_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129227130153_))))
                                        (let ((_lp-tl129232130163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129230130158_)))
                                              (_lp-hd129231130161_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129230130158_))))
                                          (let ((__tmp134540
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129231130161_
                                                         _args129233130155_))))
                                            (declare (not safe))
                                            (_loop129229130150_
                                             _lp-tl129232130163_
                                             __tmp134540))))
                                      (let ((_args129234130166_
                                             (reverse _args129233130155_)))
                                        (let ((_L130169_ _args129234130166_)
                                              (_L130170_ _hd129224130140_)
                                              (_L130171_ _hd129215130116_)
                                              (_L130172_ _hd129206130092_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130172_
                                                      'call-method))
                                                   (let ((__tmp134541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129181_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130171_
                                                      __tmp134541)))
                                              (___kont133237133238_
                                               _L130169_
                                               _L130170_
                                               _L130171_
                                               _L130172_)
                                              (___match133528133529_
                                               _e129196130065_
                                               _hd129197130068_
                                               _tl129198130070_
                                               _e129199130073_
                                               _hd129200130076_
                                               _tl129201130078_
                                               _e129202130081_
                                               _hd129203130084_
                                               _tl129204130086_
                                               _e129205130089_
                                               _hd129206130092_
                                               _tl129207130094_
                                               _e129208130097_
                                               _hd129209130100_
                                               _tl129210130102_
                                               _e129211130105_
                                               _hd129212130108_
                                               _tl129213130110_
                                               _e129214130113_
                                               _hd129215130116_
                                               _tl129216130118_
                                               _e129217130121_
                                               _hd129218130124_
                                               _tl129219130126_
                                               _e129220130129_
                                               _hd129221130132_
                                               _tl129222130134_
                                               _e129223130137_
                                               _hd129224130140_
                                               _tl129225130142_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129229130150_ _target129226130145_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133235133236_))
                  (let ((_e129196130065_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133235133236_))))
                    (let ((_tl129198130070_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129196130065_)))
                          (_hd129197130068_
                           (let ()
                             (declare (not safe))
                             (##car _e129196130065_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129198130070_))
                          (let ((_e129199130073_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129198130070_))))
                            (let ((_tl129201130078_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129199130073_)))
                                  (_hd129200130076_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129199130073_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129200130076_))
                                  (let ((_e129202130081_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129200130076_))))
                                    (let ((_tl129204130086_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129202130081_)))
                                          (_hd129203130084_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129202130081_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129203130084_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129203130084_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129204130086_))
                                                  (let ((_e129205130089_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129204130086_))))
                                                    (let ((_tl129207130094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129205130089_)))
                                                          (_hd129206130092_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129205130089_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129207130094_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129201130078_))
                      (let ((_e129208130097_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129201130078_))))
                        (let ((_tl129210130102_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129208130097_)))
                              (_hd129209130100_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129208130097_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129209130100_))
                              (let ((_e129211130105_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129209130100_))))
                                (let ((_tl129213130110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129211130105_)))
                                      (_hd129212130108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129211130105_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129212130108_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129212130108_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129213130110_))
                                              (let ((_e129214130113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129213130110_))))
                                                (let ((_tl129216130118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129214130113_)))
                                                      (_hd129215130116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129214130113_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129216130118_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129210130102_))
                                                          (let ((_e129217130121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129210130102_))))
                    (let ((_tl129219130126_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129217130121_)))
                          (_hd129218130124_
                           (let ()
                             (declare (not safe))
                             (##car _e129217130121_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129218130124_))
                          (let ((_e129220130129_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129218130124_))))
                            (let ((_tl129222130134_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129220130129_)))
                                  (_hd129221130132_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129220130129_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129221130132_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129221130132_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129222130134_))
                                          (let ((_e129223130137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129222130134_))))
                                            (let ((_tl129225130142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129223130137_)))
                                                  (_hd129224130140_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129223130137_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129225130142_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129219130126_))
                                                      (let ((___splice133239133240_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129219130126_ '0))))
                (let ((_tl129228130147_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133239133240_ '1)))
                      (_target129226130145_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133239133240_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129228130147_))
                      (___match133340133341_
                       _e129196130065_
                       _hd129197130068_
                       _tl129198130070_
                       _e129199130073_
                       _hd129200130076_
                       _tl129201130078_
                       _e129202130081_
                       _hd129203130084_
                       _tl129204130086_
                       _e129205130089_
                       _hd129206130092_
                       _tl129207130094_
                       _e129208130097_
                       _hd129209130100_
                       _tl129210130102_
                       _e129211130105_
                       _hd129212130108_
                       _tl129213130110_
                       _e129214130113_
                       _hd129215130116_
                       _tl129216130118_
                       _e129217130121_
                       _hd129218130124_
                       _tl129219130126_
                       _e129220130129_
                       _hd129221130132_
                       _tl129222130134_
                       _e129223130137_
                       _hd129224130140_
                       _tl129225130142_
                       ___splice133239133240_
                       _target129226130145_
                       _tl129228130147_)
                      (___match133528133529_
                       _e129196130065_
                       _hd129197130068_
                       _tl129198130070_
                       _e129199130073_
                       _hd129200130076_
                       _tl129201130078_
                       _e129202130081_
                       _hd129203130084_
                       _tl129204130086_
                       _e129205130089_
                       _hd129206130092_
                       _tl129207130094_
                       _e129208130097_
                       _hd129209130100_
                       _tl129210130102_
                       _e129211130105_
                       _hd129212130108_
                       _tl129213130110_
                       _e129214130113_
                       _hd129215130116_
                       _tl129216130118_
                       _e129217130121_
                       _hd129218130124_
                       _tl129219130126_
                       _e129220130129_
                       _hd129221130132_
                       _tl129222130134_
                       _e129223130137_
                       _hd129224130140_
                       _tl129225130142_))))
              (___match133528133529_
               _e129196130065_
               _hd129197130068_
               _tl129198130070_
               _e129199130073_
               _hd129200130076_
               _tl129201130078_
               _e129202130081_
               _hd129203130084_
               _tl129204130086_
               _e129205130089_
               _hd129206130092_
               _tl129207130094_
               _e129208130097_
               _hd129209130100_
               _tl129210130102_
               _e129211130105_
               _hd129212130108_
               _tl129213130110_
               _e129214130113_
               _hd129215130116_
               _tl129216130118_
               _e129217130121_
               _hd129218130124_
               _tl129219130126_
               _e129220130129_
               _hd129221130132_
               _tl129222130134_
               _e129223130137_
               _hd129224130140_
               _tl129225130142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match133732133733_
                                                   _e129196130065_
                                                   _hd129197130068_
                                                   _tl129198130070_
                                                   _e129199130073_
                                                   _hd129200130076_
                                                   _tl129201130078_
                                                   _e129202130081_
                                                   _hd129203130084_
                                                   _tl129204130086_
                                                   _e129205130089_
                                                   _hd129206130092_
                                                   _tl129207130094_
                                                   _e129208130097_
                                                   _hd129209130100_
                                                   _tl129210130102_
                                                   _e129211130105_
                                                   _hd129212130108_
                                                   _tl129213130110_
                                                   _e129214130113_
                                                   _hd129215130116_
                                                   _tl129216130118_
                                                   _e129217130121_
                                                   _hd129218130124_
                                                   _tl129219130126_))))
                                          (___match133732133733_
                                           _e129196130065_
                                           _hd129197130068_
                                           _tl129198130070_
                                           _e129199130073_
                                           _hd129200130076_
                                           _tl129201130078_
                                           _e129202130081_
                                           _hd129203130084_
                                           _tl129204130086_
                                           _e129205130089_
                                           _hd129206130092_
                                           _tl129207130094_
                                           _e129208130097_
                                           _hd129209130100_
                                           _tl129210130102_
                                           _e129211130105_
                                           _hd129212130108_
                                           _tl129213130110_
                                           _e129214130113_
                                           _hd129215130116_
                                           _tl129216130118_
                                           _e129217130121_
                                           _hd129218130124_
                                           _tl129219130126_))
                                      (___match133408133409_
                                       _e129196130065_
                                       _hd129197130068_
                                       _tl129198130070_
                                       _e129199130073_
                                       _hd129200130076_
                                       _tl129201130078_
                                       _e129202130081_
                                       _hd129203130084_
                                       _tl129204130086_
                                       _e129205130089_
                                       _hd129206130092_
                                       _tl129207130094_
                                       _e129208130097_
                                       _hd129209130100_
                                       _tl129210130102_
                                       _e129211130105_
                                       _hd129212130108_
                                       _tl129213130110_
                                       _e129214130113_
                                       _hd129215130116_
                                       _tl129216130118_
                                       _e129217130121_
                                       _hd129218130124_
                                       _tl129219130126_
                                       _e129220130129_
                                       _hd129221130132_
                                       _tl129222130134_))
                                  (___match133732133733_
                                   _e129196130065_
                                   _hd129197130068_
                                   _tl129198130070_
                                   _e129199130073_
                                   _hd129200130076_
                                   _tl129201130078_
                                   _e129202130081_
                                   _hd129203130084_
                                   _tl129204130086_
                                   _e129205130089_
                                   _hd129206130092_
                                   _tl129207130094_
                                   _e129208130097_
                                   _hd129209130100_
                                   _tl129210130102_
                                   _e129211130105_
                                   _hd129212130108_
                                   _tl129213130110_
                                   _e129214130113_
                                   _hd129215130116_
                                   _tl129216130118_
                                   _e129217130121_
                                   _hd129218130124_
                                   _tl129219130126_))))
                          (___match133732133733_
                           _e129196130065_
                           _hd129197130068_
                           _tl129198130070_
                           _e129199130073_
                           _hd129200130076_
                           _tl129201130078_
                           _e129202130081_
                           _hd129203130084_
                           _tl129204130086_
                           _e129205130089_
                           _hd129206130092_
                           _tl129207130094_
                           _e129208130097_
                           _hd129209130100_
                           _tl129210130102_
                           _e129211130105_
                           _hd129212130108_
                           _tl129213130110_
                           _e129214130113_
                           _hd129215130116_
                           _tl129216130118_
                           _e129217130121_
                           _hd129218130124_
                           _tl129219130126_))))
                  (___match133670133671_
                   _e129196130065_
                   _hd129197130068_
                   _tl129198130070_
                   _e129199130073_
                   _hd129200130076_
                   _tl129201130078_
                   _e129202130081_
                   _hd129203130084_
                   _tl129204130086_
                   _e129205130089_
                   _hd129206130092_
                   _tl129207130094_
                   _e129208130097_
                   _hd129209130100_
                   _tl129210130102_
                   _e129211130105_
                   _hd129212130108_
                   _tl129213130110_
                   _e129214130113_
                   _hd129215130116_
                   _tl129216130118_))
              (___kont133253133254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133253133254_))
                                          (___kont133253133254_))
                                      (___kont133253133254_))))
                              (___kont133253133254_))))
                      (___kont133253133254_))
                  (___kont133253133254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133253133254_))
                                              (___kont133253133254_))
                                          (___kont133253133254_))))
                                  (___kont133253133254_))))
                          (___kont133253133254_))))
                  (___kont133253133254_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self128120_ _stx128121_)
        (letrec ((_force-e128123_
                  (lambda (_target129179_)
                    (let ((__tmp134542
                           (let ((__tmp134546
                                  (let ((__tmp134547
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp134547)))
                                 (__tmp134543
                                  (let ((__tmp134544
                                         (let ((__tmp134545
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target129179_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134545))))
                                    (declare (not safe))
                                    (cons __tmp134544 '()))))
                             (declare (not safe))
                             (cons __tmp134546 __tmp134543))))
                      (declare (not safe))
                      (cons '%#call __tmp134542)))))
          (let* ((___stx133737133738_ _stx128121_)
                 (_g128131128353_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133737133738_)))))
            (let ((___kont133739133740_
                   (lambda (_L129125_ _L129126_ _L129127_ _L129128_)
                     (let ((_$method129173_
                            (let ((__tmp134549
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128120_ 'methods)))
                                  (__tmp134548
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129126_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134549 __tmp134548)))
                           (_args129174_
                            (map (lambda (_g129161129163_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128120_
                                      _g129161129163_)))
                                 (let ((__tmp134550
                                        (lambda (_g129165129168_
                                                 _g129166129170_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129165129168_
                                                  _g129166129170_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134550 '() _L129125_)))))
                       (let ((__tmp134551
                              (let ((__tmp134552
                                     (let ((__tmp134557
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128123_
                                               _$method129173_)))
                                           (__tmp134553
                                            (let ((__tmp134554
                                                   (let ((__tmp134555
                                                          (let ((__tmp134556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self128120_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp134556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134555))))
                                              (declare (not safe))
                                              (cons __tmp134554
                                                    _args129174_))))
                                       (declare (not safe))
                                       (cons __tmp134557 __tmp134553))))
                                (declare (not safe))
                                (cons '%#call __tmp134552))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134551 _stx128121_)))))
                  (___kont133743133744_
                   (lambda (_L128957_ _L128958_ _L128959_ _L128960_ _L128961_)
                     (let ((_$method129013_
                            (let ((__tmp134559
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128120_ 'methods)))
                                  (__tmp134558
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128958_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134559 __tmp134558)))
                           (_args129014_
                            (map (lambda (_g129001129003_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128120_
                                      _g129001129003_)))
                                 (let ((__tmp134560
                                        (lambda (_g129005129008_
                                                 _g129006129010_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129005129008_
                                                  _g129006129010_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134560 '() _L128957_)))))
                       (let ((__tmp134561
                              (let ((__tmp134562
                                     (let ((__tmp134569
                                            (let ((__tmp134570
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134570)))
                                           (__tmp134563
                                            (let ((__tmp134568
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128123_
                                                      _$method129013_)))
                                                  (__tmp134564
                                                   (let ((__tmp134565
                                                          (let ((__tmp134566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp134567
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self128120_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp134567 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134565
                                                           _args129014_))))
                                              (declare (not safe))
                                              (cons __tmp134568 __tmp134564))))
                                       (declare (not safe))
                                       (cons __tmp134569 __tmp134563))))
                                (declare (not safe))
                                (cons '%#call __tmp134562))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134561 _stx128121_)))))
                  (___kont133747133748_
                   (lambda (_L128788_ _L128789_ _L128790_)
                     (let* ((_$field128822_
                             (let ((__tmp134572
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self128120_ 'slots)))
                                   (__tmp134571
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128788_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp134572 __tmp134571)))
                            (__tmp134573
                             (let ((__tmp134574
                                    (let ((__tmp134582
                                           (let ((__tmp134583
                                                  (let ((__tmp134584
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self128120_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp134584 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134583)))
                                          (__tmp134575
                                           (let ((__tmp134580
                                                  (let ((__tmp134581
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field128822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134581)))
                                                 (__tmp134576
                                                  (let ((__tmp134577
                                                         (let ((__tmp134578
                                                                (let ((__tmp134579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self128120_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp134579 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134578))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134577 '()))))
                                             (declare (not safe))
                                             (cons __tmp134580 __tmp134576))))
                                      (declare (not safe))
                                      (cons __tmp134582 __tmp134575))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp134574))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp134573 _stx128121_))))
                  (___kont133749133750_
                   (lambda (_L128662_ _L128663_ _L128664_ _L128665_)
                     (let ((_$field128700_
                            (let ((__tmp134586
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128120_ 'slots)))
                                  (__tmp134585
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128663_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134586 __tmp134585)))
                           (_expr128701_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self128120_ _L128662_))))
                       (let ((__tmp134587
                              (let ((__tmp134588
                                     (let ((__tmp134597
                                            (let ((__tmp134598
                                                   (let ((__tmp134599
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self128120_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp134599 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134598)))
                                           (__tmp134589
                                            (let ((__tmp134595
                                                   (let ((__tmp134596
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field128700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134596)))
                                                  (__tmp134590
                                                   (let ((__tmp134592
                                                          (let ((__tmp134593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp134594
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self128120_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp134594 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134593)))
                 (__tmp134591
                  (let () (declare (not safe)) (cons _expr128701_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134592
                                                           __tmp134591))))
                                              (declare (not safe))
                                              (cons __tmp134595 __tmp134590))))
                                       (declare (not safe))
                                       (cons __tmp134597 __tmp134589))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp134588))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134587 _stx128121_)))))
                  (___kont133751133752_
                   (lambda (_L128534_ _L128535_)
                     (let* ((_accessor128557_
                             (let ((__tmp134600
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128535_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134600)))
                            (_klass128559_
                             (let ((__tmp134601
                                    (##structure-ref
                                     _accessor128557_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128121_
                                __tmp134601)))
                            (_slot128561_
                             (##structure-ref
                              _accessor128557_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp134602
                                       (##structure-ref
                                        _accessor128557_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134602))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128559_
                                       _slot128561_))
                                    (##structure-ref
                                     _klass128559_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128121_
                           (let* ((_$field128567_
                                   (let ((__tmp134603
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134603 _slot128561_)))
                                  (__tmp134604
                                   (let ((__tmp134605
                                          (let ((__tmp134613
                                                 (let ((__tmp134614
                                                        (let ((__tmp134615
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self128120_ 'klass))))
                  (declare (not safe))
                  (cons __tmp134615 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134614)))
                                                (__tmp134606
                                                 (let ((__tmp134611
                                                        (let ((__tmp134612
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field128567_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134612)))
               (__tmp134607
                (let ((__tmp134608
                       (let ((__tmp134609
                              (let ((__tmp134610
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self128120_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp134610 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134609))))
                  (declare (not safe))
                  (cons __tmp134608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134611
                                                         __tmp134607))))
                                            (declare (not safe))
                                            (cons __tmp134613 __tmp134606))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp134605))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134604
                              _stx128121_))))))
                  (___kont133753133754_
                   (lambda (_L128429_ _L128430_ _L128431_)
                     (let* ((_mutator128459_
                             (let ((__tmp134616
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128431_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134616)))
                            (_klass128461_
                             (let ((__tmp134617
                                    (##structure-ref
                                     _mutator128459_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128121_
                                __tmp134617)))
                            (_slot128463_
                             (##structure-ref
                              _mutator128459_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr128465_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self128120_ _L128429_))))
                       (if (and (let ((__tmp134618
                                       (##structure-ref
                                        _mutator128459_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134618))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128461_
                                       _slot128463_))
                                    (##structure-ref
                                     _klass128461_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp134619
                                  (let ((__tmp134620
                                         (let ((__tmp134626
                                                (let ((__tmp134628
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp134627
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L128431_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp134628
                                                        __tmp134627)))
                                               (__tmp134621
                                                (let ((__tmp134623
                                                       (let ((__tmp134625
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp134624
                      (let () (declare (not safe)) (cons _L128430_ '()))))
                 (declare (not safe))
                 (cons __tmp134625 __tmp134624)))
              (__tmp134622
               (let () (declare (not safe)) (cons _expr128465_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134623
                                                        __tmp134622))))
                                           (declare (not safe))
                                           (cons __tmp134626 __tmp134621))))
                                    (declare (not safe))
                                    (cons '%#call __tmp134620))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134619 _stx128121_))
                           (let* ((_$field128471_
                                   (let ((__tmp134629
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134629 _slot128463_)))
                                  (__tmp134630
                                   (let ((__tmp134631
                                          (let ((__tmp134640
                                                 (let ((__tmp134641
                                                        (let ((__tmp134642
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self128120_ 'klass))))
                  (declare (not safe))
                  (cons __tmp134642 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134641)))
                                                (__tmp134632
                                                 (let ((__tmp134638
                                                        (let ((__tmp134639
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field128471_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134639)))
               (__tmp134633
                (let ((__tmp134635
                       (let ((__tmp134636
                              (let ((__tmp134637
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self128120_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp134637 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134636)))
                      (__tmp134634
                       (let () (declare (not safe)) (cons _expr128465_ '()))))
                  (declare (not safe))
                  (cons __tmp134635 __tmp134634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134638
                                                         __tmp134633))))
                                            (declare (not safe))
                                            (cons __tmp134640 __tmp134632))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp134631))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134630
                              _stx128121_))))))
                  (___kont133755133756_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self128120_ _stx128121_)))))
              (let* ((___match134236134237_
                      (lambda (_e128325128365_
                               _hd128326128368_
                               _tl128327128370_
                               _e128328128373_
                               _hd128329128376_
                               _tl128330128378_
                               _e128331128381_
                               _hd128332128384_
                               _tl128333128386_
                               _e128334128389_
                               _hd128335128392_
                               _tl128336128394_
                               _e128337128397_
                               _hd128338128400_
                               _tl128339128402_
                               _e128340128405_
                               _hd128341128408_
                               _tl128342128410_
                               _e128343128413_
                               _hd128344128416_
                               _tl128345128418_
                               _e128346128421_
                               _hd128347128424_
                               _tl128348128426_)
                        (let ((_L128429_ _hd128347128424_)
                              (_L128430_ _hd128344128416_)
                              (_L128431_ _hd128335128392_))
                          (if (and (let ((__tmp134643
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128430_
                                      __tmp134643))
                                   (let ((__tmp134644
                                          (let ((__tmp134645
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128431_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134645))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134644
                                      'gxc#!mutator::t)))
                              (___kont133753133754_
                               _L128429_
                               _L128430_
                               _L128431_)
                              (___kont133755133756_)))))
                     (___match134234134235_
                      (lambda (_e128325128365_
                               _hd128326128368_
                               _tl128327128370_
                               _e128328128373_
                               _hd128329128376_
                               _tl128330128378_
                               _e128331128381_
                               _hd128332128384_
                               _tl128333128386_
                               _e128334128389_
                               _hd128335128392_
                               _tl128336128394_
                               _e128337128397_
                               _hd128338128400_
                               _tl128339128402_
                               _e128340128405_
                               _hd128341128408_
                               _tl128342128410_
                               _e128343128413_
                               _hd128344128416_
                               _tl128345128418_
                               _e128346128421_
                               _hd128347128424_
                               _tl128348128426_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128348128426_))
                            (___match134236134237_
                             _e128325128365_
                             _hd128326128368_
                             _tl128327128370_
                             _e128328128373_
                             _hd128329128376_
                             _tl128330128378_
                             _e128331128381_
                             _hd128332128384_
                             _tl128333128386_
                             _e128334128389_
                             _hd128335128392_
                             _tl128336128394_
                             _e128337128397_
                             _hd128338128400_
                             _tl128339128402_
                             _e128340128405_
                             _hd128341128408_
                             _tl128342128410_
                             _e128343128413_
                             _hd128344128416_
                             _tl128345128418_
                             _e128346128421_
                             _hd128347128424_
                             _tl128348128426_)
                            (___kont133755133756_))))
                     (___match134228134229_
                      (lambda (_e128325128365_
                               _hd128326128368_
                               _tl128327128370_
                               _e128328128373_
                               _hd128329128376_
                               _tl128330128378_
                               _e128331128381_
                               _hd128332128384_
                               _tl128333128386_
                               _e128334128389_
                               _hd128335128392_
                               _tl128336128394_
                               _e128337128397_
                               _hd128338128400_
                               _tl128339128402_
                               _e128340128405_
                               _hd128341128408_
                               _tl128342128410_
                               _e128343128413_
                               _hd128344128416_
                               _tl128345128418_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128339128402_))
                            (let ((_e128346128421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128339128402_))))
                              (let ((_tl128348128426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128346128421_)))
                                    (_hd128347128424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128346128421_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128348128426_))
                                    (___match134236134237_
                                     _e128325128365_
                                     _hd128326128368_
                                     _tl128327128370_
                                     _e128328128373_
                                     _hd128329128376_
                                     _tl128330128378_
                                     _e128331128381_
                                     _hd128332128384_
                                     _tl128333128386_
                                     _e128334128389_
                                     _hd128335128392_
                                     _tl128336128394_
                                     _e128337128397_
                                     _hd128338128400_
                                     _tl128339128402_
                                     _e128340128405_
                                     _hd128341128408_
                                     _tl128342128410_
                                     _e128343128413_
                                     _hd128344128416_
                                     _tl128345128418_
                                     _e128346128421_
                                     _hd128347128424_
                                     _tl128348128426_)
                                    (___kont133755133756_))))
                            (___kont133755133756_))))
                     (___match134174134175_
                      (lambda (_e128301128478_
                               _hd128302128481_
                               _tl128303128483_
                               _e128304128486_
                               _hd128305128489_
                               _tl128306128491_
                               _e128307128494_
                               _hd128308128497_
                               _tl128309128499_
                               _e128310128502_
                               _hd128311128505_
                               _tl128312128507_
                               _e128313128510_
                               _hd128314128513_
                               _tl128315128515_
                               _e128316128518_
                               _hd128317128521_
                               _tl128318128523_
                               _e128319128526_
                               _hd128320128529_
                               _tl128321128531_)
                        (let ((_L128534_ _hd128320128529_)
                              (_L128535_ _hd128311128505_))
                          (if (and (let ((__tmp134646
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128534_
                                      __tmp134646))
                                   (let ((__tmp134647
                                          (let ((__tmp134648
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128535_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134648))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134647
                                      'gxc#!accessor::t)))
                              (___kont133751133752_ _L128534_ _L128535_)
                              (___kont133755133756_)))))
                     (___match134172134173_
                      (lambda (_e128301128478_
                               _hd128302128481_
                               _tl128303128483_
                               _e128304128486_
                               _hd128305128489_
                               _tl128306128491_
                               _e128307128494_
                               _hd128308128497_
                               _tl128309128499_
                               _e128310128502_
                               _hd128311128505_
                               _tl128312128507_
                               _e128313128510_
                               _hd128314128513_
                               _tl128315128515_
                               _e128316128518_
                               _hd128317128521_
                               _tl128318128523_
                               _e128319128526_
                               _hd128320128529_
                               _tl128321128531_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128315128515_))
                            (___match134174134175_
                             _e128301128478_
                             _hd128302128481_
                             _tl128303128483_
                             _e128304128486_
                             _hd128305128489_
                             _tl128306128491_
                             _e128307128494_
                             _hd128308128497_
                             _tl128309128499_
                             _e128310128502_
                             _hd128311128505_
                             _tl128312128507_
                             _e128313128510_
                             _hd128314128513_
                             _tl128315128515_
                             _e128316128518_
                             _hd128317128521_
                             _tl128318128523_
                             _e128319128526_
                             _hd128320128529_
                             _tl128321128531_)
                            (___match134228134229_
                             _e128301128478_
                             _hd128302128481_
                             _tl128303128483_
                             _e128304128486_
                             _hd128305128489_
                             _tl128306128491_
                             _e128307128494_
                             _hd128308128497_
                             _tl128309128499_
                             _e128310128502_
                             _hd128311128505_
                             _tl128312128507_
                             _e128313128510_
                             _hd128314128513_
                             _tl128315128515_
                             _e128316128518_
                             _hd128317128521_
                             _tl128318128523_
                             _e128319128526_
                             _hd128320128529_
                             _tl128321128531_))))
                     (___match134118134119_
                      (lambda (_e128266128574_
                               _hd128267128577_
                               _tl128268128579_
                               _e128269128582_
                               _hd128270128585_
                               _tl128271128587_
                               _e128272128590_
                               _hd128273128593_
                               _tl128274128595_
                               _e128275128598_
                               _hd128276128601_
                               _tl128277128603_
                               _e128278128606_
                               _hd128279128609_
                               _tl128280128611_
                               _e128281128614_
                               _hd128282128617_
                               _tl128283128619_
                               _e128284128622_
                               _hd128285128625_
                               _tl128286128627_
                               _e128287128630_
                               _hd128288128633_
                               _tl128289128635_
                               _e128290128638_
                               _hd128291128641_
                               _tl128292128643_
                               _e128293128646_
                               _hd128294128649_
                               _tl128295128651_
                               _e128296128654_
                               _hd128297128657_
                               _tl128298128659_)
                        (let ((_L128662_ _hd128297128657_)
                              (_L128663_ _hd128294128649_)
                              (_L128664_ _hd128285128625_)
                              (_L128665_ _hd128276128601_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128665_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128665_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp134649
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128664_
                                      __tmp134649)))
                              (___kont133749133750_
                               _L128662_
                               _L128663_
                               _L128664_
                               _L128665_)
                              (___kont133755133756_)))))
                     (___match134110134111_
                      (lambda (_e128266128574_
                               _hd128267128577_
                               _tl128268128579_
                               _e128269128582_
                               _hd128270128585_
                               _tl128271128587_
                               _e128272128590_
                               _hd128273128593_
                               _tl128274128595_
                               _e128275128598_
                               _hd128276128601_
                               _tl128277128603_
                               _e128278128606_
                               _hd128279128609_
                               _tl128280128611_
                               _e128281128614_
                               _hd128282128617_
                               _tl128283128619_
                               _e128284128622_
                               _hd128285128625_
                               _tl128286128627_
                               _e128287128630_
                               _hd128288128633_
                               _tl128289128635_
                               _e128290128638_
                               _hd128291128641_
                               _tl128292128643_
                               _e128293128646_
                               _hd128294128649_
                               _tl128295128651_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128289128635_))
                            (let ((_e128296128654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128289128635_))))
                              (let ((_tl128298128659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128296128654_)))
                                    (_hd128297128657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128296128654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128298128659_))
                                    (___match134118134119_
                                     _e128266128574_
                                     _hd128267128577_
                                     _tl128268128579_
                                     _e128269128582_
                                     _hd128270128585_
                                     _tl128271128587_
                                     _e128272128590_
                                     _hd128273128593_
                                     _tl128274128595_
                                     _e128275128598_
                                     _hd128276128601_
                                     _tl128277128603_
                                     _e128278128606_
                                     _hd128279128609_
                                     _tl128280128611_
                                     _e128281128614_
                                     _hd128282128617_
                                     _tl128283128619_
                                     _e128284128622_
                                     _hd128285128625_
                                     _tl128286128627_
                                     _e128287128630_
                                     _hd128288128633_
                                     _tl128289128635_
                                     _e128290128638_
                                     _hd128291128641_
                                     _tl128292128643_
                                     _e128293128646_
                                     _hd128294128649_
                                     _tl128295128651_
                                     _e128296128654_
                                     _hd128297128657_
                                     _tl128298128659_)
                                    (___kont133755133756_))))
                            (___match134234134235_
                             _e128266128574_
                             _hd128267128577_
                             _tl128268128579_
                             _e128269128582_
                             _hd128270128585_
                             _tl128271128587_
                             _e128272128590_
                             _hd128273128593_
                             _tl128274128595_
                             _e128275128598_
                             _hd128276128601_
                             _tl128277128603_
                             _e128278128606_
                             _hd128279128609_
                             _tl128280128611_
                             _e128281128614_
                             _hd128282128617_
                             _tl128283128619_
                             _e128284128622_
                             _hd128285128625_
                             _tl128286128627_
                             _e128287128630_
                             _hd128288128633_
                             _tl128289128635_))))
                     (___match134032134033_
                      (lambda (_e128232128708_
                               _hd128233128711_
                               _tl128234128713_
                               _e128235128716_
                               _hd128236128719_
                               _tl128237128721_
                               _e128238128724_
                               _hd128239128727_
                               _tl128240128729_
                               _e128241128732_
                               _hd128242128735_
                               _tl128243128737_
                               _e128244128740_
                               _hd128245128743_
                               _tl128246128745_
                               _e128247128748_
                               _hd128248128751_
                               _tl128249128753_
                               _e128250128756_
                               _hd128251128759_
                               _tl128252128761_
                               _e128253128764_
                               _hd128254128767_
                               _tl128255128769_
                               _e128256128772_
                               _hd128257128775_
                               _tl128258128777_
                               _e128259128780_
                               _hd128260128783_
                               _tl128261128785_)
                        (let ((_L128788_ _hd128260128783_)
                              (_L128789_ _hd128251128759_)
                              (_L128790_ _hd128242128735_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128790_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128790_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp134650
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128120_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128789_
                                      __tmp134650)))
                              (___kont133747133748_
                               _L128788_
                               _L128789_
                               _L128790_)
                              (___match134236134237_
                               _e128232128708_
                               _hd128233128711_
                               _tl128234128713_
                               _e128235128716_
                               _hd128236128719_
                               _tl128237128721_
                               _e128238128724_
                               _hd128239128727_
                               _tl128240128729_
                               _e128241128732_
                               _hd128242128735_
                               _tl128243128737_
                               _e128244128740_
                               _hd128245128743_
                               _tl128246128745_
                               _e128247128748_
                               _hd128248128751_
                               _tl128249128753_
                               _e128250128756_
                               _hd128251128759_
                               _tl128252128761_
                               _e128253128764_
                               _hd128254128767_
                               _tl128255128769_)))))
                     (___match134030134031_
                      (lambda (_e128232128708_
                               _hd128233128711_
                               _tl128234128713_
                               _e128235128716_
                               _hd128236128719_
                               _tl128237128721_
                               _e128238128724_
                               _hd128239128727_
                               _tl128240128729_
                               _e128241128732_
                               _hd128242128735_
                               _tl128243128737_
                               _e128244128740_
                               _hd128245128743_
                               _tl128246128745_
                               _e128247128748_
                               _hd128248128751_
                               _tl128249128753_
                               _e128250128756_
                               _hd128251128759_
                               _tl128252128761_
                               _e128253128764_
                               _hd128254128767_
                               _tl128255128769_
                               _e128256128772_
                               _hd128257128775_
                               _tl128258128777_
                               _e128259128780_
                               _hd128260128783_
                               _tl128261128785_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128255128769_))
                            (___match134032134033_
                             _e128232128708_
                             _hd128233128711_
                             _tl128234128713_
                             _e128235128716_
                             _hd128236128719_
                             _tl128237128721_
                             _e128238128724_
                             _hd128239128727_
                             _tl128240128729_
                             _e128241128732_
                             _hd128242128735_
                             _tl128243128737_
                             _e128244128740_
                             _hd128245128743_
                             _tl128246128745_
                             _e128247128748_
                             _hd128248128751_
                             _tl128249128753_
                             _e128250128756_
                             _hd128251128759_
                             _tl128252128761_
                             _e128253128764_
                             _hd128254128767_
                             _tl128255128769_
                             _e128256128772_
                             _hd128257128775_
                             _tl128258128777_
                             _e128259128780_
                             _hd128260128783_
                             _tl128261128785_)
                            (___match134110134111_
                             _e128232128708_
                             _hd128233128711_
                             _tl128234128713_
                             _e128235128716_
                             _hd128236128719_
                             _tl128237128721_
                             _e128238128724_
                             _hd128239128727_
                             _tl128240128729_
                             _e128241128732_
                             _hd128242128735_
                             _tl128243128737_
                             _e128244128740_
                             _hd128245128743_
                             _tl128246128745_
                             _e128247128748_
                             _hd128248128751_
                             _tl128249128753_
                             _e128250128756_
                             _hd128251128759_
                             _tl128252128761_
                             _e128253128764_
                             _hd128254128767_
                             _tl128255128769_
                             _e128256128772_
                             _hd128257128775_
                             _tl128258128777_
                             _e128259128780_
                             _hd128260128783_
                             _tl128261128785_))))
                     (___match134020134021_
                      (lambda (_e128232128708_
                               _hd128233128711_
                               _tl128234128713_
                               _e128235128716_
                               _hd128236128719_
                               _tl128237128721_
                               _e128238128724_
                               _hd128239128727_
                               _tl128240128729_
                               _e128241128732_
                               _hd128242128735_
                               _tl128243128737_
                               _e128244128740_
                               _hd128245128743_
                               _tl128246128745_
                               _e128247128748_
                               _hd128248128751_
                               _tl128249128753_
                               _e128250128756_
                               _hd128251128759_
                               _tl128252128761_
                               _e128253128764_
                               _hd128254128767_
                               _tl128255128769_
                               _e128256128772_
                               _hd128257128775_
                               _tl128258128777_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128257128775_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128258128777_))
                                (let ((_e128259128780_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128258128777_))))
                                  (let ((_tl128261128785_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128259128780_)))
                                        (_hd128260128783_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128259128780_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128261128785_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128255128769_))
                                            (___match134032134033_
                                             _e128232128708_
                                             _hd128233128711_
                                             _tl128234128713_
                                             _e128235128716_
                                             _hd128236128719_
                                             _tl128237128721_
                                             _e128238128724_
                                             _hd128239128727_
                                             _tl128240128729_
                                             _e128241128732_
                                             _hd128242128735_
                                             _tl128243128737_
                                             _e128244128740_
                                             _hd128245128743_
                                             _tl128246128745_
                                             _e128247128748_
                                             _hd128248128751_
                                             _tl128249128753_
                                             _e128250128756_
                                             _hd128251128759_
                                             _tl128252128761_
                                             _e128253128764_
                                             _hd128254128767_
                                             _tl128255128769_
                                             _e128256128772_
                                             _hd128257128775_
                                             _tl128258128777_
                                             _e128259128780_
                                             _hd128260128783_
                                             _tl128261128785_)
                                            (___match134110134111_
                                             _e128232128708_
                                             _hd128233128711_
                                             _tl128234128713_
                                             _e128235128716_
                                             _hd128236128719_
                                             _tl128237128721_
                                             _e128238128724_
                                             _hd128239128727_
                                             _tl128240128729_
                                             _e128241128732_
                                             _hd128242128735_
                                             _tl128243128737_
                                             _e128244128740_
                                             _hd128245128743_
                                             _tl128246128745_
                                             _e128247128748_
                                             _hd128248128751_
                                             _tl128249128753_
                                             _e128250128756_
                                             _hd128251128759_
                                             _tl128252128761_
                                             _e128253128764_
                                             _hd128254128767_
                                             _tl128255128769_
                                             _e128256128772_
                                             _hd128257128775_
                                             _tl128258128777_
                                             _e128259128780_
                                             _hd128260128783_
                                             _tl128261128785_))
                                        (___match134234134235_
                                         _e128232128708_
                                         _hd128233128711_
                                         _tl128234128713_
                                         _e128235128716_
                                         _hd128236128719_
                                         _tl128237128721_
                                         _e128238128724_
                                         _hd128239128727_
                                         _tl128240128729_
                                         _e128241128732_
                                         _hd128242128735_
                                         _tl128243128737_
                                         _e128244128740_
                                         _hd128245128743_
                                         _tl128246128745_
                                         _e128247128748_
                                         _hd128248128751_
                                         _tl128249128753_
                                         _e128250128756_
                                         _hd128251128759_
                                         _tl128252128761_
                                         _e128253128764_
                                         _hd128254128767_
                                         _tl128255128769_))))
                                (___match134234134235_
                                 _e128232128708_
                                 _hd128233128711_
                                 _tl128234128713_
                                 _e128235128716_
                                 _hd128236128719_
                                 _tl128237128721_
                                 _e128238128724_
                                 _hd128239128727_
                                 _tl128240128729_
                                 _e128241128732_
                                 _hd128242128735_
                                 _tl128243128737_
                                 _e128244128740_
                                 _hd128245128743_
                                 _tl128246128745_
                                 _e128247128748_
                                 _hd128248128751_
                                 _tl128249128753_
                                 _e128250128756_
                                 _hd128251128759_
                                 _tl128252128761_
                                 _e128253128764_
                                 _hd128254128767_
                                 _tl128255128769_))
                            (___match134234134235_
                             _e128232128708_
                             _hd128233128711_
                             _tl128234128713_
                             _e128235128716_
                             _hd128236128719_
                             _tl128237128721_
                             _e128238128724_
                             _hd128239128727_
                             _tl128240128729_
                             _e128241128732_
                             _hd128242128735_
                             _tl128243128737_
                             _e128244128740_
                             _hd128245128743_
                             _tl128246128745_
                             _e128247128748_
                             _hd128248128751_
                             _tl128249128753_
                             _e128250128756_
                             _hd128251128759_
                             _tl128252128761_
                             _e128253128764_
                             _hd128254128767_
                             _tl128255128769_))))
                     (___match133952133953_
                      (lambda (_e128181128829_
                               _hd128182128832_
                               _tl128183128834_
                               _e128184128837_
                               _hd128185128840_
                               _tl128186128842_
                               _e128187128845_
                               _hd128188128848_
                               _tl128189128850_
                               _e128190128853_
                               _hd128191128856_
                               _tl128192128858_
                               _e128193128861_
                               _hd128194128864_
                               _tl128195128866_
                               _e128196128869_
                               _hd128197128872_
                               _tl128198128874_
                               _e128199128877_
                               _hd128200128880_
                               _tl128201128882_
                               _e128202128885_
                               _hd128203128888_
                               _tl128204128890_
                               _e128205128893_
                               _hd128206128896_
                               _tl128207128898_
                               _e128208128901_
                               _hd128209128904_
                               _tl128210128906_
                               _e128211128909_
                               _hd128212128912_
                               _tl128213128914_
                               _e128214128917_
                               _hd128215128920_
                               _tl128216128922_
                               _e128217128925_
                               _hd128218128928_
                               _tl128219128930_
                               ___splice133745133746_
                               _target128220128933_
                               _tl128222128935_)
                        (letrec ((_loop128223128938_
                                  (lambda (_hd128221128941_ _args128227128943_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128221128941_))
                                        (let ((_e128224128946_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128221128941_))))
                                          (let ((_lp-tl128226128951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128224128946_)))
                                                (_lp-hd128225128949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128224128946_))))
                                            (let ((__tmp134651
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128225128949_
                                                           _args128227128943_))))
                                              (declare (not safe))
                                              (_loop128223128938_
                                               _lp-tl128226128951_
                                               __tmp134651))))
                                        (let ((_args128228128954_
                                               (reverse _args128227128943_)))
                                          (let ((_L128957_ _args128228128954_)
                                                (_L128958_ _hd128218128928_)
                                                (_L128959_ _hd128209128904_)
                                                (_L128960_ _hd128200128880_)
                                                (_L128961_ _hd128191128856_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128961_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L128960_
                                                        'call-method))
                                                     (let ((__tmp134652
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128120_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L128959_
                                                        __tmp134652)))
                                                (___kont133743133744_
                                                 _L128957_
                                                 _L128958_
                                                 _L128959_
                                                 _L128960_
                                                 _L128961_)
                                                (___kont133755133756_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128223128938_ _target128220128933_ '())))))
                     (___match133910133911_
                      (lambda (_e128181128829_
                               _hd128182128832_
                               _tl128183128834_
                               _e128184128837_
                               _hd128185128840_
                               _tl128186128842_
                               _e128187128845_
                               _hd128188128848_
                               _tl128189128850_
                               _e128190128853_
                               _hd128191128856_
                               _tl128192128858_
                               _e128193128861_
                               _hd128194128864_
                               _tl128195128866_
                               _e128196128869_
                               _hd128197128872_
                               _tl128198128874_
                               _e128199128877_
                               _hd128200128880_
                               _tl128201128882_
                               _e128202128885_
                               _hd128203128888_
                               _tl128204128890_
                               _e128205128893_
                               _hd128206128896_
                               _tl128207128898_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128206128896_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128207128898_))
                                (let ((_e128208128901_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128207128898_))))
                                  (let ((_tl128210128906_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128208128901_)))
                                        (_hd128209128904_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128208128901_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128210128906_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128204128890_))
                                            (let ((_e128211128909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128204128890_))))
                                              (let ((_tl128213128914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128211128909_)))
                                                    (_hd128212128912_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128211128909_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128212128912_))
                                                    (let ((_e128214128917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128212128912_))))
                                                      (let ((_tl128216128922_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128214128917_)))
                    (_hd128215128920_
                     (let () (declare (not safe)) (##car _e128214128917_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128215128920_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128215128920_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128216128922_))
                            (let ((_e128217128925_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128216128922_))))
                              (let ((_tl128219128930_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128217128925_)))
                                    (_hd128218128928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128217128925_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128219128930_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128213128914_))
                                        (let ((___splice133745133746_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128213128914_
                                                  '0))))
                                          (let ((_tl128222128935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133745133746_
                                                    '1)))
                                                (_target128220128933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133745133746_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128222128935_))
                                                (___match133952133953_
                                                 _e128181128829_
                                                 _hd128182128832_
                                                 _tl128183128834_
                                                 _e128184128837_
                                                 _hd128185128840_
                                                 _tl128186128842_
                                                 _e128187128845_
                                                 _hd128188128848_
                                                 _tl128189128850_
                                                 _e128190128853_
                                                 _hd128191128856_
                                                 _tl128192128858_
                                                 _e128193128861_
                                                 _hd128194128864_
                                                 _tl128195128866_
                                                 _e128196128869_
                                                 _hd128197128872_
                                                 _tl128198128874_
                                                 _e128199128877_
                                                 _hd128200128880_
                                                 _tl128201128882_
                                                 _e128202128885_
                                                 _hd128203128888_
                                                 _tl128204128890_
                                                 _e128205128893_
                                                 _hd128206128896_
                                                 _tl128207128898_
                                                 _e128208128901_
                                                 _hd128209128904_
                                                 _tl128210128906_
                                                 _e128211128909_
                                                 _hd128212128912_
                                                 _tl128213128914_
                                                 _e128214128917_
                                                 _hd128215128920_
                                                 _tl128216128922_
                                                 _e128217128925_
                                                 _hd128218128928_
                                                 _tl128219128930_
                                                 ___splice133745133746_
                                                 _target128220128933_
                                                 _tl128222128935_)
                                                (___kont133755133756_))))
                                        (___kont133755133756_))
                                    (___kont133755133756_))))
                            (___kont133755133756_))
                        (___kont133755133756_))
                    (___kont133755133756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133755133756_))))
                                            (___match134234134235_
                                             _e128181128829_
                                             _hd128182128832_
                                             _tl128183128834_
                                             _e128184128837_
                                             _hd128185128840_
                                             _tl128186128842_
                                             _e128187128845_
                                             _hd128188128848_
                                             _tl128189128850_
                                             _e128190128853_
                                             _hd128191128856_
                                             _tl128192128858_
                                             _e128193128861_
                                             _hd128194128864_
                                             _tl128195128866_
                                             _e128196128869_
                                             _hd128197128872_
                                             _tl128198128874_
                                             _e128199128877_
                                             _hd128200128880_
                                             _tl128201128882_
                                             _e128202128885_
                                             _hd128203128888_
                                             _tl128204128890_))
                                        (___match134234134235_
                                         _e128181128829_
                                         _hd128182128832_
                                         _tl128183128834_
                                         _e128184128837_
                                         _hd128185128840_
                                         _tl128186128842_
                                         _e128187128845_
                                         _hd128188128848_
                                         _tl128189128850_
                                         _e128190128853_
                                         _hd128191128856_
                                         _tl128192128858_
                                         _e128193128861_
                                         _hd128194128864_
                                         _tl128195128866_
                                         _e128196128869_
                                         _hd128197128872_
                                         _tl128198128874_
                                         _e128199128877_
                                         _hd128200128880_
                                         _tl128201128882_
                                         _e128202128885_
                                         _hd128203128888_
                                         _tl128204128890_))))
                                (___match134234134235_
                                 _e128181128829_
                                 _hd128182128832_
                                 _tl128183128834_
                                 _e128184128837_
                                 _hd128185128840_
                                 _tl128186128842_
                                 _e128187128845_
                                 _hd128188128848_
                                 _tl128189128850_
                                 _e128190128853_
                                 _hd128191128856_
                                 _tl128192128858_
                                 _e128193128861_
                                 _hd128194128864_
                                 _tl128195128866_
                                 _e128196128869_
                                 _hd128197128872_
                                 _tl128198128874_
                                 _e128199128877_
                                 _hd128200128880_
                                 _tl128201128882_
                                 _e128202128885_
                                 _hd128203128888_
                                 _tl128204128890_))
                            (___match134020134021_
                             _e128181128829_
                             _hd128182128832_
                             _tl128183128834_
                             _e128184128837_
                             _hd128185128840_
                             _tl128186128842_
                             _e128187128845_
                             _hd128188128848_
                             _tl128189128850_
                             _e128190128853_
                             _hd128191128856_
                             _tl128192128858_
                             _e128193128861_
                             _hd128194128864_
                             _tl128195128866_
                             _e128196128869_
                             _hd128197128872_
                             _tl128198128874_
                             _e128199128877_
                             _hd128200128880_
                             _tl128201128882_
                             _e128202128885_
                             _hd128203128888_
                             _tl128204128890_
                             _e128205128893_
                             _hd128206128896_
                             _tl128207128898_))))
                     (___match133842133843_
                      (lambda (_e128137129021_
                               _hd128138129024_
                               _tl128139129026_
                               _e128140129029_
                               _hd128141129032_
                               _tl128142129034_
                               _e128143129037_
                               _hd128144129040_
                               _tl128145129042_
                               _e128146129045_
                               _hd128147129048_
                               _tl128148129050_
                               _e128149129053_
                               _hd128150129056_
                               _tl128151129058_
                               _e128152129061_
                               _hd128153129064_
                               _tl128154129066_
                               _e128155129069_
                               _hd128156129072_
                               _tl128157129074_
                               _e128158129077_
                               _hd128159129080_
                               _tl128160129082_
                               _e128161129085_
                               _hd128162129088_
                               _tl128163129090_
                               _e128164129093_
                               _hd128165129096_
                               _tl128166129098_
                               ___splice133741133742_
                               _target128167129101_
                               _tl128169129103_)
                        (letrec ((_loop128170129106_
                                  (lambda (_hd128168129109_ _args128174129111_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128168129109_))
                                        (let ((_e128171129114_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128168129109_))))
                                          (let ((_lp-tl128173129119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128171129114_)))
                                                (_lp-hd128172129117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128171129114_))))
                                            (let ((__tmp134653
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128172129117_
                                                           _args128174129111_))))
                                              (declare (not safe))
                                              (_loop128170129106_
                                               _lp-tl128173129119_
                                               __tmp134653))))
                                        (let ((_args128175129122_
                                               (reverse _args128174129111_)))
                                          (let ((_L129125_ _args128175129122_)
                                                (_L129126_ _hd128165129096_)
                                                (_L129127_ _hd128156129072_)
                                                (_L129128_ _hd128147129048_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129128_
                                                        'call-method))
                                                     (let ((__tmp134654
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128120_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129127_
                                                        __tmp134654)))
                                                (___kont133739133740_
                                                 _L129125_
                                                 _L129126_
                                                 _L129127_
                                                 _L129128_)
                                                (___match134030134031_
                                                 _e128137129021_
                                                 _hd128138129024_
                                                 _tl128139129026_
                                                 _e128140129029_
                                                 _hd128141129032_
                                                 _tl128142129034_
                                                 _e128143129037_
                                                 _hd128144129040_
                                                 _tl128145129042_
                                                 _e128146129045_
                                                 _hd128147129048_
                                                 _tl128148129050_
                                                 _e128149129053_
                                                 _hd128150129056_
                                                 _tl128151129058_
                                                 _e128152129061_
                                                 _hd128153129064_
                                                 _tl128154129066_
                                                 _e128155129069_
                                                 _hd128156129072_
                                                 _tl128157129074_
                                                 _e128158129077_
                                                 _hd128159129080_
                                                 _tl128160129082_
                                                 _e128161129085_
                                                 _hd128162129088_
                                                 _tl128163129090_
                                                 _e128164129093_
                                                 _hd128165129096_
                                                 _tl128166129098_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128170129106_ _target128167129101_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133737133738_))
                    (let ((_e128137129021_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133737133738_))))
                      (let ((_tl128139129026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128137129021_)))
                            (_hd128138129024_
                             (let ()
                               (declare (not safe))
                               (##car _e128137129021_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128139129026_))
                            (let ((_e128140129029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128139129026_))))
                              (let ((_tl128142129034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128140129029_)))
                                    (_hd128141129032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128140129029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128141129032_))
                                    (let ((_e128143129037_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128141129032_))))
                                      (let ((_tl128145129042_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128143129037_)))
                                            (_hd128144129040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128143129037_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128144129040_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128144129040_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128145129042_))
                                                    (let ((_e128146129045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128145129042_))))
                                                      (let ((_tl128148129050_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128146129045_)))
                    (_hd128147129048_
                     (let () (declare (not safe)) (##car _e128146129045_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128148129050_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128142129034_))
                        (let ((_e128149129053_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128142129034_))))
                          (let ((_tl128151129058_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128149129053_)))
                                (_hd128150129056_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128149129053_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128150129056_))
                                (let ((_e128152129061_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128150129056_))))
                                  (let ((_tl128154129066_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128152129061_)))
                                        (_hd128153129064_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128152129061_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128153129064_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128153129064_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128154129066_))
                                                (let ((_e128155129069_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128154129066_))))
                                                  (let ((_tl128157129074_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128155129069_)))
                                                        (_hd128156129072_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128155129069_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128157129074_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128151129058_))
                                                            (let ((_e128158129077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128151129058_))))
                      (let ((_tl128160129082_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128158129077_)))
                            (_hd128159129080_
                             (let ()
                               (declare (not safe))
                               (##car _e128158129077_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128159129080_))
                            (let ((_e128161129085_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128159129080_))))
                              (let ((_tl128163129090_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128161129085_)))
                                    (_hd128162129088_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128161129085_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128162129088_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128162129088_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128163129090_))
                                            (let ((_e128164129093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128163129090_))))
                                              (let ((_tl128166129098_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128164129093_)))
                                                    (_hd128165129096_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128164129093_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128166129098_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128160129082_))
                                                        (let ((___splice133741133742_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128160129082_ '0))))
                  (let ((_tl128169129103_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133741133742_ '1)))
                        (_target128167129101_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133741133742_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128169129103_))
                        (___match133842133843_
                         _e128137129021_
                         _hd128138129024_
                         _tl128139129026_
                         _e128140129029_
                         _hd128141129032_
                         _tl128142129034_
                         _e128143129037_
                         _hd128144129040_
                         _tl128145129042_
                         _e128146129045_
                         _hd128147129048_
                         _tl128148129050_
                         _e128149129053_
                         _hd128150129056_
                         _tl128151129058_
                         _e128152129061_
                         _hd128153129064_
                         _tl128154129066_
                         _e128155129069_
                         _hd128156129072_
                         _tl128157129074_
                         _e128158129077_
                         _hd128159129080_
                         _tl128160129082_
                         _e128161129085_
                         _hd128162129088_
                         _tl128163129090_
                         _e128164129093_
                         _hd128165129096_
                         _tl128166129098_
                         ___splice133741133742_
                         _target128167129101_
                         _tl128169129103_)
                        (___match134030134031_
                         _e128137129021_
                         _hd128138129024_
                         _tl128139129026_
                         _e128140129029_
                         _hd128141129032_
                         _tl128142129034_
                         _e128143129037_
                         _hd128144129040_
                         _tl128145129042_
                         _e128146129045_
                         _hd128147129048_
                         _tl128148129050_
                         _e128149129053_
                         _hd128150129056_
                         _tl128151129058_
                         _e128152129061_
                         _hd128153129064_
                         _tl128154129066_
                         _e128155129069_
                         _hd128156129072_
                         _tl128157129074_
                         _e128158129077_
                         _hd128159129080_
                         _tl128160129082_
                         _e128161129085_
                         _hd128162129088_
                         _tl128163129090_
                         _e128164129093_
                         _hd128165129096_
                         _tl128166129098_))))
                (___match134030134031_
                 _e128137129021_
                 _hd128138129024_
                 _tl128139129026_
                 _e128140129029_
                 _hd128141129032_
                 _tl128142129034_
                 _e128143129037_
                 _hd128144129040_
                 _tl128145129042_
                 _e128146129045_
                 _hd128147129048_
                 _tl128148129050_
                 _e128149129053_
                 _hd128150129056_
                 _tl128151129058_
                 _e128152129061_
                 _hd128153129064_
                 _tl128154129066_
                 _e128155129069_
                 _hd128156129072_
                 _tl128157129074_
                 _e128158129077_
                 _hd128159129080_
                 _tl128160129082_
                 _e128161129085_
                 _hd128162129088_
                 _tl128163129090_
                 _e128164129093_
                 _hd128165129096_
                 _tl128166129098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134234134235_
                                                     _e128137129021_
                                                     _hd128138129024_
                                                     _tl128139129026_
                                                     _e128140129029_
                                                     _hd128141129032_
                                                     _tl128142129034_
                                                     _e128143129037_
                                                     _hd128144129040_
                                                     _tl128145129042_
                                                     _e128146129045_
                                                     _hd128147129048_
                                                     _tl128148129050_
                                                     _e128149129053_
                                                     _hd128150129056_
                                                     _tl128151129058_
                                                     _e128152129061_
                                                     _hd128153129064_
                                                     _tl128154129066_
                                                     _e128155129069_
                                                     _hd128156129072_
                                                     _tl128157129074_
                                                     _e128158129077_
                                                     _hd128159129080_
                                                     _tl128160129082_))))
                                            (___match134234134235_
                                             _e128137129021_
                                             _hd128138129024_
                                             _tl128139129026_
                                             _e128140129029_
                                             _hd128141129032_
                                             _tl128142129034_
                                             _e128143129037_
                                             _hd128144129040_
                                             _tl128145129042_
                                             _e128146129045_
                                             _hd128147129048_
                                             _tl128148129050_
                                             _e128149129053_
                                             _hd128150129056_
                                             _tl128151129058_
                                             _e128152129061_
                                             _hd128153129064_
                                             _tl128154129066_
                                             _e128155129069_
                                             _hd128156129072_
                                             _tl128157129074_
                                             _e128158129077_
                                             _hd128159129080_
                                             _tl128160129082_))
                                        (___match133910133911_
                                         _e128137129021_
                                         _hd128138129024_
                                         _tl128139129026_
                                         _e128140129029_
                                         _hd128141129032_
                                         _tl128142129034_
                                         _e128143129037_
                                         _hd128144129040_
                                         _tl128145129042_
                                         _e128146129045_
                                         _hd128147129048_
                                         _tl128148129050_
                                         _e128149129053_
                                         _hd128150129056_
                                         _tl128151129058_
                                         _e128152129061_
                                         _hd128153129064_
                                         _tl128154129066_
                                         _e128155129069_
                                         _hd128156129072_
                                         _tl128157129074_
                                         _e128158129077_
                                         _hd128159129080_
                                         _tl128160129082_
                                         _e128161129085_
                                         _hd128162129088_
                                         _tl128163129090_))
                                    (___match134234134235_
                                     _e128137129021_
                                     _hd128138129024_
                                     _tl128139129026_
                                     _e128140129029_
                                     _hd128141129032_
                                     _tl128142129034_
                                     _e128143129037_
                                     _hd128144129040_
                                     _tl128145129042_
                                     _e128146129045_
                                     _hd128147129048_
                                     _tl128148129050_
                                     _e128149129053_
                                     _hd128150129056_
                                     _tl128151129058_
                                     _e128152129061_
                                     _hd128153129064_
                                     _tl128154129066_
                                     _e128155129069_
                                     _hd128156129072_
                                     _tl128157129074_
                                     _e128158129077_
                                     _hd128159129080_
                                     _tl128160129082_))))
                            (___match134234134235_
                             _e128137129021_
                             _hd128138129024_
                             _tl128139129026_
                             _e128140129029_
                             _hd128141129032_
                             _tl128142129034_
                             _e128143129037_
                             _hd128144129040_
                             _tl128145129042_
                             _e128146129045_
                             _hd128147129048_
                             _tl128148129050_
                             _e128149129053_
                             _hd128150129056_
                             _tl128151129058_
                             _e128152129061_
                             _hd128153129064_
                             _tl128154129066_
                             _e128155129069_
                             _hd128156129072_
                             _tl128157129074_
                             _e128158129077_
                             _hd128159129080_
                             _tl128160129082_))))
                    (___match134172134173_
                     _e128137129021_
                     _hd128138129024_
                     _tl128139129026_
                     _e128140129029_
                     _hd128141129032_
                     _tl128142129034_
                     _e128143129037_
                     _hd128144129040_
                     _tl128145129042_
                     _e128146129045_
                     _hd128147129048_
                     _tl128148129050_
                     _e128149129053_
                     _hd128150129056_
                     _tl128151129058_
                     _e128152129061_
                     _hd128153129064_
                     _tl128154129066_
                     _e128155129069_
                     _hd128156129072_
                     _tl128157129074_))
                (___kont133755133756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont133755133756_))
                                            (___kont133755133756_))
                                        (___kont133755133756_))))
                                (___kont133755133756_))))
                        (___kont133755133756_))
                    (___kont133755133756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133755133756_))
                                                (___kont133755133756_))
                                            (___kont133755133756_))))
                                    (___kont133755133756_))))
                            (___kont133755133756_))))
                    (___kont133755133756_))))))))))
