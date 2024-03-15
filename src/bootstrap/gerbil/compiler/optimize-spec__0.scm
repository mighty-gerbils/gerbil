(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710487494)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp135462 (list gxc#::identity::t))
            (__tmp135460
             (let ((__tmp135461
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135461 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp135462
         '()
         __tmp135460
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args134326_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args134326_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp135463
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
        (declare (not safe))
        (make-promise __tmp135463)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134318_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self134321_
                (let ((__obj135455
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj135455))
               (__tmp135464
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134321_ _stx134318_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp135464
           gxc#current-compile-method
           _self134321_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp135467 (list gxc#::void::t))
            (__tmp135465
             (let ((__tmp135466
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135466 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp135467
         '(receiver methods slots)
         __tmp135465
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args134315_
        (apply make-instance gxc#::collect-object-refs::t _$args134315_)))
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
      (let ((__tmp135468
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
        (declare (not safe))
        (make-promise __tmp135468)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g135469_
               _receiver134276134281_
               _methods134277134283_
               _slots134278134285_
               _stx134287_)
        (let* ((_receiver134290_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134276134281_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134276134281_))
               (_methods134292_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134277134283_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134277134283_))
               (_slots134294_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134278134285_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134278134285_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self134296_
                  (let ((__obj135457
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
                       __obj135457
                       _receiver134290_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135457
                       _methods134292_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135457
                       _slots134294_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj135457))
                 (__tmp135470
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134296_ _stx134287_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135470
             gxc#current-compile-method
             _self134296_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134275134303_ . _args134305_)
        (apply gxc#apply-collect-object-refs__%
               _keys134275134303_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134275134303_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134275134303_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134275134303_ 'slots: absent-value))
               _args134305_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134279134311_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134279134311_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp135473 (list gxc#::basic-xform-expression::t))
            (__tmp135471
             (let ((__tmp135472
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135472 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp135473
         '(receiver klass methods slots)
         __tmp135471
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args134271_
        (apply make-instance gxc#::subst-object-refs::t _$args134271_)))
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
      (let ((__tmp135474
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
        (declare (not safe))
        (make-promise __tmp135474)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g135475_
               _receiver134227134233_
               _klass134228134235_
               _methods134229134237_
               _slots134230134239_
               _stx134241_)
        (let* ((_receiver134244_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134227134233_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134227134233_))
               (_klass134246_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134228134235_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134228134235_))
               (_methods134248_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134229134237_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134229134237_))
               (_slots134250_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134230134239_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134230134239_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self134252_
                  (let ((__obj135459
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
                       __obj135459
                       _receiver134244_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135459
                       _klass134246_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135459
                       _methods134248_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135459
                       _slots134250_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj135459))
                 (__tmp135476
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134252_ _stx134241_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135476
             gxc#current-compile-method
             _self134252_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134226134259_ . _args134261_)
        (apply gxc#apply-subst-object-refs__%
               _keys134226134259_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134226134259_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134226134259_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134226134259_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134226134259_ 'slots: absent-value))
               _args134261_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134231134267_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134231134267_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self131436_ _stx131437_)
        (letrec ((_generate-method-bind131439_
                  (lambda (_$klass134218_
                           _$method-table134219_
                           _id134220_
                           _$id134221_)
                    (let ((_$tmp134223_
                           (let ((__tmp135477 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135477))))
                      (let ((__tmp135525
                             (let ()
                               (declare (not safe))
                               (cons _$id134221_ '())))
                            (__tmp135478
                             (let ((__tmp135479
                                    (let ((__tmp135480
                                           (let ((__tmp135523
                                                  (let ((__tmp135524
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135524)))
                                                 (__tmp135481
                                                  (let ((__tmp135482
                                                         (let ((__tmp135483
                                                                (let ((__tmp135484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135485
                                      (let ((__tmp135486
                                             (let ((__tmp135506
                                                    (let ((__tmp135507
                                                           (let ((__tmp135522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134223_ '())))
                         (__tmp135508
                          (let ((__tmp135509
                                 (let ((__tmp135510
                                        (let ((__tmp135520
                                               (let ((__tmp135521
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135521)))
                                              (__tmp135511
                                               (let ((__tmp135518
                                                      (let ((__tmp135519
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134219_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135519)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135512
                                                      (let ((__tmp135516
                                                             (let ((__tmp135517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134220_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135517)))
                    (__tmp135513
                     (let ((__tmp135514
                            (let ((__tmp135515
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135515))))
                       (declare (not safe))
                       (cons __tmp135514 '()))))
                (declare (not safe))
                (cons __tmp135516 __tmp135513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135518
                                                       __tmp135512))))
                                          (declare (not safe))
                                          (cons __tmp135520 __tmp135511))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135510))))
                            (declare (not safe))
                            (cons __tmp135509 '()))))
                     (declare (not safe))
                     (cons __tmp135522 __tmp135508))))
              (declare (not safe))
              (cons __tmp135507 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135487
                                                    (let ((__tmp135488
                                                           (let ((__tmp135489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135504
                                 (let ((__tmp135505
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134223_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135505)))
                                (__tmp135490
                                 (let ((__tmp135502
                                        (let ((__tmp135503
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134223_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135503)))
                                       (__tmp135491
                                        (let ((__tmp135492
                                               (let ((__tmp135493
                                                      (let ((__tmp135500
                                                             (let ((__tmp135501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135501)))
                    (__tmp135494
                     (let ((__tmp135498
                            (let ((__tmp135499
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135499)))
                           (__tmp135495
                            (let ((__tmp135496
                                   (let ((__tmp135497
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134220_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135497))))
                              (declare (not safe))
                              (cons __tmp135496 '()))))
                       (declare (not safe))
                       (cons __tmp135498 __tmp135495))))
                (declare (not safe))
                (cons __tmp135500 __tmp135494))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135493))))
                                          (declare (not safe))
                                          (cons __tmp135492 '()))))
                                   (declare (not safe))
                                   (cons __tmp135502 __tmp135491))))
                            (declare (not safe))
                            (cons __tmp135504 __tmp135490))))
                     (declare (not safe))
                     (cons '%#if __tmp135489))))
              (declare (not safe))
              (cons __tmp135488 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135506
                                                     __tmp135487))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135486))))
                                 (declare (not safe))
                                 (cons __tmp135485 '()))))
                          (declare (not safe))
                          (cons '() __tmp135484))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135482 '()))))
                                             (declare (not safe))
                                             (cons __tmp135523 __tmp135481))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135480))))
                               (declare (not safe))
                               (cons __tmp135479 '()))))
                        (declare (not safe))
                        (cons __tmp135525 __tmp135478)))))
                 (_generate-slot-bind131440_
                  (lambda (_$klass134212_ _id134213_ _$id134214_)
                    (let ((_$tmp134216_
                           (let ((__tmp135526 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135526))))
                      (let ((__tmp135563
                             (let ()
                               (declare (not safe))
                               (cons _$id134214_ '())))
                            (__tmp135527
                             (let ((__tmp135528
                                    (let ((__tmp135529
                                           (let ((__tmp135549
                                                  (let ((__tmp135550
                                                         (let ((__tmp135562
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134216_ '())))
                       (__tmp135551
                        (let ((__tmp135552
                               (let ((__tmp135553
                                      (let ((__tmp135560
                                             (let ((__tmp135561
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135561)))
                                            (__tmp135554
                                             (let ((__tmp135558
                                                    (let ((__tmp135559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135555
                                                    (let ((__tmp135556
                                                           (let ((__tmp135557
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134213_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135557))))
              (declare (not safe))
              (cons __tmp135556 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135558
                                                     __tmp135555))))
                                        (declare (not safe))
                                        (cons __tmp135560 __tmp135554))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135553))))
                          (declare (not safe))
                          (cons __tmp135552 '()))))
                   (declare (not safe))
                   (cons __tmp135562 __tmp135551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135550 '())))
                                                 (__tmp135530
                                                  (let ((__tmp135531
                                                         (let ((__tmp135532
                                                                (let ((__tmp135547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135548
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134216_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135548)))
                              (__tmp135533
                               (let ((__tmp135545
                                      (let ((__tmp135546
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134216_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135546)))
                                     (__tmp135534
                                      (let ((__tmp135535
                                             (let ((__tmp135536
                                                    (let ((__tmp135543
                                                           (let ((__tmp135544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135544)))
                  (__tmp135537
                   (let ((__tmp135541
                          (let ((__tmp135542
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135542)))
                         (__tmp135538
                          (let ((__tmp135539
                                 (let ((__tmp135540
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134213_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135540))))
                            (declare (not safe))
                            (cons __tmp135539 '()))))
                     (declare (not safe))
                     (cons __tmp135541 __tmp135538))))
              (declare (not safe))
              (cons __tmp135543 __tmp135537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135536))))
                                        (declare (not safe))
                                        (cons __tmp135535 '()))))
                                 (declare (not safe))
                                 (cons __tmp135545 __tmp135534))))
                          (declare (not safe))
                          (cons __tmp135547 __tmp135533))))
                   (declare (not safe))
                   (cons '%#if __tmp135532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135531 '()))))
                                             (declare (not safe))
                                             (cons __tmp135549 __tmp135530))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135529))))
                               (declare (not safe))
                               (cons __tmp135528 '()))))
                        (declare (not safe))
                        (cons __tmp135563 __tmp135527)))))
                 (_generate-specializer-impl131441_
                  (lambda (_$klass134206_
                           _$method-table134207_
                           _methods-bind134208_
                           _slots-bind134209_
                           _specializer-impl134210_)
                    (let ((__tmp135564
                           (let ((__tmp135565
                                  (let ((__tmp135571
                                         (let ((__tmp135572
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134207_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134206_ __tmp135572)))
                                        (__tmp135566
                                         (let ((__tmp135567
                                                (let ((__tmp135568
                                                       (let ((__tmp135570
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134209_ _methods-bind134208_)))
                     (__tmp135569
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134210_ '()))))
                 (declare (not safe))
                 (cons __tmp135570 __tmp135569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135568))))
                                           (declare (not safe))
                                           (cons __tmp135567 '()))))
                                    (declare (not safe))
                                    (cons __tmp135571 __tmp135566))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135565))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135564 _stx131437_))))
                 (_generate-specializer-def131442_
                  (lambda (_id134202_
                           _specializer-id134203_
                           _specializer-impl134204_)
                    (let ((__tmp135573
                           (let ((__tmp135574
                                  (let ((__tmp135575
                                         (let ((__tmp135588
                                                (let ((__tmp135589
                                                       (let ((__tmp135590
                                                              (let ((__tmp135592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134203_ '())))
                            (__tmp135591
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134204_ '()))))
                        (declare (not safe))
                        (cons __tmp135592 __tmp135591))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135590))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135589
                                                   _stx131437_)))
                                               (__tmp135576
                                                (let ((__tmp135577
                                                       (let ((__tmp135578
                                                              (let ((__tmp135579
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135586
                                    (let ((__tmp135587
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135587)))
                                   (__tmp135580
                                    (let ((__tmp135584
                                           (let ((__tmp135585
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134202_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135585)))
                                          (__tmp135581
                                           (let ((__tmp135582
                                                  (let ((__tmp135583
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135583))))
                                             (declare (not safe))
                                             (cons __tmp135582 '()))))
                                      (declare (not safe))
                                      (cons __tmp135584 __tmp135581))))
                               (declare (not safe))
                               (cons __tmp135586 __tmp135580))))
                        (declare (not safe))
                        (cons '%#call __tmp135579))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135578 _stx131437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135577 '()))))
                                           (declare (not safe))
                                           (cons __tmp135588 __tmp135576))))
                                    (declare (not safe))
                                    (cons _stx131437_ __tmp135575))))
                             (declare (not safe))
                             (cons '%#begin __tmp135574))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135573 _stx131437_)))))
          (let* ((___stx134415134416_ _stx131437_)
                 (_g131445131465_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134415134416_)))))
            (let ((___kont134417134418_
                   (lambda (_L131509_ _L131510_)
                     (let ((_method-calls131529_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131530_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131531_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131533_
                                 (lambda ()
                                   (if (let ((__tmp135594
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131529_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135594))
                                       (let ((__tmp135593
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131530_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135593))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131509_))
                             (let* ((___stx134329134330_ _L131509_)
                                    (_g131920131938_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134329134330_)))))
                               (let ((___kont134331134332_
                                      (lambda (_L131974_ _L131975_ _L131976_)
                                        (for-each
                                         (lambda (_g131991131993_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131991131993_
                                              'receiver:
                                              _L131976_
                                              'methods:
                                              _method-calls131529_
                                              'slots:
                                              _slot-refs131530_)))
                                         _L131974_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131533_))
                                            _stx131437_
                                            (let* ((_specializer-id132002_
                                                    (let* ((_id131996_
                                                            (let ((__tmp135716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131510_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135716 '"::specialize")))
                   (_specializer-id131999_
                    (let ((__tmp135717
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131437_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131996_ __tmp135717))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131999_))
              _specializer-id131999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132004_
                                                    (let ((__tmp135718
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135718)))
                                                   (_$method-table132006_
                                                    (let ((__tmp135719
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135719)))
                                                   (_methods132008_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131529_)))
                                                   (_$methods132012_
                                                    (map (lambda (_id132010_)
                                                           (let ((__tmp135720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132010_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135720)))
                 _methods132008_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135721_
                                                    (for-each
                                                     (lambda (_g132013132016_
                                                              _g132014132018_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131529_
                                                          _g132013132016_
                                                          _g132014132018_)))
                                                     _methods132008_
                                                     _$methods132012_))
                                                   (_methods-bind132029_
                                                    (map (lambda (_g132021132024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132022132026_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131439_
                      _$klass132004_
                      _$method-table132006_
                      _g132021132024_
                      _g132022132026_)))
                 _methods132008_
                 _$methods132012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132031_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131530_)))
                                                   (_$slots132035_
                                                    (map (lambda (_id132033_)
                                                           (let ((__tmp135722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132033_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135722)))
                 _slots132031_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135723_
                                                    (for-each
                                                     (lambda (_g132036132039_
                                                              _g132037132041_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131530_
                                                          _g132036132039_
                                                          _g132037132041_)))
                                                     _slots132031_
                                                     _$slots132035_))
                                                   (_slots-bind132052_
                                                    (map (lambda (_g132044132047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132045132049_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131440_
                      _$klass132004_
                      _g132044132047_
                      _g132045132049_)))
                 _slots132031_
                 _$slots132035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132058_
                                                    (map (lambda (_g132053132055_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132053132055_
                                                              'receiver:
                                                              _L131976_
                                                              'klass:
                                                              _$klass132004_
                                                              'methods:
                                                              _method-calls131529_
                                                              'slots:
                                                              _slot-refs131530_)))
                                                         _L131974_))
                                                   (_specializer-impl132060_
                                                    (let ((__tmp135724
                                                           (let ((__tmp135725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135726
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131976_ _L131975_))))
                            (declare (not safe))
                            (cons __tmp135726 _specializer-body132058_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135725))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135724 _stx131437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132062_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131441_
                                                       _$klass132004_
                                                       _$method-table132006_
                                                       _methods-bind132029_
                                                       _slots-bind132052_
                                                       _specializer-impl132060_))))
                                              (let ((__tmp135728
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131510_)))
                                                    (__tmp135727
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132002_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135728
                                                 '" => "
                                                 __tmp135727))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131442_
                                                 _L131510_
                                                 _specializer-id132002_
                                                 _specializer-impl132062_))))))
                                     (___kont134333134334_
                                      (lambda () _stx131437_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134329134330_))
                                     (let ((_e131927131950_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134329134330_))))
                                       (let ((_tl131925131955_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131927131950_)))
                                             (_hd131926131953_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131927131950_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131925131955_))
                                             (let ((_e131930131958_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131925131955_))))
                                               (let ((_tl131928131963_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131930131958_)))
                                                     (_hd131929131961_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131930131958_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131929131961_))
                                                     (let ((_e131933131966_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131929131961_))))
                                                       (let ((_tl131931131971_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131933131966_)))
                     (_hd131932131969_
                      (let () (declare (not safe)) (##car _e131933131966_))))
                 (___kont134331134332_
                  _tl131928131963_
                  _tl131931131971_
                  _hd131932131969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134333134334_))))
                                             (___kont134333134334_))))
                                     (___kont134333134334_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131509_))
                                 (let* ((_g132068132087_
                                         (lambda (_g132069132084_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132069132084_))))
                                        (_g132067132370_
                                         (lambda (_g132069132090_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132069132090_))
                                               (let ((_e132073132092_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132069132090_))))
                                                 (let ((_hd132072132095_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132073132092_)))
                                                       (_tl132071132097_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132073132092_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132071132097_))
                                                       (let ((_g135699_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132071132097_ '0))))
                 (begin
                   (let ((_g135700_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135699_)
                                (##vector-length _g135699_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135700_ 2)))
                         (error "Context expects 2 values" _g135700_)))
                   (let ((_target132074132100_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135699_ 0)))
                         (_tl132076132102_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135699_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132076132102_))
                         (letrec ((_loop132077132105_
                                   (lambda (_hd132075132108_
                                            _clause132081132110_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132075132108_))
                                         (let ((_e132078132113_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132075132108_))))
                                           (let ((_lp-hd132079132116_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132078132113_)))
                                                 (_lp-tl132080132118_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132078132113_))))
                                             (let ((__tmp135715
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132079132116_
                                                            _clause132081132110_))))
                                               (declare (not safe))
                                               (_loop132077132105_
                                                _lp-tl132080132118_
                                                __tmp135715))))
                                         (let ((_clause132082132121_
                                                (reverse _clause132081132110_)))
                                           ((lambda (_L132124_)
                                              (for-each
                                               (lambda (_clause132137_)
                                                 (let* ((___stx134355134356_
                                                         _clause132137_)
                                                        (_g132140132155_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134355134356_)))))
                                                   (let ((___kont134357134358_
                                                          (lambda (_L132183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132184_
                           _L132185_)
                    (for-each
                     (lambda (_g132200132202_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132200132202_
                          'receiver:
                          _L132185_
                          'methods:
                          _method-calls131529_
                          'slots:
                          _slot-refs131530_)))
                     _L132183_)))
                 (___kont134359134360_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134355134356_))
                                                         (let ((_e132147132167_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134355134356_))))
                   (let ((_tl132145132172_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132147132167_)))
                         (_hd132146132170_
                          (let ()
                            (declare (not safe))
                            (##car _e132147132167_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132146132170_))
                         (let ((_e132150132175_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132146132170_))))
                           (let ((_tl132148132180_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132150132175_)))
                                 (_hd132149132178_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132150132175_))))
                             (___kont134357134358_
                              _tl132145132172_
                              _tl132148132180_
                              _hd132149132178_)))
                         (___kont134359134360_))))
                 (___kont134359134360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135701
                                                      (lambda (_g132207132210_
                                                               _g132208132212_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132207132210_
                                                                _g132208132212_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135701
                                                         '()
                                                         _L132124_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131533_))
                                                  _stx131437_
                                                  (let* ((_specializer-id132221_
                                                          (let* ((_id132215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135702
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131510_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135702 '"::specialize")))
                         (_specializer-id132218_
                          (let ((__tmp135703
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131437_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132215_ __tmp135703))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132218_))
                    _specializer-id132218_))
                 (_$klass132223_
                  (let ((__tmp135704 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135704)))
                 (_$method-table132225_
                  (let ((__tmp135705 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135705)))
                 (_methods132227_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131529_)))
                 (_$methods132231_
                  (map (lambda (_id132229_)
                         (let ((__tmp135706 (gensym _id132229_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135706)))
                       _methods132227_))
                 (_g135707_
                  (for-each
                   (lambda (_g132232132235_ _g132233132237_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131529_
                        _g132232132235_
                        _g132233132237_)))
                   _methods132227_
                   _$methods132231_))
                 (_methods-bind132248_
                  (map (lambda (_g132240132243_ _g132241132245_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131439_
                            _$klass132223_
                            _$method-table132225_
                            _g132240132243_
                            _g132241132245_)))
                       _methods132227_
                       _$methods132231_))
                 (_slots132250_
                  (let () (declare (not safe)) (hash-keys _slot-refs131530_)))
                 (_$slots132254_
                  (map (lambda (_id132252_)
                         (let ((__tmp135708 (gensym _id132252_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135708)))
                       _slots132250_))
                 (_g135709_
                  (for-each
                   (lambda (_g132255132258_ _g132256132260_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131530_
                        _g132255132258_
                        _g132256132260_)))
                   _slots132250_
                   _$slots132254_))
                 (_slots-bind132271_
                  (map (lambda (_g132263132266_ _g132264132268_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131440_
                            _$klass132223_
                            _g132263132266_
                            _g132264132268_)))
                       _slots132250_
                       _$slots132254_))
                 (_specializer-clauses132363_
                  (map (lambda (_clause132273_)
                         (let* ((___stx134375134376_ _clause132273_)
                                (_g132276132291_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134375134376_)))))
                           (let ((___kont134377134378_
                                  (lambda (_L132319_ _L132320_ _L132321_)
                                    (let* ((_body132351_
                                            (map (lambda (_g132346132348_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132346132348_
                                                      'receiver:
                                                      _L132321_
                                                      'klass:
                                                      _$klass132223_
                                                      'methods:
                                                      _method-calls131529_
                                                      'slots:
                                                      _slot-refs131530_)))
                                                 _L132319_))
                                           (__tmp135710
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132321_ _L132320_))))
                                      (declare (not safe))
                                      (cons __tmp135710 _body132351_))))
                                 (___kont134379134380_
                                  (lambda () _clause132273_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134375134376_))
                                 (let ((_e132283132303_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134375134376_))))
                                   (let ((_tl132281132308_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132283132303_)))
                                         (_hd132282132306_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132283132303_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132282132306_))
                                         (let ((_e132286132311_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132282132306_))))
                                           (let ((_tl132284132316_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132286132311_)))
                                                 (_hd132285132314_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132286132311_))))
                                             (___kont134377134378_
                                              _tl132281132308_
                                              _tl132284132316_
                                              _hd132285132314_)))
                                         (___kont134379134380_))))
                                 (___kont134379134380_)))))
                       (let ((__tmp135711
                              (lambda (_g132355132358_ _g132356132360_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132355132358_ _g132356132360_)))))
                         (declare (not safe))
                         (foldr1 __tmp135711 '() _L132124_))))
                 (_specializer-impl132365_
                  (let ((__tmp135712
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132363_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135712 _stx131437_)))
                 (_specializer-impl132367_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131441_
                     _$klass132223_
                     _$method-table132225_
                     _methods-bind132248_
                     _slots-bind132271_
                     _specializer-impl132365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135714
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131510_)))
                                                          (__tmp135713
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132221_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135714
                                                       '" => "
                                                       __tmp135713))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131442_
                                                       _L131510_
                                                       _specializer-id132221_
                                                       _specializer-impl132367_)))))
                                            _clause132082132121_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132077132105_ _target132074132100_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132068132087_ _g132069132090_))))))
               (let ()
                 (declare (not safe))
                 (_g132068132087_ _g132069132090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132068132087_
                                                  _g132069132090_))))))
                                   (declare (not safe))
                                   (_g132067132370_ _L131509_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131509_))
                                     (let* ((_g132373132403_
                                             (lambda (_g132374132400_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132374132400_))))
                                            (_g132372133008_
                                             (lambda (_g132374132406_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132374132406_))
                                                   (let ((_e132380132408_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132374132406_))))
                                                     (let ((_hd132379132411_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132380132408_)))
                                                           (_tl132378132413_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132380132408_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132378132413_))
                                                           (let ((_e132383132416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132378132413_))))
                     (let ((_hd132382132419_
                            (let ()
                              (declare (not safe))
                              (##car _e132383132416_)))
                           (_tl132381132421_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132383132416_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132382132419_))
                           (let ((_e132386132424_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132382132419_))))
                             (let ((_hd132385132427_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132386132424_)))
                                   (_tl132384132429_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132386132424_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132385132427_))
                                   (let ((_e132389132432_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132385132427_))))
                                     (let ((_hd132388132435_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132389132432_)))
                                           (_tl132387132437_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132389132432_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132388132435_))
                                           (let ((_e132392132440_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132388132435_))))
                                             (let ((_hd132391132443_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132392132440_)))
                                                   (_tl132390132445_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132392132440_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132390132445_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132387132437_))
                                                       (let ((_e132395132448_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132387132437_))))
                 (let ((_hd132394132451_
                        (let () (declare (not safe)) (##car _e132395132448_)))
                       (_tl132393132453_
                        (let () (declare (not safe)) (##cdr _e132395132448_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132393132453_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132384132429_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132381132421_))
                               (let ((_e132398132456_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132381132421_))))
                                 (let ((_hd132397132459_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132398132456_)))
                                       (_tl132396132461_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132398132456_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132396132461_))
                                       ((lambda (_L132464_ _L132465_ _L132466_)
                                          (let* ((_g132489132507_
                                                  (lambda (_g132490132504_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132490132504_))))
                                                 (_g132488132558_
                                                  (lambda (_g132490132510_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132490132510_))
                                                        (let ((_e132496132512_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132490132510_))))
                  (let ((_hd132495132515_
                         (let () (declare (not safe)) (##car _e132496132512_)))
                        (_tl132494132517_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132496132512_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132494132517_))
                        (let ((_e132499132520_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132494132517_))))
                          (let ((_hd132498132523_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132499132520_)))
                                (_tl132497132525_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132499132520_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132498132523_))
                                (let ((_e132502132528_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132498132523_))))
                                  (let ((_hd132501132531_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132502132528_)))
                                        (_tl132500132533_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132502132528_))))
                                    ((lambda (_L132536_ _L132537_ _L132538_)
                                       (for-each
                                        (lambda (_g132553132555_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132553132555_
                                             'receiver:
                                             _L132538_
                                             'methods:
                                             _method-calls131529_
                                             'slots:
                                             _slot-refs131530_)))
                                        _L132536_))
                                     _tl132497132525_
                                     _tl132500132533_
                                     _hd132501132531_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132489132507_ _g132490132510_)))))
                        (let ()
                          (declare (not safe))
                          (_g132489132507_ _g132490132510_)))))
                (let ()
                  (declare (not safe))
                  (_g132489132507_ _g132490132510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132488132558_ _L132465_))
                                          (let* ((_g132561132580_
                                                  (lambda (_g132562132577_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132562132577_))))
                                                 (_g132560132699_
                                                  (lambda (_g132562132583_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132562132583_))
                                                        (let ((_e132566132585_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132562132583_))))
                  (let ((_hd132565132588_
                         (let () (declare (not safe)) (##car _e132566132585_)))
                        (_tl132564132590_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132566132585_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132564132590_))
                        (let ((_g135669_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132564132590_
                                  '0))))
                          (begin
                            (let ((_g135670_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135669_)
                                         (##vector-length _g135669_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135670_ 2)))
                                  (error "Context expects 2 values"
                                         _g135670_)))
                            (let ((_target132567132593_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135669_ 0)))
                                  (_tl132569132595_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135669_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132569132595_))
                                  (letrec ((_loop132570132598_
                                            (lambda (_hd132568132601_
                                                     _clause132574132603_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132568132601_))
                                                  (let ((_e132571132606_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132568132601_))))
                                                    (let ((_lp-hd132572132609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132571132606_)))
                                                          (_lp-tl132573132611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132571132606_))))
                                                      (let ((__tmp135672
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132572132609_ _clause132574132603_))))
                (declare (not safe))
                (_loop132570132598_ _lp-tl132573132611_ __tmp135672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132575132614_
                                                         (reverse _clause132574132603_)))
                                                    ((lambda (_L132617_)
                                                       (for-each
                                                        (lambda (_clause132630_)
                                                          (let* ((_g132632132647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132633132644_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132633132644_))))
                         (_g132631132689_
                          (lambda (_g132633132650_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132633132650_))
                                (let ((_e132639132652_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132633132650_))))
                                  (let ((_hd132638132655_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132639132652_)))
                                        (_tl132637132657_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132639132652_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132638132655_))
                                        (let ((_e132642132660_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132638132655_))))
                                          (let ((_hd132641132663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132642132660_)))
                                                (_tl132640132665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132642132660_))))
                                            ((lambda (_L132668_
                                                      _L132669_
                                                      _L132670_)
                                               (for-each
                                                (lambda (_g132684132686_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132684132686_
                                                     'receiver:
                                                     _L132670_
                                                     'methods:
                                                     _method-calls131529_
                                                     'slots:
                                                     _slot-refs131530_)))
                                                _L132668_))
                                             _tl132637132657_
                                             _tl132640132665_
                                             _hd132641132663_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132632132647_ _g132633132650_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132632132647_ _g132633132650_))))))
                    (declare (not safe))
                    (_g132631132689_ _clause132630_)))
                (let ((__tmp135671
                       (lambda (_g132691132694_ _g132692132696_)
                         (let ()
                           (declare (not safe))
                           (cons _g132691132694_ _g132692132696_)))))
                  (declare (not safe))
                  (foldr1 __tmp135671 '() _L132617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132575132614_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132570132598_
                                       _target132567132593_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132561132580_ _g132562132583_))))))
                        (let ()
                          (declare (not safe))
                          (_g132561132580_ _g132562132583_)))))
                (let ()
                  (declare (not safe))
                  (_g132561132580_ _g132562132583_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132560132699_ _L132464_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131533_))
                                              _stx131437_
                                              (let* ((_specializer-id132708_
                                                      (let* ((_id132702_
                                                              (let ((__tmp135673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131510_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135673 '"::specialize")))
                     (_specializer-id132705_
                      (let ((__tmp135674
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131437_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132702_ __tmp135674))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132705_))
                _specializer-id132705_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132710_
                                                      (let ((__tmp135675
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135675)))
                                                     (_$method-table132712_
                                                      (let ((__tmp135676
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135676)))
                                                     (_methods132714_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131529_)))
                                                     (_$methods132718_
                                                      (map (lambda (_id132716_)
                                                             (let ((__tmp135677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132716_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135677)))
                   _methods132714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135678_
                                                      (for-each
                                                       (lambda (_g132719132722_
                                                                _g132720132724_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131529_
                                                            _g132719132722_
                                                            _g132720132724_)))
                                                       _methods132714_
                                                       _$methods132718_))
                                                     (_methods-bind132735_
                                                      (map (lambda (_g132727132730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132728132732_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131439_
                        _$klass132710_
                        _$method-table132712_
                        _g132727132730_
                        _g132728132732_)))
                   _methods132714_
                   _$methods132718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132737_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131530_)))
                                                     (_$slots132741_
                                                      (map (lambda (_id132739_)
                                                             (let ((__tmp135679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132739_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135679)))
                   _slots132737_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135680_
                                                      (for-each
                                                       (lambda (_g132742132745_
                                                                _g132743132747_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131530_
                                                            _g132742132745_
                                                            _g132743132747_)))
                                                       _slots132737_
                                                       _$slots132741_))
                                                     (_slots-bind132758_
                                                      (map (lambda (_g132750132753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132751132755_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131440_
                        _$klass132710_
                        _g132750132753_
                        _g132751132755_)))
                   _slots132737_
                   _$slots132741_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132844_
                                                      (let* ((_g132760132778_
                                                              (lambda (_g132761132775_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132761132775_))))
                     (_g132759132841_
                      (lambda (_g132761132781_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132761132781_))
                            (let ((_e132767132783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132761132781_))))
                              (let ((_hd132766132786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132767132783_)))
                                    (_tl132765132788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132767132783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132765132788_))
                                    (let ((_e132770132791_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132765132788_))))
                                      (let ((_hd132769132794_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132770132791_)))
                                            (_tl132768132796_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132770132791_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132769132794_))
                                            (let ((_e132773132799_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132769132794_))))
                                              (let ((_hd132772132802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132773132799_)))
                                                    (_tl132771132804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132773132799_))))
                                                ((lambda (_L132807_
                                                          _L132808_
                                                          _L132809_)
                                                   (let* ((_body132839_
                                                           (map (lambda (_g132834132836_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132834132836_
                             'receiver:
                             _L132809_
                             'klass:
                             _$klass132710_
                             'methods:
                             _method-calls131529_
                             'slots:
                             _slot-refs131530_)))
                        _L132807_))
                  (__tmp135681
                   (let ((__tmp135682
                          (let ((__tmp135683
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132809_ _L132808_))))
                            (declare (not safe))
                            (cons __tmp135683 _body132839_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135681
                                                      _L132465_)))
                                                 _tl132768132796_
                                                 _tl132771132804_
                                                 _hd132772132802_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132760132778_
                                               _g132761132781_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132760132778_ _g132761132781_)))))
                            (let ()
                              (declare (not safe))
                              (_g132760132778_ _g132761132781_))))))
                (declare (not safe))
                (_g132759132841_ _L132465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133001_
                                                      (let* ((_g132846132865_
                                                              (lambda (_g132847132862_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132847132862_))))
                     (_g132845132998_
                      (lambda (_g132847132868_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132847132868_))
                            (let ((_e132851132870_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132847132868_))))
                              (let ((_hd132850132873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132851132870_)))
                                    (_tl132849132875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132851132870_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132849132875_))
                                    (let ((_g135684_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132849132875_
                                              '0))))
                                      (begin
                                        (let ((_g135685_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135684_)
                                                     (##vector-length
                                                      _g135684_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135685_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135685_)))
                                        (let ((_target132852132878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135684_ 0)))
                                              (_tl132854132880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135684_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132854132880_))
                                              (letrec ((_loop132855132883_
                                                        (lambda (_hd132853132886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132859132888_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132853132886_))
                      (let ((_e132856132891_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132853132886_))))
                        (let ((_lp-hd132857132894_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132856132891_)))
                              (_lp-tl132858132896_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132856132891_))))
                          (let ((__tmp135689
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132857132894_
                                         _clause132859132888_))))
                            (declare (not safe))
                            (_loop132855132883_
                             _lp-tl132858132896_
                             __tmp135689))))
                      (let ((_clause132860132899_
                             (reverse _clause132859132888_)))
                        ((lambda (_L132902_)
                           (let* ((_clauses132996_
                                   (map (lambda (_clause132916_)
                                          (let* ((___stx134395134396_
                                                  _clause132916_)
                                                 (_g132919132934_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134395134396_)))))
                                            (let ((___kont134397134398_
                                                   (lambda (_L132962_
                                                            _L132963_
                                                            _L132964_)
                                                     (let* ((_body132984_
                                                             (map (lambda (_g132979132981_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132979132981_
                               'receiver:
                               _L132964_
                               'klass:
                               _$klass132710_
                               'methods:
                               _method-calls131529_
                               'slots:
                               _slot-refs131530_)))
                          _L132962_))
                    (__tmp135686
                     (let () (declare (not safe)) (cons _L132964_ _L132963_))))
               (declare (not safe))
               (cons __tmp135686 _body132984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134399134400_
                                                   (lambda () _clause132916_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134395134396_))
                                                  (let ((_e132926132946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134395134396_))))
                                                    (let ((_tl132924132951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132926132946_)))
                                                          (_hd132925132949_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132926132946_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132925132949_))
                                                          (let ((_e132929132954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132925132949_))))
                    (let ((_tl132927132959_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132929132954_)))
                          (_hd132928132957_
                           (let ()
                             (declare (not safe))
                             (##car _e132929132954_))))
                      (___kont134397134398_
                       _tl132924132951_
                       _tl132927132959_
                       _hd132928132957_)))
                  (___kont134399134400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134399134400_)))))
                                        (let ((__tmp135687
                                               (lambda (_g132988132991_
                                                        _g132989132993_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132988132991_
                                                         _g132989132993_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135687 '() _L132902_))))
                                  (__tmp135688
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132996_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135688 _L132464_)))
                         _clause132860132899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132855132883_
                                                   _target132852132878_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132846132865_
                                                 _g132847132868_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132846132865_ _g132847132868_)))))
                            (let ()
                              (declare (not safe))
                              (_g132846132865_ _g132847132868_))))))
                (declare (not safe))
                (_g132845132998_ _L132464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133003_
                                                      (let ((__tmp135690
                                                             (let ((__tmp135691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135693
                                   (let ((__tmp135694
                                          (let ((__tmp135696
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132466_ '())))
                                                (__tmp135695
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132844_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135696 __tmp135695))))
                                     (declare (not safe))
                                     (cons __tmp135694 '())))
                                  (__tmp135692
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133001_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135693 __tmp135692))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135691))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135690 _stx131437_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133005_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131441_
                                                         _$klass132710_
                                                         _$method-table132712_
                                                         _methods-bind132735_
                                                         _slots-bind132758_
                                                         _specializer-impl133003_))))
                                                (let ((__tmp135698
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131510_)))
                                                      (__tmp135697
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132708_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135698
                                                   '" => "
                                                   __tmp135697))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131442_
                                                   _L131510_
                                                   _specializer-id132708_
                                                   _specializer-impl133005_)))))
                                        _hd132397132459_
                                        _hd132394132451_
                                        _hd132391132443_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132373132403_ _g132374132406_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132373132403_ _g132374132406_)))
                           (let ()
                             (declare (not safe))
                             (_g132373132403_ _g132374132406_)))
                       (let ()
                         (declare (not safe))
                         (_g132373132403_ _g132374132406_)))))
               (let () (declare (not safe)) (_g132373132403_ _g132374132406_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132373132403_
                                                      _g132374132406_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132373132403_
                                              _g132374132406_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132373132403_ _g132374132406_)))))
                           (let ()
                             (declare (not safe))
                             (_g132373132403_ _g132374132406_)))))
                   (let ()
                     (declare (not safe))
                     (_g132373132403_ _g132374132406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132373132403_
                                                      _g132374132406_))))))
                                       (declare (not safe))
                                       (_g132372133008_ _L131509_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131509_))
                                         (let* ((_g133011133064_
                                                 (lambda (_g133012133061_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133012133061_))))
                                                (_g133010134195_
                                                 (lambda (_g133012133067_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133012133067_))
                                                       (let ((_e133020133069_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133012133067_))))
                 (let ((_hd133019133072_
                        (let () (declare (not safe)) (##car _e133020133069_)))
                       (_tl133018133074_
                        (let () (declare (not safe)) (##cdr _e133020133069_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133019133072_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133019133072_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133018133074_))
                               (let ((_e133023133077_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133018133074_))))
                                 (let ((_hd133022133080_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133023133077_)))
                                       (_tl133021133082_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133023133077_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133022133080_))
                                       (let ((_e133026133085_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133022133080_))))
                                         (let ((_hd133025133088_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133026133085_)))
                                               (_tl133024133090_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133026133085_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133025133088_))
                                               (let ((_e133029133093_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133025133088_))))
                                                 (let ((_hd133028133096_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133029133093_)))
                                                       (_tl133027133098_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133029133093_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133028133096_))
                                                       (let ((_e133032133101_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133028133096_))))
                 (let ((_hd133031133104_
                        (let () (declare (not safe)) (##car _e133032133101_)))
                       (_tl133030133106_
                        (let () (declare (not safe)) (##cdr _e133032133101_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133030133106_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133027133098_))
                           (let ((_e133035133109_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133027133098_))))
                             (let ((_hd133034133112_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133035133109_)))
                                   (_tl133033133114_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133035133109_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133034133112_))
                                   (let ((_e133038133117_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133034133112_))))
                                     (let ((_hd133037133120_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133038133117_)))
                                           (_tl133036133122_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133038133117_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133037133120_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133037133120_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133036133122_))
                                                   (let ((_e133041133125_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133036133122_))))
                                                     (let ((_hd133040133128_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133041133125_)))
                                                           (_tl133039133130_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133041133125_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133040133128_))
                                                           (let ((_e133044133133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133040133128_))))
                     (let ((_hd133043133136_
                            (let ()
                              (declare (not safe))
                              (##car _e133044133133_)))
                           (_tl133042133138_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133044133133_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133043133136_))
                           (let ((_e133047133141_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133043133136_))))
                             (let ((_hd133046133144_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133047133141_)))
                                   (_tl133045133146_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133047133141_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133046133144_))
                                   (let ((_e133050133149_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133046133144_))))
                                     (let ((_hd133049133152_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133050133149_)))
                                           (_tl133048133154_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133050133149_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133048133154_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133045133146_))
                                               (let ((_e133053133157_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133045133146_))))
                                                 (let ((_hd133052133160_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133053133157_)))
                                                       (_tl133051133162_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133053133157_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133051133162_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133042133138_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133039133130_))
                       (let ((_e133056133165_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133039133130_))))
                         (let ((_hd133055133168_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133056133165_)))
                               (_tl133054133170_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133056133165_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133054133170_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133033133114_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133024133090_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133021133082_))
                                           (let ((_e133059133173_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133021133082_))))
                                             (let ((_hd133058133176_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133059133173_)))
                                                   (_tl133057133178_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133059133173_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133057133178_))
                                                   ((lambda (_L133181_
                                                             _L133182_
                                                             _L133183_
                                                             _L133184_
                                                             _L133185_)
                                                      (let* ((_g133224133286_
                                                              (lambda (_g133225133283_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133225133283_))))
                     (_g133223134192_
                      (lambda (_g133225133289_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133225133289_))
                            (let ((_e133233133291_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133225133289_))))
                              (let ((_hd133232133294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133233133291_)))
                                    (_tl133231133296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133233133291_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133232133294_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133232133294_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133231133296_))
                                            (let ((_e133236133299_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133231133296_))))
                                              (let ((_hd133235133302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133236133299_)))
                                                    (_tl133234133304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133236133299_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133234133304_))
                                                    (let ((_e133239133307_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133234133304_))))
                                                      (let ((_hd133238133310_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133239133307_)))
                    (_tl133237133312_
                     (let () (declare (not safe)) (##cdr _e133239133307_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133238133310_))
                    (let ((_e133242133315_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133238133310_))))
                      (let ((_hd133241133318_
                             (let ()
                               (declare (not safe))
                               (##car _e133242133315_)))
                            (_tl133240133320_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133242133315_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133241133318_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133241133318_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133240133320_))
                                    (let ((_e133245133323_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133240133320_))))
                                      (let ((_hd133244133326_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133245133323_)))
                                            (_tl133243133328_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133245133323_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133244133326_))
                                            (let ((_e133248133331_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133244133326_))))
                                              (let ((_hd133247133334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133248133331_)))
                                                    (_tl133246133336_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133248133331_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133247133334_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133247133334_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133246133336_))
                                                            (let ((_e133251133339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133246133336_))))
                      (let ((_hd133250133342_
                             (let ()
                               (declare (not safe))
                               (##car _e133251133339_)))
                            (_tl133249133344_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133251133339_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133249133344_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133243133328_))
                                (let ((_e133254133347_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133243133328_))))
                                  (let ((_hd133253133350_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133254133347_)))
                                        (_tl133252133352_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133254133347_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133253133350_))
                                        (let ((_e133257133355_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133253133350_))))
                                          (let ((_hd133256133358_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133257133355_)))
                                                (_tl133255133360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133257133355_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133256133358_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133256133358_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133255133360_))
                                                        (let ((_e133260133363_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133255133360_))))
                  (let ((_hd133259133366_
                         (let () (declare (not safe)) (##car _e133260133363_)))
                        (_tl133258133368_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133260133363_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133258133368_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133252133352_))
                            (let ((_e133263133371_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133252133352_))))
                              (let ((_hd133262133374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133263133371_)))
                                    (_tl133261133376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133263133371_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133262133374_))
                                    (let ((_e133266133379_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133262133374_))))
                                      (let ((_hd133265133382_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133266133379_)))
                                            (_tl133264133384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133266133379_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133265133382_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133265133382_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133264133384_))
                                                    (let ((_e133269133387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133264133384_))))
                                                      (let ((_hd133268133390_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133269133387_)))
                    (_tl133267133392_
                     (let () (declare (not safe)) (##cdr _e133269133387_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133267133392_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133261133376_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133261133376_))
                                  '1)
                            (let ((_g135595_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133261133376_
                                      '1))))
                              (begin
                                (let ((_g135596_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135595_)
                                             (##vector-length _g135595_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135596_ 2)))
                                      (error "Context expects 2 values"
                                             _g135596_)))
                                (let ((_target133270133395_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135595_ 0)))
                                      (_tl133272133397_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135595_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133272133397_))
                                      (let ((_e133281133400_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133272133397_))))
                                        (let ((_hd133280133403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133281133400_)))
                                              (_tl133279133405_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133281133400_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133279133405_))
                                              (letrec ((_loop133273133408_
                                                        (lambda (_hd133271133411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133277133413_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133271133411_))
                      (let ((_e133274133416_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133271133411_))))
                        (let ((_lp-hd133275133419_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133274133416_)))
                              (_lp-tl133276133421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133274133416_))))
                          (let ((__tmp135668
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133275133419_
                                         _kw-ref133277133413_))))
                            (declare (not safe))
                            (_loop133273133408_
                             _lp-tl133276133421_
                             __tmp135668))))
                      (let ((_kw-ref133278133424_
                             (reverse _kw-ref133277133413_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133237133312_))
                            ((lambda (_L133427_
                                      _L133428_
                                      _L133429_
                                      _L133430_
                                      _L133431_)
                               (let* ((_kw-count133482_
                                       (length (let ((__tmp135597
                                                      (lambda (_g133474133477_
                                                               _g133475133479_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133474133477_
                                                                _g133475133479_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135597
                                                         '()
                                                         _L133428_))))
                                      (_self-index133484_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133482_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133183_))
                                     (let* ((_g133487133501_
                                             (lambda (_g133488133498_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133488133498_))))
                                            (_g133486133614_
                                             (lambda (_g133488133504_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133488133504_))
                                                   (let ((_e133493133506_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133488133504_))))
                                                     (let ((_hd133492133509_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133493133506_)))
                                                           (_tl133491133511_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133493133506_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133491133511_))
                                                           (let ((_e133496133514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133491133511_))))
                     (let ((_hd133495133517_
                            (let ()
                              (declare (not safe))
                              (##car _e133496133514_)))
                           (_tl133494133519_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133496133514_))))
                       ((lambda (_L133522_ _L133523_)
                          (let ((_self133539_
                                 (list-ref _L133523_ _self-index133484_)))
                            (for-each
                             (lambda (_g133540133542_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133540133542_
                                  'receiver:
                                  _self133539_
                                  'methods:
                                  _method-calls131529_
                                  'slots:
                                  _slot-refs131530_)))
                             _L133522_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131533_))
                                _stx131437_
                                (let* ((_specializer-id133551_
                                        (let* ((_id133545_
                                                (let ((__tmp135641
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131510_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135641
                                                   '"::specialize")))
                                               (_specializer-id133548_
                                                (let ((__tmp135642
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131437_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133545_
                                                   __tmp135642))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133548_))
                                          _specializer-id133548_))
                                       (_$klass133553_
                                        (let ((__tmp135643 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135643)))
                                       (_$method-table133555_
                                        (let ((__tmp135644
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135644)))
                                       (_methods133557_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131529_)))
                                       (_$methods133561_
                                        (map (lambda (_id133559_)
                                               (let ((__tmp135645
                                                      (gensym _id133559_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135645)))
                                             _methods133557_))
                                       (_g135646_
                                        (for-each
                                         (lambda (_g133562133565_
                                                  _g133563133567_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131529_
                                              _g133562133565_
                                              _g133563133567_)))
                                         _methods133557_
                                         _$methods133561_))
                                       (_methods-bind133578_
                                        (map (lambda (_g133570133573_
                                                      _g133571133575_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131439_
                                                  _$klass133553_
                                                  _$method-table133555_
                                                  _g133570133573_
                                                  _g133571133575_)))
                                             _methods133557_
                                             _$methods133561_))
                                       (_slots133580_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131530_)))
                                       (_$slots133584_
                                        (map (lambda (_id133582_)
                                               (let ((__tmp135647
                                                      (gensym _id133582_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135647)))
                                             _slots133580_))
                                       (_g135648_
                                        (for-each
                                         (lambda (_g133585133588_
                                                  _g133586133590_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131530_
                                              _g133585133588_
                                              _g133586133590_)))
                                         _slots133580_
                                         _$slots133584_))
                                       (_slots-bind133601_
                                        (map (lambda (_g133593133596_
                                                      _g133594133598_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131440_
                                                  _$klass133553_
                                                  _g133593133596_
                                                  _g133594133598_)))
                                             _slots133580_
                                             _$slots133584_))
                                       (_specializer-impl133609_
                                        (let* ((_specializer-body133607_
                                                (map (lambda (_g133602133604_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133602133604_
                                                          'receiver:
                                                          _self133539_
                                                          'klass:
                                                          _$klass133553_
                                                          'methods:
                                                          _method-calls131529_
                                                          'slots:
                                                          _slot-refs131530_)))
                                                     _L133522_))
                                               (__tmp135649
                                                (let ((__tmp135650
                                                       (let ((__tmp135652
                                                              (let ((__tmp135653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135665
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133185_ '())))
                                   (__tmp135654
                                    (let ((__tmp135655
                                           (let ((__tmp135656
                                                  (let ((__tmp135658
                                                         (let ((__tmp135659
                                                                (let ((__tmp135664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133184_ '())))
                              (__tmp135660
                               (let ((__tmp135661
                                      (let ((__tmp135662
                                             (let ((__tmp135663
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133523_
                                                            _specializer-body133607_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135663))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135662
                                         _L133183_))))
                                 (declare (not safe))
                                 (cons __tmp135661 '()))))
                          (declare (not safe))
                          (cons __tmp135664 __tmp135660))))
                   (declare (not safe))
                   (cons __tmp135659 '())))
                (__tmp135657
                 (let () (declare (not safe)) (cons _L133182_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135658
                                                          __tmp135657))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135656))))
                                      (declare (not safe))
                                      (cons __tmp135655 '()))))
                               (declare (not safe))
                               (cons __tmp135665 __tmp135654))))
                        (declare (not safe))
                        (cons __tmp135653 '())))
                     (__tmp135651
                      (let () (declare (not safe)) (cons _L133181_ '()))))
                 (declare (not safe))
                 (cons __tmp135652 __tmp135651))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135650))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135649
                                           _stx131437_)))
                                       (_specializer-impl133611_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131441_
                                           _$klass133553_
                                           _$method-table133555_
                                           _methods-bind133578_
                                           _slots-bind133601_
                                           _specializer-impl133609_))))
                                  (let ((__tmp135667
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131510_)))
                                        (__tmp135666
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133551_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135667
                                     '" => "
                                     __tmp135666))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131442_
                                     _L131510_
                                     _specializer-id133551_
                                     _specializer-impl133611_))))))
                        _tl133494133519_
                        _hd133495133517_)))
                   (let ()
                     (declare (not safe))
                     (_g133487133501_ _g133488133504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133487133501_
                                                      _g133488133504_))))))
                                       (declare (not safe))
                                       (_g133486133614_ _L133183_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133183_))
                                         (let* ((_g133617133647_
                                                 (lambda (_g133618133644_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133618133644_))))
                                                (_g133616134189_
                                                 (lambda (_g133618133650_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133618133650_))
                                                       (let ((_e133624133652_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133618133650_))))
                 (let ((_hd133623133655_
                        (let () (declare (not safe)) (##car _e133624133652_)))
                       (_tl133622133657_
                        (let () (declare (not safe)) (##cdr _e133624133652_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133622133657_))
                       (let ((_e133627133660_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133622133657_))))
                         (let ((_hd133626133663_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133627133660_)))
                               (_tl133625133665_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133627133660_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133626133663_))
                               (let ((_e133630133668_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133626133663_))))
                                 (let ((_hd133629133671_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133630133668_)))
                                       (_tl133628133673_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133630133668_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133629133671_))
                                       (let ((_e133633133676_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133629133671_))))
                                         (let ((_hd133632133679_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133633133676_)))
                                               (_tl133631133681_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133633133676_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133632133679_))
                                               (let ((_e133636133684_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133632133679_))))
                                                 (let ((_hd133635133687_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133636133684_)))
                                                       (_tl133634133689_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133636133684_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133634133689_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133631133681_))
                                                           (let ((_e133639133692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133631133681_))))
                     (let ((_hd133638133695_
                            (let ()
                              (declare (not safe))
                              (##car _e133639133692_)))
                           (_tl133637133697_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133639133692_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133637133697_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133628133673_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133625133665_))
                                   (let ((_e133642133700_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133625133665_))))
                                     (let ((_hd133641133703_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133642133700_)))
                                           (_tl133640133705_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133642133700_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133640133705_))
                                           ((lambda (_L133708_
                                                     _L133709_
                                                     _L133710_)
                                              (let* ((_g133733133747_
                                                      (lambda (_g133734133744_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133734133744_))))
                                                     (_g133732133788_
                                                      (lambda (_g133734133750_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133734133750_))
                                                            (let ((_e133739133752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133734133750_))))
                      (let ((_hd133738133755_
                             (let ()
                               (declare (not safe))
                               (##car _e133739133752_)))
                            (_tl133737133757_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133739133752_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133737133757_))
                            (let ((_e133742133760_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133737133757_))))
                              (let ((_hd133741133763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133742133760_)))
                                    (_tl133740133765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133742133760_))))
                                ((lambda (_L133768_ _L133769_)
                                   (let ((_self133782_
                                          (list-ref
                                           _L133769_
                                           _self-index133484_)))
                                     (for-each
                                      (lambda (_g133783133785_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133783133785_
                                           'receiver:
                                           _self133782_
                                           'methods:
                                           _method-calls131529_
                                           'slots:
                                           _slot-refs131530_)))
                                      _L133768_)))
                                 _tl133740133765_
                                 _hd133741133763_)))
                            (let ()
                              (declare (not safe))
                              (_g133733133747_ _g133734133750_)))))
                    (let ()
                      (declare (not safe))
                      (_g133733133747_ _g133734133750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133732133788_ _L133709_))
                                              (let* ((_g133791133810_
                                                      (lambda (_g133792133807_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133792133807_))))
                                                     (_g133790133915_
                                                      (lambda (_g133792133813_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133792133813_))
                                                            (let ((_e133796133815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133792133813_))))
                      (let ((_hd133795133818_
                             (let ()
                               (declare (not safe))
                               (##car _e133796133815_)))
                            (_tl133794133820_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133796133815_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133794133820_))
                            (let ((_g135598_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133794133820_
                                      '0))))
                              (begin
                                (let ((_g135599_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135598_)
                                             (##vector-length _g135598_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135599_ 2)))
                                      (error "Context expects 2 values"
                                             _g135599_)))
                                (let ((_target133797133823_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135598_ 0)))
                                      (_tl133799133825_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135598_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133799133825_))
                                      (letrec ((_loop133800133828_
                                                (lambda (_hd133798133831_
                                                         _clause133804133833_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133798133831_))
                                                      (let ((_e133801133836_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133798133831_))))
                (let ((_lp-hd133802133839_
                       (let () (declare (not safe)) (##car _e133801133836_)))
                      (_lp-tl133803133841_
                       (let () (declare (not safe)) (##cdr _e133801133836_))))
                  (let ((__tmp135601
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133802133839_ _clause133804133833_))))
                    (declare (not safe))
                    (_loop133800133828_ _lp-tl133803133841_ __tmp135601))))
              (let ((_clause133805133844_ (reverse _clause133804133833_)))
                ((lambda (_L133847_)
                   (for-each
                    (lambda (_clause133860_)
                      (let* ((_g133862133873_
                              (lambda (_g133863133870_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133863133870_))))
                             (_g133861133905_
                              (lambda (_g133863133876_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133863133876_))
                                    (let ((_e133868133878_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133863133876_))))
                                      (let ((_hd133867133881_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133868133878_)))
                                            (_tl133866133883_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133868133878_))))
                                        ((lambda (_L133886_ _L133887_)
                                           (let ((_self133899_
                                                  (list-ref
                                                   _L133887_
                                                   _self-index133484_)))
                                             (for-each
                                              (lambda (_g133900133902_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133900133902_
                                                   'receiver:
                                                   _self133899_
                                                   'methods:
                                                   _method-calls131529_
                                                   'slots:
                                                   _slot-refs131530_)))
                                              _L133886_)))
                                         _tl133866133883_
                                         _hd133867133881_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133862133873_ _g133863133876_))))))
                        (declare (not safe))
                        (_g133861133905_ _clause133860_)))
                    (let ((__tmp135600
                           (lambda (_g133907133910_ _g133908133912_)
                             (let ()
                               (declare (not safe))
                               (cons _g133907133910_ _g133908133912_)))))
                      (declare (not safe))
                      (foldr1 __tmp135600 '() _L133847_))))
                 _clause133805133844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133800133828_
                                           _target133797133823_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133791133810_ _g133792133813_))))))
                            (let ()
                              (declare (not safe))
                              (_g133791133810_ _g133792133813_)))))
                    (let ()
                      (declare (not safe))
                      (_g133791133810_ _g133792133813_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133790133915_ _L133708_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131533_))
                                                  _stx131437_
                                                  (let* ((_specializer-id133924_
                                                          (let* ((_id133918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135602
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131510_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135602 '"::specialize")))
                         (_specializer-id133921_
                          (let ((__tmp135603
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131437_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133918_ __tmp135603))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133921_))
                    _specializer-id133921_))
                 (_$klass133926_
                  (let ((__tmp135604 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135604)))
                 (_$method-table133928_
                  (let ((__tmp135605 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135605)))
                 (_methods133930_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131529_)))
                 (_$methods133934_
                  (map (lambda (_id133932_)
                         (let ((__tmp135606 (gensym _id133932_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135606)))
                       _methods133930_))
                 (_g135607_
                  (for-each
                   (lambda (_g133935133938_ _g133936133940_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131529_
                        _g133935133938_
                        _g133936133940_)))
                   _methods133930_
                   _$methods133934_))
                 (_methods-bind133951_
                  (map (lambda (_g133943133946_ _g133944133948_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131439_
                            _$klass133926_
                            _$method-table133928_
                            _g133943133946_
                            _g133944133948_)))
                       _methods133930_
                       _$methods133934_))
                 (_slots133953_
                  (let () (declare (not safe)) (hash-keys _slot-refs131530_)))
                 (_$slots133957_
                  (map (lambda (_id133955_)
                         (let ((__tmp135608 (gensym _id133955_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135608)))
                       _slots133953_))
                 (_g135609_
                  (for-each
                   (lambda (_g133958133961_ _g133959133963_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131530_
                        _g133958133961_
                        _g133959133963_)))
                   _slots133953_
                   _$slots133957_))
                 (_slots-bind133974_
                  (map (lambda (_g133966133969_ _g133967133971_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131440_
                            _$klass133926_
                            _g133966133969_
                            _g133967133971_)))
                       _slots133953_
                       _$slots133957_))
                 (_specializer-lambda-expr134047_
                  (let* ((_g133976133990_
                          (lambda (_g133977133987_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133977133987_))))
                         (_g133975134044_
                          (lambda (_g133977133993_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133977133993_))
                                (let ((_e133982133995_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133977133993_))))
                                  (let ((_hd133981133998_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133982133995_)))
                                        (_tl133980134000_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133982133995_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133980134000_))
                                        (let ((_e133985134003_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133980134000_))))
                                          (let ((_hd133984134006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133985134003_)))
                                                (_tl133983134008_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133985134003_))))
                                            ((lambda (_L134011_ _L134012_)
                                               (let* ((_self134035_
                                                       (list-ref
                                                        _L134012_
                                                        _self-index133484_))
                                                      (_body134041_
                                                       (map (lambda (_g134036134038_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134036134038_
                         'receiver:
                         _self134035_
                         'klass:
                         _$klass133926_
                         'methods:
                         _method-calls131529_
                         'slots:
                         _slot-refs131530_)))
                    _L134011_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135610
                                                        (let ((__tmp135611
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134012_ _body134041_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135610
                                                    _L133709_))))
                                             _tl133983134008_
                                             _hd133984134006_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133976133990_ _g133977133993_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133976133990_ _g133977133993_))))))
                    (declare (not safe))
                    (_g133975134044_ _L133709_)))
                 (_specializer-case-lambda-expr134182_
                  (let* ((_g134049134068_
                          (lambda (_g134050134065_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134050134065_))))
                         (_g134048134179_
                          (lambda (_g134050134071_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134050134071_))
                                (let ((_e134054134073_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134050134071_))))
                                  (let ((_hd134053134076_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134054134073_)))
                                        (_tl134052134078_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134054134073_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134052134078_))
                                        (let ((_g135612_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134052134078_
                                                  '0))))
                                          (begin
                                            (let ((_g135613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135612_)
                                                         (##vector-length
                                                          _g135612_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135613_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135613_)))
                                            (let ((_target134055134081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135612_
                                                      0)))
                                                  (_tl134057134083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135612_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134057134083_))
                                                  (letrec ((_loop134058134086_
                                                            (lambda (_hd134056134089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134062134091_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134056134089_))
                          (let ((_e134059134094_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134056134089_))))
                            (let ((_lp-hd134060134097_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134059134094_)))
                                  (_lp-tl134061134099_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134059134094_))))
                              (let ((__tmp135616
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134060134097_
                                             _clause134062134091_))))
                                (declare (not safe))
                                (_loop134058134086_
                                 _lp-tl134061134099_
                                 __tmp135616))))
                          (let ((_clause134063134102_
                                 (reverse _clause134062134091_)))
                            ((lambda (_L134105_)
                               (let* ((_clauses134177_
                                       (map (lambda (_clause134119_)
                                              (let* ((_g134121134132_
                                                      (lambda (_g134122134129_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134122134129_))))
                                                     (_g134120134167_
                                                      (lambda (_g134122134135_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134122134135_))
                                                            (let ((_e134127134137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134122134135_))))
                      (let ((_hd134126134140_
                             (let ()
                               (declare (not safe))
                               (##car _e134127134137_)))
                            (_tl134125134142_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134127134137_))))
                        ((lambda (_L134145_ _L134146_)
                           (let* ((_self134158_
                                   (list-ref _L134146_ _self-index133484_))
                                  (_body134164_
                                   (map (lambda (_g134159134161_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134159134161_
                                             'receiver:
                                             _self134158_
                                             'klass:
                                             _$klass133926_
                                             'methods:
                                             _method-calls131529_
                                             'slots:
                                             _slot-refs131530_)))
                                        _L134145_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134146_ _body134164_))))
                         _tl134125134142_
                         _hd134126134140_)))
                    (let ()
                      (declare (not safe))
                      (_g134121134132_ _g134122134135_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134120134167_
                                                 _clause134119_)))
                                            (let ((__tmp135614
                                                   (lambda (_g134169134172_
                                                            _g134170134174_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134169134172_
                                                             _g134170134174_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135614
                                                      '()
                                                      _L134105_))))
                                      (__tmp135615
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134177_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135615
                                  _L133708_)))
                             _clause134063134102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134058134086_
                                                       _target134055134081_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134049134068_
                                                     _g134050134071_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134049134068_ _g134050134071_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134049134068_ _g134050134071_))))))
                    (declare (not safe))
                    (_g134048134179_ _L133708_)))
                 (_specializer-impl134184_
                  (let ((__tmp135617
                         (let ((__tmp135618
                                (let ((__tmp135620
                                       (let ((__tmp135621
                                              (let ((__tmp135638
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133185_ '())))
                                                    (__tmp135622
                                                     (let ((__tmp135623
                                                            (let ((__tmp135624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135626
                                  (let ((__tmp135627
                                         (let ((__tmp135637
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133184_ '())))
                                               (__tmp135628
                                                (let ((__tmp135629
                                                       (let ((__tmp135630
                                                              (let ((__tmp135631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135633
                                    (let ((__tmp135634
                                           (let ((__tmp135636
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133710_ '())))
                                                 (__tmp135635
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134047_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135636 __tmp135635))))
                                      (declare (not safe))
                                      (cons __tmp135634 '())))
                                   (__tmp135632
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134182_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135633 __tmp135632))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135631))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135630 _stx131437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135629 '()))))
                                           (declare (not safe))
                                           (cons __tmp135637 __tmp135628))))
                                    (declare (not safe))
                                    (cons __tmp135627 '())))
                                 (__tmp135625
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133182_ '()))))
                             (declare (not safe))
                             (cons __tmp135626 __tmp135625))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135624))))
               (declare (not safe))
               (cons __tmp135623 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135638
                                                      __tmp135622))))
                                         (declare (not safe))
                                         (cons __tmp135621 '())))
                                      (__tmp135619
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133181_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135620 __tmp135619))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135618))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135617 _stx131437_)))
                 (_specializer-impl134186_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131441_
                     _$klass133926_
                     _$method-table133928_
                     _methods-bind133951_
                     _slots-bind133974_
                     _specializer-impl134184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135640
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131510_)))
                                                          (__tmp135639
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133924_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135640
                                                       '" => "
                                                       __tmp135639))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131442_
                                                       _L131510_
                                                       _specializer-id133924_
                                                       _specializer-impl134186_)))))
                                            _hd133641133703_
                                            _hd133638133695_
                                            _hd133635133687_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133617133647_
                                              _g133618133650_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133617133647_ _g133618133650_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133617133647_ _g133618133650_)))
                           (let ()
                             (declare (not safe))
                             (_g133617133647_ _g133618133650_)))))
                   (let ()
                     (declare (not safe))
                     (_g133617133647_ _g133618133650_)))
               (let ()
                 (declare (not safe))
                 (_g133617133647_ _g133618133650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133617133647_
                                                  _g133618133650_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133617133647_ _g133618133650_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133617133647_ _g133618133650_)))))
                       (let ()
                         (declare (not safe))
                         (_g133617133647_ _g133618133650_)))))
               (let ()
                 (declare (not safe))
                 (_g133617133647_ _g133618133650_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133616134189_ _L133183_))
                                         _stx131437_))))
                             _hd133280133403_
                             _kw-ref133278133424_
                             _hd133268133390_
                             _hd133259133366_
                             _hd133250133342_)
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133273133408_
                                                   _target133270133395_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133224133286_
                                                 _g133225133289_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133224133286_ _g133225133289_))))))
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_)))
                        (let ()
                          (declare (not safe))
                          (_g133224133286_ _g133225133289_)))
                    (let ()
                      (declare (not safe))
                      (_g133224133286_ _g133225133289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133224133286_
                                                       _g133225133289_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133224133286_
                                                   _g133225133289_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133224133286_
                                               _g133225133289_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133224133286_ _g133225133289_)))))
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_)))
                        (let ()
                          (declare (not safe))
                          (_g133224133286_ _g133225133289_)))))
                (let ()
                  (declare (not safe))
                  (_g133224133286_ _g133225133289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133224133286_
                                                       _g133225133289_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133224133286_
                                                   _g133225133289_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133224133286_ _g133225133289_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133224133286_ _g133225133289_)))
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_)))))
                    (let ()
                      (declare (not safe))
                      (_g133224133286_ _g133225133289_)))
                (let ()
                  (declare (not safe))
                  (_g133224133286_ _g133225133289_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133224133286_
                                                       _g133225133289_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133224133286_
                                               _g133225133289_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133224133286_ _g133225133289_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133224133286_ _g133225133289_)))
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_)))))
                    (let ()
                      (declare (not safe))
                      (_g133224133286_ _g133225133289_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133224133286_
                                                       _g133225133289_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133224133286_
                                               _g133225133289_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133224133286_ _g133225133289_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133224133286_ _g133225133289_)))))
                            (let ()
                              (declare (not safe))
                              (_g133224133286_ _g133225133289_))))))
                (declare (not safe))
                (_g133223134192_ _L133182_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133058133176_
                                                    _hd133055133168_
                                                    _hd133052133160_
                                                    _hd133049133152_
                                                    _hd133031133104_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133011133064_
                                                      _g133012133067_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133011133064_
                                              _g133012133067_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133011133064_ _g133012133067_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133011133064_ _g133012133067_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133011133064_ _g133012133067_)))))
                       (let ()
                         (declare (not safe))
                         (_g133011133064_ _g133012133067_)))
                   (let ()
                     (declare (not safe))
                     (_g133011133064_ _g133012133067_)))
               (let ()
                 (declare (not safe))
                 (_g133011133064_ _g133012133067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133011133064_
                                                  _g133012133067_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133011133064_
                                              _g133012133067_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133011133064_ _g133012133067_)))))
                           (let ()
                             (declare (not safe))
                             (_g133011133064_ _g133012133067_)))))
                   (let ()
                     (declare (not safe))
                     (_g133011133064_ _g133012133067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133011133064_
                                                      _g133012133067_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133011133064_
                                                  _g133012133067_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133011133064_
                                              _g133012133067_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133011133064_ _g133012133067_)))))
                           (let ()
                             (declare (not safe))
                             (_g133011133064_ _g133012133067_)))
                       (let ()
                         (declare (not safe))
                         (_g133011133064_ _g133012133067_)))))
               (let ()
                 (declare (not safe))
                 (_g133011133064_ _g133012133067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133011133064_
                                                  _g133012133067_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133011133064_ _g133012133067_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133011133064_ _g133012133067_)))
                           (let ()
                             (declare (not safe))
                             (_g133011133064_ _g133012133067_)))
                       (let ()
                         (declare (not safe))
                         (_g133011133064_ _g133012133067_)))))
               (let ()
                 (declare (not safe))
                 (_g133011133064_ _g133012133067_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133010134195_ _L131509_))
                                         _stx131437_))))))))
                  (___kont134419134420_ (lambda () _stx131437_)))
              (let ((___match134448134449_
                     (lambda (_e131451131477_
                              _hd131450131480_
                              _tl131449131482_
                              _e131454131485_
                              _hd131453131488_
                              _tl131452131490_
                              _e131457131493_
                              _hd131456131496_
                              _tl131455131498_
                              _e131460131501_
                              _hd131459131504_
                              _tl131458131506_)
                       (let ((_L131509_ _hd131459131504_)
                             (_L131510_ _hd131456131496_))
                         (if (let ((__tmp135729
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131510_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135729))
                             (___kont134417134418_ _L131509_ _L131510_)
                             (___kont134419134420_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134415134416_))
                    (let ((_e131451131477_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134415134416_))))
                      (let ((_tl131449131482_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131451131477_)))
                            (_hd131450131480_
                             (let ()
                               (declare (not safe))
                               (##car _e131451131477_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131449131482_))
                            (let ((_e131454131485_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131449131482_))))
                              (let ((_tl131452131490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131454131485_)))
                                    (_hd131453131488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131454131485_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131453131488_))
                                    (let ((_e131457131493_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131453131488_))))
                                      (let ((_tl131455131498_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131457131493_)))
                                            (_hd131456131496_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131457131493_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131455131498_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131452131490_))
                                                (let ((_e131460131501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131452131490_))))
                                                  (let ((_tl131458131506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131460131501_)))
                                                        (_hd131459131504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131460131501_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131458131506_))
                                                        (___match134448134449_
                                                         _e131451131477_
                                                         _hd131450131480_
                                                         _tl131449131482_
                                                         _e131454131485_
                                                         _hd131453131488_
                                                         _tl131452131490_
                                                         _e131457131493_
                                                         _hd131456131496_
                                                         _tl131455131498_
                                                         _e131460131501_
                                                         _hd131459131504_
                                                         _tl131458131506_)
                                                        (___kont134419134420_))))
                                                (___kont134419134420_))
                                            (___kont134419134420_))))
                                    (___kont134419134420_))))
                            (___kont134419134420_))))
                    (___kont134419134420_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self130397_ _stx130398_)
        (let* ((___stx134451134452_ _stx130398_)
               (_g130406130628_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134451134452_)))))
          (let ((___kont134453134454_
                 (lambda (_L131385_ _L131386_ _L131387_ _L131388_)
                   (let ((__tmp135731
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130397_ 'methods)))
                         (__tmp135730
                          (let () (declare (not safe)) (gx#stx-e _L131386_))))
                     (declare (not safe))
                     (hash-put! __tmp135731 __tmp135730 '#t))
                   (for-each
                    (lambda (_g131421131423_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130397_ _g131421131423_)))
                    (let ((__tmp135732
                           (lambda (_g131425131428_ _g131426131430_)
                             (let ()
                               (declare (not safe))
                               (cons _g131425131428_ _g131426131430_)))))
                      (declare (not safe))
                      (foldr1 __tmp135732 '() _L131385_)))))
                (___kont134457134458_
                 (lambda (_L131220_ _L131221_ _L131222_ _L131223_ _L131224_)
                   (let ((__tmp135734
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130397_ 'methods)))
                         (__tmp135733
                          (let () (declare (not safe)) (gx#stx-e _L131221_))))
                     (declare (not safe))
                     (hash-put! __tmp135734 __tmp135733 '#t))
                   (for-each
                    (lambda (_g131264131266_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130397_ _g131264131266_)))
                    (let ((__tmp135735
                           (lambda (_g131268131271_ _g131269131273_)
                             (let ()
                               (declare (not safe))
                               (cons _g131268131271_ _g131269131273_)))))
                      (declare (not safe))
                      (foldr1 __tmp135735 '() _L131220_)))))
                (___kont134461134462_
                 (lambda (_L131053_ _L131054_ _L131055_)
                   (let ((__tmp135737
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130397_ 'slots)))
                         (__tmp135736
                          (let () (declare (not safe)) (gx#stx-e _L131053_))))
                     (declare (not safe))
                     (hash-put! __tmp135737 __tmp135736 '#t))))
                (___kont134463134464_
                 (lambda (_L130930_ _L130931_ _L130932_ _L130933_)
                   (let ((__tmp135739
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130397_ 'slots)))
                         (__tmp135738
                          (let () (declare (not safe)) (gx#stx-e _L130931_))))
                     (declare (not safe))
                     (hash-put! __tmp135739 __tmp135738 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self130397_ _L130930_))))
                (___kont134465134466_
                 (lambda (_L130804_ _L130805_)
                   (let* ((_accessor130827_
                           (let ((__tmp135740
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130805_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135740)))
                          (_klass130829_
                           (let ((__tmp135741
                                  (##structure-ref
                                   _accessor130827_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130398_
                              __tmp135741)))
                          (_slot130831_
                           (##structure-ref
                            _accessor130827_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135744
                                     (##structure-ref
                                      _accessor130827_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135744))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130829_
                                     _slot130831_))
                                  (##structure-ref
                                   _klass130829_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135743
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130397_ 'slots)))
                               (__tmp135742
                                (##structure-ref
                                 _accessor130827_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp135743 __tmp135742 '#t))))))
                (___kont134467134468_
                 (lambda (_L130704_ _L130705_ _L130706_)
                   (let* ((_mutator130733_
                           (let ((__tmp135745
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130706_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135745)))
                          (_klass130735_
                           (let ((__tmp135746
                                  (##structure-ref
                                   _mutator130733_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130398_
                              __tmp135746)))
                          (_slot130737_
                           (##structure-ref
                            _mutator130733_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135748
                                     (##structure-ref
                                      _mutator130733_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135748))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130735_
                                     _slot130737_))
                                  (##structure-ref
                                   _klass130735_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135747
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130397_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp135747 _slot130737_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self130397_ _L130704_)))))
                (___kont134469134470_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self130397_ _stx130398_)))))
            (let* ((___match134950134951_
                    (lambda (_e130602130640_
                             _hd130601130643_
                             _tl130600130645_
                             _e130605130648_
                             _hd130604130651_
                             _tl130603130653_
                             _e130608130656_
                             _hd130607130659_
                             _tl130606130661_
                             _e130611130664_
                             _hd130610130667_
                             _tl130609130669_
                             _e130614130672_
                             _hd130613130675_
                             _tl130612130677_
                             _e130617130680_
                             _hd130616130683_
                             _tl130615130685_
                             _e130620130688_
                             _hd130619130691_
                             _tl130618130693_
                             _e130623130696_
                             _hd130622130699_
                             _tl130621130701_)
                      (let ((_L130704_ _hd130622130699_)
                            (_L130705_ _hd130619130691_)
                            (_L130706_ _hd130610130667_))
                        (if (and (let ((__tmp135750
                                        (let ((__tmp135751
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130706_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135751))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135750
                                    'gxc#!mutator::t))
                                 (let ((__tmp135749
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130397_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130705_
                                    __tmp135749)))
                            (___kont134467134468_
                             _L130704_
                             _L130705_
                             _L130706_)
                            (___kont134469134470_)))))
                   (___match134948134949_
                    (lambda (_e130602130640_
                             _hd130601130643_
                             _tl130600130645_
                             _e130605130648_
                             _hd130604130651_
                             _tl130603130653_
                             _e130608130656_
                             _hd130607130659_
                             _tl130606130661_
                             _e130611130664_
                             _hd130610130667_
                             _tl130609130669_
                             _e130614130672_
                             _hd130613130675_
                             _tl130612130677_
                             _e130617130680_
                             _hd130616130683_
                             _tl130615130685_
                             _e130620130688_
                             _hd130619130691_
                             _tl130618130693_
                             _e130623130696_
                             _hd130622130699_
                             _tl130621130701_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130621130701_))
                          (___match134950134951_
                           _e130602130640_
                           _hd130601130643_
                           _tl130600130645_
                           _e130605130648_
                           _hd130604130651_
                           _tl130603130653_
                           _e130608130656_
                           _hd130607130659_
                           _tl130606130661_
                           _e130611130664_
                           _hd130610130667_
                           _tl130609130669_
                           _e130614130672_
                           _hd130613130675_
                           _tl130612130677_
                           _e130617130680_
                           _hd130616130683_
                           _tl130615130685_
                           _e130620130688_
                           _hd130619130691_
                           _tl130618130693_
                           _e130623130696_
                           _hd130622130699_
                           _tl130621130701_)
                          (___kont134469134470_))))
                   (___match134942134943_
                    (lambda (_e130602130640_
                             _hd130601130643_
                             _tl130600130645_
                             _e130605130648_
                             _hd130604130651_
                             _tl130603130653_
                             _e130608130656_
                             _hd130607130659_
                             _tl130606130661_
                             _e130611130664_
                             _hd130610130667_
                             _tl130609130669_
                             _e130614130672_
                             _hd130613130675_
                             _tl130612130677_
                             _e130617130680_
                             _hd130616130683_
                             _tl130615130685_
                             _e130620130688_
                             _hd130619130691_
                             _tl130618130693_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130612130677_))
                          (let ((_e130623130696_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130612130677_))))
                            (let ((_tl130621130701_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130623130696_)))
                                  (_hd130622130699_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130623130696_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130621130701_))
                                  (___match134950134951_
                                   _e130602130640_
                                   _hd130601130643_
                                   _tl130600130645_
                                   _e130605130648_
                                   _hd130604130651_
                                   _tl130603130653_
                                   _e130608130656_
                                   _hd130607130659_
                                   _tl130606130661_
                                   _e130611130664_
                                   _hd130610130667_
                                   _tl130609130669_
                                   _e130614130672_
                                   _hd130613130675_
                                   _tl130612130677_
                                   _e130617130680_
                                   _hd130616130683_
                                   _tl130615130685_
                                   _e130620130688_
                                   _hd130619130691_
                                   _tl130618130693_
                                   _e130623130696_
                                   _hd130622130699_
                                   _tl130621130701_)
                                  (___kont134469134470_))))
                          (___kont134469134470_))))
                   (___match134888134889_
                    (lambda (_e130578130748_
                             _hd130577130751_
                             _tl130576130753_
                             _e130581130756_
                             _hd130580130759_
                             _tl130579130761_
                             _e130584130764_
                             _hd130583130767_
                             _tl130582130769_
                             _e130587130772_
                             _hd130586130775_
                             _tl130585130777_
                             _e130590130780_
                             _hd130589130783_
                             _tl130588130785_
                             _e130593130788_
                             _hd130592130791_
                             _tl130591130793_
                             _e130596130796_
                             _hd130595130799_
                             _tl130594130801_)
                      (let ((_L130804_ _hd130595130799_)
                            (_L130805_ _hd130586130775_))
                        (if (and (let ((__tmp135753
                                        (let ((__tmp135754
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130805_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135754))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135753
                                    'gxc#!accessor::t))
                                 (let ((__tmp135752
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130397_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130804_
                                    __tmp135752)))
                            (___kont134465134466_ _L130804_ _L130805_)
                            (___kont134469134470_)))))
                   (___match134886134887_
                    (lambda (_e130578130748_
                             _hd130577130751_
                             _tl130576130753_
                             _e130581130756_
                             _hd130580130759_
                             _tl130579130761_
                             _e130584130764_
                             _hd130583130767_
                             _tl130582130769_
                             _e130587130772_
                             _hd130586130775_
                             _tl130585130777_
                             _e130590130780_
                             _hd130589130783_
                             _tl130588130785_
                             _e130593130788_
                             _hd130592130791_
                             _tl130591130793_
                             _e130596130796_
                             _hd130595130799_
                             _tl130594130801_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130588130785_))
                          (___match134888134889_
                           _e130578130748_
                           _hd130577130751_
                           _tl130576130753_
                           _e130581130756_
                           _hd130580130759_
                           _tl130579130761_
                           _e130584130764_
                           _hd130583130767_
                           _tl130582130769_
                           _e130587130772_
                           _hd130586130775_
                           _tl130585130777_
                           _e130590130780_
                           _hd130589130783_
                           _tl130588130785_
                           _e130593130788_
                           _hd130592130791_
                           _tl130591130793_
                           _e130596130796_
                           _hd130595130799_
                           _tl130594130801_)
                          (___match134942134943_
                           _e130578130748_
                           _hd130577130751_
                           _tl130576130753_
                           _e130581130756_
                           _hd130580130759_
                           _tl130579130761_
                           _e130584130764_
                           _hd130583130767_
                           _tl130582130769_
                           _e130587130772_
                           _hd130586130775_
                           _tl130585130777_
                           _e130590130780_
                           _hd130589130783_
                           _tl130588130785_
                           _e130593130788_
                           _hd130592130791_
                           _tl130591130793_
                           _e130596130796_
                           _hd130595130799_
                           _tl130594130801_))))
                   (___match134832134833_
                    (lambda (_e130543130842_
                             _hd130542130845_
                             _tl130541130847_
                             _e130546130850_
                             _hd130545130853_
                             _tl130544130855_
                             _e130549130858_
                             _hd130548130861_
                             _tl130547130863_
                             _e130552130866_
                             _hd130551130869_
                             _tl130550130871_
                             _e130555130874_
                             _hd130554130877_
                             _tl130553130879_
                             _e130558130882_
                             _hd130557130885_
                             _tl130556130887_
                             _e130561130890_
                             _hd130560130893_
                             _tl130559130895_
                             _e130564130898_
                             _hd130563130901_
                             _tl130562130903_
                             _e130567130906_
                             _hd130566130909_
                             _tl130565130911_
                             _e130570130914_
                             _hd130569130917_
                             _tl130568130919_
                             _e130573130922_
                             _hd130572130925_
                             _tl130571130927_)
                      (let ((_L130930_ _hd130572130925_)
                            (_L130931_ _hd130569130917_)
                            (_L130932_ _hd130560130893_)
                            (_L130933_ _hd130551130869_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130933_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130933_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp135755
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130397_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130932_
                                    __tmp135755)))
                            (___kont134463134464_
                             _L130930_
                             _L130931_
                             _L130932_
                             _L130933_)
                            (___kont134469134470_)))))
                   (___match134824134825_
                    (lambda (_e130543130842_
                             _hd130542130845_
                             _tl130541130847_
                             _e130546130850_
                             _hd130545130853_
                             _tl130544130855_
                             _e130549130858_
                             _hd130548130861_
                             _tl130547130863_
                             _e130552130866_
                             _hd130551130869_
                             _tl130550130871_
                             _e130555130874_
                             _hd130554130877_
                             _tl130553130879_
                             _e130558130882_
                             _hd130557130885_
                             _tl130556130887_
                             _e130561130890_
                             _hd130560130893_
                             _tl130559130895_
                             _e130564130898_
                             _hd130563130901_
                             _tl130562130903_
                             _e130567130906_
                             _hd130566130909_
                             _tl130565130911_
                             _e130570130914_
                             _hd130569130917_
                             _tl130568130919_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130562130903_))
                          (let ((_e130573130922_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130562130903_))))
                            (let ((_tl130571130927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130573130922_)))
                                  (_hd130572130925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130573130922_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130571130927_))
                                  (___match134832134833_
                                   _e130543130842_
                                   _hd130542130845_
                                   _tl130541130847_
                                   _e130546130850_
                                   _hd130545130853_
                                   _tl130544130855_
                                   _e130549130858_
                                   _hd130548130861_
                                   _tl130547130863_
                                   _e130552130866_
                                   _hd130551130869_
                                   _tl130550130871_
                                   _e130555130874_
                                   _hd130554130877_
                                   _tl130553130879_
                                   _e130558130882_
                                   _hd130557130885_
                                   _tl130556130887_
                                   _e130561130890_
                                   _hd130560130893_
                                   _tl130559130895_
                                   _e130564130898_
                                   _hd130563130901_
                                   _tl130562130903_
                                   _e130567130906_
                                   _hd130566130909_
                                   _tl130565130911_
                                   _e130570130914_
                                   _hd130569130917_
                                   _tl130568130919_
                                   _e130573130922_
                                   _hd130572130925_
                                   _tl130571130927_)
                                  (___kont134469134470_))))
                          (___match134948134949_
                           _e130543130842_
                           _hd130542130845_
                           _tl130541130847_
                           _e130546130850_
                           _hd130545130853_
                           _tl130544130855_
                           _e130549130858_
                           _hd130548130861_
                           _tl130547130863_
                           _e130552130866_
                           _hd130551130869_
                           _tl130550130871_
                           _e130555130874_
                           _hd130554130877_
                           _tl130553130879_
                           _e130558130882_
                           _hd130557130885_
                           _tl130556130887_
                           _e130561130890_
                           _hd130560130893_
                           _tl130559130895_
                           _e130564130898_
                           _hd130563130901_
                           _tl130562130903_))))
                   (___match134746134747_
                    (lambda (_e130509130973_
                             _hd130508130976_
                             _tl130507130978_
                             _e130512130981_
                             _hd130511130984_
                             _tl130510130986_
                             _e130515130989_
                             _hd130514130992_
                             _tl130513130994_
                             _e130518130997_
                             _hd130517131000_
                             _tl130516131002_
                             _e130521131005_
                             _hd130520131008_
                             _tl130519131010_
                             _e130524131013_
                             _hd130523131016_
                             _tl130522131018_
                             _e130527131021_
                             _hd130526131024_
                             _tl130525131026_
                             _e130530131029_
                             _hd130529131032_
                             _tl130528131034_
                             _e130533131037_
                             _hd130532131040_
                             _tl130531131042_
                             _e130536131045_
                             _hd130535131048_
                             _tl130534131050_)
                      (let ((_L131053_ _hd130535131048_)
                            (_L131054_ _hd130526131024_)
                            (_L131055_ _hd130517131000_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131055_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131055_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp135756
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130397_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131054_
                                    __tmp135756)))
                            (___kont134461134462_
                             _L131053_
                             _L131054_
                             _L131055_)
                            (___match134950134951_
                             _e130509130973_
                             _hd130508130976_
                             _tl130507130978_
                             _e130512130981_
                             _hd130511130984_
                             _tl130510130986_
                             _e130515130989_
                             _hd130514130992_
                             _tl130513130994_
                             _e130518130997_
                             _hd130517131000_
                             _tl130516131002_
                             _e130521131005_
                             _hd130520131008_
                             _tl130519131010_
                             _e130524131013_
                             _hd130523131016_
                             _tl130522131018_
                             _e130527131021_
                             _hd130526131024_
                             _tl130525131026_
                             _e130530131029_
                             _hd130529131032_
                             _tl130528131034_)))))
                   (___match134744134745_
                    (lambda (_e130509130973_
                             _hd130508130976_
                             _tl130507130978_
                             _e130512130981_
                             _hd130511130984_
                             _tl130510130986_
                             _e130515130989_
                             _hd130514130992_
                             _tl130513130994_
                             _e130518130997_
                             _hd130517131000_
                             _tl130516131002_
                             _e130521131005_
                             _hd130520131008_
                             _tl130519131010_
                             _e130524131013_
                             _hd130523131016_
                             _tl130522131018_
                             _e130527131021_
                             _hd130526131024_
                             _tl130525131026_
                             _e130530131029_
                             _hd130529131032_
                             _tl130528131034_
                             _e130533131037_
                             _hd130532131040_
                             _tl130531131042_
                             _e130536131045_
                             _hd130535131048_
                             _tl130534131050_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130528131034_))
                          (___match134746134747_
                           _e130509130973_
                           _hd130508130976_
                           _tl130507130978_
                           _e130512130981_
                           _hd130511130984_
                           _tl130510130986_
                           _e130515130989_
                           _hd130514130992_
                           _tl130513130994_
                           _e130518130997_
                           _hd130517131000_
                           _tl130516131002_
                           _e130521131005_
                           _hd130520131008_
                           _tl130519131010_
                           _e130524131013_
                           _hd130523131016_
                           _tl130522131018_
                           _e130527131021_
                           _hd130526131024_
                           _tl130525131026_
                           _e130530131029_
                           _hd130529131032_
                           _tl130528131034_
                           _e130533131037_
                           _hd130532131040_
                           _tl130531131042_
                           _e130536131045_
                           _hd130535131048_
                           _tl130534131050_)
                          (___match134824134825_
                           _e130509130973_
                           _hd130508130976_
                           _tl130507130978_
                           _e130512130981_
                           _hd130511130984_
                           _tl130510130986_
                           _e130515130989_
                           _hd130514130992_
                           _tl130513130994_
                           _e130518130997_
                           _hd130517131000_
                           _tl130516131002_
                           _e130521131005_
                           _hd130520131008_
                           _tl130519131010_
                           _e130524131013_
                           _hd130523131016_
                           _tl130522131018_
                           _e130527131021_
                           _hd130526131024_
                           _tl130525131026_
                           _e130530131029_
                           _hd130529131032_
                           _tl130528131034_
                           _e130533131037_
                           _hd130532131040_
                           _tl130531131042_
                           _e130536131045_
                           _hd130535131048_
                           _tl130534131050_))))
                   (___match134734134735_
                    (lambda (_e130509130973_
                             _hd130508130976_
                             _tl130507130978_
                             _e130512130981_
                             _hd130511130984_
                             _tl130510130986_
                             _e130515130989_
                             _hd130514130992_
                             _tl130513130994_
                             _e130518130997_
                             _hd130517131000_
                             _tl130516131002_
                             _e130521131005_
                             _hd130520131008_
                             _tl130519131010_
                             _e130524131013_
                             _hd130523131016_
                             _tl130522131018_
                             _e130527131021_
                             _hd130526131024_
                             _tl130525131026_
                             _e130530131029_
                             _hd130529131032_
                             _tl130528131034_
                             _e130533131037_
                             _hd130532131040_
                             _tl130531131042_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130532131040_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130531131042_))
                              (let ((_e130536131045_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130531131042_))))
                                (let ((_tl130534131050_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130536131045_)))
                                      (_hd130535131048_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130536131045_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130534131050_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130528131034_))
                                          (___match134746134747_
                                           _e130509130973_
                                           _hd130508130976_
                                           _tl130507130978_
                                           _e130512130981_
                                           _hd130511130984_
                                           _tl130510130986_
                                           _e130515130989_
                                           _hd130514130992_
                                           _tl130513130994_
                                           _e130518130997_
                                           _hd130517131000_
                                           _tl130516131002_
                                           _e130521131005_
                                           _hd130520131008_
                                           _tl130519131010_
                                           _e130524131013_
                                           _hd130523131016_
                                           _tl130522131018_
                                           _e130527131021_
                                           _hd130526131024_
                                           _tl130525131026_
                                           _e130530131029_
                                           _hd130529131032_
                                           _tl130528131034_
                                           _e130533131037_
                                           _hd130532131040_
                                           _tl130531131042_
                                           _e130536131045_
                                           _hd130535131048_
                                           _tl130534131050_)
                                          (___match134824134825_
                                           _e130509130973_
                                           _hd130508130976_
                                           _tl130507130978_
                                           _e130512130981_
                                           _hd130511130984_
                                           _tl130510130986_
                                           _e130515130989_
                                           _hd130514130992_
                                           _tl130513130994_
                                           _e130518130997_
                                           _hd130517131000_
                                           _tl130516131002_
                                           _e130521131005_
                                           _hd130520131008_
                                           _tl130519131010_
                                           _e130524131013_
                                           _hd130523131016_
                                           _tl130522131018_
                                           _e130527131021_
                                           _hd130526131024_
                                           _tl130525131026_
                                           _e130530131029_
                                           _hd130529131032_
                                           _tl130528131034_
                                           _e130533131037_
                                           _hd130532131040_
                                           _tl130531131042_
                                           _e130536131045_
                                           _hd130535131048_
                                           _tl130534131050_))
                                      (___match134948134949_
                                       _e130509130973_
                                       _hd130508130976_
                                       _tl130507130978_
                                       _e130512130981_
                                       _hd130511130984_
                                       _tl130510130986_
                                       _e130515130989_
                                       _hd130514130992_
                                       _tl130513130994_
                                       _e130518130997_
                                       _hd130517131000_
                                       _tl130516131002_
                                       _e130521131005_
                                       _hd130520131008_
                                       _tl130519131010_
                                       _e130524131013_
                                       _hd130523131016_
                                       _tl130522131018_
                                       _e130527131021_
                                       _hd130526131024_
                                       _tl130525131026_
                                       _e130530131029_
                                       _hd130529131032_
                                       _tl130528131034_))))
                              (___match134948134949_
                               _e130509130973_
                               _hd130508130976_
                               _tl130507130978_
                               _e130512130981_
                               _hd130511130984_
                               _tl130510130986_
                               _e130515130989_
                               _hd130514130992_
                               _tl130513130994_
                               _e130518130997_
                               _hd130517131000_
                               _tl130516131002_
                               _e130521131005_
                               _hd130520131008_
                               _tl130519131010_
                               _e130524131013_
                               _hd130523131016_
                               _tl130522131018_
                               _e130527131021_
                               _hd130526131024_
                               _tl130525131026_
                               _e130530131029_
                               _hd130529131032_
                               _tl130528131034_))
                          (___match134948134949_
                           _e130509130973_
                           _hd130508130976_
                           _tl130507130978_
                           _e130512130981_
                           _hd130511130984_
                           _tl130510130986_
                           _e130515130989_
                           _hd130514130992_
                           _tl130513130994_
                           _e130518130997_
                           _hd130517131000_
                           _tl130516131002_
                           _e130521131005_
                           _hd130520131008_
                           _tl130519131010_
                           _e130524131013_
                           _hd130523131016_
                           _tl130522131018_
                           _e130527131021_
                           _hd130526131024_
                           _tl130525131026_
                           _e130530131029_
                           _hd130529131032_
                           _tl130528131034_))))
                   (___match134666134667_
                    (lambda (_e130458131092_
                             _hd130457131095_
                             _tl130456131097_
                             _e130461131100_
                             _hd130460131103_
                             _tl130459131105_
                             _e130464131108_
                             _hd130463131111_
                             _tl130462131113_
                             _e130467131116_
                             _hd130466131119_
                             _tl130465131121_
                             _e130470131124_
                             _hd130469131127_
                             _tl130468131129_
                             _e130473131132_
                             _hd130472131135_
                             _tl130471131137_
                             _e130476131140_
                             _hd130475131143_
                             _tl130474131145_
                             _e130479131148_
                             _hd130478131151_
                             _tl130477131153_
                             _e130482131156_
                             _hd130481131159_
                             _tl130480131161_
                             _e130485131164_
                             _hd130484131167_
                             _tl130483131169_
                             _e130488131172_
                             _hd130487131175_
                             _tl130486131177_
                             _e130491131180_
                             _hd130490131183_
                             _tl130489131185_
                             _e130494131188_
                             _hd130493131191_
                             _tl130492131193_
                             ___splice134459134460_
                             _target130495131196_
                             _tl130497131198_)
                      (letrec ((_loop130498131201_
                                (lambda (_hd130496131204_ _args130502131206_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130496131204_))
                                      (let ((_e130499131209_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130496131204_))))
                                        (let ((_lp-tl130501131214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130499131209_)))
                                              (_lp-hd130500131212_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130499131209_))))
                                          (let ((__tmp135758
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130500131212_
                                                         _args130502131206_))))
                                            (declare (not safe))
                                            (_loop130498131201_
                                             _lp-tl130501131214_
                                             __tmp135758))))
                                      (let ((_args130503131217_
                                             (reverse _args130502131206_)))
                                        (let ((_L131220_ _args130503131217_)
                                              (_L131221_ _hd130493131191_)
                                              (_L131222_ _hd130484131167_)
                                              (_L131223_ _hd130475131143_)
                                              (_L131224_ _hd130466131119_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131224_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131223_
                                                      'call-method))
                                                   (let ((__tmp135757
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130397_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131222_
                                                      __tmp135757)))
                                              (___kont134457134458_
                                               _L131220_
                                               _L131221_
                                               _L131222_
                                               _L131223_
                                               _L131224_)
                                              (___kont134469134470_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130498131201_ _target130495131196_ '())))))
                   (___match134624134625_
                    (lambda (_e130458131092_
                             _hd130457131095_
                             _tl130456131097_
                             _e130461131100_
                             _hd130460131103_
                             _tl130459131105_
                             _e130464131108_
                             _hd130463131111_
                             _tl130462131113_
                             _e130467131116_
                             _hd130466131119_
                             _tl130465131121_
                             _e130470131124_
                             _hd130469131127_
                             _tl130468131129_
                             _e130473131132_
                             _hd130472131135_
                             _tl130471131137_
                             _e130476131140_
                             _hd130475131143_
                             _tl130474131145_
                             _e130479131148_
                             _hd130478131151_
                             _tl130477131153_
                             _e130482131156_
                             _hd130481131159_
                             _tl130480131161_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130481131159_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130480131161_))
                              (let ((_e130485131164_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130480131161_))))
                                (let ((_tl130483131169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130485131164_)))
                                      (_hd130484131167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130485131164_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130483131169_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130477131153_))
                                          (let ((_e130488131172_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130477131153_))))
                                            (let ((_tl130486131177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130488131172_)))
                                                  (_hd130487131175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130488131172_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130487131175_))
                                                  (let ((_e130491131180_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130487131175_))))
                                                    (let ((_tl130489131185_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130491131180_)))
                                                          (_hd130490131183_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130491131180_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130490131183_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130490131183_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130489131185_))
                          (let ((_e130494131188_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130489131185_))))
                            (let ((_tl130492131193_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130494131188_)))
                                  (_hd130493131191_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130494131188_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130492131193_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130486131177_))
                                      (let ((___splice134459134460_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130486131177_
                                                '0))))
                                        (let ((_tl130497131198_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134459134460_
                                                  '1)))
                                              (_target130495131196_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134459134460_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130497131198_))
                                              (___match134666134667_
                                               _e130458131092_
                                               _hd130457131095_
                                               _tl130456131097_
                                               _e130461131100_
                                               _hd130460131103_
                                               _tl130459131105_
                                               _e130464131108_
                                               _hd130463131111_
                                               _tl130462131113_
                                               _e130467131116_
                                               _hd130466131119_
                                               _tl130465131121_
                                               _e130470131124_
                                               _hd130469131127_
                                               _tl130468131129_
                                               _e130473131132_
                                               _hd130472131135_
                                               _tl130471131137_
                                               _e130476131140_
                                               _hd130475131143_
                                               _tl130474131145_
                                               _e130479131148_
                                               _hd130478131151_
                                               _tl130477131153_
                                               _e130482131156_
                                               _hd130481131159_
                                               _tl130480131161_
                                               _e130485131164_
                                               _hd130484131167_
                                               _tl130483131169_
                                               _e130488131172_
                                               _hd130487131175_
                                               _tl130486131177_
                                               _e130491131180_
                                               _hd130490131183_
                                               _tl130489131185_
                                               _e130494131188_
                                               _hd130493131191_
                                               _tl130492131193_
                                               ___splice134459134460_
                                               _target130495131196_
                                               _tl130497131198_)
                                              (___kont134469134470_))))
                                      (___kont134469134470_))
                                  (___kont134469134470_))))
                          (___kont134469134470_))
                      (___kont134469134470_))
                  (___kont134469134470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134469134470_))))
                                          (___match134948134949_
                                           _e130458131092_
                                           _hd130457131095_
                                           _tl130456131097_
                                           _e130461131100_
                                           _hd130460131103_
                                           _tl130459131105_
                                           _e130464131108_
                                           _hd130463131111_
                                           _tl130462131113_
                                           _e130467131116_
                                           _hd130466131119_
                                           _tl130465131121_
                                           _e130470131124_
                                           _hd130469131127_
                                           _tl130468131129_
                                           _e130473131132_
                                           _hd130472131135_
                                           _tl130471131137_
                                           _e130476131140_
                                           _hd130475131143_
                                           _tl130474131145_
                                           _e130479131148_
                                           _hd130478131151_
                                           _tl130477131153_))
                                      (___match134948134949_
                                       _e130458131092_
                                       _hd130457131095_
                                       _tl130456131097_
                                       _e130461131100_
                                       _hd130460131103_
                                       _tl130459131105_
                                       _e130464131108_
                                       _hd130463131111_
                                       _tl130462131113_
                                       _e130467131116_
                                       _hd130466131119_
                                       _tl130465131121_
                                       _e130470131124_
                                       _hd130469131127_
                                       _tl130468131129_
                                       _e130473131132_
                                       _hd130472131135_
                                       _tl130471131137_
                                       _e130476131140_
                                       _hd130475131143_
                                       _tl130474131145_
                                       _e130479131148_
                                       _hd130478131151_
                                       _tl130477131153_))))
                              (___match134948134949_
                               _e130458131092_
                               _hd130457131095_
                               _tl130456131097_
                               _e130461131100_
                               _hd130460131103_
                               _tl130459131105_
                               _e130464131108_
                               _hd130463131111_
                               _tl130462131113_
                               _e130467131116_
                               _hd130466131119_
                               _tl130465131121_
                               _e130470131124_
                               _hd130469131127_
                               _tl130468131129_
                               _e130473131132_
                               _hd130472131135_
                               _tl130471131137_
                               _e130476131140_
                               _hd130475131143_
                               _tl130474131145_
                               _e130479131148_
                               _hd130478131151_
                               _tl130477131153_))
                          (___match134734134735_
                           _e130458131092_
                           _hd130457131095_
                           _tl130456131097_
                           _e130461131100_
                           _hd130460131103_
                           _tl130459131105_
                           _e130464131108_
                           _hd130463131111_
                           _tl130462131113_
                           _e130467131116_
                           _hd130466131119_
                           _tl130465131121_
                           _e130470131124_
                           _hd130469131127_
                           _tl130468131129_
                           _e130473131132_
                           _hd130472131135_
                           _tl130471131137_
                           _e130476131140_
                           _hd130475131143_
                           _tl130474131145_
                           _e130479131148_
                           _hd130478131151_
                           _tl130477131153_
                           _e130482131156_
                           _hd130481131159_
                           _tl130480131161_))))
                   (___match134556134557_
                    (lambda (_e130414131281_
                             _hd130413131284_
                             _tl130412131286_
                             _e130417131289_
                             _hd130416131292_
                             _tl130415131294_
                             _e130420131297_
                             _hd130419131300_
                             _tl130418131302_
                             _e130423131305_
                             _hd130422131308_
                             _tl130421131310_
                             _e130426131313_
                             _hd130425131316_
                             _tl130424131318_
                             _e130429131321_
                             _hd130428131324_
                             _tl130427131326_
                             _e130432131329_
                             _hd130431131332_
                             _tl130430131334_
                             _e130435131337_
                             _hd130434131340_
                             _tl130433131342_
                             _e130438131345_
                             _hd130437131348_
                             _tl130436131350_
                             _e130441131353_
                             _hd130440131356_
                             _tl130439131358_
                             ___splice134455134456_
                             _target130442131361_
                             _tl130444131363_)
                      (letrec ((_loop130445131366_
                                (lambda (_hd130443131369_ _args130449131371_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130443131369_))
                                      (let ((_e130446131374_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130443131369_))))
                                        (let ((_lp-tl130448131379_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130446131374_)))
                                              (_lp-hd130447131377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130446131374_))))
                                          (let ((__tmp135760
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130447131377_
                                                         _args130449131371_))))
                                            (declare (not safe))
                                            (_loop130445131366_
                                             _lp-tl130448131379_
                                             __tmp135760))))
                                      (let ((_args130450131382_
                                             (reverse _args130449131371_)))
                                        (let ((_L131385_ _args130450131382_)
                                              (_L131386_ _hd130440131356_)
                                              (_L131387_ _hd130431131332_)
                                              (_L131388_ _hd130422131308_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131388_
                                                      'call-method))
                                                   (let ((__tmp135759
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130397_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131387_
                                                      __tmp135759)))
                                              (___kont134453134454_
                                               _L131385_
                                               _L131386_
                                               _L131387_
                                               _L131388_)
                                              (___match134744134745_
                                               _e130414131281_
                                               _hd130413131284_
                                               _tl130412131286_
                                               _e130417131289_
                                               _hd130416131292_
                                               _tl130415131294_
                                               _e130420131297_
                                               _hd130419131300_
                                               _tl130418131302_
                                               _e130423131305_
                                               _hd130422131308_
                                               _tl130421131310_
                                               _e130426131313_
                                               _hd130425131316_
                                               _tl130424131318_
                                               _e130429131321_
                                               _hd130428131324_
                                               _tl130427131326_
                                               _e130432131329_
                                               _hd130431131332_
                                               _tl130430131334_
                                               _e130435131337_
                                               _hd130434131340_
                                               _tl130433131342_
                                               _e130438131345_
                                               _hd130437131348_
                                               _tl130436131350_
                                               _e130441131353_
                                               _hd130440131356_
                                               _tl130439131358_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130445131366_ _target130442131361_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134451134452_))
                  (let ((_e130414131281_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134451134452_))))
                    (let ((_tl130412131286_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130414131281_)))
                          (_hd130413131284_
                           (let ()
                             (declare (not safe))
                             (##car _e130414131281_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130412131286_))
                          (let ((_e130417131289_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130412131286_))))
                            (let ((_tl130415131294_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130417131289_)))
                                  (_hd130416131292_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130417131289_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130416131292_))
                                  (let ((_e130420131297_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130416131292_))))
                                    (let ((_tl130418131302_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130420131297_)))
                                          (_hd130419131300_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130420131297_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130419131300_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130419131300_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130418131302_))
                                                  (let ((_e130423131305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130418131302_))))
                                                    (let ((_tl130421131310_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130423131305_)))
                                                          (_hd130422131308_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130423131305_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130421131310_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130415131294_))
                      (let ((_e130426131313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130415131294_))))
                        (let ((_tl130424131318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130426131313_)))
                              (_hd130425131316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130426131313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130425131316_))
                              (let ((_e130429131321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130425131316_))))
                                (let ((_tl130427131326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130429131321_)))
                                      (_hd130428131324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130429131321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130428131324_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130428131324_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130427131326_))
                                              (let ((_e130432131329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130427131326_))))
                                                (let ((_tl130430131334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130432131329_)))
                                                      (_hd130431131332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130432131329_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130430131334_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130424131318_))
                                                          (let ((_e130435131337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130424131318_))))
                    (let ((_tl130433131342_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130435131337_)))
                          (_hd130434131340_
                           (let ()
                             (declare (not safe))
                             (##car _e130435131337_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130434131340_))
                          (let ((_e130438131345_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130434131340_))))
                            (let ((_tl130436131350_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130438131345_)))
                                  (_hd130437131348_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130438131345_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130437131348_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130437131348_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130436131350_))
                                          (let ((_e130441131353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130436131350_))))
                                            (let ((_tl130439131358_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130441131353_)))
                                                  (_hd130440131356_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130441131353_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130439131358_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130433131342_))
                                                      (let ((___splice134455134456_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130433131342_ '0))))
                (let ((_tl130444131363_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134455134456_ '1)))
                      (_target130442131361_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134455134456_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130444131363_))
                      (___match134556134557_
                       _e130414131281_
                       _hd130413131284_
                       _tl130412131286_
                       _e130417131289_
                       _hd130416131292_
                       _tl130415131294_
                       _e130420131297_
                       _hd130419131300_
                       _tl130418131302_
                       _e130423131305_
                       _hd130422131308_
                       _tl130421131310_
                       _e130426131313_
                       _hd130425131316_
                       _tl130424131318_
                       _e130429131321_
                       _hd130428131324_
                       _tl130427131326_
                       _e130432131329_
                       _hd130431131332_
                       _tl130430131334_
                       _e130435131337_
                       _hd130434131340_
                       _tl130433131342_
                       _e130438131345_
                       _hd130437131348_
                       _tl130436131350_
                       _e130441131353_
                       _hd130440131356_
                       _tl130439131358_
                       ___splice134455134456_
                       _target130442131361_
                       _tl130444131363_)
                      (___match134744134745_
                       _e130414131281_
                       _hd130413131284_
                       _tl130412131286_
                       _e130417131289_
                       _hd130416131292_
                       _tl130415131294_
                       _e130420131297_
                       _hd130419131300_
                       _tl130418131302_
                       _e130423131305_
                       _hd130422131308_
                       _tl130421131310_
                       _e130426131313_
                       _hd130425131316_
                       _tl130424131318_
                       _e130429131321_
                       _hd130428131324_
                       _tl130427131326_
                       _e130432131329_
                       _hd130431131332_
                       _tl130430131334_
                       _e130435131337_
                       _hd130434131340_
                       _tl130433131342_
                       _e130438131345_
                       _hd130437131348_
                       _tl130436131350_
                       _e130441131353_
                       _hd130440131356_
                       _tl130439131358_))))
              (___match134744134745_
               _e130414131281_
               _hd130413131284_
               _tl130412131286_
               _e130417131289_
               _hd130416131292_
               _tl130415131294_
               _e130420131297_
               _hd130419131300_
               _tl130418131302_
               _e130423131305_
               _hd130422131308_
               _tl130421131310_
               _e130426131313_
               _hd130425131316_
               _tl130424131318_
               _e130429131321_
               _hd130428131324_
               _tl130427131326_
               _e130432131329_
               _hd130431131332_
               _tl130430131334_
               _e130435131337_
               _hd130434131340_
               _tl130433131342_
               _e130438131345_
               _hd130437131348_
               _tl130436131350_
               _e130441131353_
               _hd130440131356_
               _tl130439131358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134948134949_
                                                   _e130414131281_
                                                   _hd130413131284_
                                                   _tl130412131286_
                                                   _e130417131289_
                                                   _hd130416131292_
                                                   _tl130415131294_
                                                   _e130420131297_
                                                   _hd130419131300_
                                                   _tl130418131302_
                                                   _e130423131305_
                                                   _hd130422131308_
                                                   _tl130421131310_
                                                   _e130426131313_
                                                   _hd130425131316_
                                                   _tl130424131318_
                                                   _e130429131321_
                                                   _hd130428131324_
                                                   _tl130427131326_
                                                   _e130432131329_
                                                   _hd130431131332_
                                                   _tl130430131334_
                                                   _e130435131337_
                                                   _hd130434131340_
                                                   _tl130433131342_))))
                                          (___match134948134949_
                                           _e130414131281_
                                           _hd130413131284_
                                           _tl130412131286_
                                           _e130417131289_
                                           _hd130416131292_
                                           _tl130415131294_
                                           _e130420131297_
                                           _hd130419131300_
                                           _tl130418131302_
                                           _e130423131305_
                                           _hd130422131308_
                                           _tl130421131310_
                                           _e130426131313_
                                           _hd130425131316_
                                           _tl130424131318_
                                           _e130429131321_
                                           _hd130428131324_
                                           _tl130427131326_
                                           _e130432131329_
                                           _hd130431131332_
                                           _tl130430131334_
                                           _e130435131337_
                                           _hd130434131340_
                                           _tl130433131342_))
                                      (___match134624134625_
                                       _e130414131281_
                                       _hd130413131284_
                                       _tl130412131286_
                                       _e130417131289_
                                       _hd130416131292_
                                       _tl130415131294_
                                       _e130420131297_
                                       _hd130419131300_
                                       _tl130418131302_
                                       _e130423131305_
                                       _hd130422131308_
                                       _tl130421131310_
                                       _e130426131313_
                                       _hd130425131316_
                                       _tl130424131318_
                                       _e130429131321_
                                       _hd130428131324_
                                       _tl130427131326_
                                       _e130432131329_
                                       _hd130431131332_
                                       _tl130430131334_
                                       _e130435131337_
                                       _hd130434131340_
                                       _tl130433131342_
                                       _e130438131345_
                                       _hd130437131348_
                                       _tl130436131350_))
                                  (___match134948134949_
                                   _e130414131281_
                                   _hd130413131284_
                                   _tl130412131286_
                                   _e130417131289_
                                   _hd130416131292_
                                   _tl130415131294_
                                   _e130420131297_
                                   _hd130419131300_
                                   _tl130418131302_
                                   _e130423131305_
                                   _hd130422131308_
                                   _tl130421131310_
                                   _e130426131313_
                                   _hd130425131316_
                                   _tl130424131318_
                                   _e130429131321_
                                   _hd130428131324_
                                   _tl130427131326_
                                   _e130432131329_
                                   _hd130431131332_
                                   _tl130430131334_
                                   _e130435131337_
                                   _hd130434131340_
                                   _tl130433131342_))))
                          (___match134948134949_
                           _e130414131281_
                           _hd130413131284_
                           _tl130412131286_
                           _e130417131289_
                           _hd130416131292_
                           _tl130415131294_
                           _e130420131297_
                           _hd130419131300_
                           _tl130418131302_
                           _e130423131305_
                           _hd130422131308_
                           _tl130421131310_
                           _e130426131313_
                           _hd130425131316_
                           _tl130424131318_
                           _e130429131321_
                           _hd130428131324_
                           _tl130427131326_
                           _e130432131329_
                           _hd130431131332_
                           _tl130430131334_
                           _e130435131337_
                           _hd130434131340_
                           _tl130433131342_))))
                  (___match134886134887_
                   _e130414131281_
                   _hd130413131284_
                   _tl130412131286_
                   _e130417131289_
                   _hd130416131292_
                   _tl130415131294_
                   _e130420131297_
                   _hd130419131300_
                   _tl130418131302_
                   _e130423131305_
                   _hd130422131308_
                   _tl130421131310_
                   _e130426131313_
                   _hd130425131316_
                   _tl130424131318_
                   _e130429131321_
                   _hd130428131324_
                   _tl130427131326_
                   _e130432131329_
                   _hd130431131332_
                   _tl130430131334_))
              (___kont134469134470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134469134470_))
                                          (___kont134469134470_))
                                      (___kont134469134470_))))
                              (___kont134469134470_))))
                      (___kont134469134470_))
                  (___kont134469134470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134469134470_))
                                              (___kont134469134470_))
                                          (___kont134469134470_))))
                                  (___kont134469134470_))))
                          (___kont134469134470_))))
                  (___kont134469134470_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129336_ _stx129337_)
        (letrec ((_force-e129339_
                  (lambda (_target130395_)
                    (let ((__tmp135761
                           (let ((__tmp135765
                                  (let ((__tmp135766
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135766)))
                                 (__tmp135762
                                  (let ((__tmp135763
                                         (let ((__tmp135764
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130395_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135764))))
                                    (declare (not safe))
                                    (cons __tmp135763 '()))))
                             (declare (not safe))
                             (cons __tmp135765 __tmp135762))))
                      (declare (not safe))
                      (cons '%#call __tmp135761)))))
          (let* ((___stx134953134954_ _stx129337_)
                 (_g129347129569_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134953134954_)))))
            (let ((___kont134955134956_
                   (lambda (_L130341_ _L130342_ _L130343_ _L130344_)
                     (let ((_$method130389_
                            (let ((__tmp135768
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129336_ 'methods)))
                                  (__tmp135767
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130342_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135768 __tmp135767)))
                           (_args130390_
                            (map (lambda (_g130377130379_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129336_
                                      _g130377130379_)))
                                 (let ((__tmp135769
                                        (lambda (_g130381130384_
                                                 _g130382130386_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130381130384_
                                                  _g130382130386_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135769 '() _L130341_)))))
                       (let ((__tmp135770
                              (let ((__tmp135771
                                     (let ((__tmp135776
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129339_
                                               _$method130389_)))
                                           (__tmp135772
                                            (let ((__tmp135773
                                                   (let ((__tmp135774
                                                          (let ((__tmp135775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129336_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp135775 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135774))))
                                              (declare (not safe))
                                              (cons __tmp135773
                                                    _args130390_))))
                                       (declare (not safe))
                                       (cons __tmp135776 __tmp135772))))
                                (declare (not safe))
                                (cons '%#call __tmp135771))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135770 _stx129337_)))))
                  (___kont134959134960_
                   (lambda (_L130173_ _L130174_ _L130175_ _L130176_ _L130177_)
                     (let ((_$method130229_
                            (let ((__tmp135778
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129336_ 'methods)))
                                  (__tmp135777
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130174_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135778 __tmp135777)))
                           (_args130230_
                            (map (lambda (_g130217130219_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129336_
                                      _g130217130219_)))
                                 (let ((__tmp135779
                                        (lambda (_g130221130224_
                                                 _g130222130226_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130221130224_
                                                  _g130222130226_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135779 '() _L130173_)))))
                       (let ((__tmp135780
                              (let ((__tmp135781
                                     (let ((__tmp135788
                                            (let ((__tmp135789
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135789)))
                                           (__tmp135782
                                            (let ((__tmp135787
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129339_
                                                      _$method130229_)))
                                                  (__tmp135783
                                                   (let ((__tmp135784
                                                          (let ((__tmp135785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135786
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129336_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135786 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135784
                                                           _args130230_))))
                                              (declare (not safe))
                                              (cons __tmp135787 __tmp135783))))
                                       (declare (not safe))
                                       (cons __tmp135788 __tmp135782))))
                                (declare (not safe))
                                (cons '%#call __tmp135781))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135780 _stx129337_)))))
                  (___kont134963134964_
                   (lambda (_L130004_ _L130005_ _L130006_)
                     (let* ((_$field130038_
                             (let ((__tmp135791
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129336_ 'slots)))
                                   (__tmp135790
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130004_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp135791 __tmp135790)))
                            (__tmp135792
                             (let ((__tmp135793
                                    (let ((__tmp135801
                                           (let ((__tmp135802
                                                  (let ((__tmp135803
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129336_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp135803 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135802)))
                                          (__tmp135794
                                           (let ((__tmp135799
                                                  (let ((__tmp135800
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135800)))
                                                 (__tmp135795
                                                  (let ((__tmp135796
                                                         (let ((__tmp135797
                                                                (let ((__tmp135798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129336_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp135798 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135796 '()))))
                                             (declare (not safe))
                                             (cons __tmp135799 __tmp135795))))
                                      (declare (not safe))
                                      (cons __tmp135801 __tmp135794))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135793))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135792 _stx129337_))))
                  (___kont134965134966_
                   (lambda (_L129878_ _L129879_ _L129880_ _L129881_)
                     (let ((_$field129916_
                            (let ((__tmp135805
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129336_ 'slots)))
                                  (__tmp135804
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129879_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135805 __tmp135804)))
                           (_expr129917_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129336_ _L129878_))))
                       (let ((__tmp135806
                              (let ((__tmp135807
                                     (let ((__tmp135816
                                            (let ((__tmp135817
                                                   (let ((__tmp135818
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129336_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp135818 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135817)))
                                           (__tmp135808
                                            (let ((__tmp135814
                                                   (let ((__tmp135815
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135815)))
                                                  (__tmp135809
                                                   (let ((__tmp135811
                                                          (let ((__tmp135812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135813
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129336_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135813 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135812)))
                 (__tmp135810
                  (let () (declare (not safe)) (cons _expr129917_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135811
                                                           __tmp135810))))
                                              (declare (not safe))
                                              (cons __tmp135814 __tmp135809))))
                                       (declare (not safe))
                                       (cons __tmp135816 __tmp135808))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135807))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135806 _stx129337_)))))
                  (___kont134967134968_
                   (lambda (_L129750_ _L129751_)
                     (let* ((_accessor129773_
                             (let ((__tmp135819
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129751_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135819)))
                            (_klass129775_
                             (let ((__tmp135820
                                    (##structure-ref
                                     _accessor129773_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129337_
                                __tmp135820)))
                            (_slot129777_
                             (##structure-ref
                              _accessor129773_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135834
                                       (##structure-ref
                                        _accessor129773_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135834))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129775_
                                       _slot129777_))
                                    (##structure-ref
                                     _klass129775_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129337_
                           (let* ((_$field129783_
                                   (let ((__tmp135821
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135821 _slot129777_)))
                                  (__tmp135822
                                   (let ((__tmp135823
                                          (let ((__tmp135831
                                                 (let ((__tmp135832
                                                        (let ((__tmp135833
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129336_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135833 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135832)))
                                                (__tmp135824
                                                 (let ((__tmp135829
                                                        (let ((__tmp135830
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129783_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135830)))
               (__tmp135825
                (let ((__tmp135826
                       (let ((__tmp135827
                              (let ((__tmp135828
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129336_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135828 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135827))))
                  (declare (not safe))
                  (cons __tmp135826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135829
                                                         __tmp135825))))
                                            (declare (not safe))
                                            (cons __tmp135831 __tmp135824))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135823))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135822
                              _stx129337_))))))
                  (___kont134969134970_
                   (lambda (_L129645_ _L129646_ _L129647_)
                     (let* ((_mutator129675_
                             (let ((__tmp135835
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129647_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135835)))
                            (_klass129677_
                             (let ((__tmp135836
                                    (##structure-ref
                                     _mutator129675_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129337_
                                __tmp135836)))
                            (_slot129679_
                             (##structure-ref
                              _mutator129675_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129681_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129336_ _L129645_))))
                       (if (and (let ((__tmp135861
                                       (##structure-ref
                                        _mutator129675_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135861))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129677_
                                       _slot129679_))
                                    (##structure-ref
                                     _klass129677_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135851
                                  (let ((__tmp135852
                                         (let ((__tmp135858
                                                (let ((__tmp135860
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135859
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129647_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135860
                                                        __tmp135859)))
                                               (__tmp135853
                                                (let ((__tmp135855
                                                       (let ((__tmp135857
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135856
                      (let () (declare (not safe)) (cons _L129646_ '()))))
                 (declare (not safe))
                 (cons __tmp135857 __tmp135856)))
              (__tmp135854
               (let () (declare (not safe)) (cons _expr129681_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135855
                                                        __tmp135854))))
                                           (declare (not safe))
                                           (cons __tmp135858 __tmp135853))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135852))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135851 _stx129337_))
                           (let* ((_$field129687_
                                   (let ((__tmp135837
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135837 _slot129679_)))
                                  (__tmp135838
                                   (let ((__tmp135839
                                          (let ((__tmp135848
                                                 (let ((__tmp135849
                                                        (let ((__tmp135850
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129336_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135850 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135849)))
                                                (__tmp135840
                                                 (let ((__tmp135846
                                                        (let ((__tmp135847
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129687_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135847)))
               (__tmp135841
                (let ((__tmp135843
                       (let ((__tmp135844
                              (let ((__tmp135845
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129336_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135845 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135844)))
                      (__tmp135842
                       (let () (declare (not safe)) (cons _expr129681_ '()))))
                  (declare (not safe))
                  (cons __tmp135843 __tmp135842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135846
                                                         __tmp135841))))
                                            (declare (not safe))
                                            (cons __tmp135848 __tmp135840))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135839))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135838
                              _stx129337_))))))
                  (___kont134971134972_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129336_ _stx129337_)))))
              (let* ((___match135452135453_
                      (lambda (_e129543129581_
                               _hd129542129584_
                               _tl129541129586_
                               _e129546129589_
                               _hd129545129592_
                               _tl129544129594_
                               _e129549129597_
                               _hd129548129600_
                               _tl129547129602_
                               _e129552129605_
                               _hd129551129608_
                               _tl129550129610_
                               _e129555129613_
                               _hd129554129616_
                               _tl129553129618_
                               _e129558129621_
                               _hd129557129624_
                               _tl129556129626_
                               _e129561129629_
                               _hd129560129632_
                               _tl129559129634_
                               _e129564129637_
                               _hd129563129640_
                               _tl129562129642_)
                        (let ((_L129645_ _hd129563129640_)
                              (_L129646_ _hd129560129632_)
                              (_L129647_ _hd129551129608_))
                          (if (and (let ((__tmp135864
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129646_
                                      __tmp135864))
                                   (let ((__tmp135862
                                          (let ((__tmp135863
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129647_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135863))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135862
                                      'gxc#!mutator::t)))
                              (___kont134969134970_
                               _L129645_
                               _L129646_
                               _L129647_)
                              (___kont134971134972_)))))
                     (___match135450135451_
                      (lambda (_e129543129581_
                               _hd129542129584_
                               _tl129541129586_
                               _e129546129589_
                               _hd129545129592_
                               _tl129544129594_
                               _e129549129597_
                               _hd129548129600_
                               _tl129547129602_
                               _e129552129605_
                               _hd129551129608_
                               _tl129550129610_
                               _e129555129613_
                               _hd129554129616_
                               _tl129553129618_
                               _e129558129621_
                               _hd129557129624_
                               _tl129556129626_
                               _e129561129629_
                               _hd129560129632_
                               _tl129559129634_
                               _e129564129637_
                               _hd129563129640_
                               _tl129562129642_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129562129642_))
                            (___match135452135453_
                             _e129543129581_
                             _hd129542129584_
                             _tl129541129586_
                             _e129546129589_
                             _hd129545129592_
                             _tl129544129594_
                             _e129549129597_
                             _hd129548129600_
                             _tl129547129602_
                             _e129552129605_
                             _hd129551129608_
                             _tl129550129610_
                             _e129555129613_
                             _hd129554129616_
                             _tl129553129618_
                             _e129558129621_
                             _hd129557129624_
                             _tl129556129626_
                             _e129561129629_
                             _hd129560129632_
                             _tl129559129634_
                             _e129564129637_
                             _hd129563129640_
                             _tl129562129642_)
                            (___kont134971134972_))))
                     (___match135444135445_
                      (lambda (_e129543129581_
                               _hd129542129584_
                               _tl129541129586_
                               _e129546129589_
                               _hd129545129592_
                               _tl129544129594_
                               _e129549129597_
                               _hd129548129600_
                               _tl129547129602_
                               _e129552129605_
                               _hd129551129608_
                               _tl129550129610_
                               _e129555129613_
                               _hd129554129616_
                               _tl129553129618_
                               _e129558129621_
                               _hd129557129624_
                               _tl129556129626_
                               _e129561129629_
                               _hd129560129632_
                               _tl129559129634_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129553129618_))
                            (let ((_e129564129637_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129553129618_))))
                              (let ((_tl129562129642_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129564129637_)))
                                    (_hd129563129640_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129564129637_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129562129642_))
                                    (___match135452135453_
                                     _e129543129581_
                                     _hd129542129584_
                                     _tl129541129586_
                                     _e129546129589_
                                     _hd129545129592_
                                     _tl129544129594_
                                     _e129549129597_
                                     _hd129548129600_
                                     _tl129547129602_
                                     _e129552129605_
                                     _hd129551129608_
                                     _tl129550129610_
                                     _e129555129613_
                                     _hd129554129616_
                                     _tl129553129618_
                                     _e129558129621_
                                     _hd129557129624_
                                     _tl129556129626_
                                     _e129561129629_
                                     _hd129560129632_
                                     _tl129559129634_
                                     _e129564129637_
                                     _hd129563129640_
                                     _tl129562129642_)
                                    (___kont134971134972_))))
                            (___kont134971134972_))))
                     (___match135390135391_
                      (lambda (_e129519129694_
                               _hd129518129697_
                               _tl129517129699_
                               _e129522129702_
                               _hd129521129705_
                               _tl129520129707_
                               _e129525129710_
                               _hd129524129713_
                               _tl129523129715_
                               _e129528129718_
                               _hd129527129721_
                               _tl129526129723_
                               _e129531129726_
                               _hd129530129729_
                               _tl129529129731_
                               _e129534129734_
                               _hd129533129737_
                               _tl129532129739_
                               _e129537129742_
                               _hd129536129745_
                               _tl129535129747_)
                        (let ((_L129750_ _hd129536129745_)
                              (_L129751_ _hd129527129721_))
                          (if (and (let ((__tmp135867
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129750_
                                      __tmp135867))
                                   (let ((__tmp135865
                                          (let ((__tmp135866
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129751_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135866))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135865
                                      'gxc#!accessor::t)))
                              (___kont134967134968_ _L129750_ _L129751_)
                              (___kont134971134972_)))))
                     (___match135388135389_
                      (lambda (_e129519129694_
                               _hd129518129697_
                               _tl129517129699_
                               _e129522129702_
                               _hd129521129705_
                               _tl129520129707_
                               _e129525129710_
                               _hd129524129713_
                               _tl129523129715_
                               _e129528129718_
                               _hd129527129721_
                               _tl129526129723_
                               _e129531129726_
                               _hd129530129729_
                               _tl129529129731_
                               _e129534129734_
                               _hd129533129737_
                               _tl129532129739_
                               _e129537129742_
                               _hd129536129745_
                               _tl129535129747_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129529129731_))
                            (___match135390135391_
                             _e129519129694_
                             _hd129518129697_
                             _tl129517129699_
                             _e129522129702_
                             _hd129521129705_
                             _tl129520129707_
                             _e129525129710_
                             _hd129524129713_
                             _tl129523129715_
                             _e129528129718_
                             _hd129527129721_
                             _tl129526129723_
                             _e129531129726_
                             _hd129530129729_
                             _tl129529129731_
                             _e129534129734_
                             _hd129533129737_
                             _tl129532129739_
                             _e129537129742_
                             _hd129536129745_
                             _tl129535129747_)
                            (___match135444135445_
                             _e129519129694_
                             _hd129518129697_
                             _tl129517129699_
                             _e129522129702_
                             _hd129521129705_
                             _tl129520129707_
                             _e129525129710_
                             _hd129524129713_
                             _tl129523129715_
                             _e129528129718_
                             _hd129527129721_
                             _tl129526129723_
                             _e129531129726_
                             _hd129530129729_
                             _tl129529129731_
                             _e129534129734_
                             _hd129533129737_
                             _tl129532129739_
                             _e129537129742_
                             _hd129536129745_
                             _tl129535129747_))))
                     (___match135334135335_
                      (lambda (_e129484129790_
                               _hd129483129793_
                               _tl129482129795_
                               _e129487129798_
                               _hd129486129801_
                               _tl129485129803_
                               _e129490129806_
                               _hd129489129809_
                               _tl129488129811_
                               _e129493129814_
                               _hd129492129817_
                               _tl129491129819_
                               _e129496129822_
                               _hd129495129825_
                               _tl129494129827_
                               _e129499129830_
                               _hd129498129833_
                               _tl129497129835_
                               _e129502129838_
                               _hd129501129841_
                               _tl129500129843_
                               _e129505129846_
                               _hd129504129849_
                               _tl129503129851_
                               _e129508129854_
                               _hd129507129857_
                               _tl129506129859_
                               _e129511129862_
                               _hd129510129865_
                               _tl129509129867_
                               _e129514129870_
                               _hd129513129873_
                               _tl129512129875_)
                        (let ((_L129878_ _hd129513129873_)
                              (_L129879_ _hd129510129865_)
                              (_L129880_ _hd129501129841_)
                              (_L129881_ _hd129492129817_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129881_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129881_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp135868
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129880_
                                      __tmp135868)))
                              (___kont134965134966_
                               _L129878_
                               _L129879_
                               _L129880_
                               _L129881_)
                              (___kont134971134972_)))))
                     (___match135326135327_
                      (lambda (_e129484129790_
                               _hd129483129793_
                               _tl129482129795_
                               _e129487129798_
                               _hd129486129801_
                               _tl129485129803_
                               _e129490129806_
                               _hd129489129809_
                               _tl129488129811_
                               _e129493129814_
                               _hd129492129817_
                               _tl129491129819_
                               _e129496129822_
                               _hd129495129825_
                               _tl129494129827_
                               _e129499129830_
                               _hd129498129833_
                               _tl129497129835_
                               _e129502129838_
                               _hd129501129841_
                               _tl129500129843_
                               _e129505129846_
                               _hd129504129849_
                               _tl129503129851_
                               _e129508129854_
                               _hd129507129857_
                               _tl129506129859_
                               _e129511129862_
                               _hd129510129865_
                               _tl129509129867_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129503129851_))
                            (let ((_e129514129870_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129503129851_))))
                              (let ((_tl129512129875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129514129870_)))
                                    (_hd129513129873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129514129870_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129512129875_))
                                    (___match135334135335_
                                     _e129484129790_
                                     _hd129483129793_
                                     _tl129482129795_
                                     _e129487129798_
                                     _hd129486129801_
                                     _tl129485129803_
                                     _e129490129806_
                                     _hd129489129809_
                                     _tl129488129811_
                                     _e129493129814_
                                     _hd129492129817_
                                     _tl129491129819_
                                     _e129496129822_
                                     _hd129495129825_
                                     _tl129494129827_
                                     _e129499129830_
                                     _hd129498129833_
                                     _tl129497129835_
                                     _e129502129838_
                                     _hd129501129841_
                                     _tl129500129843_
                                     _e129505129846_
                                     _hd129504129849_
                                     _tl129503129851_
                                     _e129508129854_
                                     _hd129507129857_
                                     _tl129506129859_
                                     _e129511129862_
                                     _hd129510129865_
                                     _tl129509129867_
                                     _e129514129870_
                                     _hd129513129873_
                                     _tl129512129875_)
                                    (___kont134971134972_))))
                            (___match135450135451_
                             _e129484129790_
                             _hd129483129793_
                             _tl129482129795_
                             _e129487129798_
                             _hd129486129801_
                             _tl129485129803_
                             _e129490129806_
                             _hd129489129809_
                             _tl129488129811_
                             _e129493129814_
                             _hd129492129817_
                             _tl129491129819_
                             _e129496129822_
                             _hd129495129825_
                             _tl129494129827_
                             _e129499129830_
                             _hd129498129833_
                             _tl129497129835_
                             _e129502129838_
                             _hd129501129841_
                             _tl129500129843_
                             _e129505129846_
                             _hd129504129849_
                             _tl129503129851_))))
                     (___match135248135249_
                      (lambda (_e129450129924_
                               _hd129449129927_
                               _tl129448129929_
                               _e129453129932_
                               _hd129452129935_
                               _tl129451129937_
                               _e129456129940_
                               _hd129455129943_
                               _tl129454129945_
                               _e129459129948_
                               _hd129458129951_
                               _tl129457129953_
                               _e129462129956_
                               _hd129461129959_
                               _tl129460129961_
                               _e129465129964_
                               _hd129464129967_
                               _tl129463129969_
                               _e129468129972_
                               _hd129467129975_
                               _tl129466129977_
                               _e129471129980_
                               _hd129470129983_
                               _tl129469129985_
                               _e129474129988_
                               _hd129473129991_
                               _tl129472129993_
                               _e129477129996_
                               _hd129476129999_
                               _tl129475130001_)
                        (let ((_L130004_ _hd129476129999_)
                              (_L130005_ _hd129467129975_)
                              (_L130006_ _hd129458129951_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130006_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130006_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp135869
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129336_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130005_
                                      __tmp135869)))
                              (___kont134963134964_
                               _L130004_
                               _L130005_
                               _L130006_)
                              (___match135452135453_
                               _e129450129924_
                               _hd129449129927_
                               _tl129448129929_
                               _e129453129932_
                               _hd129452129935_
                               _tl129451129937_
                               _e129456129940_
                               _hd129455129943_
                               _tl129454129945_
                               _e129459129948_
                               _hd129458129951_
                               _tl129457129953_
                               _e129462129956_
                               _hd129461129959_
                               _tl129460129961_
                               _e129465129964_
                               _hd129464129967_
                               _tl129463129969_
                               _e129468129972_
                               _hd129467129975_
                               _tl129466129977_
                               _e129471129980_
                               _hd129470129983_
                               _tl129469129985_)))))
                     (___match135246135247_
                      (lambda (_e129450129924_
                               _hd129449129927_
                               _tl129448129929_
                               _e129453129932_
                               _hd129452129935_
                               _tl129451129937_
                               _e129456129940_
                               _hd129455129943_
                               _tl129454129945_
                               _e129459129948_
                               _hd129458129951_
                               _tl129457129953_
                               _e129462129956_
                               _hd129461129959_
                               _tl129460129961_
                               _e129465129964_
                               _hd129464129967_
                               _tl129463129969_
                               _e129468129972_
                               _hd129467129975_
                               _tl129466129977_
                               _e129471129980_
                               _hd129470129983_
                               _tl129469129985_
                               _e129474129988_
                               _hd129473129991_
                               _tl129472129993_
                               _e129477129996_
                               _hd129476129999_
                               _tl129475130001_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129469129985_))
                            (___match135248135249_
                             _e129450129924_
                             _hd129449129927_
                             _tl129448129929_
                             _e129453129932_
                             _hd129452129935_
                             _tl129451129937_
                             _e129456129940_
                             _hd129455129943_
                             _tl129454129945_
                             _e129459129948_
                             _hd129458129951_
                             _tl129457129953_
                             _e129462129956_
                             _hd129461129959_
                             _tl129460129961_
                             _e129465129964_
                             _hd129464129967_
                             _tl129463129969_
                             _e129468129972_
                             _hd129467129975_
                             _tl129466129977_
                             _e129471129980_
                             _hd129470129983_
                             _tl129469129985_
                             _e129474129988_
                             _hd129473129991_
                             _tl129472129993_
                             _e129477129996_
                             _hd129476129999_
                             _tl129475130001_)
                            (___match135326135327_
                             _e129450129924_
                             _hd129449129927_
                             _tl129448129929_
                             _e129453129932_
                             _hd129452129935_
                             _tl129451129937_
                             _e129456129940_
                             _hd129455129943_
                             _tl129454129945_
                             _e129459129948_
                             _hd129458129951_
                             _tl129457129953_
                             _e129462129956_
                             _hd129461129959_
                             _tl129460129961_
                             _e129465129964_
                             _hd129464129967_
                             _tl129463129969_
                             _e129468129972_
                             _hd129467129975_
                             _tl129466129977_
                             _e129471129980_
                             _hd129470129983_
                             _tl129469129985_
                             _e129474129988_
                             _hd129473129991_
                             _tl129472129993_
                             _e129477129996_
                             _hd129476129999_
                             _tl129475130001_))))
                     (___match135236135237_
                      (lambda (_e129450129924_
                               _hd129449129927_
                               _tl129448129929_
                               _e129453129932_
                               _hd129452129935_
                               _tl129451129937_
                               _e129456129940_
                               _hd129455129943_
                               _tl129454129945_
                               _e129459129948_
                               _hd129458129951_
                               _tl129457129953_
                               _e129462129956_
                               _hd129461129959_
                               _tl129460129961_
                               _e129465129964_
                               _hd129464129967_
                               _tl129463129969_
                               _e129468129972_
                               _hd129467129975_
                               _tl129466129977_
                               _e129471129980_
                               _hd129470129983_
                               _tl129469129985_
                               _e129474129988_
                               _hd129473129991_
                               _tl129472129993_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129473129991_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129472129993_))
                                (let ((_e129477129996_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129472129993_))))
                                  (let ((_tl129475130001_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129477129996_)))
                                        (_hd129476129999_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129477129996_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129475130001_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129469129985_))
                                            (___match135248135249_
                                             _e129450129924_
                                             _hd129449129927_
                                             _tl129448129929_
                                             _e129453129932_
                                             _hd129452129935_
                                             _tl129451129937_
                                             _e129456129940_
                                             _hd129455129943_
                                             _tl129454129945_
                                             _e129459129948_
                                             _hd129458129951_
                                             _tl129457129953_
                                             _e129462129956_
                                             _hd129461129959_
                                             _tl129460129961_
                                             _e129465129964_
                                             _hd129464129967_
                                             _tl129463129969_
                                             _e129468129972_
                                             _hd129467129975_
                                             _tl129466129977_
                                             _e129471129980_
                                             _hd129470129983_
                                             _tl129469129985_
                                             _e129474129988_
                                             _hd129473129991_
                                             _tl129472129993_
                                             _e129477129996_
                                             _hd129476129999_
                                             _tl129475130001_)
                                            (___match135326135327_
                                             _e129450129924_
                                             _hd129449129927_
                                             _tl129448129929_
                                             _e129453129932_
                                             _hd129452129935_
                                             _tl129451129937_
                                             _e129456129940_
                                             _hd129455129943_
                                             _tl129454129945_
                                             _e129459129948_
                                             _hd129458129951_
                                             _tl129457129953_
                                             _e129462129956_
                                             _hd129461129959_
                                             _tl129460129961_
                                             _e129465129964_
                                             _hd129464129967_
                                             _tl129463129969_
                                             _e129468129972_
                                             _hd129467129975_
                                             _tl129466129977_
                                             _e129471129980_
                                             _hd129470129983_
                                             _tl129469129985_
                                             _e129474129988_
                                             _hd129473129991_
                                             _tl129472129993_
                                             _e129477129996_
                                             _hd129476129999_
                                             _tl129475130001_))
                                        (___match135450135451_
                                         _e129450129924_
                                         _hd129449129927_
                                         _tl129448129929_
                                         _e129453129932_
                                         _hd129452129935_
                                         _tl129451129937_
                                         _e129456129940_
                                         _hd129455129943_
                                         _tl129454129945_
                                         _e129459129948_
                                         _hd129458129951_
                                         _tl129457129953_
                                         _e129462129956_
                                         _hd129461129959_
                                         _tl129460129961_
                                         _e129465129964_
                                         _hd129464129967_
                                         _tl129463129969_
                                         _e129468129972_
                                         _hd129467129975_
                                         _tl129466129977_
                                         _e129471129980_
                                         _hd129470129983_
                                         _tl129469129985_))))
                                (___match135450135451_
                                 _e129450129924_
                                 _hd129449129927_
                                 _tl129448129929_
                                 _e129453129932_
                                 _hd129452129935_
                                 _tl129451129937_
                                 _e129456129940_
                                 _hd129455129943_
                                 _tl129454129945_
                                 _e129459129948_
                                 _hd129458129951_
                                 _tl129457129953_
                                 _e129462129956_
                                 _hd129461129959_
                                 _tl129460129961_
                                 _e129465129964_
                                 _hd129464129967_
                                 _tl129463129969_
                                 _e129468129972_
                                 _hd129467129975_
                                 _tl129466129977_
                                 _e129471129980_
                                 _hd129470129983_
                                 _tl129469129985_))
                            (___match135450135451_
                             _e129450129924_
                             _hd129449129927_
                             _tl129448129929_
                             _e129453129932_
                             _hd129452129935_
                             _tl129451129937_
                             _e129456129940_
                             _hd129455129943_
                             _tl129454129945_
                             _e129459129948_
                             _hd129458129951_
                             _tl129457129953_
                             _e129462129956_
                             _hd129461129959_
                             _tl129460129961_
                             _e129465129964_
                             _hd129464129967_
                             _tl129463129969_
                             _e129468129972_
                             _hd129467129975_
                             _tl129466129977_
                             _e129471129980_
                             _hd129470129983_
                             _tl129469129985_))))
                     (___match135168135169_
                      (lambda (_e129399130045_
                               _hd129398130048_
                               _tl129397130050_
                               _e129402130053_
                               _hd129401130056_
                               _tl129400130058_
                               _e129405130061_
                               _hd129404130064_
                               _tl129403130066_
                               _e129408130069_
                               _hd129407130072_
                               _tl129406130074_
                               _e129411130077_
                               _hd129410130080_
                               _tl129409130082_
                               _e129414130085_
                               _hd129413130088_
                               _tl129412130090_
                               _e129417130093_
                               _hd129416130096_
                               _tl129415130098_
                               _e129420130101_
                               _hd129419130104_
                               _tl129418130106_
                               _e129423130109_
                               _hd129422130112_
                               _tl129421130114_
                               _e129426130117_
                               _hd129425130120_
                               _tl129424130122_
                               _e129429130125_
                               _hd129428130128_
                               _tl129427130130_
                               _e129432130133_
                               _hd129431130136_
                               _tl129430130138_
                               _e129435130141_
                               _hd129434130144_
                               _tl129433130146_
                               ___splice134961134962_
                               _target129436130149_
                               _tl129438130151_)
                        (letrec ((_loop129439130154_
                                  (lambda (_hd129437130157_ _args129443130159_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129437130157_))
                                        (let ((_e129440130162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129437130157_))))
                                          (let ((_lp-tl129442130167_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129440130162_)))
                                                (_lp-hd129441130165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129440130162_))))
                                            (let ((__tmp135871
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129441130165_
                                                           _args129443130159_))))
                                              (declare (not safe))
                                              (_loop129439130154_
                                               _lp-tl129442130167_
                                               __tmp135871))))
                                        (let ((_args129444130170_
                                               (reverse _args129443130159_)))
                                          (let ((_L130173_ _args129444130170_)
                                                (_L130174_ _hd129434130144_)
                                                (_L130175_ _hd129425130120_)
                                                (_L130176_ _hd129416130096_)
                                                (_L130177_ _hd129407130072_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130177_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130176_
                                                        'call-method))
                                                     (let ((__tmp135870
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129336_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130175_
                                                        __tmp135870)))
                                                (___kont134959134960_
                                                 _L130173_
                                                 _L130174_
                                                 _L130175_
                                                 _L130176_
                                                 _L130177_)
                                                (___kont134971134972_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129439130154_ _target129436130149_ '())))))
                     (___match135126135127_
                      (lambda (_e129399130045_
                               _hd129398130048_
                               _tl129397130050_
                               _e129402130053_
                               _hd129401130056_
                               _tl129400130058_
                               _e129405130061_
                               _hd129404130064_
                               _tl129403130066_
                               _e129408130069_
                               _hd129407130072_
                               _tl129406130074_
                               _e129411130077_
                               _hd129410130080_
                               _tl129409130082_
                               _e129414130085_
                               _hd129413130088_
                               _tl129412130090_
                               _e129417130093_
                               _hd129416130096_
                               _tl129415130098_
                               _e129420130101_
                               _hd129419130104_
                               _tl129418130106_
                               _e129423130109_
                               _hd129422130112_
                               _tl129421130114_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129422130112_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129421130114_))
                                (let ((_e129426130117_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129421130114_))))
                                  (let ((_tl129424130122_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129426130117_)))
                                        (_hd129425130120_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129426130117_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129424130122_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129418130106_))
                                            (let ((_e129429130125_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129418130106_))))
                                              (let ((_tl129427130130_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129429130125_)))
                                                    (_hd129428130128_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129429130125_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129428130128_))
                                                    (let ((_e129432130133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129428130128_))))
                                                      (let ((_tl129430130138_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129432130133_)))
                    (_hd129431130136_
                     (let () (declare (not safe)) (##car _e129432130133_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129431130136_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129431130136_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129430130138_))
                            (let ((_e129435130141_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129430130138_))))
                              (let ((_tl129433130146_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129435130141_)))
                                    (_hd129434130144_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129435130141_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129433130146_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129427130130_))
                                        (let ((___splice134961134962_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129427130130_
                                                  '0))))
                                          (let ((_tl129438130151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134961134962_
                                                    '1)))
                                                (_target129436130149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134961134962_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129438130151_))
                                                (___match135168135169_
                                                 _e129399130045_
                                                 _hd129398130048_
                                                 _tl129397130050_
                                                 _e129402130053_
                                                 _hd129401130056_
                                                 _tl129400130058_
                                                 _e129405130061_
                                                 _hd129404130064_
                                                 _tl129403130066_
                                                 _e129408130069_
                                                 _hd129407130072_
                                                 _tl129406130074_
                                                 _e129411130077_
                                                 _hd129410130080_
                                                 _tl129409130082_
                                                 _e129414130085_
                                                 _hd129413130088_
                                                 _tl129412130090_
                                                 _e129417130093_
                                                 _hd129416130096_
                                                 _tl129415130098_
                                                 _e129420130101_
                                                 _hd129419130104_
                                                 _tl129418130106_
                                                 _e129423130109_
                                                 _hd129422130112_
                                                 _tl129421130114_
                                                 _e129426130117_
                                                 _hd129425130120_
                                                 _tl129424130122_
                                                 _e129429130125_
                                                 _hd129428130128_
                                                 _tl129427130130_
                                                 _e129432130133_
                                                 _hd129431130136_
                                                 _tl129430130138_
                                                 _e129435130141_
                                                 _hd129434130144_
                                                 _tl129433130146_
                                                 ___splice134961134962_
                                                 _target129436130149_
                                                 _tl129438130151_)
                                                (___kont134971134972_))))
                                        (___kont134971134972_))
                                    (___kont134971134972_))))
                            (___kont134971134972_))
                        (___kont134971134972_))
                    (___kont134971134972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134971134972_))))
                                            (___match135450135451_
                                             _e129399130045_
                                             _hd129398130048_
                                             _tl129397130050_
                                             _e129402130053_
                                             _hd129401130056_
                                             _tl129400130058_
                                             _e129405130061_
                                             _hd129404130064_
                                             _tl129403130066_
                                             _e129408130069_
                                             _hd129407130072_
                                             _tl129406130074_
                                             _e129411130077_
                                             _hd129410130080_
                                             _tl129409130082_
                                             _e129414130085_
                                             _hd129413130088_
                                             _tl129412130090_
                                             _e129417130093_
                                             _hd129416130096_
                                             _tl129415130098_
                                             _e129420130101_
                                             _hd129419130104_
                                             _tl129418130106_))
                                        (___match135450135451_
                                         _e129399130045_
                                         _hd129398130048_
                                         _tl129397130050_
                                         _e129402130053_
                                         _hd129401130056_
                                         _tl129400130058_
                                         _e129405130061_
                                         _hd129404130064_
                                         _tl129403130066_
                                         _e129408130069_
                                         _hd129407130072_
                                         _tl129406130074_
                                         _e129411130077_
                                         _hd129410130080_
                                         _tl129409130082_
                                         _e129414130085_
                                         _hd129413130088_
                                         _tl129412130090_
                                         _e129417130093_
                                         _hd129416130096_
                                         _tl129415130098_
                                         _e129420130101_
                                         _hd129419130104_
                                         _tl129418130106_))))
                                (___match135450135451_
                                 _e129399130045_
                                 _hd129398130048_
                                 _tl129397130050_
                                 _e129402130053_
                                 _hd129401130056_
                                 _tl129400130058_
                                 _e129405130061_
                                 _hd129404130064_
                                 _tl129403130066_
                                 _e129408130069_
                                 _hd129407130072_
                                 _tl129406130074_
                                 _e129411130077_
                                 _hd129410130080_
                                 _tl129409130082_
                                 _e129414130085_
                                 _hd129413130088_
                                 _tl129412130090_
                                 _e129417130093_
                                 _hd129416130096_
                                 _tl129415130098_
                                 _e129420130101_
                                 _hd129419130104_
                                 _tl129418130106_))
                            (___match135236135237_
                             _e129399130045_
                             _hd129398130048_
                             _tl129397130050_
                             _e129402130053_
                             _hd129401130056_
                             _tl129400130058_
                             _e129405130061_
                             _hd129404130064_
                             _tl129403130066_
                             _e129408130069_
                             _hd129407130072_
                             _tl129406130074_
                             _e129411130077_
                             _hd129410130080_
                             _tl129409130082_
                             _e129414130085_
                             _hd129413130088_
                             _tl129412130090_
                             _e129417130093_
                             _hd129416130096_
                             _tl129415130098_
                             _e129420130101_
                             _hd129419130104_
                             _tl129418130106_
                             _e129423130109_
                             _hd129422130112_
                             _tl129421130114_))))
                     (___match135058135059_
                      (lambda (_e129355130237_
                               _hd129354130240_
                               _tl129353130242_
                               _e129358130245_
                               _hd129357130248_
                               _tl129356130250_
                               _e129361130253_
                               _hd129360130256_
                               _tl129359130258_
                               _e129364130261_
                               _hd129363130264_
                               _tl129362130266_
                               _e129367130269_
                               _hd129366130272_
                               _tl129365130274_
                               _e129370130277_
                               _hd129369130280_
                               _tl129368130282_
                               _e129373130285_
                               _hd129372130288_
                               _tl129371130290_
                               _e129376130293_
                               _hd129375130296_
                               _tl129374130298_
                               _e129379130301_
                               _hd129378130304_
                               _tl129377130306_
                               _e129382130309_
                               _hd129381130312_
                               _tl129380130314_
                               ___splice134957134958_
                               _target129383130317_
                               _tl129385130319_)
                        (letrec ((_loop129386130322_
                                  (lambda (_hd129384130325_ _args129390130327_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129384130325_))
                                        (let ((_e129387130330_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129384130325_))))
                                          (let ((_lp-tl129389130335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129387130330_)))
                                                (_lp-hd129388130333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129387130330_))))
                                            (let ((__tmp135873
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129388130333_
                                                           _args129390130327_))))
                                              (declare (not safe))
                                              (_loop129386130322_
                                               _lp-tl129389130335_
                                               __tmp135873))))
                                        (let ((_args129391130338_
                                               (reverse _args129390130327_)))
                                          (let ((_L130341_ _args129391130338_)
                                                (_L130342_ _hd129381130312_)
                                                (_L130343_ _hd129372130288_)
                                                (_L130344_ _hd129363130264_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130344_
                                                        'call-method))
                                                     (let ((__tmp135872
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129336_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130343_
                                                        __tmp135872)))
                                                (___kont134955134956_
                                                 _L130341_
                                                 _L130342_
                                                 _L130343_
                                                 _L130344_)
                                                (___match135246135247_
                                                 _e129355130237_
                                                 _hd129354130240_
                                                 _tl129353130242_
                                                 _e129358130245_
                                                 _hd129357130248_
                                                 _tl129356130250_
                                                 _e129361130253_
                                                 _hd129360130256_
                                                 _tl129359130258_
                                                 _e129364130261_
                                                 _hd129363130264_
                                                 _tl129362130266_
                                                 _e129367130269_
                                                 _hd129366130272_
                                                 _tl129365130274_
                                                 _e129370130277_
                                                 _hd129369130280_
                                                 _tl129368130282_
                                                 _e129373130285_
                                                 _hd129372130288_
                                                 _tl129371130290_
                                                 _e129376130293_
                                                 _hd129375130296_
                                                 _tl129374130298_
                                                 _e129379130301_
                                                 _hd129378130304_
                                                 _tl129377130306_
                                                 _e129382130309_
                                                 _hd129381130312_
                                                 _tl129380130314_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129386130322_ _target129383130317_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134953134954_))
                    (let ((_e129355130237_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134953134954_))))
                      (let ((_tl129353130242_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129355130237_)))
                            (_hd129354130240_
                             (let ()
                               (declare (not safe))
                               (##car _e129355130237_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129353130242_))
                            (let ((_e129358130245_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129353130242_))))
                              (let ((_tl129356130250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129358130245_)))
                                    (_hd129357130248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129358130245_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129357130248_))
                                    (let ((_e129361130253_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129357130248_))))
                                      (let ((_tl129359130258_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129361130253_)))
                                            (_hd129360130256_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129361130253_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129360130256_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129360130256_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129359130258_))
                                                    (let ((_e129364130261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129359130258_))))
                                                      (let ((_tl129362130266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129364130261_)))
                    (_hd129363130264_
                     (let () (declare (not safe)) (##car _e129364130261_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129362130266_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129356130250_))
                        (let ((_e129367130269_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129356130250_))))
                          (let ((_tl129365130274_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129367130269_)))
                                (_hd129366130272_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129367130269_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129366130272_))
                                (let ((_e129370130277_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129366130272_))))
                                  (let ((_tl129368130282_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129370130277_)))
                                        (_hd129369130280_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129370130277_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129369130280_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129369130280_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129368130282_))
                                                (let ((_e129373130285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129368130282_))))
                                                  (let ((_tl129371130290_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129373130285_)))
                                                        (_hd129372130288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129373130285_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129371130290_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129365130274_))
                                                            (let ((_e129376130293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129365130274_))))
                      (let ((_tl129374130298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129376130293_)))
                            (_hd129375130296_
                             (let ()
                               (declare (not safe))
                               (##car _e129376130293_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129375130296_))
                            (let ((_e129379130301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129375130296_))))
                              (let ((_tl129377130306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129379130301_)))
                                    (_hd129378130304_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129379130301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129378130304_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129378130304_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129377130306_))
                                            (let ((_e129382130309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129377130306_))))
                                              (let ((_tl129380130314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129382130309_)))
                                                    (_hd129381130312_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129382130309_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129380130314_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129374130298_))
                                                        (let ((___splice134957134958_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129374130298_ '0))))
                  (let ((_tl129385130319_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134957134958_ '1)))
                        (_target129383130317_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134957134958_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129385130319_))
                        (___match135058135059_
                         _e129355130237_
                         _hd129354130240_
                         _tl129353130242_
                         _e129358130245_
                         _hd129357130248_
                         _tl129356130250_
                         _e129361130253_
                         _hd129360130256_
                         _tl129359130258_
                         _e129364130261_
                         _hd129363130264_
                         _tl129362130266_
                         _e129367130269_
                         _hd129366130272_
                         _tl129365130274_
                         _e129370130277_
                         _hd129369130280_
                         _tl129368130282_
                         _e129373130285_
                         _hd129372130288_
                         _tl129371130290_
                         _e129376130293_
                         _hd129375130296_
                         _tl129374130298_
                         _e129379130301_
                         _hd129378130304_
                         _tl129377130306_
                         _e129382130309_
                         _hd129381130312_
                         _tl129380130314_
                         ___splice134957134958_
                         _target129383130317_
                         _tl129385130319_)
                        (___match135246135247_
                         _e129355130237_
                         _hd129354130240_
                         _tl129353130242_
                         _e129358130245_
                         _hd129357130248_
                         _tl129356130250_
                         _e129361130253_
                         _hd129360130256_
                         _tl129359130258_
                         _e129364130261_
                         _hd129363130264_
                         _tl129362130266_
                         _e129367130269_
                         _hd129366130272_
                         _tl129365130274_
                         _e129370130277_
                         _hd129369130280_
                         _tl129368130282_
                         _e129373130285_
                         _hd129372130288_
                         _tl129371130290_
                         _e129376130293_
                         _hd129375130296_
                         _tl129374130298_
                         _e129379130301_
                         _hd129378130304_
                         _tl129377130306_
                         _e129382130309_
                         _hd129381130312_
                         _tl129380130314_))))
                (___match135246135247_
                 _e129355130237_
                 _hd129354130240_
                 _tl129353130242_
                 _e129358130245_
                 _hd129357130248_
                 _tl129356130250_
                 _e129361130253_
                 _hd129360130256_
                 _tl129359130258_
                 _e129364130261_
                 _hd129363130264_
                 _tl129362130266_
                 _e129367130269_
                 _hd129366130272_
                 _tl129365130274_
                 _e129370130277_
                 _hd129369130280_
                 _tl129368130282_
                 _e129373130285_
                 _hd129372130288_
                 _tl129371130290_
                 _e129376130293_
                 _hd129375130296_
                 _tl129374130298_
                 _e129379130301_
                 _hd129378130304_
                 _tl129377130306_
                 _e129382130309_
                 _hd129381130312_
                 _tl129380130314_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135450135451_
                                                     _e129355130237_
                                                     _hd129354130240_
                                                     _tl129353130242_
                                                     _e129358130245_
                                                     _hd129357130248_
                                                     _tl129356130250_
                                                     _e129361130253_
                                                     _hd129360130256_
                                                     _tl129359130258_
                                                     _e129364130261_
                                                     _hd129363130264_
                                                     _tl129362130266_
                                                     _e129367130269_
                                                     _hd129366130272_
                                                     _tl129365130274_
                                                     _e129370130277_
                                                     _hd129369130280_
                                                     _tl129368130282_
                                                     _e129373130285_
                                                     _hd129372130288_
                                                     _tl129371130290_
                                                     _e129376130293_
                                                     _hd129375130296_
                                                     _tl129374130298_))))
                                            (___match135450135451_
                                             _e129355130237_
                                             _hd129354130240_
                                             _tl129353130242_
                                             _e129358130245_
                                             _hd129357130248_
                                             _tl129356130250_
                                             _e129361130253_
                                             _hd129360130256_
                                             _tl129359130258_
                                             _e129364130261_
                                             _hd129363130264_
                                             _tl129362130266_
                                             _e129367130269_
                                             _hd129366130272_
                                             _tl129365130274_
                                             _e129370130277_
                                             _hd129369130280_
                                             _tl129368130282_
                                             _e129373130285_
                                             _hd129372130288_
                                             _tl129371130290_
                                             _e129376130293_
                                             _hd129375130296_
                                             _tl129374130298_))
                                        (___match135126135127_
                                         _e129355130237_
                                         _hd129354130240_
                                         _tl129353130242_
                                         _e129358130245_
                                         _hd129357130248_
                                         _tl129356130250_
                                         _e129361130253_
                                         _hd129360130256_
                                         _tl129359130258_
                                         _e129364130261_
                                         _hd129363130264_
                                         _tl129362130266_
                                         _e129367130269_
                                         _hd129366130272_
                                         _tl129365130274_
                                         _e129370130277_
                                         _hd129369130280_
                                         _tl129368130282_
                                         _e129373130285_
                                         _hd129372130288_
                                         _tl129371130290_
                                         _e129376130293_
                                         _hd129375130296_
                                         _tl129374130298_
                                         _e129379130301_
                                         _hd129378130304_
                                         _tl129377130306_))
                                    (___match135450135451_
                                     _e129355130237_
                                     _hd129354130240_
                                     _tl129353130242_
                                     _e129358130245_
                                     _hd129357130248_
                                     _tl129356130250_
                                     _e129361130253_
                                     _hd129360130256_
                                     _tl129359130258_
                                     _e129364130261_
                                     _hd129363130264_
                                     _tl129362130266_
                                     _e129367130269_
                                     _hd129366130272_
                                     _tl129365130274_
                                     _e129370130277_
                                     _hd129369130280_
                                     _tl129368130282_
                                     _e129373130285_
                                     _hd129372130288_
                                     _tl129371130290_
                                     _e129376130293_
                                     _hd129375130296_
                                     _tl129374130298_))))
                            (___match135450135451_
                             _e129355130237_
                             _hd129354130240_
                             _tl129353130242_
                             _e129358130245_
                             _hd129357130248_
                             _tl129356130250_
                             _e129361130253_
                             _hd129360130256_
                             _tl129359130258_
                             _e129364130261_
                             _hd129363130264_
                             _tl129362130266_
                             _e129367130269_
                             _hd129366130272_
                             _tl129365130274_
                             _e129370130277_
                             _hd129369130280_
                             _tl129368130282_
                             _e129373130285_
                             _hd129372130288_
                             _tl129371130290_
                             _e129376130293_
                             _hd129375130296_
                             _tl129374130298_))))
                    (___match135388135389_
                     _e129355130237_
                     _hd129354130240_
                     _tl129353130242_
                     _e129358130245_
                     _hd129357130248_
                     _tl129356130250_
                     _e129361130253_
                     _hd129360130256_
                     _tl129359130258_
                     _e129364130261_
                     _hd129363130264_
                     _tl129362130266_
                     _e129367130269_
                     _hd129366130272_
                     _tl129365130274_
                     _e129370130277_
                     _hd129369130280_
                     _tl129368130282_
                     _e129373130285_
                     _hd129372130288_
                     _tl129371130290_))
                (___kont134971134972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134971134972_))
                                            (___kont134971134972_))
                                        (___kont134971134972_))))
                                (___kont134971134972_))))
                        (___kont134971134972_))
                    (___kont134971134972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134971134972_))
                                                (___kont134971134972_))
                                            (___kont134971134972_))))
                                    (___kont134971134972_))))
                            (___kont134971134972_))))
                    (___kont134971134972_))))))))))
