(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710238840)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp135382 (list gxc#::identity::t))
            (__tmp135380
             (let ((__tmp135381
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135381 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp135382
         '()
         __tmp135380
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args134246_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args134246_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp135383
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
        (make-promise __tmp135383)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134238_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self134241_
                (let ((__obj135375
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj135375))
               (__tmp135384
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134241_ _stx134238_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp135384
           gxc#current-compile-method
           _self134241_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp135387 (list gxc#::void::t))
            (__tmp135385
             (let ((__tmp135386
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135386 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp135387
         '(receiver methods slots)
         __tmp135385
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args134235_
        (apply make-instance gxc#::collect-object-refs::t _$args134235_)))
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
      (let ((__tmp135388
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
        (make-promise __tmp135388)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g135389_
               _receiver134196134201_
               _methods134197134203_
               _slots134198134205_
               _stx134207_)
        (let* ((_receiver134210_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134196134201_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134196134201_))
               (_methods134212_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134197134203_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134197134203_))
               (_slots134214_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134198134205_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134198134205_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self134216_
                  (let ((__obj135377
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
                       __obj135377
                       _receiver134210_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135377
                       _methods134212_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135377
                       _slots134214_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj135377))
                 (__tmp135390
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134216_ _stx134207_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135390
             gxc#current-compile-method
             _self134216_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134195134223_ . _args134225_)
        (apply gxc#apply-collect-object-refs__%
               _keys134195134223_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134195134223_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134195134223_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134195134223_ 'slots: absent-value))
               _args134225_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134199134231_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134199134231_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp135393 (list gxc#::basic-xform-expression::t))
            (__tmp135391
             (let ((__tmp135392
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135392 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp135393
         '(receiver klass methods slots)
         __tmp135391
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args134191_
        (apply make-instance gxc#::subst-object-refs::t _$args134191_)))
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
      (let ((__tmp135394
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
        (make-promise __tmp135394)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g135395_
               _receiver134147134153_
               _klass134148134155_
               _methods134149134157_
               _slots134150134159_
               _stx134161_)
        (let* ((_receiver134164_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134147134153_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134147134153_))
               (_klass134166_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134148134155_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134148134155_))
               (_methods134168_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134149134157_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134149134157_))
               (_slots134170_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134150134159_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134150134159_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self134172_
                  (let ((__obj135379
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
                       __obj135379
                       _receiver134164_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135379
                       _klass134166_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135379
                       _methods134168_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135379
                       _slots134170_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj135379))
                 (__tmp135396
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134172_ _stx134161_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135396
             gxc#current-compile-method
             _self134172_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134146134179_ . _args134181_)
        (apply gxc#apply-subst-object-refs__%
               _keys134146134179_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134146134179_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134146134179_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134146134179_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134146134179_ 'slots: absent-value))
               _args134181_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134151134187_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134151134187_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self131356_ _stx131357_)
        (letrec ((_generate-method-bind131359_
                  (lambda (_$klass134138_
                           _$method-table134139_
                           _id134140_
                           _$id134141_)
                    (let ((_$tmp134143_
                           (let ((__tmp135397 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135397))))
                      (let ((__tmp135445
                             (let ()
                               (declare (not safe))
                               (cons _$id134141_ '())))
                            (__tmp135398
                             (let ((__tmp135399
                                    (let ((__tmp135400
                                           (let ((__tmp135443
                                                  (let ((__tmp135444
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135444)))
                                                 (__tmp135401
                                                  (let ((__tmp135402
                                                         (let ((__tmp135403
                                                                (let ((__tmp135404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135405
                                      (let ((__tmp135406
                                             (let ((__tmp135426
                                                    (let ((__tmp135427
                                                           (let ((__tmp135442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134143_ '())))
                         (__tmp135428
                          (let ((__tmp135429
                                 (let ((__tmp135430
                                        (let ((__tmp135440
                                               (let ((__tmp135441
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135441)))
                                              (__tmp135431
                                               (let ((__tmp135438
                                                      (let ((__tmp135439
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134139_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135439)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135432
                                                      (let ((__tmp135436
                                                             (let ((__tmp135437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134140_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135437)))
                    (__tmp135433
                     (let ((__tmp135434
                            (let ((__tmp135435
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135435))))
                       (declare (not safe))
                       (cons __tmp135434 '()))))
                (declare (not safe))
                (cons __tmp135436 __tmp135433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135438
                                                       __tmp135432))))
                                          (declare (not safe))
                                          (cons __tmp135440 __tmp135431))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135430))))
                            (declare (not safe))
                            (cons __tmp135429 '()))))
                     (declare (not safe))
                     (cons __tmp135442 __tmp135428))))
              (declare (not safe))
              (cons __tmp135427 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135407
                                                    (let ((__tmp135408
                                                           (let ((__tmp135409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135424
                                 (let ((__tmp135425
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134143_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135425)))
                                (__tmp135410
                                 (let ((__tmp135422
                                        (let ((__tmp135423
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134143_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135423)))
                                       (__tmp135411
                                        (let ((__tmp135412
                                               (let ((__tmp135413
                                                      (let ((__tmp135420
                                                             (let ((__tmp135421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135421)))
                    (__tmp135414
                     (let ((__tmp135418
                            (let ((__tmp135419
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135419)))
                           (__tmp135415
                            (let ((__tmp135416
                                   (let ((__tmp135417
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134140_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135417))))
                              (declare (not safe))
                              (cons __tmp135416 '()))))
                       (declare (not safe))
                       (cons __tmp135418 __tmp135415))))
                (declare (not safe))
                (cons __tmp135420 __tmp135414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135413))))
                                          (declare (not safe))
                                          (cons __tmp135412 '()))))
                                   (declare (not safe))
                                   (cons __tmp135422 __tmp135411))))
                            (declare (not safe))
                            (cons __tmp135424 __tmp135410))))
                     (declare (not safe))
                     (cons '%#if __tmp135409))))
              (declare (not safe))
              (cons __tmp135408 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135426
                                                     __tmp135407))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135406))))
                                 (declare (not safe))
                                 (cons __tmp135405 '()))))
                          (declare (not safe))
                          (cons '() __tmp135404))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135402 '()))))
                                             (declare (not safe))
                                             (cons __tmp135443 __tmp135401))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135400))))
                               (declare (not safe))
                               (cons __tmp135399 '()))))
                        (declare (not safe))
                        (cons __tmp135445 __tmp135398)))))
                 (_generate-slot-bind131360_
                  (lambda (_$klass134132_ _id134133_ _$id134134_)
                    (let ((_$tmp134136_
                           (let ((__tmp135446 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135446))))
                      (let ((__tmp135483
                             (let ()
                               (declare (not safe))
                               (cons _$id134134_ '())))
                            (__tmp135447
                             (let ((__tmp135448
                                    (let ((__tmp135449
                                           (let ((__tmp135469
                                                  (let ((__tmp135470
                                                         (let ((__tmp135482
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134136_ '())))
                       (__tmp135471
                        (let ((__tmp135472
                               (let ((__tmp135473
                                      (let ((__tmp135480
                                             (let ((__tmp135481
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135481)))
                                            (__tmp135474
                                             (let ((__tmp135478
                                                    (let ((__tmp135479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135479)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135475
                                                    (let ((__tmp135476
                                                           (let ((__tmp135477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134133_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135477))))
              (declare (not safe))
              (cons __tmp135476 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135478
                                                     __tmp135475))))
                                        (declare (not safe))
                                        (cons __tmp135480 __tmp135474))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135473))))
                          (declare (not safe))
                          (cons __tmp135472 '()))))
                   (declare (not safe))
                   (cons __tmp135482 __tmp135471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135470 '())))
                                                 (__tmp135450
                                                  (let ((__tmp135451
                                                         (let ((__tmp135452
                                                                (let ((__tmp135467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135468
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134136_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135468)))
                              (__tmp135453
                               (let ((__tmp135465
                                      (let ((__tmp135466
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134136_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135466)))
                                     (__tmp135454
                                      (let ((__tmp135455
                                             (let ((__tmp135456
                                                    (let ((__tmp135463
                                                           (let ((__tmp135464
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135464)))
                  (__tmp135457
                   (let ((__tmp135461
                          (let ((__tmp135462
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135462)))
                         (__tmp135458
                          (let ((__tmp135459
                                 (let ((__tmp135460
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134133_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135460))))
                            (declare (not safe))
                            (cons __tmp135459 '()))))
                     (declare (not safe))
                     (cons __tmp135461 __tmp135458))))
              (declare (not safe))
              (cons __tmp135463 __tmp135457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135456))))
                                        (declare (not safe))
                                        (cons __tmp135455 '()))))
                                 (declare (not safe))
                                 (cons __tmp135465 __tmp135454))))
                          (declare (not safe))
                          (cons __tmp135467 __tmp135453))))
                   (declare (not safe))
                   (cons '%#if __tmp135452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135451 '()))))
                                             (declare (not safe))
                                             (cons __tmp135469 __tmp135450))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135449))))
                               (declare (not safe))
                               (cons __tmp135448 '()))))
                        (declare (not safe))
                        (cons __tmp135483 __tmp135447)))))
                 (_generate-specializer-impl131361_
                  (lambda (_$klass134126_
                           _$method-table134127_
                           _methods-bind134128_
                           _slots-bind134129_
                           _specializer-impl134130_)
                    (let ((__tmp135484
                           (let ((__tmp135485
                                  (let ((__tmp135491
                                         (let ((__tmp135492
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134127_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134126_ __tmp135492)))
                                        (__tmp135486
                                         (let ((__tmp135487
                                                (let ((__tmp135488
                                                       (let ((__tmp135490
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134129_ _methods-bind134128_)))
                     (__tmp135489
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134130_ '()))))
                 (declare (not safe))
                 (cons __tmp135490 __tmp135489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135488))))
                                           (declare (not safe))
                                           (cons __tmp135487 '()))))
                                    (declare (not safe))
                                    (cons __tmp135491 __tmp135486))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135485))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135484 _stx131357_))))
                 (_generate-specializer-def131362_
                  (lambda (_id134122_
                           _specializer-id134123_
                           _specializer-impl134124_)
                    (let ((__tmp135493
                           (let ((__tmp135494
                                  (let ((__tmp135495
                                         (let ((__tmp135508
                                                (let ((__tmp135509
                                                       (let ((__tmp135510
                                                              (let ((__tmp135512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134123_ '())))
                            (__tmp135511
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134124_ '()))))
                        (declare (not safe))
                        (cons __tmp135512 __tmp135511))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135509
                                                   _stx131357_)))
                                               (__tmp135496
                                                (let ((__tmp135497
                                                       (let ((__tmp135498
                                                              (let ((__tmp135499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135506
                                    (let ((__tmp135507
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135507)))
                                   (__tmp135500
                                    (let ((__tmp135504
                                           (let ((__tmp135505
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134122_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135505)))
                                          (__tmp135501
                                           (let ((__tmp135502
                                                  (let ((__tmp135503
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135503))))
                                             (declare (not safe))
                                             (cons __tmp135502 '()))))
                                      (declare (not safe))
                                      (cons __tmp135504 __tmp135501))))
                               (declare (not safe))
                               (cons __tmp135506 __tmp135500))))
                        (declare (not safe))
                        (cons '%#call __tmp135499))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135498 _stx131357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135497 '()))))
                                           (declare (not safe))
                                           (cons __tmp135508 __tmp135496))))
                                    (declare (not safe))
                                    (cons _stx131357_ __tmp135495))))
                             (declare (not safe))
                             (cons '%#begin __tmp135494))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135493 _stx131357_)))))
          (let* ((___stx134335134336_ _stx131357_)
                 (_g131365131385_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134335134336_)))))
            (let ((___kont134337134338_
                   (lambda (_L131429_ _L131430_)
                     (let ((_method-calls131449_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131450_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131451_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131453_
                                 (lambda ()
                                   (if (let ((__tmp135514
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131449_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135514))
                                       (let ((__tmp135513
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131450_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135513))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131429_))
                             (let* ((___stx134249134250_ _L131429_)
                                    (_g131840131858_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134249134250_)))))
                               (let ((___kont134251134252_
                                      (lambda (_L131894_ _L131895_ _L131896_)
                                        (for-each
                                         (lambda (_g131911131913_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131911131913_
                                              'receiver:
                                              _L131896_
                                              'methods:
                                              _method-calls131449_
                                              'slots:
                                              _slot-refs131450_)))
                                         _L131894_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131453_))
                                            _stx131357_
                                            (let* ((_specializer-id131922_
                                                    (let* ((_id131916_
                                                            (let ((__tmp135636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131430_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135636 '"::specialize")))
                   (_specializer-id131919_
                    (let ((__tmp135637
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131357_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131916_ __tmp135637))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131919_))
              _specializer-id131919_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131924_
                                                    (let ((__tmp135638
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135638)))
                                                   (_$method-table131926_
                                                    (let ((__tmp135639
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135639)))
                                                   (_methods131928_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131449_)))
                                                   (_$methods131932_
                                                    (map (lambda (_id131930_)
                                                           (let ((__tmp135640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131930_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135640)))
                 _methods131928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135641_
                                                    (for-each
                                                     (lambda (_g131933131936_
                                                              _g131934131938_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131449_
                                                          _g131933131936_
                                                          _g131934131938_)))
                                                     _methods131928_
                                                     _$methods131932_))
                                                   (_methods-bind131949_
                                                    (map (lambda (_g131941131944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131942131946_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131359_
                      _$klass131924_
                      _$method-table131926_
                      _g131941131944_
                      _g131942131946_)))
                 _methods131928_
                 _$methods131932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131951_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131450_)))
                                                   (_$slots131955_
                                                    (map (lambda (_id131953_)
                                                           (let ((__tmp135642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131953_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135642)))
                 _slots131951_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135643_
                                                    (for-each
                                                     (lambda (_g131956131959_
                                                              _g131957131961_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131450_
                                                          _g131956131959_
                                                          _g131957131961_)))
                                                     _slots131951_
                                                     _$slots131955_))
                                                   (_slots-bind131972_
                                                    (map (lambda (_g131964131967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131965131969_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131360_
                      _$klass131924_
                      _g131964131967_
                      _g131965131969_)))
                 _slots131951_
                 _$slots131955_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131978_
                                                    (map (lambda (_g131973131975_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131973131975_
                                                              'receiver:
                                                              _L131896_
                                                              'klass:
                                                              _$klass131924_
                                                              'methods:
                                                              _method-calls131449_
                                                              'slots:
                                                              _slot-refs131450_)))
                                                         _L131894_))
                                                   (_specializer-impl131980_
                                                    (let ((__tmp135644
                                                           (let ((__tmp135645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135646
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131896_ _L131895_))))
                            (declare (not safe))
                            (cons __tmp135646 _specializer-body131978_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135645))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135644 _stx131357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131982_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131361_
                                                       _$klass131924_
                                                       _$method-table131926_
                                                       _methods-bind131949_
                                                       _slots-bind131972_
                                                       _specializer-impl131980_))))
                                              (let ((__tmp135648
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131430_)))
                                                    (__tmp135647
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131922_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135648
                                                 '" => "
                                                 __tmp135647))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131362_
                                                 _L131430_
                                                 _specializer-id131922_
                                                 _specializer-impl131982_))))))
                                     (___kont134253134254_
                                      (lambda () _stx131357_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134249134250_))
                                     (let ((_e131847131870_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134249134250_))))
                                       (let ((_tl131845131875_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131847131870_)))
                                             (_hd131846131873_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131847131870_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131845131875_))
                                             (let ((_e131850131878_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131845131875_))))
                                               (let ((_tl131848131883_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131850131878_)))
                                                     (_hd131849131881_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131850131878_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131849131881_))
                                                     (let ((_e131853131886_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131849131881_))))
                                                       (let ((_tl131851131891_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131853131886_)))
                     (_hd131852131889_
                      (let () (declare (not safe)) (##car _e131853131886_))))
                 (___kont134251134252_
                  _tl131848131883_
                  _tl131851131891_
                  _hd131852131889_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134253134254_))))
                                             (___kont134253134254_))))
                                     (___kont134253134254_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131429_))
                                 (let* ((_g131988132007_
                                         (lambda (_g131989132004_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131989132004_))))
                                        (_g131987132290_
                                         (lambda (_g131989132010_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131989132010_))
                                               (let ((_e131993132012_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131989132010_))))
                                                 (let ((_hd131992132015_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131993132012_)))
                                                       (_tl131991132017_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131993132012_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131991132017_))
                                                       (let ((_g135619_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131991132017_ '0))))
                 (begin
                   (let ((_g135620_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135619_)
                                (##vector-length _g135619_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135620_ 2)))
                         (error "Context expects 2 values" _g135620_)))
                   (let ((_target131994132020_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135619_ 0)))
                         (_tl131996132022_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135619_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131996132022_))
                         (letrec ((_loop131997132025_
                                   (lambda (_hd131995132028_
                                            _clause132001132030_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131995132028_))
                                         (let ((_e131998132033_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131995132028_))))
                                           (let ((_lp-hd131999132036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131998132033_)))
                                                 (_lp-tl132000132038_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131998132033_))))
                                             (let ((__tmp135635
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131999132036_
                                                            _clause132001132030_))))
                                               (declare (not safe))
                                               (_loop131997132025_
                                                _lp-tl132000132038_
                                                __tmp135635))))
                                         (let ((_clause132002132041_
                                                (reverse _clause132001132030_)))
                                           ((lambda (_L132044_)
                                              (for-each
                                               (lambda (_clause132057_)
                                                 (let* ((___stx134275134276_
                                                         _clause132057_)
                                                        (_g132060132075_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134275134276_)))))
                                                   (let ((___kont134277134278_
                                                          (lambda (_L132103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132104_
                           _L132105_)
                    (for-each
                     (lambda (_g132120132122_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132120132122_
                          'receiver:
                          _L132105_
                          'methods:
                          _method-calls131449_
                          'slots:
                          _slot-refs131450_)))
                     _L132103_)))
                 (___kont134279134280_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134275134276_))
                                                         (let ((_e132067132087_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134275134276_))))
                   (let ((_tl132065132092_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132067132087_)))
                         (_hd132066132090_
                          (let ()
                            (declare (not safe))
                            (##car _e132067132087_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132066132090_))
                         (let ((_e132070132095_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132066132090_))))
                           (let ((_tl132068132100_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132070132095_)))
                                 (_hd132069132098_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132070132095_))))
                             (___kont134277134278_
                              _tl132065132092_
                              _tl132068132100_
                              _hd132069132098_)))
                         (___kont134279134280_))))
                 (___kont134279134280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135621
                                                      (lambda (_g132127132130_
                                                               _g132128132132_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132127132130_
                                                                _g132128132132_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135621
                                                         '()
                                                         _L132044_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131453_))
                                                  _stx131357_
                                                  (let* ((_specializer-id132141_
                                                          (let* ((_id132135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135622
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131430_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135622 '"::specialize")))
                         (_specializer-id132138_
                          (let ((__tmp135623
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131357_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132135_ __tmp135623))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132138_))
                    _specializer-id132138_))
                 (_$klass132143_
                  (let ((__tmp135624 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135624)))
                 (_$method-table132145_
                  (let ((__tmp135625 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135625)))
                 (_methods132147_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131449_)))
                 (_$methods132151_
                  (map (lambda (_id132149_)
                         (let ((__tmp135626 (gensym _id132149_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135626)))
                       _methods132147_))
                 (_g135627_
                  (for-each
                   (lambda (_g132152132155_ _g132153132157_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131449_
                        _g132152132155_
                        _g132153132157_)))
                   _methods132147_
                   _$methods132151_))
                 (_methods-bind132168_
                  (map (lambda (_g132160132163_ _g132161132165_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131359_
                            _$klass132143_
                            _$method-table132145_
                            _g132160132163_
                            _g132161132165_)))
                       _methods132147_
                       _$methods132151_))
                 (_slots132170_
                  (let () (declare (not safe)) (hash-keys _slot-refs131450_)))
                 (_$slots132174_
                  (map (lambda (_id132172_)
                         (let ((__tmp135628 (gensym _id132172_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135628)))
                       _slots132170_))
                 (_g135629_
                  (for-each
                   (lambda (_g132175132178_ _g132176132180_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131450_
                        _g132175132178_
                        _g132176132180_)))
                   _slots132170_
                   _$slots132174_))
                 (_slots-bind132191_
                  (map (lambda (_g132183132186_ _g132184132188_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131360_
                            _$klass132143_
                            _g132183132186_
                            _g132184132188_)))
                       _slots132170_
                       _$slots132174_))
                 (_specializer-clauses132283_
                  (map (lambda (_clause132193_)
                         (let* ((___stx134295134296_ _clause132193_)
                                (_g132196132211_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134295134296_)))))
                           (let ((___kont134297134298_
                                  (lambda (_L132239_ _L132240_ _L132241_)
                                    (let* ((_body132271_
                                            (map (lambda (_g132266132268_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132266132268_
                                                      'receiver:
                                                      _L132241_
                                                      'klass:
                                                      _$klass132143_
                                                      'methods:
                                                      _method-calls131449_
                                                      'slots:
                                                      _slot-refs131450_)))
                                                 _L132239_))
                                           (__tmp135630
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132241_ _L132240_))))
                                      (declare (not safe))
                                      (cons __tmp135630 _body132271_))))
                                 (___kont134299134300_
                                  (lambda () _clause132193_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134295134296_))
                                 (let ((_e132203132223_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134295134296_))))
                                   (let ((_tl132201132228_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132203132223_)))
                                         (_hd132202132226_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132203132223_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132202132226_))
                                         (let ((_e132206132231_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132202132226_))))
                                           (let ((_tl132204132236_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132206132231_)))
                                                 (_hd132205132234_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132206132231_))))
                                             (___kont134297134298_
                                              _tl132201132228_
                                              _tl132204132236_
                                              _hd132205132234_)))
                                         (___kont134299134300_))))
                                 (___kont134299134300_)))))
                       (let ((__tmp135631
                              (lambda (_g132275132278_ _g132276132280_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132275132278_ _g132276132280_)))))
                         (declare (not safe))
                         (foldr1 __tmp135631 '() _L132044_))))
                 (_specializer-impl132285_
                  (let ((__tmp135632
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132283_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135632 _stx131357_)))
                 (_specializer-impl132287_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131361_
                     _$klass132143_
                     _$method-table132145_
                     _methods-bind132168_
                     _slots-bind132191_
                     _specializer-impl132285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135634
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131430_)))
                                                          (__tmp135633
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132141_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135634
                                                       '" => "
                                                       __tmp135633))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131362_
                                                       _L131430_
                                                       _specializer-id132141_
                                                       _specializer-impl132287_)))))
                                            _clause132002132041_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131997132025_ _target131994132020_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131988132007_ _g131989132010_))))))
               (let ()
                 (declare (not safe))
                 (_g131988132007_ _g131989132010_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131988132007_
                                                  _g131989132010_))))))
                                   (declare (not safe))
                                   (_g131987132290_ _L131429_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131429_))
                                     (let* ((_g132293132323_
                                             (lambda (_g132294132320_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132294132320_))))
                                            (_g132292132928_
                                             (lambda (_g132294132326_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132294132326_))
                                                   (let ((_e132300132328_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132294132326_))))
                                                     (let ((_hd132299132331_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132300132328_)))
                                                           (_tl132298132333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132300132328_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132298132333_))
                                                           (let ((_e132303132336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132298132333_))))
                     (let ((_hd132302132339_
                            (let ()
                              (declare (not safe))
                              (##car _e132303132336_)))
                           (_tl132301132341_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132303132336_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132302132339_))
                           (let ((_e132306132344_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132302132339_))))
                             (let ((_hd132305132347_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132306132344_)))
                                   (_tl132304132349_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132306132344_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132305132347_))
                                   (let ((_e132309132352_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132305132347_))))
                                     (let ((_hd132308132355_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132309132352_)))
                                           (_tl132307132357_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132309132352_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132308132355_))
                                           (let ((_e132312132360_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132308132355_))))
                                             (let ((_hd132311132363_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132312132360_)))
                                                   (_tl132310132365_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132312132360_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132310132365_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132307132357_))
                                                       (let ((_e132315132368_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132307132357_))))
                 (let ((_hd132314132371_
                        (let () (declare (not safe)) (##car _e132315132368_)))
                       (_tl132313132373_
                        (let () (declare (not safe)) (##cdr _e132315132368_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132313132373_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132304132349_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132301132341_))
                               (let ((_e132318132376_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132301132341_))))
                                 (let ((_hd132317132379_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132318132376_)))
                                       (_tl132316132381_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132318132376_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132316132381_))
                                       ((lambda (_L132384_ _L132385_ _L132386_)
                                          (let* ((_g132409132427_
                                                  (lambda (_g132410132424_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132410132424_))))
                                                 (_g132408132478_
                                                  (lambda (_g132410132430_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132410132430_))
                                                        (let ((_e132416132432_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132410132430_))))
                  (let ((_hd132415132435_
                         (let () (declare (not safe)) (##car _e132416132432_)))
                        (_tl132414132437_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132416132432_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132414132437_))
                        (let ((_e132419132440_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132414132437_))))
                          (let ((_hd132418132443_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132419132440_)))
                                (_tl132417132445_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132419132440_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132418132443_))
                                (let ((_e132422132448_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132418132443_))))
                                  (let ((_hd132421132451_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132422132448_)))
                                        (_tl132420132453_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132422132448_))))
                                    ((lambda (_L132456_ _L132457_ _L132458_)
                                       (for-each
                                        (lambda (_g132473132475_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132473132475_
                                             'receiver:
                                             _L132458_
                                             'methods:
                                             _method-calls131449_
                                             'slots:
                                             _slot-refs131450_)))
                                        _L132456_))
                                     _tl132417132445_
                                     _tl132420132453_
                                     _hd132421132451_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132409132427_ _g132410132430_)))))
                        (let ()
                          (declare (not safe))
                          (_g132409132427_ _g132410132430_)))))
                (let ()
                  (declare (not safe))
                  (_g132409132427_ _g132410132430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132408132478_ _L132385_))
                                          (let* ((_g132481132500_
                                                  (lambda (_g132482132497_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132482132497_))))
                                                 (_g132480132619_
                                                  (lambda (_g132482132503_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132482132503_))
                                                        (let ((_e132486132505_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132482132503_))))
                  (let ((_hd132485132508_
                         (let () (declare (not safe)) (##car _e132486132505_)))
                        (_tl132484132510_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132486132505_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132484132510_))
                        (let ((_g135589_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132484132510_
                                  '0))))
                          (begin
                            (let ((_g135590_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135589_)
                                         (##vector-length _g135589_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135590_ 2)))
                                  (error "Context expects 2 values"
                                         _g135590_)))
                            (let ((_target132487132513_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135589_ 0)))
                                  (_tl132489132515_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135589_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132489132515_))
                                  (letrec ((_loop132490132518_
                                            (lambda (_hd132488132521_
                                                     _clause132494132523_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132488132521_))
                                                  (let ((_e132491132526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132488132521_))))
                                                    (let ((_lp-hd132492132529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132491132526_)))
                                                          (_lp-tl132493132531_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132491132526_))))
                                                      (let ((__tmp135592
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132492132529_ _clause132494132523_))))
                (declare (not safe))
                (_loop132490132518_ _lp-tl132493132531_ __tmp135592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132495132534_
                                                         (reverse _clause132494132523_)))
                                                    ((lambda (_L132537_)
                                                       (for-each
                                                        (lambda (_clause132550_)
                                                          (let* ((_g132552132567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132553132564_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132553132564_))))
                         (_g132551132609_
                          (lambda (_g132553132570_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132553132570_))
                                (let ((_e132559132572_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132553132570_))))
                                  (let ((_hd132558132575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132559132572_)))
                                        (_tl132557132577_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132559132572_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132558132575_))
                                        (let ((_e132562132580_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132558132575_))))
                                          (let ((_hd132561132583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132562132580_)))
                                                (_tl132560132585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132562132580_))))
                                            ((lambda (_L132588_
                                                      _L132589_
                                                      _L132590_)
                                               (for-each
                                                (lambda (_g132604132606_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132604132606_
                                                     'receiver:
                                                     _L132590_
                                                     'methods:
                                                     _method-calls131449_
                                                     'slots:
                                                     _slot-refs131450_)))
                                                _L132588_))
                                             _tl132557132577_
                                             _tl132560132585_
                                             _hd132561132583_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132552132567_ _g132553132570_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132552132567_ _g132553132570_))))))
                    (declare (not safe))
                    (_g132551132609_ _clause132550_)))
                (let ((__tmp135591
                       (lambda (_g132611132614_ _g132612132616_)
                         (let ()
                           (declare (not safe))
                           (cons _g132611132614_ _g132612132616_)))))
                  (declare (not safe))
                  (foldr1 __tmp135591 '() _L132537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132495132534_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132490132518_
                                       _target132487132513_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132481132500_ _g132482132503_))))))
                        (let ()
                          (declare (not safe))
                          (_g132481132500_ _g132482132503_)))))
                (let ()
                  (declare (not safe))
                  (_g132481132500_ _g132482132503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132480132619_ _L132384_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131453_))
                                              _stx131357_
                                              (let* ((_specializer-id132628_
                                                      (let* ((_id132622_
                                                              (let ((__tmp135593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131430_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135593 '"::specialize")))
                     (_specializer-id132625_
                      (let ((__tmp135594
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131357_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132622_ __tmp135594))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132625_))
                _specializer-id132625_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132630_
                                                      (let ((__tmp135595
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135595)))
                                                     (_$method-table132632_
                                                      (let ((__tmp135596
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135596)))
                                                     (_methods132634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131449_)))
                                                     (_$methods132638_
                                                      (map (lambda (_id132636_)
                                                             (let ((__tmp135597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132636_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135597)))
                   _methods132634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135598_
                                                      (for-each
                                                       (lambda (_g132639132642_
                                                                _g132640132644_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131449_
                                                            _g132639132642_
                                                            _g132640132644_)))
                                                       _methods132634_
                                                       _$methods132638_))
                                                     (_methods-bind132655_
                                                      (map (lambda (_g132647132650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132648132652_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131359_
                        _$klass132630_
                        _$method-table132632_
                        _g132647132650_
                        _g132648132652_)))
                   _methods132634_
                   _$methods132638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132657_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131450_)))
                                                     (_$slots132661_
                                                      (map (lambda (_id132659_)
                                                             (let ((__tmp135599
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132659_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135599)))
                   _slots132657_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135600_
                                                      (for-each
                                                       (lambda (_g132662132665_
                                                                _g132663132667_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131450_
                                                            _g132662132665_
                                                            _g132663132667_)))
                                                       _slots132657_
                                                       _$slots132661_))
                                                     (_slots-bind132678_
                                                      (map (lambda (_g132670132673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132671132675_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131360_
                        _$klass132630_
                        _g132670132673_
                        _g132671132675_)))
                   _slots132657_
                   _$slots132661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132764_
                                                      (let* ((_g132680132698_
                                                              (lambda (_g132681132695_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132681132695_))))
                     (_g132679132761_
                      (lambda (_g132681132701_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132681132701_))
                            (let ((_e132687132703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132681132701_))))
                              (let ((_hd132686132706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132687132703_)))
                                    (_tl132685132708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132687132703_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132685132708_))
                                    (let ((_e132690132711_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132685132708_))))
                                      (let ((_hd132689132714_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132690132711_)))
                                            (_tl132688132716_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132690132711_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132689132714_))
                                            (let ((_e132693132719_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132689132714_))))
                                              (let ((_hd132692132722_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132693132719_)))
                                                    (_tl132691132724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132693132719_))))
                                                ((lambda (_L132727_
                                                          _L132728_
                                                          _L132729_)
                                                   (let* ((_body132759_
                                                           (map (lambda (_g132754132756_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132754132756_
                             'receiver:
                             _L132729_
                             'klass:
                             _$klass132630_
                             'methods:
                             _method-calls131449_
                             'slots:
                             _slot-refs131450_)))
                        _L132727_))
                  (__tmp135601
                   (let ((__tmp135602
                          (let ((__tmp135603
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132729_ _L132728_))))
                            (declare (not safe))
                            (cons __tmp135603 _body132759_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135601
                                                      _L132385_)))
                                                 _tl132688132716_
                                                 _tl132691132724_
                                                 _hd132692132722_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132680132698_
                                               _g132681132701_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132680132698_ _g132681132701_)))))
                            (let ()
                              (declare (not safe))
                              (_g132680132698_ _g132681132701_))))))
                (declare (not safe))
                (_g132679132761_ _L132385_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132921_
                                                      (let* ((_g132766132785_
                                                              (lambda (_g132767132782_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132767132782_))))
                     (_g132765132918_
                      (lambda (_g132767132788_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132767132788_))
                            (let ((_e132771132790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132767132788_))))
                              (let ((_hd132770132793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132771132790_)))
                                    (_tl132769132795_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132771132790_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132769132795_))
                                    (let ((_g135604_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132769132795_
                                              '0))))
                                      (begin
                                        (let ((_g135605_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135604_)
                                                     (##vector-length
                                                      _g135604_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135605_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135605_)))
                                        (let ((_target132772132798_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135604_ 0)))
                                              (_tl132774132800_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135604_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132774132800_))
                                              (letrec ((_loop132775132803_
                                                        (lambda (_hd132773132806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132779132808_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132773132806_))
                      (let ((_e132776132811_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132773132806_))))
                        (let ((_lp-hd132777132814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132776132811_)))
                              (_lp-tl132778132816_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132776132811_))))
                          (let ((__tmp135609
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132777132814_
                                         _clause132779132808_))))
                            (declare (not safe))
                            (_loop132775132803_
                             _lp-tl132778132816_
                             __tmp135609))))
                      (let ((_clause132780132819_
                             (reverse _clause132779132808_)))
                        ((lambda (_L132822_)
                           (let* ((_clauses132916_
                                   (map (lambda (_clause132836_)
                                          (let* ((___stx134315134316_
                                                  _clause132836_)
                                                 (_g132839132854_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134315134316_)))))
                                            (let ((___kont134317134318_
                                                   (lambda (_L132882_
                                                            _L132883_
                                                            _L132884_)
                                                     (let* ((_body132904_
                                                             (map (lambda (_g132899132901_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132899132901_
                               'receiver:
                               _L132884_
                               'klass:
                               _$klass132630_
                               'methods:
                               _method-calls131449_
                               'slots:
                               _slot-refs131450_)))
                          _L132882_))
                    (__tmp135606
                     (let () (declare (not safe)) (cons _L132884_ _L132883_))))
               (declare (not safe))
               (cons __tmp135606 _body132904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134319134320_
                                                   (lambda () _clause132836_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134315134316_))
                                                  (let ((_e132846132866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134315134316_))))
                                                    (let ((_tl132844132871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132846132866_)))
                                                          (_hd132845132869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132846132866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132845132869_))
                                                          (let ((_e132849132874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132845132869_))))
                    (let ((_tl132847132879_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132849132874_)))
                          (_hd132848132877_
                           (let ()
                             (declare (not safe))
                             (##car _e132849132874_))))
                      (___kont134317134318_
                       _tl132844132871_
                       _tl132847132879_
                       _hd132848132877_)))
                  (___kont134319134320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134319134320_)))))
                                        (let ((__tmp135607
                                               (lambda (_g132908132911_
                                                        _g132909132913_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132908132911_
                                                         _g132909132913_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135607 '() _L132822_))))
                                  (__tmp135608
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132916_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135608 _L132384_)))
                         _clause132780132819_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132775132803_
                                                   _target132772132798_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132766132785_
                                                 _g132767132788_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132766132785_ _g132767132788_)))))
                            (let ()
                              (declare (not safe))
                              (_g132766132785_ _g132767132788_))))))
                (declare (not safe))
                (_g132765132918_ _L132384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132923_
                                                      (let ((__tmp135610
                                                             (let ((__tmp135611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135613
                                   (let ((__tmp135614
                                          (let ((__tmp135616
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132386_ '())))
                                                (__tmp135615
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132764_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135616 __tmp135615))))
                                     (declare (not safe))
                                     (cons __tmp135614 '())))
                                  (__tmp135612
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132921_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135613 __tmp135612))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135611))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135610 _stx131357_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132925_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131361_
                                                         _$klass132630_
                                                         _$method-table132632_
                                                         _methods-bind132655_
                                                         _slots-bind132678_
                                                         _specializer-impl132923_))))
                                                (let ((__tmp135618
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131430_)))
                                                      (__tmp135617
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132628_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135618
                                                   '" => "
                                                   __tmp135617))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131362_
                                                   _L131430_
                                                   _specializer-id132628_
                                                   _specializer-impl132925_)))))
                                        _hd132317132379_
                                        _hd132314132371_
                                        _hd132311132363_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132293132323_ _g132294132326_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132293132323_ _g132294132326_)))
                           (let ()
                             (declare (not safe))
                             (_g132293132323_ _g132294132326_)))
                       (let ()
                         (declare (not safe))
                         (_g132293132323_ _g132294132326_)))))
               (let () (declare (not safe)) (_g132293132323_ _g132294132326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132293132323_
                                                      _g132294132326_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132293132323_
                                              _g132294132326_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132293132323_ _g132294132326_)))))
                           (let ()
                             (declare (not safe))
                             (_g132293132323_ _g132294132326_)))))
                   (let ()
                     (declare (not safe))
                     (_g132293132323_ _g132294132326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132293132323_
                                                      _g132294132326_))))))
                                       (declare (not safe))
                                       (_g132292132928_ _L131429_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131429_))
                                         (let* ((_g132931132984_
                                                 (lambda (_g132932132981_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132932132981_))))
                                                (_g132930134115_
                                                 (lambda (_g132932132987_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132932132987_))
                                                       (let ((_e132940132989_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132932132987_))))
                 (let ((_hd132939132992_
                        (let () (declare (not safe)) (##car _e132940132989_)))
                       (_tl132938132994_
                        (let () (declare (not safe)) (##cdr _e132940132989_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132939132992_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132939132992_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132938132994_))
                               (let ((_e132943132997_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132938132994_))))
                                 (let ((_hd132942133000_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132943132997_)))
                                       (_tl132941133002_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132943132997_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132942133000_))
                                       (let ((_e132946133005_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132942133000_))))
                                         (let ((_hd132945133008_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132946133005_)))
                                               (_tl132944133010_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132946133005_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132945133008_))
                                               (let ((_e132949133013_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132945133008_))))
                                                 (let ((_hd132948133016_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132949133013_)))
                                                       (_tl132947133018_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132949133013_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132948133016_))
                                                       (let ((_e132952133021_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132948133016_))))
                 (let ((_hd132951133024_
                        (let () (declare (not safe)) (##car _e132952133021_)))
                       (_tl132950133026_
                        (let () (declare (not safe)) (##cdr _e132952133021_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132950133026_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132947133018_))
                           (let ((_e132955133029_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132947133018_))))
                             (let ((_hd132954133032_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132955133029_)))
                                   (_tl132953133034_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132955133029_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132954133032_))
                                   (let ((_e132958133037_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132954133032_))))
                                     (let ((_hd132957133040_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132958133037_)))
                                           (_tl132956133042_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132958133037_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132957133040_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132957133040_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132956133042_))
                                                   (let ((_e132961133045_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132956133042_))))
                                                     (let ((_hd132960133048_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132961133045_)))
                                                           (_tl132959133050_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132961133045_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132960133048_))
                                                           (let ((_e132964133053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132960133048_))))
                     (let ((_hd132963133056_
                            (let ()
                              (declare (not safe))
                              (##car _e132964133053_)))
                           (_tl132962133058_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132964133053_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132963133056_))
                           (let ((_e132967133061_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132963133056_))))
                             (let ((_hd132966133064_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132967133061_)))
                                   (_tl132965133066_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132967133061_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132966133064_))
                                   (let ((_e132970133069_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132966133064_))))
                                     (let ((_hd132969133072_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132970133069_)))
                                           (_tl132968133074_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132970133069_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132968133074_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132965133066_))
                                               (let ((_e132973133077_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132965133066_))))
                                                 (let ((_hd132972133080_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132973133077_)))
                                                       (_tl132971133082_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132973133077_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132971133082_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132962133058_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132959133050_))
                       (let ((_e132976133085_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132959133050_))))
                         (let ((_hd132975133088_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132976133085_)))
                               (_tl132974133090_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132976133085_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132974133090_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132953133034_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132944133010_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132941133002_))
                                           (let ((_e132979133093_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132941133002_))))
                                             (let ((_hd132978133096_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132979133093_)))
                                                   (_tl132977133098_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132979133093_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132977133098_))
                                                   ((lambda (_L133101_
                                                             _L133102_
                                                             _L133103_
                                                             _L133104_
                                                             _L133105_)
                                                      (let* ((_g133144133206_
                                                              (lambda (_g133145133203_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133145133203_))))
                     (_g133143134112_
                      (lambda (_g133145133209_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133145133209_))
                            (let ((_e133153133211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133145133209_))))
                              (let ((_hd133152133214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133153133211_)))
                                    (_tl133151133216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133153133211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133152133214_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133152133214_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133151133216_))
                                            (let ((_e133156133219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133151133216_))))
                                              (let ((_hd133155133222_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133156133219_)))
                                                    (_tl133154133224_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133156133219_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133154133224_))
                                                    (let ((_e133159133227_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133154133224_))))
                                                      (let ((_hd133158133230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133159133227_)))
                    (_tl133157133232_
                     (let () (declare (not safe)) (##cdr _e133159133227_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133158133230_))
                    (let ((_e133162133235_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133158133230_))))
                      (let ((_hd133161133238_
                             (let ()
                               (declare (not safe))
                               (##car _e133162133235_)))
                            (_tl133160133240_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133162133235_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133161133238_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133161133238_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133160133240_))
                                    (let ((_e133165133243_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133160133240_))))
                                      (let ((_hd133164133246_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133165133243_)))
                                            (_tl133163133248_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133165133243_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133164133246_))
                                            (let ((_e133168133251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133164133246_))))
                                              (let ((_hd133167133254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133168133251_)))
                                                    (_tl133166133256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133168133251_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133167133254_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133167133254_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133166133256_))
                                                            (let ((_e133171133259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133166133256_))))
                      (let ((_hd133170133262_
                             (let ()
                               (declare (not safe))
                               (##car _e133171133259_)))
                            (_tl133169133264_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133171133259_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133169133264_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133163133248_))
                                (let ((_e133174133267_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133163133248_))))
                                  (let ((_hd133173133270_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133174133267_)))
                                        (_tl133172133272_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133174133267_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133173133270_))
                                        (let ((_e133177133275_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133173133270_))))
                                          (let ((_hd133176133278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133177133275_)))
                                                (_tl133175133280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133177133275_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133176133278_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133176133278_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133175133280_))
                                                        (let ((_e133180133283_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133175133280_))))
                  (let ((_hd133179133286_
                         (let () (declare (not safe)) (##car _e133180133283_)))
                        (_tl133178133288_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133180133283_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133178133288_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133172133272_))
                            (let ((_e133183133291_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133172133272_))))
                              (let ((_hd133182133294_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133183133291_)))
                                    (_tl133181133296_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133183133291_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133182133294_))
                                    (let ((_e133186133299_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133182133294_))))
                                      (let ((_hd133185133302_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133186133299_)))
                                            (_tl133184133304_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133186133299_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133185133302_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133185133302_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133184133304_))
                                                    (let ((_e133189133307_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133184133304_))))
                                                      (let ((_hd133188133310_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133189133307_)))
                    (_tl133187133312_
                     (let () (declare (not safe)) (##cdr _e133189133307_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133187133312_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133181133296_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133181133296_))
                                  '1)
                            (let ((_g135515_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133181133296_
                                      '1))))
                              (begin
                                (let ((_g135516_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135515_)
                                             (##vector-length _g135515_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135516_ 2)))
                                      (error "Context expects 2 values"
                                             _g135516_)))
                                (let ((_target133190133315_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135515_ 0)))
                                      (_tl133192133317_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135515_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133192133317_))
                                      (let ((_e133201133320_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133192133317_))))
                                        (let ((_hd133200133323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133201133320_)))
                                              (_tl133199133325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133201133320_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133199133325_))
                                              (letrec ((_loop133193133328_
                                                        (lambda (_hd133191133331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133197133333_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133191133331_))
                      (let ((_e133194133336_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133191133331_))))
                        (let ((_lp-hd133195133339_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133194133336_)))
                              (_lp-tl133196133341_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133194133336_))))
                          (let ((__tmp135588
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133195133339_
                                         _kw-ref133197133333_))))
                            (declare (not safe))
                            (_loop133193133328_
                             _lp-tl133196133341_
                             __tmp135588))))
                      (let ((_kw-ref133198133344_
                             (reverse _kw-ref133197133333_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133157133232_))
                            ((lambda (_L133347_
                                      _L133348_
                                      _L133349_
                                      _L133350_
                                      _L133351_)
                               (let* ((_kw-count133402_
                                       (length (let ((__tmp135517
                                                      (lambda (_g133394133397_
                                                               _g133395133399_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133394133397_
                                                                _g133395133399_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135517
                                                         '()
                                                         _L133348_))))
                                      (_self-index133404_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133402_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133103_))
                                     (let* ((_g133407133421_
                                             (lambda (_g133408133418_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133408133418_))))
                                            (_g133406133534_
                                             (lambda (_g133408133424_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133408133424_))
                                                   (let ((_e133413133426_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133408133424_))))
                                                     (let ((_hd133412133429_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133413133426_)))
                                                           (_tl133411133431_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133413133426_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133411133431_))
                                                           (let ((_e133416133434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133411133431_))))
                     (let ((_hd133415133437_
                            (let ()
                              (declare (not safe))
                              (##car _e133416133434_)))
                           (_tl133414133439_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133416133434_))))
                       ((lambda (_L133442_ _L133443_)
                          (let ((_self133459_
                                 (list-ref _L133443_ _self-index133404_)))
                            (for-each
                             (lambda (_g133460133462_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133460133462_
                                  'receiver:
                                  _self133459_
                                  'methods:
                                  _method-calls131449_
                                  'slots:
                                  _slot-refs131450_)))
                             _L133442_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131453_))
                                _stx131357_
                                (let* ((_specializer-id133471_
                                        (let* ((_id133465_
                                                (let ((__tmp135561
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131430_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135561
                                                   '"::specialize")))
                                               (_specializer-id133468_
                                                (let ((__tmp135562
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131357_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133465_
                                                   __tmp135562))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133468_))
                                          _specializer-id133468_))
                                       (_$klass133473_
                                        (let ((__tmp135563 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135563)))
                                       (_$method-table133475_
                                        (let ((__tmp135564
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135564)))
                                       (_methods133477_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131449_)))
                                       (_$methods133481_
                                        (map (lambda (_id133479_)
                                               (let ((__tmp135565
                                                      (gensym _id133479_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135565)))
                                             _methods133477_))
                                       (_g135566_
                                        (for-each
                                         (lambda (_g133482133485_
                                                  _g133483133487_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131449_
                                              _g133482133485_
                                              _g133483133487_)))
                                         _methods133477_
                                         _$methods133481_))
                                       (_methods-bind133498_
                                        (map (lambda (_g133490133493_
                                                      _g133491133495_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131359_
                                                  _$klass133473_
                                                  _$method-table133475_
                                                  _g133490133493_
                                                  _g133491133495_)))
                                             _methods133477_
                                             _$methods133481_))
                                       (_slots133500_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131450_)))
                                       (_$slots133504_
                                        (map (lambda (_id133502_)
                                               (let ((__tmp135567
                                                      (gensym _id133502_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135567)))
                                             _slots133500_))
                                       (_g135568_
                                        (for-each
                                         (lambda (_g133505133508_
                                                  _g133506133510_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131450_
                                              _g133505133508_
                                              _g133506133510_)))
                                         _slots133500_
                                         _$slots133504_))
                                       (_slots-bind133521_
                                        (map (lambda (_g133513133516_
                                                      _g133514133518_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131360_
                                                  _$klass133473_
                                                  _g133513133516_
                                                  _g133514133518_)))
                                             _slots133500_
                                             _$slots133504_))
                                       (_specializer-impl133529_
                                        (let* ((_specializer-body133527_
                                                (map (lambda (_g133522133524_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133522133524_
                                                          'receiver:
                                                          _self133459_
                                                          'klass:
                                                          _$klass133473_
                                                          'methods:
                                                          _method-calls131449_
                                                          'slots:
                                                          _slot-refs131450_)))
                                                     _L133442_))
                                               (__tmp135569
                                                (let ((__tmp135570
                                                       (let ((__tmp135572
                                                              (let ((__tmp135573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135585
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133105_ '())))
                                   (__tmp135574
                                    (let ((__tmp135575
                                           (let ((__tmp135576
                                                  (let ((__tmp135578
                                                         (let ((__tmp135579
                                                                (let ((__tmp135584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133104_ '())))
                              (__tmp135580
                               (let ((__tmp135581
                                      (let ((__tmp135582
                                             (let ((__tmp135583
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133443_
                                                            _specializer-body133527_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135583))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135582
                                         _L133103_))))
                                 (declare (not safe))
                                 (cons __tmp135581 '()))))
                          (declare (not safe))
                          (cons __tmp135584 __tmp135580))))
                   (declare (not safe))
                   (cons __tmp135579 '())))
                (__tmp135577
                 (let () (declare (not safe)) (cons _L133102_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135578
                                                          __tmp135577))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135576))))
                                      (declare (not safe))
                                      (cons __tmp135575 '()))))
                               (declare (not safe))
                               (cons __tmp135585 __tmp135574))))
                        (declare (not safe))
                        (cons __tmp135573 '())))
                     (__tmp135571
                      (let () (declare (not safe)) (cons _L133101_ '()))))
                 (declare (not safe))
                 (cons __tmp135572 __tmp135571))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135570))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135569
                                           _stx131357_)))
                                       (_specializer-impl133531_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131361_
                                           _$klass133473_
                                           _$method-table133475_
                                           _methods-bind133498_
                                           _slots-bind133521_
                                           _specializer-impl133529_))))
                                  (let ((__tmp135587
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131430_)))
                                        (__tmp135586
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133471_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135587
                                     '" => "
                                     __tmp135586))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131362_
                                     _L131430_
                                     _specializer-id133471_
                                     _specializer-impl133531_))))))
                        _tl133414133439_
                        _hd133415133437_)))
                   (let ()
                     (declare (not safe))
                     (_g133407133421_ _g133408133424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133407133421_
                                                      _g133408133424_))))))
                                       (declare (not safe))
                                       (_g133406133534_ _L133103_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133103_))
                                         (let* ((_g133537133567_
                                                 (lambda (_g133538133564_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133538133564_))))
                                                (_g133536134109_
                                                 (lambda (_g133538133570_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133538133570_))
                                                       (let ((_e133544133572_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133538133570_))))
                 (let ((_hd133543133575_
                        (let () (declare (not safe)) (##car _e133544133572_)))
                       (_tl133542133577_
                        (let () (declare (not safe)) (##cdr _e133544133572_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133542133577_))
                       (let ((_e133547133580_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133542133577_))))
                         (let ((_hd133546133583_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133547133580_)))
                               (_tl133545133585_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133547133580_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133546133583_))
                               (let ((_e133550133588_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133546133583_))))
                                 (let ((_hd133549133591_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133550133588_)))
                                       (_tl133548133593_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133550133588_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133549133591_))
                                       (let ((_e133553133596_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133549133591_))))
                                         (let ((_hd133552133599_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133553133596_)))
                                               (_tl133551133601_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133553133596_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133552133599_))
                                               (let ((_e133556133604_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133552133599_))))
                                                 (let ((_hd133555133607_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133556133604_)))
                                                       (_tl133554133609_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133556133604_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133554133609_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133551133601_))
                                                           (let ((_e133559133612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133551133601_))))
                     (let ((_hd133558133615_
                            (let ()
                              (declare (not safe))
                              (##car _e133559133612_)))
                           (_tl133557133617_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133559133612_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133557133617_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133548133593_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133545133585_))
                                   (let ((_e133562133620_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133545133585_))))
                                     (let ((_hd133561133623_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133562133620_)))
                                           (_tl133560133625_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133562133620_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133560133625_))
                                           ((lambda (_L133628_
                                                     _L133629_
                                                     _L133630_)
                                              (let* ((_g133653133667_
                                                      (lambda (_g133654133664_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133654133664_))))
                                                     (_g133652133708_
                                                      (lambda (_g133654133670_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133654133670_))
                                                            (let ((_e133659133672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133654133670_))))
                      (let ((_hd133658133675_
                             (let ()
                               (declare (not safe))
                               (##car _e133659133672_)))
                            (_tl133657133677_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133659133672_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133657133677_))
                            (let ((_e133662133680_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133657133677_))))
                              (let ((_hd133661133683_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133662133680_)))
                                    (_tl133660133685_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133662133680_))))
                                ((lambda (_L133688_ _L133689_)
                                   (let ((_self133702_
                                          (list-ref
                                           _L133689_
                                           _self-index133404_)))
                                     (for-each
                                      (lambda (_g133703133705_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133703133705_
                                           'receiver:
                                           _self133702_
                                           'methods:
                                           _method-calls131449_
                                           'slots:
                                           _slot-refs131450_)))
                                      _L133688_)))
                                 _tl133660133685_
                                 _hd133661133683_)))
                            (let ()
                              (declare (not safe))
                              (_g133653133667_ _g133654133670_)))))
                    (let ()
                      (declare (not safe))
                      (_g133653133667_ _g133654133670_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133652133708_ _L133629_))
                                              (let* ((_g133711133730_
                                                      (lambda (_g133712133727_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133712133727_))))
                                                     (_g133710133835_
                                                      (lambda (_g133712133733_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133712133733_))
                                                            (let ((_e133716133735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133712133733_))))
                      (let ((_hd133715133738_
                             (let ()
                               (declare (not safe))
                               (##car _e133716133735_)))
                            (_tl133714133740_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133716133735_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133714133740_))
                            (let ((_g135518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133714133740_
                                      '0))))
                              (begin
                                (let ((_g135519_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135518_)
                                             (##vector-length _g135518_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135519_ 2)))
                                      (error "Context expects 2 values"
                                             _g135519_)))
                                (let ((_target133717133743_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135518_ 0)))
                                      (_tl133719133745_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135518_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133719133745_))
                                      (letrec ((_loop133720133748_
                                                (lambda (_hd133718133751_
                                                         _clause133724133753_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133718133751_))
                                                      (let ((_e133721133756_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133718133751_))))
                (let ((_lp-hd133722133759_
                       (let () (declare (not safe)) (##car _e133721133756_)))
                      (_lp-tl133723133761_
                       (let () (declare (not safe)) (##cdr _e133721133756_))))
                  (let ((__tmp135521
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133722133759_ _clause133724133753_))))
                    (declare (not safe))
                    (_loop133720133748_ _lp-tl133723133761_ __tmp135521))))
              (let ((_clause133725133764_ (reverse _clause133724133753_)))
                ((lambda (_L133767_)
                   (for-each
                    (lambda (_clause133780_)
                      (let* ((_g133782133793_
                              (lambda (_g133783133790_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133783133790_))))
                             (_g133781133825_
                              (lambda (_g133783133796_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133783133796_))
                                    (let ((_e133788133798_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133783133796_))))
                                      (let ((_hd133787133801_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133788133798_)))
                                            (_tl133786133803_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133788133798_))))
                                        ((lambda (_L133806_ _L133807_)
                                           (let ((_self133819_
                                                  (list-ref
                                                   _L133807_
                                                   _self-index133404_)))
                                             (for-each
                                              (lambda (_g133820133822_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133820133822_
                                                   'receiver:
                                                   _self133819_
                                                   'methods:
                                                   _method-calls131449_
                                                   'slots:
                                                   _slot-refs131450_)))
                                              _L133806_)))
                                         _tl133786133803_
                                         _hd133787133801_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133782133793_ _g133783133796_))))))
                        (declare (not safe))
                        (_g133781133825_ _clause133780_)))
                    (let ((__tmp135520
                           (lambda (_g133827133830_ _g133828133832_)
                             (let ()
                               (declare (not safe))
                               (cons _g133827133830_ _g133828133832_)))))
                      (declare (not safe))
                      (foldr1 __tmp135520 '() _L133767_))))
                 _clause133725133764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133720133748_
                                           _target133717133743_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133711133730_ _g133712133733_))))))
                            (let ()
                              (declare (not safe))
                              (_g133711133730_ _g133712133733_)))))
                    (let ()
                      (declare (not safe))
                      (_g133711133730_ _g133712133733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133710133835_ _L133628_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131453_))
                                                  _stx131357_
                                                  (let* ((_specializer-id133844_
                                                          (let* ((_id133838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135522
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131430_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135522 '"::specialize")))
                         (_specializer-id133841_
                          (let ((__tmp135523
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131357_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133838_ __tmp135523))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133841_))
                    _specializer-id133841_))
                 (_$klass133846_
                  (let ((__tmp135524 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135524)))
                 (_$method-table133848_
                  (let ((__tmp135525 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135525)))
                 (_methods133850_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131449_)))
                 (_$methods133854_
                  (map (lambda (_id133852_)
                         (let ((__tmp135526 (gensym _id133852_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135526)))
                       _methods133850_))
                 (_g135527_
                  (for-each
                   (lambda (_g133855133858_ _g133856133860_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131449_
                        _g133855133858_
                        _g133856133860_)))
                   _methods133850_
                   _$methods133854_))
                 (_methods-bind133871_
                  (map (lambda (_g133863133866_ _g133864133868_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131359_
                            _$klass133846_
                            _$method-table133848_
                            _g133863133866_
                            _g133864133868_)))
                       _methods133850_
                       _$methods133854_))
                 (_slots133873_
                  (let () (declare (not safe)) (hash-keys _slot-refs131450_)))
                 (_$slots133877_
                  (map (lambda (_id133875_)
                         (let ((__tmp135528 (gensym _id133875_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135528)))
                       _slots133873_))
                 (_g135529_
                  (for-each
                   (lambda (_g133878133881_ _g133879133883_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131450_
                        _g133878133881_
                        _g133879133883_)))
                   _slots133873_
                   _$slots133877_))
                 (_slots-bind133894_
                  (map (lambda (_g133886133889_ _g133887133891_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131360_
                            _$klass133846_
                            _g133886133889_
                            _g133887133891_)))
                       _slots133873_
                       _$slots133877_))
                 (_specializer-lambda-expr133967_
                  (let* ((_g133896133910_
                          (lambda (_g133897133907_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133897133907_))))
                         (_g133895133964_
                          (lambda (_g133897133913_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133897133913_))
                                (let ((_e133902133915_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133897133913_))))
                                  (let ((_hd133901133918_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133902133915_)))
                                        (_tl133900133920_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133902133915_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133900133920_))
                                        (let ((_e133905133923_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133900133920_))))
                                          (let ((_hd133904133926_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133905133923_)))
                                                (_tl133903133928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133905133923_))))
                                            ((lambda (_L133931_ _L133932_)
                                               (let* ((_self133955_
                                                       (list-ref
                                                        _L133932_
                                                        _self-index133404_))
                                                      (_body133961_
                                                       (map (lambda (_g133956133958_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133956133958_
                         'receiver:
                         _self133955_
                         'klass:
                         _$klass133846_
                         'methods:
                         _method-calls131449_
                         'slots:
                         _slot-refs131450_)))
                    _L133931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135530
                                                        (let ((__tmp135531
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133932_ _body133961_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135530
                                                    _L133629_))))
                                             _tl133903133928_
                                             _hd133904133926_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133896133910_ _g133897133913_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133896133910_ _g133897133913_))))))
                    (declare (not safe))
                    (_g133895133964_ _L133629_)))
                 (_specializer-case-lambda-expr134102_
                  (let* ((_g133969133988_
                          (lambda (_g133970133985_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133970133985_))))
                         (_g133968134099_
                          (lambda (_g133970133991_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133970133991_))
                                (let ((_e133974133993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133970133991_))))
                                  (let ((_hd133973133996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133974133993_)))
                                        (_tl133972133998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133974133993_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133972133998_))
                                        (let ((_g135532_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133972133998_
                                                  '0))))
                                          (begin
                                            (let ((_g135533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135532_)
                                                         (##vector-length
                                                          _g135532_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135533_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135533_)))
                                            (let ((_target133975134001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135532_
                                                      0)))
                                                  (_tl133977134003_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135532_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133977134003_))
                                                  (letrec ((_loop133978134006_
                                                            (lambda (_hd133976134009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133982134011_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133976134009_))
                          (let ((_e133979134014_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133976134009_))))
                            (let ((_lp-hd133980134017_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133979134014_)))
                                  (_lp-tl133981134019_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133979134014_))))
                              (let ((__tmp135536
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133980134017_
                                             _clause133982134011_))))
                                (declare (not safe))
                                (_loop133978134006_
                                 _lp-tl133981134019_
                                 __tmp135536))))
                          (let ((_clause133983134022_
                                 (reverse _clause133982134011_)))
                            ((lambda (_L134025_)
                               (let* ((_clauses134097_
                                       (map (lambda (_clause134039_)
                                              (let* ((_g134041134052_
                                                      (lambda (_g134042134049_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134042134049_))))
                                                     (_g134040134087_
                                                      (lambda (_g134042134055_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134042134055_))
                                                            (let ((_e134047134057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134042134055_))))
                      (let ((_hd134046134060_
                             (let ()
                               (declare (not safe))
                               (##car _e134047134057_)))
                            (_tl134045134062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134047134057_))))
                        ((lambda (_L134065_ _L134066_)
                           (let* ((_self134078_
                                   (list-ref _L134066_ _self-index133404_))
                                  (_body134084_
                                   (map (lambda (_g134079134081_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134079134081_
                                             'receiver:
                                             _self134078_
                                             'klass:
                                             _$klass133846_
                                             'methods:
                                             _method-calls131449_
                                             'slots:
                                             _slot-refs131450_)))
                                        _L134065_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134066_ _body134084_))))
                         _tl134045134062_
                         _hd134046134060_)))
                    (let ()
                      (declare (not safe))
                      (_g134041134052_ _g134042134055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134040134087_
                                                 _clause134039_)))
                                            (let ((__tmp135534
                                                   (lambda (_g134089134092_
                                                            _g134090134094_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134089134092_
                                                             _g134090134094_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135534
                                                      '()
                                                      _L134025_))))
                                      (__tmp135535
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134097_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135535
                                  _L133628_)))
                             _clause133983134022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133978134006_
                                                       _target133975134001_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133969133988_
                                                     _g133970133991_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133969133988_ _g133970133991_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133969133988_ _g133970133991_))))))
                    (declare (not safe))
                    (_g133968134099_ _L133628_)))
                 (_specializer-impl134104_
                  (let ((__tmp135537
                         (let ((__tmp135538
                                (let ((__tmp135540
                                       (let ((__tmp135541
                                              (let ((__tmp135558
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133105_ '())))
                                                    (__tmp135542
                                                     (let ((__tmp135543
                                                            (let ((__tmp135544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135546
                                  (let ((__tmp135547
                                         (let ((__tmp135557
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133104_ '())))
                                               (__tmp135548
                                                (let ((__tmp135549
                                                       (let ((__tmp135550
                                                              (let ((__tmp135551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135553
                                    (let ((__tmp135554
                                           (let ((__tmp135556
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133630_ '())))
                                                 (__tmp135555
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133967_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135556 __tmp135555))))
                                      (declare (not safe))
                                      (cons __tmp135554 '())))
                                   (__tmp135552
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134102_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135553 __tmp135552))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135551))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135550 _stx131357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135549 '()))))
                                           (declare (not safe))
                                           (cons __tmp135557 __tmp135548))))
                                    (declare (not safe))
                                    (cons __tmp135547 '())))
                                 (__tmp135545
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133102_ '()))))
                             (declare (not safe))
                             (cons __tmp135546 __tmp135545))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135544))))
               (declare (not safe))
               (cons __tmp135543 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135558
                                                      __tmp135542))))
                                         (declare (not safe))
                                         (cons __tmp135541 '())))
                                      (__tmp135539
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133101_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135540 __tmp135539))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135538))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135537 _stx131357_)))
                 (_specializer-impl134106_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131361_
                     _$klass133846_
                     _$method-table133848_
                     _methods-bind133871_
                     _slots-bind133894_
                     _specializer-impl134104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135560
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131430_)))
                                                          (__tmp135559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133844_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135560
                                                       '" => "
                                                       __tmp135559))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131362_
                                                       _L131430_
                                                       _specializer-id133844_
                                                       _specializer-impl134106_)))))
                                            _hd133561133623_
                                            _hd133558133615_
                                            _hd133555133607_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133537133567_
                                              _g133538133570_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133537133567_ _g133538133570_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133537133567_ _g133538133570_)))
                           (let ()
                             (declare (not safe))
                             (_g133537133567_ _g133538133570_)))))
                   (let ()
                     (declare (not safe))
                     (_g133537133567_ _g133538133570_)))
               (let ()
                 (declare (not safe))
                 (_g133537133567_ _g133538133570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133537133567_
                                                  _g133538133570_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133537133567_ _g133538133570_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133537133567_ _g133538133570_)))))
                       (let ()
                         (declare (not safe))
                         (_g133537133567_ _g133538133570_)))))
               (let ()
                 (declare (not safe))
                 (_g133537133567_ _g133538133570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133536134109_ _L133103_))
                                         _stx131357_))))
                             _hd133200133323_
                             _kw-ref133198133344_
                             _hd133188133310_
                             _hd133179133286_
                             _hd133170133262_)
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133193133328_
                                                   _target133190133315_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133144133206_
                                                 _g133145133209_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133144133206_ _g133145133209_))))))
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_)))
                        (let ()
                          (declare (not safe))
                          (_g133144133206_ _g133145133209_)))
                    (let ()
                      (declare (not safe))
                      (_g133144133206_ _g133145133209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133144133206_
                                                       _g133145133209_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133144133206_
                                                   _g133145133209_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133144133206_
                                               _g133145133209_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133144133206_ _g133145133209_)))))
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_)))
                        (let ()
                          (declare (not safe))
                          (_g133144133206_ _g133145133209_)))))
                (let ()
                  (declare (not safe))
                  (_g133144133206_ _g133145133209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133144133206_
                                                       _g133145133209_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133144133206_
                                                   _g133145133209_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133144133206_ _g133145133209_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133144133206_ _g133145133209_)))
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_)))))
                    (let ()
                      (declare (not safe))
                      (_g133144133206_ _g133145133209_)))
                (let ()
                  (declare (not safe))
                  (_g133144133206_ _g133145133209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133144133206_
                                                       _g133145133209_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133144133206_
                                               _g133145133209_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133144133206_ _g133145133209_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133144133206_ _g133145133209_)))
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_)))))
                    (let ()
                      (declare (not safe))
                      (_g133144133206_ _g133145133209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133144133206_
                                                       _g133145133209_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133144133206_
                                               _g133145133209_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133144133206_ _g133145133209_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133144133206_ _g133145133209_)))))
                            (let ()
                              (declare (not safe))
                              (_g133144133206_ _g133145133209_))))))
                (declare (not safe))
                (_g133143134112_ _L133102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132978133096_
                                                    _hd132975133088_
                                                    _hd132972133080_
                                                    _hd132969133072_
                                                    _hd132951133024_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132931132984_
                                                      _g132932132987_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132931132984_
                                              _g132932132987_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132931132984_ _g132932132987_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132931132984_ _g132932132987_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132931132984_ _g132932132987_)))))
                       (let ()
                         (declare (not safe))
                         (_g132931132984_ _g132932132987_)))
                   (let ()
                     (declare (not safe))
                     (_g132931132984_ _g132932132987_)))
               (let ()
                 (declare (not safe))
                 (_g132931132984_ _g132932132987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132931132984_
                                                  _g132932132987_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132931132984_
                                              _g132932132987_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132931132984_ _g132932132987_)))))
                           (let ()
                             (declare (not safe))
                             (_g132931132984_ _g132932132987_)))))
                   (let ()
                     (declare (not safe))
                     (_g132931132984_ _g132932132987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132931132984_
                                                      _g132932132987_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132931132984_
                                                  _g132932132987_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132931132984_
                                              _g132932132987_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132931132984_ _g132932132987_)))))
                           (let ()
                             (declare (not safe))
                             (_g132931132984_ _g132932132987_)))
                       (let ()
                         (declare (not safe))
                         (_g132931132984_ _g132932132987_)))))
               (let ()
                 (declare (not safe))
                 (_g132931132984_ _g132932132987_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132931132984_
                                                  _g132932132987_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132931132984_ _g132932132987_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132931132984_ _g132932132987_)))
                           (let ()
                             (declare (not safe))
                             (_g132931132984_ _g132932132987_)))
                       (let ()
                         (declare (not safe))
                         (_g132931132984_ _g132932132987_)))))
               (let ()
                 (declare (not safe))
                 (_g132931132984_ _g132932132987_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132930134115_ _L131429_))
                                         _stx131357_))))))))
                  (___kont134339134340_ (lambda () _stx131357_)))
              (let ((___match134368134369_
                     (lambda (_e131371131397_
                              _hd131370131400_
                              _tl131369131402_
                              _e131374131405_
                              _hd131373131408_
                              _tl131372131410_
                              _e131377131413_
                              _hd131376131416_
                              _tl131375131418_
                              _e131380131421_
                              _hd131379131424_
                              _tl131378131426_)
                       (let ((_L131429_ _hd131379131424_)
                             (_L131430_ _hd131376131416_))
                         (if (let ((__tmp135649
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131430_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135649))
                             (___kont134337134338_ _L131429_ _L131430_)
                             (___kont134339134340_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134335134336_))
                    (let ((_e131371131397_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134335134336_))))
                      (let ((_tl131369131402_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131371131397_)))
                            (_hd131370131400_
                             (let ()
                               (declare (not safe))
                               (##car _e131371131397_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131369131402_))
                            (let ((_e131374131405_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131369131402_))))
                              (let ((_tl131372131410_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131374131405_)))
                                    (_hd131373131408_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131374131405_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131373131408_))
                                    (let ((_e131377131413_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131373131408_))))
                                      (let ((_tl131375131418_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131377131413_)))
                                            (_hd131376131416_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131377131413_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131375131418_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131372131410_))
                                                (let ((_e131380131421_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131372131410_))))
                                                  (let ((_tl131378131426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131380131421_)))
                                                        (_hd131379131424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131380131421_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131378131426_))
                                                        (___match134368134369_
                                                         _e131371131397_
                                                         _hd131370131400_
                                                         _tl131369131402_
                                                         _e131374131405_
                                                         _hd131373131408_
                                                         _tl131372131410_
                                                         _e131377131413_
                                                         _hd131376131416_
                                                         _tl131375131418_
                                                         _e131380131421_
                                                         _hd131379131424_
                                                         _tl131378131426_)
                                                        (___kont134339134340_))))
                                                (___kont134339134340_))
                                            (___kont134339134340_))))
                                    (___kont134339134340_))))
                            (___kont134339134340_))))
                    (___kont134339134340_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self130317_ _stx130318_)
        (let* ((___stx134371134372_ _stx130318_)
               (_g130326130548_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134371134372_)))))
          (let ((___kont134373134374_
                 (lambda (_L131305_ _L131306_ _L131307_ _L131308_)
                   (let ((__tmp135651
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130317_ 'methods)))
                         (__tmp135650
                          (let () (declare (not safe)) (gx#stx-e _L131306_))))
                     (declare (not safe))
                     (hash-put! __tmp135651 __tmp135650 '#t))
                   (for-each
                    (lambda (_g131341131343_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130317_ _g131341131343_)))
                    (let ((__tmp135652
                           (lambda (_g131345131348_ _g131346131350_)
                             (let ()
                               (declare (not safe))
                               (cons _g131345131348_ _g131346131350_)))))
                      (declare (not safe))
                      (foldr1 __tmp135652 '() _L131305_)))))
                (___kont134377134378_
                 (lambda (_L131140_ _L131141_ _L131142_ _L131143_ _L131144_)
                   (let ((__tmp135654
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130317_ 'methods)))
                         (__tmp135653
                          (let () (declare (not safe)) (gx#stx-e _L131141_))))
                     (declare (not safe))
                     (hash-put! __tmp135654 __tmp135653 '#t))
                   (for-each
                    (lambda (_g131184131186_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130317_ _g131184131186_)))
                    (let ((__tmp135655
                           (lambda (_g131188131191_ _g131189131193_)
                             (let ()
                               (declare (not safe))
                               (cons _g131188131191_ _g131189131193_)))))
                      (declare (not safe))
                      (foldr1 __tmp135655 '() _L131140_)))))
                (___kont134381134382_
                 (lambda (_L130973_ _L130974_ _L130975_)
                   (let ((__tmp135657
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130317_ 'slots)))
                         (__tmp135656
                          (let () (declare (not safe)) (gx#stx-e _L130973_))))
                     (declare (not safe))
                     (hash-put! __tmp135657 __tmp135656 '#t))))
                (___kont134383134384_
                 (lambda (_L130850_ _L130851_ _L130852_ _L130853_)
                   (let ((__tmp135659
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130317_ 'slots)))
                         (__tmp135658
                          (let () (declare (not safe)) (gx#stx-e _L130851_))))
                     (declare (not safe))
                     (hash-put! __tmp135659 __tmp135658 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self130317_ _L130850_))))
                (___kont134385134386_
                 (lambda (_L130724_ _L130725_)
                   (let* ((_accessor130747_
                           (let ((__tmp135660
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130725_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135660)))
                          (_klass130749_
                           (let ((__tmp135661
                                  (##structure-ref
                                   _accessor130747_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130318_
                              __tmp135661)))
                          (_slot130751_
                           (##structure-ref
                            _accessor130747_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135664
                                     (##structure-ref
                                      _accessor130747_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135664))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130749_
                                     _slot130751_))
                                  (##structure-ref
                                   _klass130749_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135663
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130317_ 'slots)))
                               (__tmp135662
                                (##structure-ref
                                 _accessor130747_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp135663 __tmp135662 '#t))))))
                (___kont134387134388_
                 (lambda (_L130624_ _L130625_ _L130626_)
                   (let* ((_mutator130653_
                           (let ((__tmp135665
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130626_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135665)))
                          (_klass130655_
                           (let ((__tmp135666
                                  (##structure-ref
                                   _mutator130653_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130318_
                              __tmp135666)))
                          (_slot130657_
                           (##structure-ref
                            _mutator130653_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135668
                                     (##structure-ref
                                      _mutator130653_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135668))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130655_
                                     _slot130657_))
                                  (##structure-ref
                                   _klass130655_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135667
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130317_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp135667 _slot130657_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self130317_ _L130624_)))))
                (___kont134389134390_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self130317_ _stx130318_)))))
            (let* ((___match134870134871_
                    (lambda (_e130522130560_
                             _hd130521130563_
                             _tl130520130565_
                             _e130525130568_
                             _hd130524130571_
                             _tl130523130573_
                             _e130528130576_
                             _hd130527130579_
                             _tl130526130581_
                             _e130531130584_
                             _hd130530130587_
                             _tl130529130589_
                             _e130534130592_
                             _hd130533130595_
                             _tl130532130597_
                             _e130537130600_
                             _hd130536130603_
                             _tl130535130605_
                             _e130540130608_
                             _hd130539130611_
                             _tl130538130613_
                             _e130543130616_
                             _hd130542130619_
                             _tl130541130621_)
                      (let ((_L130624_ _hd130542130619_)
                            (_L130625_ _hd130539130611_)
                            (_L130626_ _hd130530130587_))
                        (if (and (let ((__tmp135670
                                        (let ((__tmp135671
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130626_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135671))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135670
                                    'gxc#!mutator::t))
                                 (let ((__tmp135669
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130317_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130625_
                                    __tmp135669)))
                            (___kont134387134388_
                             _L130624_
                             _L130625_
                             _L130626_)
                            (___kont134389134390_)))))
                   (___match134868134869_
                    (lambda (_e130522130560_
                             _hd130521130563_
                             _tl130520130565_
                             _e130525130568_
                             _hd130524130571_
                             _tl130523130573_
                             _e130528130576_
                             _hd130527130579_
                             _tl130526130581_
                             _e130531130584_
                             _hd130530130587_
                             _tl130529130589_
                             _e130534130592_
                             _hd130533130595_
                             _tl130532130597_
                             _e130537130600_
                             _hd130536130603_
                             _tl130535130605_
                             _e130540130608_
                             _hd130539130611_
                             _tl130538130613_
                             _e130543130616_
                             _hd130542130619_
                             _tl130541130621_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130541130621_))
                          (___match134870134871_
                           _e130522130560_
                           _hd130521130563_
                           _tl130520130565_
                           _e130525130568_
                           _hd130524130571_
                           _tl130523130573_
                           _e130528130576_
                           _hd130527130579_
                           _tl130526130581_
                           _e130531130584_
                           _hd130530130587_
                           _tl130529130589_
                           _e130534130592_
                           _hd130533130595_
                           _tl130532130597_
                           _e130537130600_
                           _hd130536130603_
                           _tl130535130605_
                           _e130540130608_
                           _hd130539130611_
                           _tl130538130613_
                           _e130543130616_
                           _hd130542130619_
                           _tl130541130621_)
                          (___kont134389134390_))))
                   (___match134862134863_
                    (lambda (_e130522130560_
                             _hd130521130563_
                             _tl130520130565_
                             _e130525130568_
                             _hd130524130571_
                             _tl130523130573_
                             _e130528130576_
                             _hd130527130579_
                             _tl130526130581_
                             _e130531130584_
                             _hd130530130587_
                             _tl130529130589_
                             _e130534130592_
                             _hd130533130595_
                             _tl130532130597_
                             _e130537130600_
                             _hd130536130603_
                             _tl130535130605_
                             _e130540130608_
                             _hd130539130611_
                             _tl130538130613_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130532130597_))
                          (let ((_e130543130616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130532130597_))))
                            (let ((_tl130541130621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130543130616_)))
                                  (_hd130542130619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130543130616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130541130621_))
                                  (___match134870134871_
                                   _e130522130560_
                                   _hd130521130563_
                                   _tl130520130565_
                                   _e130525130568_
                                   _hd130524130571_
                                   _tl130523130573_
                                   _e130528130576_
                                   _hd130527130579_
                                   _tl130526130581_
                                   _e130531130584_
                                   _hd130530130587_
                                   _tl130529130589_
                                   _e130534130592_
                                   _hd130533130595_
                                   _tl130532130597_
                                   _e130537130600_
                                   _hd130536130603_
                                   _tl130535130605_
                                   _e130540130608_
                                   _hd130539130611_
                                   _tl130538130613_
                                   _e130543130616_
                                   _hd130542130619_
                                   _tl130541130621_)
                                  (___kont134389134390_))))
                          (___kont134389134390_))))
                   (___match134808134809_
                    (lambda (_e130498130668_
                             _hd130497130671_
                             _tl130496130673_
                             _e130501130676_
                             _hd130500130679_
                             _tl130499130681_
                             _e130504130684_
                             _hd130503130687_
                             _tl130502130689_
                             _e130507130692_
                             _hd130506130695_
                             _tl130505130697_
                             _e130510130700_
                             _hd130509130703_
                             _tl130508130705_
                             _e130513130708_
                             _hd130512130711_
                             _tl130511130713_
                             _e130516130716_
                             _hd130515130719_
                             _tl130514130721_)
                      (let ((_L130724_ _hd130515130719_)
                            (_L130725_ _hd130506130695_))
                        (if (and (let ((__tmp135673
                                        (let ((__tmp135674
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130725_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135674))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135673
                                    'gxc#!accessor::t))
                                 (let ((__tmp135672
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130317_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130724_
                                    __tmp135672)))
                            (___kont134385134386_ _L130724_ _L130725_)
                            (___kont134389134390_)))))
                   (___match134806134807_
                    (lambda (_e130498130668_
                             _hd130497130671_
                             _tl130496130673_
                             _e130501130676_
                             _hd130500130679_
                             _tl130499130681_
                             _e130504130684_
                             _hd130503130687_
                             _tl130502130689_
                             _e130507130692_
                             _hd130506130695_
                             _tl130505130697_
                             _e130510130700_
                             _hd130509130703_
                             _tl130508130705_
                             _e130513130708_
                             _hd130512130711_
                             _tl130511130713_
                             _e130516130716_
                             _hd130515130719_
                             _tl130514130721_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130508130705_))
                          (___match134808134809_
                           _e130498130668_
                           _hd130497130671_
                           _tl130496130673_
                           _e130501130676_
                           _hd130500130679_
                           _tl130499130681_
                           _e130504130684_
                           _hd130503130687_
                           _tl130502130689_
                           _e130507130692_
                           _hd130506130695_
                           _tl130505130697_
                           _e130510130700_
                           _hd130509130703_
                           _tl130508130705_
                           _e130513130708_
                           _hd130512130711_
                           _tl130511130713_
                           _e130516130716_
                           _hd130515130719_
                           _tl130514130721_)
                          (___match134862134863_
                           _e130498130668_
                           _hd130497130671_
                           _tl130496130673_
                           _e130501130676_
                           _hd130500130679_
                           _tl130499130681_
                           _e130504130684_
                           _hd130503130687_
                           _tl130502130689_
                           _e130507130692_
                           _hd130506130695_
                           _tl130505130697_
                           _e130510130700_
                           _hd130509130703_
                           _tl130508130705_
                           _e130513130708_
                           _hd130512130711_
                           _tl130511130713_
                           _e130516130716_
                           _hd130515130719_
                           _tl130514130721_))))
                   (___match134752134753_
                    (lambda (_e130463130762_
                             _hd130462130765_
                             _tl130461130767_
                             _e130466130770_
                             _hd130465130773_
                             _tl130464130775_
                             _e130469130778_
                             _hd130468130781_
                             _tl130467130783_
                             _e130472130786_
                             _hd130471130789_
                             _tl130470130791_
                             _e130475130794_
                             _hd130474130797_
                             _tl130473130799_
                             _e130478130802_
                             _hd130477130805_
                             _tl130476130807_
                             _e130481130810_
                             _hd130480130813_
                             _tl130479130815_
                             _e130484130818_
                             _hd130483130821_
                             _tl130482130823_
                             _e130487130826_
                             _hd130486130829_
                             _tl130485130831_
                             _e130490130834_
                             _hd130489130837_
                             _tl130488130839_
                             _e130493130842_
                             _hd130492130845_
                             _tl130491130847_)
                      (let ((_L130850_ _hd130492130845_)
                            (_L130851_ _hd130489130837_)
                            (_L130852_ _hd130480130813_)
                            (_L130853_ _hd130471130789_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130853_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130853_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp135675
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130317_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130852_
                                    __tmp135675)))
                            (___kont134383134384_
                             _L130850_
                             _L130851_
                             _L130852_
                             _L130853_)
                            (___kont134389134390_)))))
                   (___match134744134745_
                    (lambda (_e130463130762_
                             _hd130462130765_
                             _tl130461130767_
                             _e130466130770_
                             _hd130465130773_
                             _tl130464130775_
                             _e130469130778_
                             _hd130468130781_
                             _tl130467130783_
                             _e130472130786_
                             _hd130471130789_
                             _tl130470130791_
                             _e130475130794_
                             _hd130474130797_
                             _tl130473130799_
                             _e130478130802_
                             _hd130477130805_
                             _tl130476130807_
                             _e130481130810_
                             _hd130480130813_
                             _tl130479130815_
                             _e130484130818_
                             _hd130483130821_
                             _tl130482130823_
                             _e130487130826_
                             _hd130486130829_
                             _tl130485130831_
                             _e130490130834_
                             _hd130489130837_
                             _tl130488130839_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130482130823_))
                          (let ((_e130493130842_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130482130823_))))
                            (let ((_tl130491130847_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130493130842_)))
                                  (_hd130492130845_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130493130842_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130491130847_))
                                  (___match134752134753_
                                   _e130463130762_
                                   _hd130462130765_
                                   _tl130461130767_
                                   _e130466130770_
                                   _hd130465130773_
                                   _tl130464130775_
                                   _e130469130778_
                                   _hd130468130781_
                                   _tl130467130783_
                                   _e130472130786_
                                   _hd130471130789_
                                   _tl130470130791_
                                   _e130475130794_
                                   _hd130474130797_
                                   _tl130473130799_
                                   _e130478130802_
                                   _hd130477130805_
                                   _tl130476130807_
                                   _e130481130810_
                                   _hd130480130813_
                                   _tl130479130815_
                                   _e130484130818_
                                   _hd130483130821_
                                   _tl130482130823_
                                   _e130487130826_
                                   _hd130486130829_
                                   _tl130485130831_
                                   _e130490130834_
                                   _hd130489130837_
                                   _tl130488130839_
                                   _e130493130842_
                                   _hd130492130845_
                                   _tl130491130847_)
                                  (___kont134389134390_))))
                          (___match134868134869_
                           _e130463130762_
                           _hd130462130765_
                           _tl130461130767_
                           _e130466130770_
                           _hd130465130773_
                           _tl130464130775_
                           _e130469130778_
                           _hd130468130781_
                           _tl130467130783_
                           _e130472130786_
                           _hd130471130789_
                           _tl130470130791_
                           _e130475130794_
                           _hd130474130797_
                           _tl130473130799_
                           _e130478130802_
                           _hd130477130805_
                           _tl130476130807_
                           _e130481130810_
                           _hd130480130813_
                           _tl130479130815_
                           _e130484130818_
                           _hd130483130821_
                           _tl130482130823_))))
                   (___match134666134667_
                    (lambda (_e130429130893_
                             _hd130428130896_
                             _tl130427130898_
                             _e130432130901_
                             _hd130431130904_
                             _tl130430130906_
                             _e130435130909_
                             _hd130434130912_
                             _tl130433130914_
                             _e130438130917_
                             _hd130437130920_
                             _tl130436130922_
                             _e130441130925_
                             _hd130440130928_
                             _tl130439130930_
                             _e130444130933_
                             _hd130443130936_
                             _tl130442130938_
                             _e130447130941_
                             _hd130446130944_
                             _tl130445130946_
                             _e130450130949_
                             _hd130449130952_
                             _tl130448130954_
                             _e130453130957_
                             _hd130452130960_
                             _tl130451130962_
                             _e130456130965_
                             _hd130455130968_
                             _tl130454130970_)
                      (let ((_L130973_ _hd130455130968_)
                            (_L130974_ _hd130446130944_)
                            (_L130975_ _hd130437130920_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130975_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130975_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp135676
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130317_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130974_
                                    __tmp135676)))
                            (___kont134381134382_
                             _L130973_
                             _L130974_
                             _L130975_)
                            (___match134870134871_
                             _e130429130893_
                             _hd130428130896_
                             _tl130427130898_
                             _e130432130901_
                             _hd130431130904_
                             _tl130430130906_
                             _e130435130909_
                             _hd130434130912_
                             _tl130433130914_
                             _e130438130917_
                             _hd130437130920_
                             _tl130436130922_
                             _e130441130925_
                             _hd130440130928_
                             _tl130439130930_
                             _e130444130933_
                             _hd130443130936_
                             _tl130442130938_
                             _e130447130941_
                             _hd130446130944_
                             _tl130445130946_
                             _e130450130949_
                             _hd130449130952_
                             _tl130448130954_)))))
                   (___match134664134665_
                    (lambda (_e130429130893_
                             _hd130428130896_
                             _tl130427130898_
                             _e130432130901_
                             _hd130431130904_
                             _tl130430130906_
                             _e130435130909_
                             _hd130434130912_
                             _tl130433130914_
                             _e130438130917_
                             _hd130437130920_
                             _tl130436130922_
                             _e130441130925_
                             _hd130440130928_
                             _tl130439130930_
                             _e130444130933_
                             _hd130443130936_
                             _tl130442130938_
                             _e130447130941_
                             _hd130446130944_
                             _tl130445130946_
                             _e130450130949_
                             _hd130449130952_
                             _tl130448130954_
                             _e130453130957_
                             _hd130452130960_
                             _tl130451130962_
                             _e130456130965_
                             _hd130455130968_
                             _tl130454130970_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130448130954_))
                          (___match134666134667_
                           _e130429130893_
                           _hd130428130896_
                           _tl130427130898_
                           _e130432130901_
                           _hd130431130904_
                           _tl130430130906_
                           _e130435130909_
                           _hd130434130912_
                           _tl130433130914_
                           _e130438130917_
                           _hd130437130920_
                           _tl130436130922_
                           _e130441130925_
                           _hd130440130928_
                           _tl130439130930_
                           _e130444130933_
                           _hd130443130936_
                           _tl130442130938_
                           _e130447130941_
                           _hd130446130944_
                           _tl130445130946_
                           _e130450130949_
                           _hd130449130952_
                           _tl130448130954_
                           _e130453130957_
                           _hd130452130960_
                           _tl130451130962_
                           _e130456130965_
                           _hd130455130968_
                           _tl130454130970_)
                          (___match134744134745_
                           _e130429130893_
                           _hd130428130896_
                           _tl130427130898_
                           _e130432130901_
                           _hd130431130904_
                           _tl130430130906_
                           _e130435130909_
                           _hd130434130912_
                           _tl130433130914_
                           _e130438130917_
                           _hd130437130920_
                           _tl130436130922_
                           _e130441130925_
                           _hd130440130928_
                           _tl130439130930_
                           _e130444130933_
                           _hd130443130936_
                           _tl130442130938_
                           _e130447130941_
                           _hd130446130944_
                           _tl130445130946_
                           _e130450130949_
                           _hd130449130952_
                           _tl130448130954_
                           _e130453130957_
                           _hd130452130960_
                           _tl130451130962_
                           _e130456130965_
                           _hd130455130968_
                           _tl130454130970_))))
                   (___match134654134655_
                    (lambda (_e130429130893_
                             _hd130428130896_
                             _tl130427130898_
                             _e130432130901_
                             _hd130431130904_
                             _tl130430130906_
                             _e130435130909_
                             _hd130434130912_
                             _tl130433130914_
                             _e130438130917_
                             _hd130437130920_
                             _tl130436130922_
                             _e130441130925_
                             _hd130440130928_
                             _tl130439130930_
                             _e130444130933_
                             _hd130443130936_
                             _tl130442130938_
                             _e130447130941_
                             _hd130446130944_
                             _tl130445130946_
                             _e130450130949_
                             _hd130449130952_
                             _tl130448130954_
                             _e130453130957_
                             _hd130452130960_
                             _tl130451130962_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130452130960_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130451130962_))
                              (let ((_e130456130965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130451130962_))))
                                (let ((_tl130454130970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130456130965_)))
                                      (_hd130455130968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130456130965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130454130970_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130448130954_))
                                          (___match134666134667_
                                           _e130429130893_
                                           _hd130428130896_
                                           _tl130427130898_
                                           _e130432130901_
                                           _hd130431130904_
                                           _tl130430130906_
                                           _e130435130909_
                                           _hd130434130912_
                                           _tl130433130914_
                                           _e130438130917_
                                           _hd130437130920_
                                           _tl130436130922_
                                           _e130441130925_
                                           _hd130440130928_
                                           _tl130439130930_
                                           _e130444130933_
                                           _hd130443130936_
                                           _tl130442130938_
                                           _e130447130941_
                                           _hd130446130944_
                                           _tl130445130946_
                                           _e130450130949_
                                           _hd130449130952_
                                           _tl130448130954_
                                           _e130453130957_
                                           _hd130452130960_
                                           _tl130451130962_
                                           _e130456130965_
                                           _hd130455130968_
                                           _tl130454130970_)
                                          (___match134744134745_
                                           _e130429130893_
                                           _hd130428130896_
                                           _tl130427130898_
                                           _e130432130901_
                                           _hd130431130904_
                                           _tl130430130906_
                                           _e130435130909_
                                           _hd130434130912_
                                           _tl130433130914_
                                           _e130438130917_
                                           _hd130437130920_
                                           _tl130436130922_
                                           _e130441130925_
                                           _hd130440130928_
                                           _tl130439130930_
                                           _e130444130933_
                                           _hd130443130936_
                                           _tl130442130938_
                                           _e130447130941_
                                           _hd130446130944_
                                           _tl130445130946_
                                           _e130450130949_
                                           _hd130449130952_
                                           _tl130448130954_
                                           _e130453130957_
                                           _hd130452130960_
                                           _tl130451130962_
                                           _e130456130965_
                                           _hd130455130968_
                                           _tl130454130970_))
                                      (___match134868134869_
                                       _e130429130893_
                                       _hd130428130896_
                                       _tl130427130898_
                                       _e130432130901_
                                       _hd130431130904_
                                       _tl130430130906_
                                       _e130435130909_
                                       _hd130434130912_
                                       _tl130433130914_
                                       _e130438130917_
                                       _hd130437130920_
                                       _tl130436130922_
                                       _e130441130925_
                                       _hd130440130928_
                                       _tl130439130930_
                                       _e130444130933_
                                       _hd130443130936_
                                       _tl130442130938_
                                       _e130447130941_
                                       _hd130446130944_
                                       _tl130445130946_
                                       _e130450130949_
                                       _hd130449130952_
                                       _tl130448130954_))))
                              (___match134868134869_
                               _e130429130893_
                               _hd130428130896_
                               _tl130427130898_
                               _e130432130901_
                               _hd130431130904_
                               _tl130430130906_
                               _e130435130909_
                               _hd130434130912_
                               _tl130433130914_
                               _e130438130917_
                               _hd130437130920_
                               _tl130436130922_
                               _e130441130925_
                               _hd130440130928_
                               _tl130439130930_
                               _e130444130933_
                               _hd130443130936_
                               _tl130442130938_
                               _e130447130941_
                               _hd130446130944_
                               _tl130445130946_
                               _e130450130949_
                               _hd130449130952_
                               _tl130448130954_))
                          (___match134868134869_
                           _e130429130893_
                           _hd130428130896_
                           _tl130427130898_
                           _e130432130901_
                           _hd130431130904_
                           _tl130430130906_
                           _e130435130909_
                           _hd130434130912_
                           _tl130433130914_
                           _e130438130917_
                           _hd130437130920_
                           _tl130436130922_
                           _e130441130925_
                           _hd130440130928_
                           _tl130439130930_
                           _e130444130933_
                           _hd130443130936_
                           _tl130442130938_
                           _e130447130941_
                           _hd130446130944_
                           _tl130445130946_
                           _e130450130949_
                           _hd130449130952_
                           _tl130448130954_))))
                   (___match134586134587_
                    (lambda (_e130378131012_
                             _hd130377131015_
                             _tl130376131017_
                             _e130381131020_
                             _hd130380131023_
                             _tl130379131025_
                             _e130384131028_
                             _hd130383131031_
                             _tl130382131033_
                             _e130387131036_
                             _hd130386131039_
                             _tl130385131041_
                             _e130390131044_
                             _hd130389131047_
                             _tl130388131049_
                             _e130393131052_
                             _hd130392131055_
                             _tl130391131057_
                             _e130396131060_
                             _hd130395131063_
                             _tl130394131065_
                             _e130399131068_
                             _hd130398131071_
                             _tl130397131073_
                             _e130402131076_
                             _hd130401131079_
                             _tl130400131081_
                             _e130405131084_
                             _hd130404131087_
                             _tl130403131089_
                             _e130408131092_
                             _hd130407131095_
                             _tl130406131097_
                             _e130411131100_
                             _hd130410131103_
                             _tl130409131105_
                             _e130414131108_
                             _hd130413131111_
                             _tl130412131113_
                             ___splice134379134380_
                             _target130415131116_
                             _tl130417131118_)
                      (letrec ((_loop130418131121_
                                (lambda (_hd130416131124_ _args130422131126_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130416131124_))
                                      (let ((_e130419131129_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130416131124_))))
                                        (let ((_lp-tl130421131134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130419131129_)))
                                              (_lp-hd130420131132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130419131129_))))
                                          (let ((__tmp135678
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130420131132_
                                                         _args130422131126_))))
                                            (declare (not safe))
                                            (_loop130418131121_
                                             _lp-tl130421131134_
                                             __tmp135678))))
                                      (let ((_args130423131137_
                                             (reverse _args130422131126_)))
                                        (let ((_L131140_ _args130423131137_)
                                              (_L131141_ _hd130413131111_)
                                              (_L131142_ _hd130404131087_)
                                              (_L131143_ _hd130395131063_)
                                              (_L131144_ _hd130386131039_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131144_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131143_
                                                      'call-method))
                                                   (let ((__tmp135677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130317_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131142_
                                                      __tmp135677)))
                                              (___kont134377134378_
                                               _L131140_
                                               _L131141_
                                               _L131142_
                                               _L131143_
                                               _L131144_)
                                              (___kont134389134390_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130418131121_ _target130415131116_ '())))))
                   (___match134544134545_
                    (lambda (_e130378131012_
                             _hd130377131015_
                             _tl130376131017_
                             _e130381131020_
                             _hd130380131023_
                             _tl130379131025_
                             _e130384131028_
                             _hd130383131031_
                             _tl130382131033_
                             _e130387131036_
                             _hd130386131039_
                             _tl130385131041_
                             _e130390131044_
                             _hd130389131047_
                             _tl130388131049_
                             _e130393131052_
                             _hd130392131055_
                             _tl130391131057_
                             _e130396131060_
                             _hd130395131063_
                             _tl130394131065_
                             _e130399131068_
                             _hd130398131071_
                             _tl130397131073_
                             _e130402131076_
                             _hd130401131079_
                             _tl130400131081_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130401131079_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130400131081_))
                              (let ((_e130405131084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130400131081_))))
                                (let ((_tl130403131089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130405131084_)))
                                      (_hd130404131087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130405131084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130403131089_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130397131073_))
                                          (let ((_e130408131092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130397131073_))))
                                            (let ((_tl130406131097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130408131092_)))
                                                  (_hd130407131095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130408131092_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130407131095_))
                                                  (let ((_e130411131100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130407131095_))))
                                                    (let ((_tl130409131105_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130411131100_)))
                                                          (_hd130410131103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130411131100_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130410131103_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130410131103_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130409131105_))
                          (let ((_e130414131108_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130409131105_))))
                            (let ((_tl130412131113_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130414131108_)))
                                  (_hd130413131111_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130414131108_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130412131113_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130406131097_))
                                      (let ((___splice134379134380_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130406131097_
                                                '0))))
                                        (let ((_tl130417131118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134379134380_
                                                  '1)))
                                              (_target130415131116_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134379134380_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130417131118_))
                                              (___match134586134587_
                                               _e130378131012_
                                               _hd130377131015_
                                               _tl130376131017_
                                               _e130381131020_
                                               _hd130380131023_
                                               _tl130379131025_
                                               _e130384131028_
                                               _hd130383131031_
                                               _tl130382131033_
                                               _e130387131036_
                                               _hd130386131039_
                                               _tl130385131041_
                                               _e130390131044_
                                               _hd130389131047_
                                               _tl130388131049_
                                               _e130393131052_
                                               _hd130392131055_
                                               _tl130391131057_
                                               _e130396131060_
                                               _hd130395131063_
                                               _tl130394131065_
                                               _e130399131068_
                                               _hd130398131071_
                                               _tl130397131073_
                                               _e130402131076_
                                               _hd130401131079_
                                               _tl130400131081_
                                               _e130405131084_
                                               _hd130404131087_
                                               _tl130403131089_
                                               _e130408131092_
                                               _hd130407131095_
                                               _tl130406131097_
                                               _e130411131100_
                                               _hd130410131103_
                                               _tl130409131105_
                                               _e130414131108_
                                               _hd130413131111_
                                               _tl130412131113_
                                               ___splice134379134380_
                                               _target130415131116_
                                               _tl130417131118_)
                                              (___kont134389134390_))))
                                      (___kont134389134390_))
                                  (___kont134389134390_))))
                          (___kont134389134390_))
                      (___kont134389134390_))
                  (___kont134389134390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134389134390_))))
                                          (___match134868134869_
                                           _e130378131012_
                                           _hd130377131015_
                                           _tl130376131017_
                                           _e130381131020_
                                           _hd130380131023_
                                           _tl130379131025_
                                           _e130384131028_
                                           _hd130383131031_
                                           _tl130382131033_
                                           _e130387131036_
                                           _hd130386131039_
                                           _tl130385131041_
                                           _e130390131044_
                                           _hd130389131047_
                                           _tl130388131049_
                                           _e130393131052_
                                           _hd130392131055_
                                           _tl130391131057_
                                           _e130396131060_
                                           _hd130395131063_
                                           _tl130394131065_
                                           _e130399131068_
                                           _hd130398131071_
                                           _tl130397131073_))
                                      (___match134868134869_
                                       _e130378131012_
                                       _hd130377131015_
                                       _tl130376131017_
                                       _e130381131020_
                                       _hd130380131023_
                                       _tl130379131025_
                                       _e130384131028_
                                       _hd130383131031_
                                       _tl130382131033_
                                       _e130387131036_
                                       _hd130386131039_
                                       _tl130385131041_
                                       _e130390131044_
                                       _hd130389131047_
                                       _tl130388131049_
                                       _e130393131052_
                                       _hd130392131055_
                                       _tl130391131057_
                                       _e130396131060_
                                       _hd130395131063_
                                       _tl130394131065_
                                       _e130399131068_
                                       _hd130398131071_
                                       _tl130397131073_))))
                              (___match134868134869_
                               _e130378131012_
                               _hd130377131015_
                               _tl130376131017_
                               _e130381131020_
                               _hd130380131023_
                               _tl130379131025_
                               _e130384131028_
                               _hd130383131031_
                               _tl130382131033_
                               _e130387131036_
                               _hd130386131039_
                               _tl130385131041_
                               _e130390131044_
                               _hd130389131047_
                               _tl130388131049_
                               _e130393131052_
                               _hd130392131055_
                               _tl130391131057_
                               _e130396131060_
                               _hd130395131063_
                               _tl130394131065_
                               _e130399131068_
                               _hd130398131071_
                               _tl130397131073_))
                          (___match134654134655_
                           _e130378131012_
                           _hd130377131015_
                           _tl130376131017_
                           _e130381131020_
                           _hd130380131023_
                           _tl130379131025_
                           _e130384131028_
                           _hd130383131031_
                           _tl130382131033_
                           _e130387131036_
                           _hd130386131039_
                           _tl130385131041_
                           _e130390131044_
                           _hd130389131047_
                           _tl130388131049_
                           _e130393131052_
                           _hd130392131055_
                           _tl130391131057_
                           _e130396131060_
                           _hd130395131063_
                           _tl130394131065_
                           _e130399131068_
                           _hd130398131071_
                           _tl130397131073_
                           _e130402131076_
                           _hd130401131079_
                           _tl130400131081_))))
                   (___match134476134477_
                    (lambda (_e130334131201_
                             _hd130333131204_
                             _tl130332131206_
                             _e130337131209_
                             _hd130336131212_
                             _tl130335131214_
                             _e130340131217_
                             _hd130339131220_
                             _tl130338131222_
                             _e130343131225_
                             _hd130342131228_
                             _tl130341131230_
                             _e130346131233_
                             _hd130345131236_
                             _tl130344131238_
                             _e130349131241_
                             _hd130348131244_
                             _tl130347131246_
                             _e130352131249_
                             _hd130351131252_
                             _tl130350131254_
                             _e130355131257_
                             _hd130354131260_
                             _tl130353131262_
                             _e130358131265_
                             _hd130357131268_
                             _tl130356131270_
                             _e130361131273_
                             _hd130360131276_
                             _tl130359131278_
                             ___splice134375134376_
                             _target130362131281_
                             _tl130364131283_)
                      (letrec ((_loop130365131286_
                                (lambda (_hd130363131289_ _args130369131291_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130363131289_))
                                      (let ((_e130366131294_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130363131289_))))
                                        (let ((_lp-tl130368131299_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130366131294_)))
                                              (_lp-hd130367131297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130366131294_))))
                                          (let ((__tmp135680
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130367131297_
                                                         _args130369131291_))))
                                            (declare (not safe))
                                            (_loop130365131286_
                                             _lp-tl130368131299_
                                             __tmp135680))))
                                      (let ((_args130370131302_
                                             (reverse _args130369131291_)))
                                        (let ((_L131305_ _args130370131302_)
                                              (_L131306_ _hd130360131276_)
                                              (_L131307_ _hd130351131252_)
                                              (_L131308_ _hd130342131228_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131308_
                                                      'call-method))
                                                   (let ((__tmp135679
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130317_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131307_
                                                      __tmp135679)))
                                              (___kont134373134374_
                                               _L131305_
                                               _L131306_
                                               _L131307_
                                               _L131308_)
                                              (___match134664134665_
                                               _e130334131201_
                                               _hd130333131204_
                                               _tl130332131206_
                                               _e130337131209_
                                               _hd130336131212_
                                               _tl130335131214_
                                               _e130340131217_
                                               _hd130339131220_
                                               _tl130338131222_
                                               _e130343131225_
                                               _hd130342131228_
                                               _tl130341131230_
                                               _e130346131233_
                                               _hd130345131236_
                                               _tl130344131238_
                                               _e130349131241_
                                               _hd130348131244_
                                               _tl130347131246_
                                               _e130352131249_
                                               _hd130351131252_
                                               _tl130350131254_
                                               _e130355131257_
                                               _hd130354131260_
                                               _tl130353131262_
                                               _e130358131265_
                                               _hd130357131268_
                                               _tl130356131270_
                                               _e130361131273_
                                               _hd130360131276_
                                               _tl130359131278_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130365131286_ _target130362131281_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134371134372_))
                  (let ((_e130334131201_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134371134372_))))
                    (let ((_tl130332131206_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130334131201_)))
                          (_hd130333131204_
                           (let ()
                             (declare (not safe))
                             (##car _e130334131201_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130332131206_))
                          (let ((_e130337131209_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130332131206_))))
                            (let ((_tl130335131214_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130337131209_)))
                                  (_hd130336131212_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130337131209_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130336131212_))
                                  (let ((_e130340131217_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130336131212_))))
                                    (let ((_tl130338131222_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130340131217_)))
                                          (_hd130339131220_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130340131217_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130339131220_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130339131220_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130338131222_))
                                                  (let ((_e130343131225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130338131222_))))
                                                    (let ((_tl130341131230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130343131225_)))
                                                          (_hd130342131228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130343131225_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130341131230_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130335131214_))
                      (let ((_e130346131233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130335131214_))))
                        (let ((_tl130344131238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130346131233_)))
                              (_hd130345131236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130346131233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130345131236_))
                              (let ((_e130349131241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130345131236_))))
                                (let ((_tl130347131246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130349131241_)))
                                      (_hd130348131244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130349131241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130348131244_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130348131244_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130347131246_))
                                              (let ((_e130352131249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130347131246_))))
                                                (let ((_tl130350131254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130352131249_)))
                                                      (_hd130351131252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130352131249_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130350131254_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130344131238_))
                                                          (let ((_e130355131257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130344131238_))))
                    (let ((_tl130353131262_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130355131257_)))
                          (_hd130354131260_
                           (let ()
                             (declare (not safe))
                             (##car _e130355131257_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130354131260_))
                          (let ((_e130358131265_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130354131260_))))
                            (let ((_tl130356131270_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130358131265_)))
                                  (_hd130357131268_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130358131265_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130357131268_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130357131268_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130356131270_))
                                          (let ((_e130361131273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130356131270_))))
                                            (let ((_tl130359131278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130361131273_)))
                                                  (_hd130360131276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130361131273_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130359131278_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130353131262_))
                                                      (let ((___splice134375134376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130353131262_ '0))))
                (let ((_tl130364131283_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134375134376_ '1)))
                      (_target130362131281_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134375134376_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130364131283_))
                      (___match134476134477_
                       _e130334131201_
                       _hd130333131204_
                       _tl130332131206_
                       _e130337131209_
                       _hd130336131212_
                       _tl130335131214_
                       _e130340131217_
                       _hd130339131220_
                       _tl130338131222_
                       _e130343131225_
                       _hd130342131228_
                       _tl130341131230_
                       _e130346131233_
                       _hd130345131236_
                       _tl130344131238_
                       _e130349131241_
                       _hd130348131244_
                       _tl130347131246_
                       _e130352131249_
                       _hd130351131252_
                       _tl130350131254_
                       _e130355131257_
                       _hd130354131260_
                       _tl130353131262_
                       _e130358131265_
                       _hd130357131268_
                       _tl130356131270_
                       _e130361131273_
                       _hd130360131276_
                       _tl130359131278_
                       ___splice134375134376_
                       _target130362131281_
                       _tl130364131283_)
                      (___match134664134665_
                       _e130334131201_
                       _hd130333131204_
                       _tl130332131206_
                       _e130337131209_
                       _hd130336131212_
                       _tl130335131214_
                       _e130340131217_
                       _hd130339131220_
                       _tl130338131222_
                       _e130343131225_
                       _hd130342131228_
                       _tl130341131230_
                       _e130346131233_
                       _hd130345131236_
                       _tl130344131238_
                       _e130349131241_
                       _hd130348131244_
                       _tl130347131246_
                       _e130352131249_
                       _hd130351131252_
                       _tl130350131254_
                       _e130355131257_
                       _hd130354131260_
                       _tl130353131262_
                       _e130358131265_
                       _hd130357131268_
                       _tl130356131270_
                       _e130361131273_
                       _hd130360131276_
                       _tl130359131278_))))
              (___match134664134665_
               _e130334131201_
               _hd130333131204_
               _tl130332131206_
               _e130337131209_
               _hd130336131212_
               _tl130335131214_
               _e130340131217_
               _hd130339131220_
               _tl130338131222_
               _e130343131225_
               _hd130342131228_
               _tl130341131230_
               _e130346131233_
               _hd130345131236_
               _tl130344131238_
               _e130349131241_
               _hd130348131244_
               _tl130347131246_
               _e130352131249_
               _hd130351131252_
               _tl130350131254_
               _e130355131257_
               _hd130354131260_
               _tl130353131262_
               _e130358131265_
               _hd130357131268_
               _tl130356131270_
               _e130361131273_
               _hd130360131276_
               _tl130359131278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134868134869_
                                                   _e130334131201_
                                                   _hd130333131204_
                                                   _tl130332131206_
                                                   _e130337131209_
                                                   _hd130336131212_
                                                   _tl130335131214_
                                                   _e130340131217_
                                                   _hd130339131220_
                                                   _tl130338131222_
                                                   _e130343131225_
                                                   _hd130342131228_
                                                   _tl130341131230_
                                                   _e130346131233_
                                                   _hd130345131236_
                                                   _tl130344131238_
                                                   _e130349131241_
                                                   _hd130348131244_
                                                   _tl130347131246_
                                                   _e130352131249_
                                                   _hd130351131252_
                                                   _tl130350131254_
                                                   _e130355131257_
                                                   _hd130354131260_
                                                   _tl130353131262_))))
                                          (___match134868134869_
                                           _e130334131201_
                                           _hd130333131204_
                                           _tl130332131206_
                                           _e130337131209_
                                           _hd130336131212_
                                           _tl130335131214_
                                           _e130340131217_
                                           _hd130339131220_
                                           _tl130338131222_
                                           _e130343131225_
                                           _hd130342131228_
                                           _tl130341131230_
                                           _e130346131233_
                                           _hd130345131236_
                                           _tl130344131238_
                                           _e130349131241_
                                           _hd130348131244_
                                           _tl130347131246_
                                           _e130352131249_
                                           _hd130351131252_
                                           _tl130350131254_
                                           _e130355131257_
                                           _hd130354131260_
                                           _tl130353131262_))
                                      (___match134544134545_
                                       _e130334131201_
                                       _hd130333131204_
                                       _tl130332131206_
                                       _e130337131209_
                                       _hd130336131212_
                                       _tl130335131214_
                                       _e130340131217_
                                       _hd130339131220_
                                       _tl130338131222_
                                       _e130343131225_
                                       _hd130342131228_
                                       _tl130341131230_
                                       _e130346131233_
                                       _hd130345131236_
                                       _tl130344131238_
                                       _e130349131241_
                                       _hd130348131244_
                                       _tl130347131246_
                                       _e130352131249_
                                       _hd130351131252_
                                       _tl130350131254_
                                       _e130355131257_
                                       _hd130354131260_
                                       _tl130353131262_
                                       _e130358131265_
                                       _hd130357131268_
                                       _tl130356131270_))
                                  (___match134868134869_
                                   _e130334131201_
                                   _hd130333131204_
                                   _tl130332131206_
                                   _e130337131209_
                                   _hd130336131212_
                                   _tl130335131214_
                                   _e130340131217_
                                   _hd130339131220_
                                   _tl130338131222_
                                   _e130343131225_
                                   _hd130342131228_
                                   _tl130341131230_
                                   _e130346131233_
                                   _hd130345131236_
                                   _tl130344131238_
                                   _e130349131241_
                                   _hd130348131244_
                                   _tl130347131246_
                                   _e130352131249_
                                   _hd130351131252_
                                   _tl130350131254_
                                   _e130355131257_
                                   _hd130354131260_
                                   _tl130353131262_))))
                          (___match134868134869_
                           _e130334131201_
                           _hd130333131204_
                           _tl130332131206_
                           _e130337131209_
                           _hd130336131212_
                           _tl130335131214_
                           _e130340131217_
                           _hd130339131220_
                           _tl130338131222_
                           _e130343131225_
                           _hd130342131228_
                           _tl130341131230_
                           _e130346131233_
                           _hd130345131236_
                           _tl130344131238_
                           _e130349131241_
                           _hd130348131244_
                           _tl130347131246_
                           _e130352131249_
                           _hd130351131252_
                           _tl130350131254_
                           _e130355131257_
                           _hd130354131260_
                           _tl130353131262_))))
                  (___match134806134807_
                   _e130334131201_
                   _hd130333131204_
                   _tl130332131206_
                   _e130337131209_
                   _hd130336131212_
                   _tl130335131214_
                   _e130340131217_
                   _hd130339131220_
                   _tl130338131222_
                   _e130343131225_
                   _hd130342131228_
                   _tl130341131230_
                   _e130346131233_
                   _hd130345131236_
                   _tl130344131238_
                   _e130349131241_
                   _hd130348131244_
                   _tl130347131246_
                   _e130352131249_
                   _hd130351131252_
                   _tl130350131254_))
              (___kont134389134390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134389134390_))
                                          (___kont134389134390_))
                                      (___kont134389134390_))))
                              (___kont134389134390_))))
                      (___kont134389134390_))
                  (___kont134389134390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134389134390_))
                                              (___kont134389134390_))
                                          (___kont134389134390_))))
                                  (___kont134389134390_))))
                          (___kont134389134390_))))
                  (___kont134389134390_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129256_ _stx129257_)
        (letrec ((_force-e129259_
                  (lambda (_target130315_)
                    (let ((__tmp135681
                           (let ((__tmp135685
                                  (let ((__tmp135686
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135686)))
                                 (__tmp135682
                                  (let ((__tmp135683
                                         (let ((__tmp135684
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130315_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135684))))
                                    (declare (not safe))
                                    (cons __tmp135683 '()))))
                             (declare (not safe))
                             (cons __tmp135685 __tmp135682))))
                      (declare (not safe))
                      (cons '%#call __tmp135681)))))
          (let* ((___stx134873134874_ _stx129257_)
                 (_g129267129489_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134873134874_)))))
            (let ((___kont134875134876_
                   (lambda (_L130261_ _L130262_ _L130263_ _L130264_)
                     (let ((_$method130309_
                            (let ((__tmp135688
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129256_ 'methods)))
                                  (__tmp135687
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130262_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135688 __tmp135687)))
                           (_args130310_
                            (map (lambda (_g130297130299_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129256_
                                      _g130297130299_)))
                                 (let ((__tmp135689
                                        (lambda (_g130301130304_
                                                 _g130302130306_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130301130304_
                                                  _g130302130306_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135689 '() _L130261_)))))
                       (let ((__tmp135690
                              (let ((__tmp135691
                                     (let ((__tmp135696
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129259_
                                               _$method130309_)))
                                           (__tmp135692
                                            (let ((__tmp135693
                                                   (let ((__tmp135694
                                                          (let ((__tmp135695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129256_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp135695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135694))))
                                              (declare (not safe))
                                              (cons __tmp135693
                                                    _args130310_))))
                                       (declare (not safe))
                                       (cons __tmp135696 __tmp135692))))
                                (declare (not safe))
                                (cons '%#call __tmp135691))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135690 _stx129257_)))))
                  (___kont134879134880_
                   (lambda (_L130093_ _L130094_ _L130095_ _L130096_ _L130097_)
                     (let ((_$method130149_
                            (let ((__tmp135698
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129256_ 'methods)))
                                  (__tmp135697
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130094_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135698 __tmp135697)))
                           (_args130150_
                            (map (lambda (_g130137130139_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129256_
                                      _g130137130139_)))
                                 (let ((__tmp135699
                                        (lambda (_g130141130144_
                                                 _g130142130146_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130141130144_
                                                  _g130142130146_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135699 '() _L130093_)))))
                       (let ((__tmp135700
                              (let ((__tmp135701
                                     (let ((__tmp135708
                                            (let ((__tmp135709
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135709)))
                                           (__tmp135702
                                            (let ((__tmp135707
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129259_
                                                      _$method130149_)))
                                                  (__tmp135703
                                                   (let ((__tmp135704
                                                          (let ((__tmp135705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135706
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129256_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135706 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135704
                                                           _args130150_))))
                                              (declare (not safe))
                                              (cons __tmp135707 __tmp135703))))
                                       (declare (not safe))
                                       (cons __tmp135708 __tmp135702))))
                                (declare (not safe))
                                (cons '%#call __tmp135701))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135700 _stx129257_)))))
                  (___kont134883134884_
                   (lambda (_L129924_ _L129925_ _L129926_)
                     (let* ((_$field129958_
                             (let ((__tmp135711
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129256_ 'slots)))
                                   (__tmp135710
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129924_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp135711 __tmp135710)))
                            (__tmp135712
                             (let ((__tmp135713
                                    (let ((__tmp135721
                                           (let ((__tmp135722
                                                  (let ((__tmp135723
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129256_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp135723 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135722)))
                                          (__tmp135714
                                           (let ((__tmp135719
                                                  (let ((__tmp135720
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135720)))
                                                 (__tmp135715
                                                  (let ((__tmp135716
                                                         (let ((__tmp135717
                                                                (let ((__tmp135718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129256_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp135718 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135716 '()))))
                                             (declare (not safe))
                                             (cons __tmp135719 __tmp135715))))
                                      (declare (not safe))
                                      (cons __tmp135721 __tmp135714))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135713))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135712 _stx129257_))))
                  (___kont134885134886_
                   (lambda (_L129798_ _L129799_ _L129800_ _L129801_)
                     (let ((_$field129836_
                            (let ((__tmp135725
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129256_ 'slots)))
                                  (__tmp135724
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129799_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135725 __tmp135724)))
                           (_expr129837_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129256_ _L129798_))))
                       (let ((__tmp135726
                              (let ((__tmp135727
                                     (let ((__tmp135736
                                            (let ((__tmp135737
                                                   (let ((__tmp135738
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129256_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp135738 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135737)))
                                           (__tmp135728
                                            (let ((__tmp135734
                                                   (let ((__tmp135735
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135735)))
                                                  (__tmp135729
                                                   (let ((__tmp135731
                                                          (let ((__tmp135732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135733
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129256_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135733 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135732)))
                 (__tmp135730
                  (let () (declare (not safe)) (cons _expr129837_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135731
                                                           __tmp135730))))
                                              (declare (not safe))
                                              (cons __tmp135734 __tmp135729))))
                                       (declare (not safe))
                                       (cons __tmp135736 __tmp135728))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135727))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135726 _stx129257_)))))
                  (___kont134887134888_
                   (lambda (_L129670_ _L129671_)
                     (let* ((_accessor129693_
                             (let ((__tmp135739
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129671_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135739)))
                            (_klass129695_
                             (let ((__tmp135740
                                    (##structure-ref
                                     _accessor129693_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129257_
                                __tmp135740)))
                            (_slot129697_
                             (##structure-ref
                              _accessor129693_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135754
                                       (##structure-ref
                                        _accessor129693_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135754))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129695_
                                       _slot129697_))
                                    (##structure-ref
                                     _klass129695_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129257_
                           (let* ((_$field129703_
                                   (let ((__tmp135741
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135741 _slot129697_)))
                                  (__tmp135742
                                   (let ((__tmp135743
                                          (let ((__tmp135751
                                                 (let ((__tmp135752
                                                        (let ((__tmp135753
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129256_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135753 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135752)))
                                                (__tmp135744
                                                 (let ((__tmp135749
                                                        (let ((__tmp135750
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129703_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135750)))
               (__tmp135745
                (let ((__tmp135746
                       (let ((__tmp135747
                              (let ((__tmp135748
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129256_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135748 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135747))))
                  (declare (not safe))
                  (cons __tmp135746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135749
                                                         __tmp135745))))
                                            (declare (not safe))
                                            (cons __tmp135751 __tmp135744))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135743))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135742
                              _stx129257_))))))
                  (___kont134889134890_
                   (lambda (_L129565_ _L129566_ _L129567_)
                     (let* ((_mutator129595_
                             (let ((__tmp135755
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129567_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135755)))
                            (_klass129597_
                             (let ((__tmp135756
                                    (##structure-ref
                                     _mutator129595_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129257_
                                __tmp135756)))
                            (_slot129599_
                             (##structure-ref
                              _mutator129595_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129601_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129256_ _L129565_))))
                       (if (and (let ((__tmp135781
                                       (##structure-ref
                                        _mutator129595_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135781))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129597_
                                       _slot129599_))
                                    (##structure-ref
                                     _klass129597_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135771
                                  (let ((__tmp135772
                                         (let ((__tmp135778
                                                (let ((__tmp135780
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135779
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129567_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135780
                                                        __tmp135779)))
                                               (__tmp135773
                                                (let ((__tmp135775
                                                       (let ((__tmp135777
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135776
                      (let () (declare (not safe)) (cons _L129566_ '()))))
                 (declare (not safe))
                 (cons __tmp135777 __tmp135776)))
              (__tmp135774
               (let () (declare (not safe)) (cons _expr129601_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135775
                                                        __tmp135774))))
                                           (declare (not safe))
                                           (cons __tmp135778 __tmp135773))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135772))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135771 _stx129257_))
                           (let* ((_$field129607_
                                   (let ((__tmp135757
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135757 _slot129599_)))
                                  (__tmp135758
                                   (let ((__tmp135759
                                          (let ((__tmp135768
                                                 (let ((__tmp135769
                                                        (let ((__tmp135770
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129256_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135769)))
                                                (__tmp135760
                                                 (let ((__tmp135766
                                                        (let ((__tmp135767
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129607_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135767)))
               (__tmp135761
                (let ((__tmp135763
                       (let ((__tmp135764
                              (let ((__tmp135765
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129256_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135765 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135764)))
                      (__tmp135762
                       (let () (declare (not safe)) (cons _expr129601_ '()))))
                  (declare (not safe))
                  (cons __tmp135763 __tmp135762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135766
                                                         __tmp135761))))
                                            (declare (not safe))
                                            (cons __tmp135768 __tmp135760))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135759))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135758
                              _stx129257_))))))
                  (___kont134891134892_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129256_ _stx129257_)))))
              (let* ((___match135372135373_
                      (lambda (_e129463129501_
                               _hd129462129504_
                               _tl129461129506_
                               _e129466129509_
                               _hd129465129512_
                               _tl129464129514_
                               _e129469129517_
                               _hd129468129520_
                               _tl129467129522_
                               _e129472129525_
                               _hd129471129528_
                               _tl129470129530_
                               _e129475129533_
                               _hd129474129536_
                               _tl129473129538_
                               _e129478129541_
                               _hd129477129544_
                               _tl129476129546_
                               _e129481129549_
                               _hd129480129552_
                               _tl129479129554_
                               _e129484129557_
                               _hd129483129560_
                               _tl129482129562_)
                        (let ((_L129565_ _hd129483129560_)
                              (_L129566_ _hd129480129552_)
                              (_L129567_ _hd129471129528_))
                          (if (and (let ((__tmp135784
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129566_
                                      __tmp135784))
                                   (let ((__tmp135782
                                          (let ((__tmp135783
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129567_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135783))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135782
                                      'gxc#!mutator::t)))
                              (___kont134889134890_
                               _L129565_
                               _L129566_
                               _L129567_)
                              (___kont134891134892_)))))
                     (___match135370135371_
                      (lambda (_e129463129501_
                               _hd129462129504_
                               _tl129461129506_
                               _e129466129509_
                               _hd129465129512_
                               _tl129464129514_
                               _e129469129517_
                               _hd129468129520_
                               _tl129467129522_
                               _e129472129525_
                               _hd129471129528_
                               _tl129470129530_
                               _e129475129533_
                               _hd129474129536_
                               _tl129473129538_
                               _e129478129541_
                               _hd129477129544_
                               _tl129476129546_
                               _e129481129549_
                               _hd129480129552_
                               _tl129479129554_
                               _e129484129557_
                               _hd129483129560_
                               _tl129482129562_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129482129562_))
                            (___match135372135373_
                             _e129463129501_
                             _hd129462129504_
                             _tl129461129506_
                             _e129466129509_
                             _hd129465129512_
                             _tl129464129514_
                             _e129469129517_
                             _hd129468129520_
                             _tl129467129522_
                             _e129472129525_
                             _hd129471129528_
                             _tl129470129530_
                             _e129475129533_
                             _hd129474129536_
                             _tl129473129538_
                             _e129478129541_
                             _hd129477129544_
                             _tl129476129546_
                             _e129481129549_
                             _hd129480129552_
                             _tl129479129554_
                             _e129484129557_
                             _hd129483129560_
                             _tl129482129562_)
                            (___kont134891134892_))))
                     (___match135364135365_
                      (lambda (_e129463129501_
                               _hd129462129504_
                               _tl129461129506_
                               _e129466129509_
                               _hd129465129512_
                               _tl129464129514_
                               _e129469129517_
                               _hd129468129520_
                               _tl129467129522_
                               _e129472129525_
                               _hd129471129528_
                               _tl129470129530_
                               _e129475129533_
                               _hd129474129536_
                               _tl129473129538_
                               _e129478129541_
                               _hd129477129544_
                               _tl129476129546_
                               _e129481129549_
                               _hd129480129552_
                               _tl129479129554_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129473129538_))
                            (let ((_e129484129557_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129473129538_))))
                              (let ((_tl129482129562_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129484129557_)))
                                    (_hd129483129560_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129484129557_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129482129562_))
                                    (___match135372135373_
                                     _e129463129501_
                                     _hd129462129504_
                                     _tl129461129506_
                                     _e129466129509_
                                     _hd129465129512_
                                     _tl129464129514_
                                     _e129469129517_
                                     _hd129468129520_
                                     _tl129467129522_
                                     _e129472129525_
                                     _hd129471129528_
                                     _tl129470129530_
                                     _e129475129533_
                                     _hd129474129536_
                                     _tl129473129538_
                                     _e129478129541_
                                     _hd129477129544_
                                     _tl129476129546_
                                     _e129481129549_
                                     _hd129480129552_
                                     _tl129479129554_
                                     _e129484129557_
                                     _hd129483129560_
                                     _tl129482129562_)
                                    (___kont134891134892_))))
                            (___kont134891134892_))))
                     (___match135310135311_
                      (lambda (_e129439129614_
                               _hd129438129617_
                               _tl129437129619_
                               _e129442129622_
                               _hd129441129625_
                               _tl129440129627_
                               _e129445129630_
                               _hd129444129633_
                               _tl129443129635_
                               _e129448129638_
                               _hd129447129641_
                               _tl129446129643_
                               _e129451129646_
                               _hd129450129649_
                               _tl129449129651_
                               _e129454129654_
                               _hd129453129657_
                               _tl129452129659_
                               _e129457129662_
                               _hd129456129665_
                               _tl129455129667_)
                        (let ((_L129670_ _hd129456129665_)
                              (_L129671_ _hd129447129641_))
                          (if (and (let ((__tmp135787
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129670_
                                      __tmp135787))
                                   (let ((__tmp135785
                                          (let ((__tmp135786
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129671_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135786))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135785
                                      'gxc#!accessor::t)))
                              (___kont134887134888_ _L129670_ _L129671_)
                              (___kont134891134892_)))))
                     (___match135308135309_
                      (lambda (_e129439129614_
                               _hd129438129617_
                               _tl129437129619_
                               _e129442129622_
                               _hd129441129625_
                               _tl129440129627_
                               _e129445129630_
                               _hd129444129633_
                               _tl129443129635_
                               _e129448129638_
                               _hd129447129641_
                               _tl129446129643_
                               _e129451129646_
                               _hd129450129649_
                               _tl129449129651_
                               _e129454129654_
                               _hd129453129657_
                               _tl129452129659_
                               _e129457129662_
                               _hd129456129665_
                               _tl129455129667_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129449129651_))
                            (___match135310135311_
                             _e129439129614_
                             _hd129438129617_
                             _tl129437129619_
                             _e129442129622_
                             _hd129441129625_
                             _tl129440129627_
                             _e129445129630_
                             _hd129444129633_
                             _tl129443129635_
                             _e129448129638_
                             _hd129447129641_
                             _tl129446129643_
                             _e129451129646_
                             _hd129450129649_
                             _tl129449129651_
                             _e129454129654_
                             _hd129453129657_
                             _tl129452129659_
                             _e129457129662_
                             _hd129456129665_
                             _tl129455129667_)
                            (___match135364135365_
                             _e129439129614_
                             _hd129438129617_
                             _tl129437129619_
                             _e129442129622_
                             _hd129441129625_
                             _tl129440129627_
                             _e129445129630_
                             _hd129444129633_
                             _tl129443129635_
                             _e129448129638_
                             _hd129447129641_
                             _tl129446129643_
                             _e129451129646_
                             _hd129450129649_
                             _tl129449129651_
                             _e129454129654_
                             _hd129453129657_
                             _tl129452129659_
                             _e129457129662_
                             _hd129456129665_
                             _tl129455129667_))))
                     (___match135254135255_
                      (lambda (_e129404129710_
                               _hd129403129713_
                               _tl129402129715_
                               _e129407129718_
                               _hd129406129721_
                               _tl129405129723_
                               _e129410129726_
                               _hd129409129729_
                               _tl129408129731_
                               _e129413129734_
                               _hd129412129737_
                               _tl129411129739_
                               _e129416129742_
                               _hd129415129745_
                               _tl129414129747_
                               _e129419129750_
                               _hd129418129753_
                               _tl129417129755_
                               _e129422129758_
                               _hd129421129761_
                               _tl129420129763_
                               _e129425129766_
                               _hd129424129769_
                               _tl129423129771_
                               _e129428129774_
                               _hd129427129777_
                               _tl129426129779_
                               _e129431129782_
                               _hd129430129785_
                               _tl129429129787_
                               _e129434129790_
                               _hd129433129793_
                               _tl129432129795_)
                        (let ((_L129798_ _hd129433129793_)
                              (_L129799_ _hd129430129785_)
                              (_L129800_ _hd129421129761_)
                              (_L129801_ _hd129412129737_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129801_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129801_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp135788
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129800_
                                      __tmp135788)))
                              (___kont134885134886_
                               _L129798_
                               _L129799_
                               _L129800_
                               _L129801_)
                              (___kont134891134892_)))))
                     (___match135246135247_
                      (lambda (_e129404129710_
                               _hd129403129713_
                               _tl129402129715_
                               _e129407129718_
                               _hd129406129721_
                               _tl129405129723_
                               _e129410129726_
                               _hd129409129729_
                               _tl129408129731_
                               _e129413129734_
                               _hd129412129737_
                               _tl129411129739_
                               _e129416129742_
                               _hd129415129745_
                               _tl129414129747_
                               _e129419129750_
                               _hd129418129753_
                               _tl129417129755_
                               _e129422129758_
                               _hd129421129761_
                               _tl129420129763_
                               _e129425129766_
                               _hd129424129769_
                               _tl129423129771_
                               _e129428129774_
                               _hd129427129777_
                               _tl129426129779_
                               _e129431129782_
                               _hd129430129785_
                               _tl129429129787_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129423129771_))
                            (let ((_e129434129790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129423129771_))))
                              (let ((_tl129432129795_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129434129790_)))
                                    (_hd129433129793_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129434129790_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129432129795_))
                                    (___match135254135255_
                                     _e129404129710_
                                     _hd129403129713_
                                     _tl129402129715_
                                     _e129407129718_
                                     _hd129406129721_
                                     _tl129405129723_
                                     _e129410129726_
                                     _hd129409129729_
                                     _tl129408129731_
                                     _e129413129734_
                                     _hd129412129737_
                                     _tl129411129739_
                                     _e129416129742_
                                     _hd129415129745_
                                     _tl129414129747_
                                     _e129419129750_
                                     _hd129418129753_
                                     _tl129417129755_
                                     _e129422129758_
                                     _hd129421129761_
                                     _tl129420129763_
                                     _e129425129766_
                                     _hd129424129769_
                                     _tl129423129771_
                                     _e129428129774_
                                     _hd129427129777_
                                     _tl129426129779_
                                     _e129431129782_
                                     _hd129430129785_
                                     _tl129429129787_
                                     _e129434129790_
                                     _hd129433129793_
                                     _tl129432129795_)
                                    (___kont134891134892_))))
                            (___match135370135371_
                             _e129404129710_
                             _hd129403129713_
                             _tl129402129715_
                             _e129407129718_
                             _hd129406129721_
                             _tl129405129723_
                             _e129410129726_
                             _hd129409129729_
                             _tl129408129731_
                             _e129413129734_
                             _hd129412129737_
                             _tl129411129739_
                             _e129416129742_
                             _hd129415129745_
                             _tl129414129747_
                             _e129419129750_
                             _hd129418129753_
                             _tl129417129755_
                             _e129422129758_
                             _hd129421129761_
                             _tl129420129763_
                             _e129425129766_
                             _hd129424129769_
                             _tl129423129771_))))
                     (___match135168135169_
                      (lambda (_e129370129844_
                               _hd129369129847_
                               _tl129368129849_
                               _e129373129852_
                               _hd129372129855_
                               _tl129371129857_
                               _e129376129860_
                               _hd129375129863_
                               _tl129374129865_
                               _e129379129868_
                               _hd129378129871_
                               _tl129377129873_
                               _e129382129876_
                               _hd129381129879_
                               _tl129380129881_
                               _e129385129884_
                               _hd129384129887_
                               _tl129383129889_
                               _e129388129892_
                               _hd129387129895_
                               _tl129386129897_
                               _e129391129900_
                               _hd129390129903_
                               _tl129389129905_
                               _e129394129908_
                               _hd129393129911_
                               _tl129392129913_
                               _e129397129916_
                               _hd129396129919_
                               _tl129395129921_)
                        (let ((_L129924_ _hd129396129919_)
                              (_L129925_ _hd129387129895_)
                              (_L129926_ _hd129378129871_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129926_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129926_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp135789
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129256_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129925_
                                      __tmp135789)))
                              (___kont134883134884_
                               _L129924_
                               _L129925_
                               _L129926_)
                              (___match135372135373_
                               _e129370129844_
                               _hd129369129847_
                               _tl129368129849_
                               _e129373129852_
                               _hd129372129855_
                               _tl129371129857_
                               _e129376129860_
                               _hd129375129863_
                               _tl129374129865_
                               _e129379129868_
                               _hd129378129871_
                               _tl129377129873_
                               _e129382129876_
                               _hd129381129879_
                               _tl129380129881_
                               _e129385129884_
                               _hd129384129887_
                               _tl129383129889_
                               _e129388129892_
                               _hd129387129895_
                               _tl129386129897_
                               _e129391129900_
                               _hd129390129903_
                               _tl129389129905_)))))
                     (___match135166135167_
                      (lambda (_e129370129844_
                               _hd129369129847_
                               _tl129368129849_
                               _e129373129852_
                               _hd129372129855_
                               _tl129371129857_
                               _e129376129860_
                               _hd129375129863_
                               _tl129374129865_
                               _e129379129868_
                               _hd129378129871_
                               _tl129377129873_
                               _e129382129876_
                               _hd129381129879_
                               _tl129380129881_
                               _e129385129884_
                               _hd129384129887_
                               _tl129383129889_
                               _e129388129892_
                               _hd129387129895_
                               _tl129386129897_
                               _e129391129900_
                               _hd129390129903_
                               _tl129389129905_
                               _e129394129908_
                               _hd129393129911_
                               _tl129392129913_
                               _e129397129916_
                               _hd129396129919_
                               _tl129395129921_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129389129905_))
                            (___match135168135169_
                             _e129370129844_
                             _hd129369129847_
                             _tl129368129849_
                             _e129373129852_
                             _hd129372129855_
                             _tl129371129857_
                             _e129376129860_
                             _hd129375129863_
                             _tl129374129865_
                             _e129379129868_
                             _hd129378129871_
                             _tl129377129873_
                             _e129382129876_
                             _hd129381129879_
                             _tl129380129881_
                             _e129385129884_
                             _hd129384129887_
                             _tl129383129889_
                             _e129388129892_
                             _hd129387129895_
                             _tl129386129897_
                             _e129391129900_
                             _hd129390129903_
                             _tl129389129905_
                             _e129394129908_
                             _hd129393129911_
                             _tl129392129913_
                             _e129397129916_
                             _hd129396129919_
                             _tl129395129921_)
                            (___match135246135247_
                             _e129370129844_
                             _hd129369129847_
                             _tl129368129849_
                             _e129373129852_
                             _hd129372129855_
                             _tl129371129857_
                             _e129376129860_
                             _hd129375129863_
                             _tl129374129865_
                             _e129379129868_
                             _hd129378129871_
                             _tl129377129873_
                             _e129382129876_
                             _hd129381129879_
                             _tl129380129881_
                             _e129385129884_
                             _hd129384129887_
                             _tl129383129889_
                             _e129388129892_
                             _hd129387129895_
                             _tl129386129897_
                             _e129391129900_
                             _hd129390129903_
                             _tl129389129905_
                             _e129394129908_
                             _hd129393129911_
                             _tl129392129913_
                             _e129397129916_
                             _hd129396129919_
                             _tl129395129921_))))
                     (___match135156135157_
                      (lambda (_e129370129844_
                               _hd129369129847_
                               _tl129368129849_
                               _e129373129852_
                               _hd129372129855_
                               _tl129371129857_
                               _e129376129860_
                               _hd129375129863_
                               _tl129374129865_
                               _e129379129868_
                               _hd129378129871_
                               _tl129377129873_
                               _e129382129876_
                               _hd129381129879_
                               _tl129380129881_
                               _e129385129884_
                               _hd129384129887_
                               _tl129383129889_
                               _e129388129892_
                               _hd129387129895_
                               _tl129386129897_
                               _e129391129900_
                               _hd129390129903_
                               _tl129389129905_
                               _e129394129908_
                               _hd129393129911_
                               _tl129392129913_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129393129911_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129392129913_))
                                (let ((_e129397129916_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129392129913_))))
                                  (let ((_tl129395129921_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129397129916_)))
                                        (_hd129396129919_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129397129916_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129395129921_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129389129905_))
                                            (___match135168135169_
                                             _e129370129844_
                                             _hd129369129847_
                                             _tl129368129849_
                                             _e129373129852_
                                             _hd129372129855_
                                             _tl129371129857_
                                             _e129376129860_
                                             _hd129375129863_
                                             _tl129374129865_
                                             _e129379129868_
                                             _hd129378129871_
                                             _tl129377129873_
                                             _e129382129876_
                                             _hd129381129879_
                                             _tl129380129881_
                                             _e129385129884_
                                             _hd129384129887_
                                             _tl129383129889_
                                             _e129388129892_
                                             _hd129387129895_
                                             _tl129386129897_
                                             _e129391129900_
                                             _hd129390129903_
                                             _tl129389129905_
                                             _e129394129908_
                                             _hd129393129911_
                                             _tl129392129913_
                                             _e129397129916_
                                             _hd129396129919_
                                             _tl129395129921_)
                                            (___match135246135247_
                                             _e129370129844_
                                             _hd129369129847_
                                             _tl129368129849_
                                             _e129373129852_
                                             _hd129372129855_
                                             _tl129371129857_
                                             _e129376129860_
                                             _hd129375129863_
                                             _tl129374129865_
                                             _e129379129868_
                                             _hd129378129871_
                                             _tl129377129873_
                                             _e129382129876_
                                             _hd129381129879_
                                             _tl129380129881_
                                             _e129385129884_
                                             _hd129384129887_
                                             _tl129383129889_
                                             _e129388129892_
                                             _hd129387129895_
                                             _tl129386129897_
                                             _e129391129900_
                                             _hd129390129903_
                                             _tl129389129905_
                                             _e129394129908_
                                             _hd129393129911_
                                             _tl129392129913_
                                             _e129397129916_
                                             _hd129396129919_
                                             _tl129395129921_))
                                        (___match135370135371_
                                         _e129370129844_
                                         _hd129369129847_
                                         _tl129368129849_
                                         _e129373129852_
                                         _hd129372129855_
                                         _tl129371129857_
                                         _e129376129860_
                                         _hd129375129863_
                                         _tl129374129865_
                                         _e129379129868_
                                         _hd129378129871_
                                         _tl129377129873_
                                         _e129382129876_
                                         _hd129381129879_
                                         _tl129380129881_
                                         _e129385129884_
                                         _hd129384129887_
                                         _tl129383129889_
                                         _e129388129892_
                                         _hd129387129895_
                                         _tl129386129897_
                                         _e129391129900_
                                         _hd129390129903_
                                         _tl129389129905_))))
                                (___match135370135371_
                                 _e129370129844_
                                 _hd129369129847_
                                 _tl129368129849_
                                 _e129373129852_
                                 _hd129372129855_
                                 _tl129371129857_
                                 _e129376129860_
                                 _hd129375129863_
                                 _tl129374129865_
                                 _e129379129868_
                                 _hd129378129871_
                                 _tl129377129873_
                                 _e129382129876_
                                 _hd129381129879_
                                 _tl129380129881_
                                 _e129385129884_
                                 _hd129384129887_
                                 _tl129383129889_
                                 _e129388129892_
                                 _hd129387129895_
                                 _tl129386129897_
                                 _e129391129900_
                                 _hd129390129903_
                                 _tl129389129905_))
                            (___match135370135371_
                             _e129370129844_
                             _hd129369129847_
                             _tl129368129849_
                             _e129373129852_
                             _hd129372129855_
                             _tl129371129857_
                             _e129376129860_
                             _hd129375129863_
                             _tl129374129865_
                             _e129379129868_
                             _hd129378129871_
                             _tl129377129873_
                             _e129382129876_
                             _hd129381129879_
                             _tl129380129881_
                             _e129385129884_
                             _hd129384129887_
                             _tl129383129889_
                             _e129388129892_
                             _hd129387129895_
                             _tl129386129897_
                             _e129391129900_
                             _hd129390129903_
                             _tl129389129905_))))
                     (___match135088135089_
                      (lambda (_e129319129965_
                               _hd129318129968_
                               _tl129317129970_
                               _e129322129973_
                               _hd129321129976_
                               _tl129320129978_
                               _e129325129981_
                               _hd129324129984_
                               _tl129323129986_
                               _e129328129989_
                               _hd129327129992_
                               _tl129326129994_
                               _e129331129997_
                               _hd129330130000_
                               _tl129329130002_
                               _e129334130005_
                               _hd129333130008_
                               _tl129332130010_
                               _e129337130013_
                               _hd129336130016_
                               _tl129335130018_
                               _e129340130021_
                               _hd129339130024_
                               _tl129338130026_
                               _e129343130029_
                               _hd129342130032_
                               _tl129341130034_
                               _e129346130037_
                               _hd129345130040_
                               _tl129344130042_
                               _e129349130045_
                               _hd129348130048_
                               _tl129347130050_
                               _e129352130053_
                               _hd129351130056_
                               _tl129350130058_
                               _e129355130061_
                               _hd129354130064_
                               _tl129353130066_
                               ___splice134881134882_
                               _target129356130069_
                               _tl129358130071_)
                        (letrec ((_loop129359130074_
                                  (lambda (_hd129357130077_ _args129363130079_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129357130077_))
                                        (let ((_e129360130082_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129357130077_))))
                                          (let ((_lp-tl129362130087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129360130082_)))
                                                (_lp-hd129361130085_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129360130082_))))
                                            (let ((__tmp135791
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129361130085_
                                                           _args129363130079_))))
                                              (declare (not safe))
                                              (_loop129359130074_
                                               _lp-tl129362130087_
                                               __tmp135791))))
                                        (let ((_args129364130090_
                                               (reverse _args129363130079_)))
                                          (let ((_L130093_ _args129364130090_)
                                                (_L130094_ _hd129354130064_)
                                                (_L130095_ _hd129345130040_)
                                                (_L130096_ _hd129336130016_)
                                                (_L130097_ _hd129327129992_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130097_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130096_
                                                        'call-method))
                                                     (let ((__tmp135790
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129256_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130095_
                                                        __tmp135790)))
                                                (___kont134879134880_
                                                 _L130093_
                                                 _L130094_
                                                 _L130095_
                                                 _L130096_
                                                 _L130097_)
                                                (___kont134891134892_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129359130074_ _target129356130069_ '())))))
                     (___match135046135047_
                      (lambda (_e129319129965_
                               _hd129318129968_
                               _tl129317129970_
                               _e129322129973_
                               _hd129321129976_
                               _tl129320129978_
                               _e129325129981_
                               _hd129324129984_
                               _tl129323129986_
                               _e129328129989_
                               _hd129327129992_
                               _tl129326129994_
                               _e129331129997_
                               _hd129330130000_
                               _tl129329130002_
                               _e129334130005_
                               _hd129333130008_
                               _tl129332130010_
                               _e129337130013_
                               _hd129336130016_
                               _tl129335130018_
                               _e129340130021_
                               _hd129339130024_
                               _tl129338130026_
                               _e129343130029_
                               _hd129342130032_
                               _tl129341130034_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129342130032_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129341130034_))
                                (let ((_e129346130037_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129341130034_))))
                                  (let ((_tl129344130042_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129346130037_)))
                                        (_hd129345130040_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129346130037_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129344130042_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129338130026_))
                                            (let ((_e129349130045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129338130026_))))
                                              (let ((_tl129347130050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129349130045_)))
                                                    (_hd129348130048_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129349130045_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129348130048_))
                                                    (let ((_e129352130053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129348130048_))))
                                                      (let ((_tl129350130058_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129352130053_)))
                    (_hd129351130056_
                     (let () (declare (not safe)) (##car _e129352130053_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129351130056_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129351130056_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129350130058_))
                            (let ((_e129355130061_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129350130058_))))
                              (let ((_tl129353130066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129355130061_)))
                                    (_hd129354130064_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129355130061_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129353130066_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129347130050_))
                                        (let ((___splice134881134882_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129347130050_
                                                  '0))))
                                          (let ((_tl129358130071_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134881134882_
                                                    '1)))
                                                (_target129356130069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134881134882_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129358130071_))
                                                (___match135088135089_
                                                 _e129319129965_
                                                 _hd129318129968_
                                                 _tl129317129970_
                                                 _e129322129973_
                                                 _hd129321129976_
                                                 _tl129320129978_
                                                 _e129325129981_
                                                 _hd129324129984_
                                                 _tl129323129986_
                                                 _e129328129989_
                                                 _hd129327129992_
                                                 _tl129326129994_
                                                 _e129331129997_
                                                 _hd129330130000_
                                                 _tl129329130002_
                                                 _e129334130005_
                                                 _hd129333130008_
                                                 _tl129332130010_
                                                 _e129337130013_
                                                 _hd129336130016_
                                                 _tl129335130018_
                                                 _e129340130021_
                                                 _hd129339130024_
                                                 _tl129338130026_
                                                 _e129343130029_
                                                 _hd129342130032_
                                                 _tl129341130034_
                                                 _e129346130037_
                                                 _hd129345130040_
                                                 _tl129344130042_
                                                 _e129349130045_
                                                 _hd129348130048_
                                                 _tl129347130050_
                                                 _e129352130053_
                                                 _hd129351130056_
                                                 _tl129350130058_
                                                 _e129355130061_
                                                 _hd129354130064_
                                                 _tl129353130066_
                                                 ___splice134881134882_
                                                 _target129356130069_
                                                 _tl129358130071_)
                                                (___kont134891134892_))))
                                        (___kont134891134892_))
                                    (___kont134891134892_))))
                            (___kont134891134892_))
                        (___kont134891134892_))
                    (___kont134891134892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134891134892_))))
                                            (___match135370135371_
                                             _e129319129965_
                                             _hd129318129968_
                                             _tl129317129970_
                                             _e129322129973_
                                             _hd129321129976_
                                             _tl129320129978_
                                             _e129325129981_
                                             _hd129324129984_
                                             _tl129323129986_
                                             _e129328129989_
                                             _hd129327129992_
                                             _tl129326129994_
                                             _e129331129997_
                                             _hd129330130000_
                                             _tl129329130002_
                                             _e129334130005_
                                             _hd129333130008_
                                             _tl129332130010_
                                             _e129337130013_
                                             _hd129336130016_
                                             _tl129335130018_
                                             _e129340130021_
                                             _hd129339130024_
                                             _tl129338130026_))
                                        (___match135370135371_
                                         _e129319129965_
                                         _hd129318129968_
                                         _tl129317129970_
                                         _e129322129973_
                                         _hd129321129976_
                                         _tl129320129978_
                                         _e129325129981_
                                         _hd129324129984_
                                         _tl129323129986_
                                         _e129328129989_
                                         _hd129327129992_
                                         _tl129326129994_
                                         _e129331129997_
                                         _hd129330130000_
                                         _tl129329130002_
                                         _e129334130005_
                                         _hd129333130008_
                                         _tl129332130010_
                                         _e129337130013_
                                         _hd129336130016_
                                         _tl129335130018_
                                         _e129340130021_
                                         _hd129339130024_
                                         _tl129338130026_))))
                                (___match135370135371_
                                 _e129319129965_
                                 _hd129318129968_
                                 _tl129317129970_
                                 _e129322129973_
                                 _hd129321129976_
                                 _tl129320129978_
                                 _e129325129981_
                                 _hd129324129984_
                                 _tl129323129986_
                                 _e129328129989_
                                 _hd129327129992_
                                 _tl129326129994_
                                 _e129331129997_
                                 _hd129330130000_
                                 _tl129329130002_
                                 _e129334130005_
                                 _hd129333130008_
                                 _tl129332130010_
                                 _e129337130013_
                                 _hd129336130016_
                                 _tl129335130018_
                                 _e129340130021_
                                 _hd129339130024_
                                 _tl129338130026_))
                            (___match135156135157_
                             _e129319129965_
                             _hd129318129968_
                             _tl129317129970_
                             _e129322129973_
                             _hd129321129976_
                             _tl129320129978_
                             _e129325129981_
                             _hd129324129984_
                             _tl129323129986_
                             _e129328129989_
                             _hd129327129992_
                             _tl129326129994_
                             _e129331129997_
                             _hd129330130000_
                             _tl129329130002_
                             _e129334130005_
                             _hd129333130008_
                             _tl129332130010_
                             _e129337130013_
                             _hd129336130016_
                             _tl129335130018_
                             _e129340130021_
                             _hd129339130024_
                             _tl129338130026_
                             _e129343130029_
                             _hd129342130032_
                             _tl129341130034_))))
                     (___match134978134979_
                      (lambda (_e129275130157_
                               _hd129274130160_
                               _tl129273130162_
                               _e129278130165_
                               _hd129277130168_
                               _tl129276130170_
                               _e129281130173_
                               _hd129280130176_
                               _tl129279130178_
                               _e129284130181_
                               _hd129283130184_
                               _tl129282130186_
                               _e129287130189_
                               _hd129286130192_
                               _tl129285130194_
                               _e129290130197_
                               _hd129289130200_
                               _tl129288130202_
                               _e129293130205_
                               _hd129292130208_
                               _tl129291130210_
                               _e129296130213_
                               _hd129295130216_
                               _tl129294130218_
                               _e129299130221_
                               _hd129298130224_
                               _tl129297130226_
                               _e129302130229_
                               _hd129301130232_
                               _tl129300130234_
                               ___splice134877134878_
                               _target129303130237_
                               _tl129305130239_)
                        (letrec ((_loop129306130242_
                                  (lambda (_hd129304130245_ _args129310130247_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129304130245_))
                                        (let ((_e129307130250_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129304130245_))))
                                          (let ((_lp-tl129309130255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129307130250_)))
                                                (_lp-hd129308130253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129307130250_))))
                                            (let ((__tmp135793
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129308130253_
                                                           _args129310130247_))))
                                              (declare (not safe))
                                              (_loop129306130242_
                                               _lp-tl129309130255_
                                               __tmp135793))))
                                        (let ((_args129311130258_
                                               (reverse _args129310130247_)))
                                          (let ((_L130261_ _args129311130258_)
                                                (_L130262_ _hd129301130232_)
                                                (_L130263_ _hd129292130208_)
                                                (_L130264_ _hd129283130184_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130264_
                                                        'call-method))
                                                     (let ((__tmp135792
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129256_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130263_
                                                        __tmp135792)))
                                                (___kont134875134876_
                                                 _L130261_
                                                 _L130262_
                                                 _L130263_
                                                 _L130264_)
                                                (___match135166135167_
                                                 _e129275130157_
                                                 _hd129274130160_
                                                 _tl129273130162_
                                                 _e129278130165_
                                                 _hd129277130168_
                                                 _tl129276130170_
                                                 _e129281130173_
                                                 _hd129280130176_
                                                 _tl129279130178_
                                                 _e129284130181_
                                                 _hd129283130184_
                                                 _tl129282130186_
                                                 _e129287130189_
                                                 _hd129286130192_
                                                 _tl129285130194_
                                                 _e129290130197_
                                                 _hd129289130200_
                                                 _tl129288130202_
                                                 _e129293130205_
                                                 _hd129292130208_
                                                 _tl129291130210_
                                                 _e129296130213_
                                                 _hd129295130216_
                                                 _tl129294130218_
                                                 _e129299130221_
                                                 _hd129298130224_
                                                 _tl129297130226_
                                                 _e129302130229_
                                                 _hd129301130232_
                                                 _tl129300130234_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129306130242_ _target129303130237_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134873134874_))
                    (let ((_e129275130157_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134873134874_))))
                      (let ((_tl129273130162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129275130157_)))
                            (_hd129274130160_
                             (let ()
                               (declare (not safe))
                               (##car _e129275130157_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129273130162_))
                            (let ((_e129278130165_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129273130162_))))
                              (let ((_tl129276130170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129278130165_)))
                                    (_hd129277130168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129278130165_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129277130168_))
                                    (let ((_e129281130173_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129277130168_))))
                                      (let ((_tl129279130178_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129281130173_)))
                                            (_hd129280130176_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129281130173_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129280130176_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129280130176_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129279130178_))
                                                    (let ((_e129284130181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129279130178_))))
                                                      (let ((_tl129282130186_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129284130181_)))
                    (_hd129283130184_
                     (let () (declare (not safe)) (##car _e129284130181_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129282130186_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129276130170_))
                        (let ((_e129287130189_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129276130170_))))
                          (let ((_tl129285130194_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129287130189_)))
                                (_hd129286130192_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129287130189_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129286130192_))
                                (let ((_e129290130197_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129286130192_))))
                                  (let ((_tl129288130202_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129290130197_)))
                                        (_hd129289130200_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129290130197_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129289130200_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129289130200_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129288130202_))
                                                (let ((_e129293130205_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129288130202_))))
                                                  (let ((_tl129291130210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129293130205_)))
                                                        (_hd129292130208_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129293130205_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129291130210_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129285130194_))
                                                            (let ((_e129296130213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129285130194_))))
                      (let ((_tl129294130218_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129296130213_)))
                            (_hd129295130216_
                             (let ()
                               (declare (not safe))
                               (##car _e129296130213_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129295130216_))
                            (let ((_e129299130221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129295130216_))))
                              (let ((_tl129297130226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129299130221_)))
                                    (_hd129298130224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129299130221_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129298130224_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129298130224_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129297130226_))
                                            (let ((_e129302130229_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129297130226_))))
                                              (let ((_tl129300130234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129302130229_)))
                                                    (_hd129301130232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129302130229_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129300130234_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129294130218_))
                                                        (let ((___splice134877134878_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129294130218_ '0))))
                  (let ((_tl129305130239_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134877134878_ '1)))
                        (_target129303130237_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134877134878_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129305130239_))
                        (___match134978134979_
                         _e129275130157_
                         _hd129274130160_
                         _tl129273130162_
                         _e129278130165_
                         _hd129277130168_
                         _tl129276130170_
                         _e129281130173_
                         _hd129280130176_
                         _tl129279130178_
                         _e129284130181_
                         _hd129283130184_
                         _tl129282130186_
                         _e129287130189_
                         _hd129286130192_
                         _tl129285130194_
                         _e129290130197_
                         _hd129289130200_
                         _tl129288130202_
                         _e129293130205_
                         _hd129292130208_
                         _tl129291130210_
                         _e129296130213_
                         _hd129295130216_
                         _tl129294130218_
                         _e129299130221_
                         _hd129298130224_
                         _tl129297130226_
                         _e129302130229_
                         _hd129301130232_
                         _tl129300130234_
                         ___splice134877134878_
                         _target129303130237_
                         _tl129305130239_)
                        (___match135166135167_
                         _e129275130157_
                         _hd129274130160_
                         _tl129273130162_
                         _e129278130165_
                         _hd129277130168_
                         _tl129276130170_
                         _e129281130173_
                         _hd129280130176_
                         _tl129279130178_
                         _e129284130181_
                         _hd129283130184_
                         _tl129282130186_
                         _e129287130189_
                         _hd129286130192_
                         _tl129285130194_
                         _e129290130197_
                         _hd129289130200_
                         _tl129288130202_
                         _e129293130205_
                         _hd129292130208_
                         _tl129291130210_
                         _e129296130213_
                         _hd129295130216_
                         _tl129294130218_
                         _e129299130221_
                         _hd129298130224_
                         _tl129297130226_
                         _e129302130229_
                         _hd129301130232_
                         _tl129300130234_))))
                (___match135166135167_
                 _e129275130157_
                 _hd129274130160_
                 _tl129273130162_
                 _e129278130165_
                 _hd129277130168_
                 _tl129276130170_
                 _e129281130173_
                 _hd129280130176_
                 _tl129279130178_
                 _e129284130181_
                 _hd129283130184_
                 _tl129282130186_
                 _e129287130189_
                 _hd129286130192_
                 _tl129285130194_
                 _e129290130197_
                 _hd129289130200_
                 _tl129288130202_
                 _e129293130205_
                 _hd129292130208_
                 _tl129291130210_
                 _e129296130213_
                 _hd129295130216_
                 _tl129294130218_
                 _e129299130221_
                 _hd129298130224_
                 _tl129297130226_
                 _e129302130229_
                 _hd129301130232_
                 _tl129300130234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135370135371_
                                                     _e129275130157_
                                                     _hd129274130160_
                                                     _tl129273130162_
                                                     _e129278130165_
                                                     _hd129277130168_
                                                     _tl129276130170_
                                                     _e129281130173_
                                                     _hd129280130176_
                                                     _tl129279130178_
                                                     _e129284130181_
                                                     _hd129283130184_
                                                     _tl129282130186_
                                                     _e129287130189_
                                                     _hd129286130192_
                                                     _tl129285130194_
                                                     _e129290130197_
                                                     _hd129289130200_
                                                     _tl129288130202_
                                                     _e129293130205_
                                                     _hd129292130208_
                                                     _tl129291130210_
                                                     _e129296130213_
                                                     _hd129295130216_
                                                     _tl129294130218_))))
                                            (___match135370135371_
                                             _e129275130157_
                                             _hd129274130160_
                                             _tl129273130162_
                                             _e129278130165_
                                             _hd129277130168_
                                             _tl129276130170_
                                             _e129281130173_
                                             _hd129280130176_
                                             _tl129279130178_
                                             _e129284130181_
                                             _hd129283130184_
                                             _tl129282130186_
                                             _e129287130189_
                                             _hd129286130192_
                                             _tl129285130194_
                                             _e129290130197_
                                             _hd129289130200_
                                             _tl129288130202_
                                             _e129293130205_
                                             _hd129292130208_
                                             _tl129291130210_
                                             _e129296130213_
                                             _hd129295130216_
                                             _tl129294130218_))
                                        (___match135046135047_
                                         _e129275130157_
                                         _hd129274130160_
                                         _tl129273130162_
                                         _e129278130165_
                                         _hd129277130168_
                                         _tl129276130170_
                                         _e129281130173_
                                         _hd129280130176_
                                         _tl129279130178_
                                         _e129284130181_
                                         _hd129283130184_
                                         _tl129282130186_
                                         _e129287130189_
                                         _hd129286130192_
                                         _tl129285130194_
                                         _e129290130197_
                                         _hd129289130200_
                                         _tl129288130202_
                                         _e129293130205_
                                         _hd129292130208_
                                         _tl129291130210_
                                         _e129296130213_
                                         _hd129295130216_
                                         _tl129294130218_
                                         _e129299130221_
                                         _hd129298130224_
                                         _tl129297130226_))
                                    (___match135370135371_
                                     _e129275130157_
                                     _hd129274130160_
                                     _tl129273130162_
                                     _e129278130165_
                                     _hd129277130168_
                                     _tl129276130170_
                                     _e129281130173_
                                     _hd129280130176_
                                     _tl129279130178_
                                     _e129284130181_
                                     _hd129283130184_
                                     _tl129282130186_
                                     _e129287130189_
                                     _hd129286130192_
                                     _tl129285130194_
                                     _e129290130197_
                                     _hd129289130200_
                                     _tl129288130202_
                                     _e129293130205_
                                     _hd129292130208_
                                     _tl129291130210_
                                     _e129296130213_
                                     _hd129295130216_
                                     _tl129294130218_))))
                            (___match135370135371_
                             _e129275130157_
                             _hd129274130160_
                             _tl129273130162_
                             _e129278130165_
                             _hd129277130168_
                             _tl129276130170_
                             _e129281130173_
                             _hd129280130176_
                             _tl129279130178_
                             _e129284130181_
                             _hd129283130184_
                             _tl129282130186_
                             _e129287130189_
                             _hd129286130192_
                             _tl129285130194_
                             _e129290130197_
                             _hd129289130200_
                             _tl129288130202_
                             _e129293130205_
                             _hd129292130208_
                             _tl129291130210_
                             _e129296130213_
                             _hd129295130216_
                             _tl129294130218_))))
                    (___match135308135309_
                     _e129275130157_
                     _hd129274130160_
                     _tl129273130162_
                     _e129278130165_
                     _hd129277130168_
                     _tl129276130170_
                     _e129281130173_
                     _hd129280130176_
                     _tl129279130178_
                     _e129284130181_
                     _hd129283130184_
                     _tl129282130186_
                     _e129287130189_
                     _hd129286130192_
                     _tl129285130194_
                     _e129290130197_
                     _hd129289130200_
                     _tl129288130202_
                     _e129293130205_
                     _hd129292130208_
                     _tl129291130210_))
                (___kont134891134892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134891134892_))
                                            (___kont134891134892_))
                                        (___kont134891134892_))))
                                (___kont134891134892_))))
                        (___kont134891134892_))
                    (___kont134891134892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134891134892_))
                                                (___kont134891134892_))
                                            (___kont134891134892_))))
                                    (___kont134891134892_))))
                            (___kont134891134892_))))
                    (___kont134891134892_))))))))))
