(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710237313)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp135526 (list gxc#::identity::t))
            (__tmp135524
             (let ((__tmp135525
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135525 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp135526
         '()
         __tmp135524
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args134390_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args134390_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp135527
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
        (make-promise __tmp135527)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx134382_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self134385_
                (let ((__obj135519
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj135519))
               (__tmp135528
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self134385_ _stx134382_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp135528
           gxc#current-compile-method
           _self134385_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp135531 (list gxc#::void::t))
            (__tmp135529
             (let ((__tmp135530
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135530 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp135531
         '(receiver methods slots)
         __tmp135529
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args134379_
        (apply make-instance gxc#::collect-object-refs::t _$args134379_)))
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
      (let ((__tmp135532
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
        (make-promise __tmp135532)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g135533_
               _receiver134340134345_
               _methods134341134347_
               _slots134342134349_
               _stx134351_)
        (let* ((_receiver134354_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134340134345_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134340134345_))
               (_methods134356_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134341134347_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134341134347_))
               (_slots134358_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134342134349_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134342134349_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self134360_
                  (let ((__obj135521
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
                       __obj135521
                       _receiver134354_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135521
                       _methods134356_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135521
                       _slots134358_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj135521))
                 (__tmp135534
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134360_ _stx134351_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135534
             gxc#current-compile-method
             _self134360_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys134339134367_ . _args134369_)
        (apply gxc#apply-collect-object-refs__%
               _keys134339134367_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134339134367_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134339134367_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134339134367_ 'slots: absent-value))
               _args134369_)))
    (define gxc#apply-collect-object-refs
      (lambda _args134343134375_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args134343134375_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp135537 (list gxc#::basic-xform-expression::t))
            (__tmp135535
             (let ((__tmp135536
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp135536 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp135537
         '(receiver klass methods slots)
         __tmp135535
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args134335_
        (apply make-instance gxc#::subst-object-refs::t _$args134335_)))
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
      (let ((__tmp135538
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
        (make-promise __tmp135538)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g135539_
               _receiver134291134297_
               _klass134292134299_
               _methods134293134301_
               _slots134294134303_
               _stx134305_)
        (let* ((_receiver134308_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver134291134297_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver134291134297_))
               (_klass134310_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass134292134299_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass134292134299_))
               (_methods134312_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods134293134301_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods134293134301_))
               (_slots134314_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots134294134303_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots134294134303_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self134316_
                  (let ((__obj135523
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
                       __obj135523
                       _receiver134308_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135523
                       _klass134310_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135523
                       _methods134312_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj135523
                       _slots134314_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj135523))
                 (__tmp135540
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self134316_ _stx134305_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp135540
             gxc#current-compile-method
             _self134316_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys134290134323_ . _args134325_)
        (apply gxc#apply-subst-object-refs__%
               _keys134290134323_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134290134323_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134290134323_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys134290134323_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys134290134323_ 'slots: absent-value))
               _args134325_)))
    (define gxc#apply-subst-object-refs
      (lambda _args134295134331_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args134295134331_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self131500_ _stx131501_)
        (letrec ((_generate-method-bind131503_
                  (lambda (_$klass134282_
                           _$method-table134283_
                           _id134284_
                           _$id134285_)
                    (let ((_$tmp134287_
                           (let ((__tmp135541 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135541))))
                      (let ((__tmp135589
                             (let ()
                               (declare (not safe))
                               (cons _$id134285_ '())))
                            (__tmp135542
                             (let ((__tmp135543
                                    (let ((__tmp135544
                                           (let ((__tmp135587
                                                  (let ((__tmp135588
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135588)))
                                                 (__tmp135545
                                                  (let ((__tmp135546
                                                         (let ((__tmp135547
                                                                (let ((__tmp135548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135549
                                      (let ((__tmp135550
                                             (let ((__tmp135570
                                                    (let ((__tmp135571
                                                           (let ((__tmp135586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp134287_ '())))
                         (__tmp135572
                          (let ((__tmp135573
                                 (let ((__tmp135574
                                        (let ((__tmp135584
                                               (let ((__tmp135585
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp135585)))
                                              (__tmp135575
                                               (let ((__tmp135582
                                                      (let ((__tmp135583
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table134283_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp135583)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp135576
                                                      (let ((__tmp135580
                                                             (let ((__tmp135581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id134284_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp135581)))
                    (__tmp135577
                     (let ((__tmp135578
                            (let ((__tmp135579
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135579))))
                       (declare (not safe))
                       (cons __tmp135578 '()))))
                (declare (not safe))
                (cons __tmp135580 __tmp135577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp135582
                                                       __tmp135576))))
                                          (declare (not safe))
                                          (cons __tmp135584 __tmp135575))))
                                   (declare (not safe))
                                   (cons '%#call __tmp135574))))
                            (declare (not safe))
                            (cons __tmp135573 '()))))
                     (declare (not safe))
                     (cons __tmp135586 __tmp135572))))
              (declare (not safe))
              (cons __tmp135571 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135551
                                                    (let ((__tmp135552
                                                           (let ((__tmp135553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135568
                                 (let ((__tmp135569
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp134287_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp135569)))
                                (__tmp135554
                                 (let ((__tmp135566
                                        (let ((__tmp135567
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp134287_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp135567)))
                                       (__tmp135555
                                        (let ((__tmp135556
                                               (let ((__tmp135557
                                                      (let ((__tmp135564
                                                             (let ((__tmp135565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp135565)))
                    (__tmp135558
                     (let ((__tmp135562
                            (let ((__tmp135563
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp135563)))
                           (__tmp135559
                            (let ((__tmp135560
                                   (let ((__tmp135561
                                          (let ()
                                            (declare (not safe))
                                            (cons _id134284_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp135561))))
                              (declare (not safe))
                              (cons __tmp135560 '()))))
                       (declare (not safe))
                       (cons __tmp135562 __tmp135559))))
                (declare (not safe))
                (cons __tmp135564 __tmp135558))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp135557))))
                                          (declare (not safe))
                                          (cons __tmp135556 '()))))
                                   (declare (not safe))
                                   (cons __tmp135566 __tmp135555))))
                            (declare (not safe))
                            (cons __tmp135568 __tmp135554))))
                     (declare (not safe))
                     (cons '%#if __tmp135553))))
              (declare (not safe))
              (cons __tmp135552 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135570
                                                     __tmp135551))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp135550))))
                                 (declare (not safe))
                                 (cons __tmp135549 '()))))
                          (declare (not safe))
                          (cons '() __tmp135548))))
                   (declare (not safe))
                   (cons '%#lambda __tmp135547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135546 '()))))
                                             (declare (not safe))
                                             (cons __tmp135587 __tmp135545))))
                                      (declare (not safe))
                                      (cons '%#call __tmp135544))))
                               (declare (not safe))
                               (cons __tmp135543 '()))))
                        (declare (not safe))
                        (cons __tmp135589 __tmp135542)))))
                 (_generate-slot-bind131504_
                  (lambda (_$klass134276_ _id134277_ _$id134278_)
                    (let ((_$tmp134280_
                           (let ((__tmp135590 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp135590))))
                      (let ((__tmp135627
                             (let ()
                               (declare (not safe))
                               (cons _$id134278_ '())))
                            (__tmp135591
                             (let ((__tmp135592
                                    (let ((__tmp135593
                                           (let ((__tmp135613
                                                  (let ((__tmp135614
                                                         (let ((__tmp135626
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp134280_ '())))
                       (__tmp135615
                        (let ((__tmp135616
                               (let ((__tmp135617
                                      (let ((__tmp135624
                                             (let ((__tmp135625
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp135625)))
                                            (__tmp135618
                                             (let ((__tmp135622
                                                    (let ((__tmp135623
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass134276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp135623)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135619
                                                    (let ((__tmp135620
                                                           (let ((__tmp135621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id134277_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp135621))))
              (declare (not safe))
              (cons __tmp135620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135622
                                                     __tmp135619))))
                                        (declare (not safe))
                                        (cons __tmp135624 __tmp135618))))
                                 (declare (not safe))
                                 (cons '%#call __tmp135617))))
                          (declare (not safe))
                          (cons __tmp135616 '()))))
                   (declare (not safe))
                   (cons __tmp135626 __tmp135615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135614 '())))
                                                 (__tmp135594
                                                  (let ((__tmp135595
                                                         (let ((__tmp135596
                                                                (let ((__tmp135611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135612
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp134280_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp135612)))
                              (__tmp135597
                               (let ((__tmp135609
                                      (let ((__tmp135610
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp134280_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp135610)))
                                     (__tmp135598
                                      (let ((__tmp135599
                                             (let ((__tmp135600
                                                    (let ((__tmp135607
                                                           (let ((__tmp135608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp135608)))
                  (__tmp135601
                   (let ((__tmp135605
                          (let ((__tmp135606
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp135606)))
                         (__tmp135602
                          (let ((__tmp135603
                                 (let ((__tmp135604
                                        (let ()
                                          (declare (not safe))
                                          (cons _id134277_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp135604))))
                            (declare (not safe))
                            (cons __tmp135603 '()))))
                     (declare (not safe))
                     (cons __tmp135605 __tmp135602))))
              (declare (not safe))
              (cons __tmp135607 __tmp135601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp135600))))
                                        (declare (not safe))
                                        (cons __tmp135599 '()))))
                                 (declare (not safe))
                                 (cons __tmp135609 __tmp135598))))
                          (declare (not safe))
                          (cons __tmp135611 __tmp135597))))
                   (declare (not safe))
                   (cons '%#if __tmp135596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135595 '()))))
                                             (declare (not safe))
                                             (cons __tmp135613 __tmp135594))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp135593))))
                               (declare (not safe))
                               (cons __tmp135592 '()))))
                        (declare (not safe))
                        (cons __tmp135627 __tmp135591)))))
                 (_generate-specializer-impl131505_
                  (lambda (_$klass134270_
                           _$method-table134271_
                           _methods-bind134272_
                           _slots-bind134273_
                           _specializer-impl134274_)
                    (let ((__tmp135628
                           (let ((__tmp135629
                                  (let ((__tmp135635
                                         (let ((__tmp135636
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table134271_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass134270_ __tmp135636)))
                                        (__tmp135630
                                         (let ((__tmp135631
                                                (let ((__tmp135632
                                                       (let ((__tmp135634
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind134273_ _methods-bind134272_)))
                     (__tmp135633
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl134274_ '()))))
                 (declare (not safe))
                 (cons __tmp135634 __tmp135633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135632))))
                                           (declare (not safe))
                                           (cons __tmp135631 '()))))
                                    (declare (not safe))
                                    (cons __tmp135635 __tmp135630))))
                             (declare (not safe))
                             (cons '%#lambda __tmp135629))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135628 _stx131501_))))
                 (_generate-specializer-def131506_
                  (lambda (_id134266_
                           _specializer-id134267_
                           _specializer-impl134268_)
                    (let ((__tmp135637
                           (let ((__tmp135638
                                  (let ((__tmp135639
                                         (let ((__tmp135652
                                                (let ((__tmp135653
                                                       (let ((__tmp135654
                                                              (let ((__tmp135656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id134267_ '())))
                            (__tmp135655
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl134268_ '()))))
                        (declare (not safe))
                        (cons __tmp135656 __tmp135655))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135653
                                                   _stx131501_)))
                                               (__tmp135640
                                                (let ((__tmp135641
                                                       (let ((__tmp135642
                                                              (let ((__tmp135643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135650
                                    (let ((__tmp135651
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135651)))
                                   (__tmp135644
                                    (let ((__tmp135648
                                           (let ((__tmp135649
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id134266_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135649)))
                                          (__tmp135645
                                           (let ((__tmp135646
                                                  (let ((__tmp135647
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id134267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135647))))
                                             (declare (not safe))
                                             (cons __tmp135646 '()))))
                                      (declare (not safe))
                                      (cons __tmp135648 __tmp135645))))
                               (declare (not safe))
                               (cons __tmp135650 __tmp135644))))
                        (declare (not safe))
                        (cons '%#call __tmp135643))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135642 _stx131501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135641 '()))))
                                           (declare (not safe))
                                           (cons __tmp135652 __tmp135640))))
                                    (declare (not safe))
                                    (cons _stx131501_ __tmp135639))))
                             (declare (not safe))
                             (cons '%#begin __tmp135638))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp135637 _stx131501_)))))
          (let* ((___stx134479134480_ _stx131501_)
                 (_g131509131529_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134479134480_)))))
            (let ((___kont134481134482_
                   (lambda (_L131573_ _L131574_)
                     (let ((_method-calls131593_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131594_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131595_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131597_
                                 (lambda ()
                                   (if (let ((__tmp135658
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131593_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135658))
                                       (let ((__tmp135657
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131594_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135657))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L131573_))
                             (let* ((___stx134393134394_ _L131573_)
                                    (_g131984132002_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx134393134394_)))))
                               (let ((___kont134395134396_
                                      (lambda (_L132038_ _L132039_ _L132040_)
                                        (for-each
                                         (lambda (_g132055132057_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g132055132057_
                                              'receiver:
                                              _L132040_
                                              'methods:
                                              _method-calls131593_
                                              'slots:
                                              _slot-refs131594_)))
                                         _L132038_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131597_))
                                            _stx131501_
                                            (let* ((_specializer-id132066_
                                                    (let* ((_id132060_
                                                            (let ((__tmp135780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L131574_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135780 '"::specialize")))
                   (_specializer-id132063_
                    (let ((__tmp135781
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx131501_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id132060_ __tmp135781))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id132063_))
              _specializer-id132063_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass132068_
                                                    (let ((__tmp135782
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135782)))
                                                   (_$method-table132070_
                                                    (let ((__tmp135783
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135783)))
                                                   (_methods132072_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131593_)))
                                                   (_$methods132076_
                                                    (map (lambda (_id132074_)
                                                           (let ((__tmp135784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132074_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135784)))
                 _methods132072_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135785_
                                                    (for-each
                                                     (lambda (_g132077132080_
                                                              _g132078132082_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131593_
                                                          _g132077132080_
                                                          _g132078132082_)))
                                                     _methods132072_
                                                     _$methods132076_))
                                                   (_methods-bind132093_
                                                    (map (lambda (_g132085132088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132086132090_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind131503_
                      _$klass132068_
                      _$method-table132070_
                      _g132085132088_
                      _g132086132090_)))
                 _methods132072_
                 _$methods132076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots132095_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131594_)))
                                                   (_$slots132099_
                                                    (map (lambda (_id132097_)
                                                           (let ((__tmp135786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id132097_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135786)))
                 _slots132095_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135787_
                                                    (for-each
                                                     (lambda (_g132100132103_
                                                              _g132101132105_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131594_
                                                          _g132100132103_
                                                          _g132101132105_)))
                                                     _slots132095_
                                                     _$slots132099_))
                                                   (_slots-bind132116_
                                                    (map (lambda (_g132108132111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g132109132113_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind131504_
                      _$klass132068_
                      _g132108132111_
                      _g132109132113_)))
                 _slots132095_
                 _$slots132099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body132122_
                                                    (map (lambda (_g132117132119_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g132117132119_
                                                              'receiver:
                                                              _L132040_
                                                              'klass:
                                                              _$klass132068_
                                                              'methods:
                                                              _method-calls131593_
                                                              'slots:
                                                              _slot-refs131594_)))
                                                         _L132038_))
                                                   (_specializer-impl132124_
                                                    (let ((__tmp135788
                                                           (let ((__tmp135789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135790
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132040_ _L132039_))))
                            (declare (not safe))
                            (cons __tmp135790 _specializer-body132122_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135789))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135788 _stx131501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl132126_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl131505_
                                                       _$klass132068_
                                                       _$method-table132070_
                                                       _methods-bind132093_
                                                       _slots-bind132116_
                                                       _specializer-impl132124_))))
                                              (let ((__tmp135792
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L131574_)))
                                                    (__tmp135791
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id132066_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135792
                                                 '" => "
                                                 __tmp135791))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def131506_
                                                 _L131574_
                                                 _specializer-id132066_
                                                 _specializer-impl132126_))))))
                                     (___kont134397134398_
                                      (lambda () _stx131501_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx134393134394_))
                                     (let ((_e131991132014_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx134393134394_))))
                                       (let ((_tl131989132019_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131991132014_)))
                                             (_hd131990132017_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131991132014_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131989132019_))
                                             (let ((_e131994132022_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131989132019_))))
                                               (let ((_tl131992132027_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131994132022_)))
                                                     (_hd131993132025_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131994132022_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131993132025_))
                                                     (let ((_e131997132030_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131993132025_))))
                                                       (let ((_tl131995132035_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131997132030_)))
                     (_hd131996132033_
                      (let () (declare (not safe)) (##car _e131997132030_))))
                 (___kont134395134396_
                  _tl131992132027_
                  _tl131995132035_
                  _hd131996132033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134397134398_))))
                                             (___kont134397134398_))))
                                     (___kont134397134398_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L131573_))
                                 (let* ((_g132132132151_
                                         (lambda (_g132133132148_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g132133132148_))))
                                        (_g132131132434_
                                         (lambda (_g132133132154_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g132133132154_))
                                               (let ((_e132137132156_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g132133132154_))))
                                                 (let ((_hd132136132159_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132137132156_)))
                                                       (_tl132135132161_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132137132156_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl132135132161_))
                                                       (let ((_g135763_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl132135132161_ '0))))
                 (begin
                   (let ((_g135764_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135763_)
                                (##vector-length _g135763_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135764_ 2)))
                         (error "Context expects 2 values" _g135764_)))
                   (let ((_target132138132164_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135763_ 0)))
                         (_tl132140132166_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135763_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl132140132166_))
                         (letrec ((_loop132141132169_
                                   (lambda (_hd132139132172_
                                            _clause132145132174_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132139132172_))
                                         (let ((_e132142132177_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132139132172_))))
                                           (let ((_lp-hd132143132180_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132142132177_)))
                                                 (_lp-tl132144132182_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132142132177_))))
                                             (let ((__tmp135779
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd132143132180_
                                                            _clause132145132174_))))
                                               (declare (not safe))
                                               (_loop132141132169_
                                                _lp-tl132144132182_
                                                __tmp135779))))
                                         (let ((_clause132146132185_
                                                (reverse _clause132145132174_)))
                                           ((lambda (_L132188_)
                                              (for-each
                                               (lambda (_clause132201_)
                                                 (let* ((___stx134419134420_
                                                         _clause132201_)
                                                        (_g132204132219_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx134419134420_)))))
                                                   (let ((___kont134421134422_
                                                          (lambda (_L132247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L132248_
                           _L132249_)
                    (for-each
                     (lambda (_g132264132266_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g132264132266_
                          'receiver:
                          _L132249_
                          'methods:
                          _method-calls131593_
                          'slots:
                          _slot-refs131594_)))
                     _L132247_)))
                 (___kont134423134424_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx134419134420_))
                                                         (let ((_e132211132231_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx134419134420_))))
                   (let ((_tl132209132236_
                          (let ()
                            (declare (not safe))
                            (##cdr _e132211132231_)))
                         (_hd132210132234_
                          (let ()
                            (declare (not safe))
                            (##car _e132211132231_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd132210132234_))
                         (let ((_e132214132239_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd132210132234_))))
                           (let ((_tl132212132244_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e132214132239_)))
                                 (_hd132213132242_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e132214132239_))))
                             (___kont134421134422_
                              _tl132209132236_
                              _tl132212132244_
                              _hd132213132242_)))
                         (___kont134423134424_))))
                 (___kont134423134424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135765
                                                      (lambda (_g132271132274_
                                                               _g132272132276_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132271132274_
                                                                _g132272132276_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135765
                                                         '()
                                                         _L132188_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131597_))
                                                  _stx131501_
                                                  (let* ((_specializer-id132285_
                                                          (let* ((_id132279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135766
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131574_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135766 '"::specialize")))
                         (_specializer-id132282_
                          (let ((__tmp135767
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131501_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132279_ __tmp135767))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132282_))
                    _specializer-id132282_))
                 (_$klass132287_
                  (let ((__tmp135768 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135768)))
                 (_$method-table132289_
                  (let ((__tmp135769 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135769)))
                 (_methods132291_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131593_)))
                 (_$methods132295_
                  (map (lambda (_id132293_)
                         (let ((__tmp135770 (gensym _id132293_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135770)))
                       _methods132291_))
                 (_g135771_
                  (for-each
                   (lambda (_g132296132299_ _g132297132301_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131593_
                        _g132296132299_
                        _g132297132301_)))
                   _methods132291_
                   _$methods132295_))
                 (_methods-bind132312_
                  (map (lambda (_g132304132307_ _g132305132309_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131503_
                            _$klass132287_
                            _$method-table132289_
                            _g132304132307_
                            _g132305132309_)))
                       _methods132291_
                       _$methods132295_))
                 (_slots132314_
                  (let () (declare (not safe)) (hash-keys _slot-refs131594_)))
                 (_$slots132318_
                  (map (lambda (_id132316_)
                         (let ((__tmp135772 (gensym _id132316_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135772)))
                       _slots132314_))
                 (_g135773_
                  (for-each
                   (lambda (_g132319132322_ _g132320132324_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131594_
                        _g132319132322_
                        _g132320132324_)))
                   _slots132314_
                   _$slots132318_))
                 (_slots-bind132335_
                  (map (lambda (_g132327132330_ _g132328132332_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131504_
                            _$klass132287_
                            _g132327132330_
                            _g132328132332_)))
                       _slots132314_
                       _$slots132318_))
                 (_specializer-clauses132427_
                  (map (lambda (_clause132337_)
                         (let* ((___stx134439134440_ _clause132337_)
                                (_g132340132355_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx134439134440_)))))
                           (let ((___kont134441134442_
                                  (lambda (_L132383_ _L132384_ _L132385_)
                                    (let* ((_body132415_
                                            (map (lambda (_g132410132412_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g132410132412_
                                                      'receiver:
                                                      _L132385_
                                                      'klass:
                                                      _$klass132287_
                                                      'methods:
                                                      _method-calls131593_
                                                      'slots:
                                                      _slot-refs131594_)))
                                                 _L132383_))
                                           (__tmp135774
                                            (let ()
                                              (declare (not safe))
                                              (cons _L132385_ _L132384_))))
                                      (declare (not safe))
                                      (cons __tmp135774 _body132415_))))
                                 (___kont134443134444_
                                  (lambda () _clause132337_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx134439134440_))
                                 (let ((_e132347132367_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx134439134440_))))
                                   (let ((_tl132345132372_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e132347132367_)))
                                         (_hd132346132370_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e132347132367_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd132346132370_))
                                         (let ((_e132350132375_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd132346132370_))))
                                           (let ((_tl132348132380_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e132350132375_)))
                                                 (_hd132349132378_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e132350132375_))))
                                             (___kont134441134442_
                                              _tl132345132372_
                                              _tl132348132380_
                                              _hd132349132378_)))
                                         (___kont134443134444_))))
                                 (___kont134443134444_)))))
                       (let ((__tmp135775
                              (lambda (_g132419132422_ _g132420132424_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g132419132422_ _g132420132424_)))))
                         (declare (not safe))
                         (foldr1 __tmp135775 '() _L132188_))))
                 (_specializer-impl132429_
                  (let ((__tmp135776
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses132427_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135776 _stx131501_)))
                 (_specializer-impl132431_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131505_
                     _$klass132287_
                     _$method-table132289_
                     _methods-bind132312_
                     _slots-bind132335_
                     _specializer-impl132429_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135778
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131574_)))
                                                          (__tmp135777
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132285_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135778
                                                       '" => "
                                                       __tmp135777))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131506_
                                                       _L131574_
                                                       _specializer-id132285_
                                                       _specializer-impl132431_)))))
                                            _clause132146132185_))))))
                           (let ()
                             (declare (not safe))
                             (_loop132141132169_ _target132138132164_ '())))
                         (let ()
                           (declare (not safe))
                           (_g132132132151_ _g132133132154_))))))
               (let ()
                 (declare (not safe))
                 (_g132132132151_ _g132133132154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132132132151_
                                                  _g132133132154_))))))
                                   (declare (not safe))
                                   (_g132131132434_ _L131573_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L131573_))
                                     (let* ((_g132437132467_
                                             (lambda (_g132438132464_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132438132464_))))
                                            (_g132436133072_
                                             (lambda (_g132438132470_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132438132470_))
                                                   (let ((_e132444132472_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132438132470_))))
                                                     (let ((_hd132443132475_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132444132472_)))
                                                           (_tl132442132477_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132444132472_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132442132477_))
                                                           (let ((_e132447132480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132442132477_))))
                     (let ((_hd132446132483_
                            (let ()
                              (declare (not safe))
                              (##car _e132447132480_)))
                           (_tl132445132485_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132447132480_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132446132483_))
                           (let ((_e132450132488_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132446132483_))))
                             (let ((_hd132449132491_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132450132488_)))
                                   (_tl132448132493_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132450132488_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132449132491_))
                                   (let ((_e132453132496_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132449132491_))))
                                     (let ((_hd132452132499_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132453132496_)))
                                           (_tl132451132501_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132453132496_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd132452132499_))
                                           (let ((_e132456132504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd132452132499_))))
                                             (let ((_hd132455132507_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132456132504_)))
                                                   (_tl132454132509_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132456132504_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132454132509_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl132451132501_))
                                                       (let ((_e132459132512_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl132451132501_))))
                 (let ((_hd132458132515_
                        (let () (declare (not safe)) (##car _e132459132512_)))
                       (_tl132457132517_
                        (let () (declare (not safe)) (##cdr _e132459132512_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132457132517_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132448132493_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132445132485_))
                               (let ((_e132462132520_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132445132485_))))
                                 (let ((_hd132461132523_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132462132520_)))
                                       (_tl132460132525_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132462132520_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132460132525_))
                                       ((lambda (_L132528_ _L132529_ _L132530_)
                                          (let* ((_g132553132571_
                                                  (lambda (_g132554132568_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132554132568_))))
                                                 (_g132552132622_
                                                  (lambda (_g132554132574_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132554132574_))
                                                        (let ((_e132560132576_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132554132574_))))
                  (let ((_hd132559132579_
                         (let () (declare (not safe)) (##car _e132560132576_)))
                        (_tl132558132581_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132560132576_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl132558132581_))
                        (let ((_e132563132584_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl132558132581_))))
                          (let ((_hd132562132587_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e132563132584_)))
                                (_tl132561132589_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e132563132584_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd132562132587_))
                                (let ((_e132566132592_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd132562132587_))))
                                  (let ((_hd132565132595_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132566132592_)))
                                        (_tl132564132597_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132566132592_))))
                                    ((lambda (_L132600_ _L132601_ _L132602_)
                                       (for-each
                                        (lambda (_g132617132619_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132617132619_
                                             'receiver:
                                             _L132602_
                                             'methods:
                                             _method-calls131593_
                                             'slots:
                                             _slot-refs131594_)))
                                        _L132600_))
                                     _tl132561132589_
                                     _tl132564132597_
                                     _hd132565132595_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132553132571_ _g132554132574_)))))
                        (let ()
                          (declare (not safe))
                          (_g132553132571_ _g132554132574_)))))
                (let ()
                  (declare (not safe))
                  (_g132553132571_ _g132554132574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132552132622_ _L132529_))
                                          (let* ((_g132625132644_
                                                  (lambda (_g132626132641_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132626132641_))))
                                                 (_g132624132763_
                                                  (lambda (_g132626132647_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132626132647_))
                                                        (let ((_e132630132649_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132626132647_))))
                  (let ((_hd132629132652_
                         (let () (declare (not safe)) (##car _e132630132649_)))
                        (_tl132628132654_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132630132649_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132628132654_))
                        (let ((_g135733_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132628132654_
                                  '0))))
                          (begin
                            (let ((_g135734_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135733_)
                                         (##vector-length _g135733_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135734_ 2)))
                                  (error "Context expects 2 values"
                                         _g135734_)))
                            (let ((_target132631132657_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135733_ 0)))
                                  (_tl132633132659_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135733_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132633132659_))
                                  (letrec ((_loop132634132662_
                                            (lambda (_hd132632132665_
                                                     _clause132638132667_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132632132665_))
                                                  (let ((_e132635132670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132632132665_))))
                                                    (let ((_lp-hd132636132673_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132635132670_)))
                                                          (_lp-tl132637132675_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132635132670_))))
                                                      (let ((__tmp135736
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132636132673_ _clause132638132667_))))
                (declare (not safe))
                (_loop132634132662_ _lp-tl132637132675_ __tmp135736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132639132678_
                                                         (reverse _clause132638132667_)))
                                                    ((lambda (_L132681_)
                                                       (for-each
                                                        (lambda (_clause132694_)
                                                          (let* ((_g132696132711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132697132708_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132697132708_))))
                         (_g132695132753_
                          (lambda (_g132697132714_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132697132714_))
                                (let ((_e132703132716_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132697132714_))))
                                  (let ((_hd132702132719_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132703132716_)))
                                        (_tl132701132721_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132703132716_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132702132719_))
                                        (let ((_e132706132724_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132702132719_))))
                                          (let ((_hd132705132727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132706132724_)))
                                                (_tl132704132729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132706132724_))))
                                            ((lambda (_L132732_
                                                      _L132733_
                                                      _L132734_)
                                               (for-each
                                                (lambda (_g132748132750_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132748132750_
                                                     'receiver:
                                                     _L132734_
                                                     'methods:
                                                     _method-calls131593_
                                                     'slots:
                                                     _slot-refs131594_)))
                                                _L132732_))
                                             _tl132701132721_
                                             _tl132704132729_
                                             _hd132705132727_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132696132711_ _g132697132714_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132696132711_ _g132697132714_))))))
                    (declare (not safe))
                    (_g132695132753_ _clause132694_)))
                (let ((__tmp135735
                       (lambda (_g132755132758_ _g132756132760_)
                         (let ()
                           (declare (not safe))
                           (cons _g132755132758_ _g132756132760_)))))
                  (declare (not safe))
                  (foldr1 __tmp135735 '() _L132681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132639132678_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132634132662_
                                       _target132631132657_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132625132644_ _g132626132647_))))))
                        (let ()
                          (declare (not safe))
                          (_g132625132644_ _g132626132647_)))))
                (let ()
                  (declare (not safe))
                  (_g132625132644_ _g132626132647_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132624132763_ _L132528_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131597_))
                                              _stx131501_
                                              (let* ((_specializer-id132772_
                                                      (let* ((_id132766_
                                                              (let ((__tmp135737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L131574_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135737 '"::specialize")))
                     (_specializer-id132769_
                      (let ((__tmp135738
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx131501_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132766_ __tmp135738))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132769_))
                _specializer-id132769_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132774_
                                                      (let ((__tmp135739
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135739)))
                                                     (_$method-table132776_
                                                      (let ((__tmp135740
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135740)))
                                                     (_methods132778_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131593_)))
                                                     (_$methods132782_
                                                      (map (lambda (_id132780_)
                                                             (let ((__tmp135741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132780_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135741)))
                   _methods132778_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135742_
                                                      (for-each
                                                       (lambda (_g132783132786_
                                                                _g132784132788_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131593_
                                                            _g132783132786_
                                                            _g132784132788_)))
                                                       _methods132778_
                                                       _$methods132782_))
                                                     (_methods-bind132799_
                                                      (map (lambda (_g132791132794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132792132796_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind131503_
                        _$klass132774_
                        _$method-table132776_
                        _g132791132794_
                        _g132792132796_)))
                   _methods132778_
                   _$methods132782_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132801_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131594_)))
                                                     (_$slots132805_
                                                      (map (lambda (_id132803_)
                                                             (let ((__tmp135743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132803_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135743)))
                   _slots132801_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135744_
                                                      (for-each
                                                       (lambda (_g132806132809_
                                                                _g132807132811_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131594_
                                                            _g132806132809_
                                                            _g132807132811_)))
                                                       _slots132801_
                                                       _$slots132805_))
                                                     (_slots-bind132822_
                                                      (map (lambda (_g132814132817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132815132819_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind131504_
                        _$klass132774_
                        _g132814132817_
                        _g132815132819_)))
                   _slots132801_
                   _$slots132805_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132908_
                                                      (let* ((_g132824132842_
                                                              (lambda (_g132825132839_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132825132839_))))
                     (_g132823132905_
                      (lambda (_g132825132845_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132825132845_))
                            (let ((_e132831132847_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132825132845_))))
                              (let ((_hd132830132850_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132831132847_)))
                                    (_tl132829132852_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132831132847_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132829132852_))
                                    (let ((_e132834132855_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132829132852_))))
                                      (let ((_hd132833132858_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132834132855_)))
                                            (_tl132832132860_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132834132855_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132833132858_))
                                            (let ((_e132837132863_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132833132858_))))
                                              (let ((_hd132836132866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132837132863_)))
                                                    (_tl132835132868_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132837132863_))))
                                                ((lambda (_L132871_
                                                          _L132872_
                                                          _L132873_)
                                                   (let* ((_body132903_
                                                           (map (lambda (_g132898132900_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132898132900_
                             'receiver:
                             _L132873_
                             'klass:
                             _$klass132774_
                             'methods:
                             _method-calls131593_
                             'slots:
                             _slot-refs131594_)))
                        _L132871_))
                  (__tmp135745
                   (let ((__tmp135746
                          (let ((__tmp135747
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132873_ _L132872_))))
                            (declare (not safe))
                            (cons __tmp135747 _body132903_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135745
                                                      _L132529_)))
                                                 _tl132832132860_
                                                 _tl132835132868_
                                                 _hd132836132866_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132824132842_
                                               _g132825132845_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132824132842_ _g132825132845_)))))
                            (let ()
                              (declare (not safe))
                              (_g132824132842_ _g132825132845_))))))
                (declare (not safe))
                (_g132823132905_ _L132529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr133065_
                                                      (let* ((_g132910132929_
                                                              (lambda (_g132911132926_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132911132926_))))
                     (_g132909133062_
                      (lambda (_g132911132932_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132911132932_))
                            (let ((_e132915132934_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132911132932_))))
                              (let ((_hd132914132937_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132915132934_)))
                                    (_tl132913132939_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132915132934_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132913132939_))
                                    (let ((_g135748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132913132939_
                                              '0))))
                                      (begin
                                        (let ((_g135749_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135748_)
                                                     (##vector-length
                                                      _g135748_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135749_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135749_)))
                                        (let ((_target132916132942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135748_ 0)))
                                              (_tl132918132944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135748_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132918132944_))
                                              (letrec ((_loop132919132947_
                                                        (lambda (_hd132917132950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132923132952_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132917132950_))
                      (let ((_e132920132955_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132917132950_))))
                        (let ((_lp-hd132921132958_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132920132955_)))
                              (_lp-tl132922132960_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132920132955_))))
                          (let ((__tmp135753
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132921132958_
                                         _clause132923132952_))))
                            (declare (not safe))
                            (_loop132919132947_
                             _lp-tl132922132960_
                             __tmp135753))))
                      (let ((_clause132924132963_
                             (reverse _clause132923132952_)))
                        ((lambda (_L132966_)
                           (let* ((_clauses133060_
                                   (map (lambda (_clause132980_)
                                          (let* ((___stx134459134460_
                                                  _clause132980_)
                                                 (_g132983132998_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134459134460_)))))
                                            (let ((___kont134461134462_
                                                   (lambda (_L133026_
                                                            _L133027_
                                                            _L133028_)
                                                     (let* ((_body133048_
                                                             (map (lambda (_g133043133045_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g133043133045_
                               'receiver:
                               _L133028_
                               'klass:
                               _$klass132774_
                               'methods:
                               _method-calls131593_
                               'slots:
                               _slot-refs131594_)))
                          _L133026_))
                    (__tmp135750
                     (let () (declare (not safe)) (cons _L133028_ _L133027_))))
               (declare (not safe))
               (cons __tmp135750 _body133048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134463134464_
                                                   (lambda () _clause132980_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx134459134460_))
                                                  (let ((_e132990133010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx134459134460_))))
                                                    (let ((_tl132988133015_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132990133010_)))
                                                          (_hd132989133013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132990133010_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132989133013_))
                                                          (let ((_e132993133018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132989133013_))))
                    (let ((_tl132991133023_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132993133018_)))
                          (_hd132992133021_
                           (let ()
                             (declare (not safe))
                             (##car _e132993133018_))))
                      (___kont134461134462_
                       _tl132988133015_
                       _tl132991133023_
                       _hd132992133021_)))
                  (___kont134463134464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134463134464_)))))
                                        (let ((__tmp135751
                                               (lambda (_g133052133055_
                                                        _g133053133057_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g133052133055_
                                                         _g133053133057_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135751 '() _L132966_))))
                                  (__tmp135752
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses133060_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135752 _L132528_)))
                         _clause132924132963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132919132947_
                                                   _target132916132942_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132910132929_
                                                 _g132911132932_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132910132929_ _g132911132932_)))))
                            (let ()
                              (declare (not safe))
                              (_g132910132929_ _g132911132932_))))))
                (declare (not safe))
                (_g132909133062_ _L132528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133067_
                                                      (let ((__tmp135754
                                                             (let ((__tmp135755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135757
                                   (let ((__tmp135758
                                          (let ((__tmp135760
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L132530_ '())))
                                                (__tmp135759
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132908_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135760 __tmp135759))))
                                     (declare (not safe))
                                     (cons __tmp135758 '())))
                                  (__tmp135756
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr133065_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135757 __tmp135756))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135755))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135754 _stx131501_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl133069_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl131505_
                                                         _$klass132774_
                                                         _$method-table132776_
                                                         _methods-bind132799_
                                                         _slots-bind132822_
                                                         _specializer-impl133067_))))
                                                (let ((__tmp135762
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L131574_)))
                                                      (__tmp135761
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132772_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135762
                                                   '" => "
                                                   __tmp135761))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def131506_
                                                   _L131574_
                                                   _specializer-id132772_
                                                   _specializer-impl133069_)))))
                                        _hd132461132523_
                                        _hd132458132515_
                                        _hd132455132507_)
                                       (let ()
                                         (declare (not safe))
                                         (_g132437132467_ _g132438132470_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132437132467_ _g132438132470_)))
                           (let ()
                             (declare (not safe))
                             (_g132437132467_ _g132438132470_)))
                       (let ()
                         (declare (not safe))
                         (_g132437132467_ _g132438132470_)))))
               (let () (declare (not safe)) (_g132437132467_ _g132438132470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132437132467_
                                                      _g132438132470_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132437132467_
                                              _g132438132470_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132437132467_ _g132438132470_)))))
                           (let ()
                             (declare (not safe))
                             (_g132437132467_ _g132438132470_)))))
                   (let ()
                     (declare (not safe))
                     (_g132437132467_ _g132438132470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132437132467_
                                                      _g132438132470_))))))
                                       (declare (not safe))
                                       (_g132436133072_ _L131573_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L131573_))
                                         (let* ((_g133075133128_
                                                 (lambda (_g133076133125_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133076133125_))))
                                                (_g133074134259_
                                                 (lambda (_g133076133131_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133076133131_))
                                                       (let ((_e133084133133_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133076133131_))))
                 (let ((_hd133083133136_
                        (let () (declare (not safe)) (##car _e133084133133_)))
                       (_tl133082133138_
                        (let () (declare (not safe)) (##cdr _e133084133133_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd133083133136_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd133083133136_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133082133138_))
                               (let ((_e133087133141_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133082133138_))))
                                 (let ((_hd133086133144_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133087133141_)))
                                       (_tl133085133146_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133087133141_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133086133144_))
                                       (let ((_e133090133149_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133086133144_))))
                                         (let ((_hd133089133152_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133090133149_)))
                                               (_tl133088133154_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133090133149_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133089133152_))
                                               (let ((_e133093133157_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133089133152_))))
                                                 (let ((_hd133092133160_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133093133157_)))
                                                       (_tl133091133162_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133093133157_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd133092133160_))
                                                       (let ((_e133096133165_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd133092133160_))))
                 (let ((_hd133095133168_
                        (let () (declare (not safe)) (##car _e133096133165_)))
                       (_tl133094133170_
                        (let () (declare (not safe)) (##cdr _e133096133165_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133094133170_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl133091133162_))
                           (let ((_e133099133173_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl133091133162_))))
                             (let ((_hd133098133176_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133099133173_)))
                                   (_tl133097133178_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133099133173_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133098133176_))
                                   (let ((_e133102133181_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133098133176_))))
                                     (let ((_hd133101133184_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133102133181_)))
                                           (_tl133100133186_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133102133181_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd133101133184_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd133101133184_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl133100133186_))
                                                   (let ((_e133105133189_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl133100133186_))))
                                                     (let ((_hd133104133192_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133105133189_)))
                                                           (_tl133103133194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133105133189_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd133104133192_))
                                                           (let ((_e133108133197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd133104133192_))))
                     (let ((_hd133107133200_
                            (let ()
                              (declare (not safe))
                              (##car _e133108133197_)))
                           (_tl133106133202_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133108133197_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133107133200_))
                           (let ((_e133111133205_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133107133200_))))
                             (let ((_hd133110133208_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133111133205_)))
                                   (_tl133109133210_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133111133205_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133110133208_))
                                   (let ((_e133114133213_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133110133208_))))
                                     (let ((_hd133113133216_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133114133213_)))
                                           (_tl133112133218_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133114133213_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133112133218_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl133109133210_))
                                               (let ((_e133117133221_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl133109133210_))))
                                                 (let ((_hd133116133224_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133117133221_)))
                                                       (_tl133115133226_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133117133221_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133115133226_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl133106133202_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl133103133194_))
                       (let ((_e133120133229_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133103133194_))))
                         (let ((_hd133119133232_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133120133229_)))
                               (_tl133118133234_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133120133229_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133118133234_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl133097133178_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133088133154_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl133085133146_))
                                           (let ((_e133123133237_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl133085133146_))))
                                             (let ((_hd133122133240_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133123133237_)))
                                                   (_tl133121133242_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133123133237_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133121133242_))
                                                   ((lambda (_L133245_
                                                             _L133246_
                                                             _L133247_
                                                             _L133248_
                                                             _L133249_)
                                                      (let* ((_g133288133350_
                                                              (lambda (_g133289133347_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g133289133347_))))
                     (_g133287134256_
                      (lambda (_g133289133353_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g133289133353_))
                            (let ((_e133297133355_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g133289133353_))))
                              (let ((_hd133296133358_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133297133355_)))
                                    (_tl133295133360_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133297133355_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd133296133358_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd133296133358_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl133295133360_))
                                            (let ((_e133300133363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl133295133360_))))
                                              (let ((_hd133299133366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133300133363_)))
                                                    (_tl133298133368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133300133363_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133298133368_))
                                                    (let ((_e133303133371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133298133368_))))
                                                      (let ((_hd133302133374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133303133371_)))
                    (_tl133301133376_
                     (let () (declare (not safe)) (##cdr _e133303133371_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd133302133374_))
                    (let ((_e133306133379_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd133302133374_))))
                      (let ((_hd133305133382_
                             (let ()
                               (declare (not safe))
                               (##car _e133306133379_)))
                            (_tl133304133384_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133306133379_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd133305133382_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd133305133382_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl133304133384_))
                                    (let ((_e133309133387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl133304133384_))))
                                      (let ((_hd133308133390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133309133387_)))
                                            (_tl133307133392_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133309133387_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd133308133390_))
                                            (let ((_e133312133395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd133308133390_))))
                                              (let ((_hd133311133398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e133312133395_)))
                                                    (_tl133310133400_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e133312133395_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd133311133398_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd133311133398_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl133310133400_))
                                                            (let ((_e133315133403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl133310133400_))))
                      (let ((_hd133314133406_
                             (let ()
                               (declare (not safe))
                               (##car _e133315133403_)))
                            (_tl133313133408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133315133403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133313133408_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl133307133392_))
                                (let ((_e133318133411_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl133307133392_))))
                                  (let ((_hd133317133414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133318133411_)))
                                        (_tl133316133416_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133318133411_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd133317133414_))
                                        (let ((_e133321133419_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd133317133414_))))
                                          (let ((_hd133320133422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133321133419_)))
                                                (_tl133319133424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133321133419_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd133320133422_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd133320133422_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl133319133424_))
                                                        (let ((_e133324133427_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl133319133424_))))
                  (let ((_hd133323133430_
                         (let () (declare (not safe)) (##car _e133324133427_)))
                        (_tl133322133432_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133324133427_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl133322133432_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133316133416_))
                            (let ((_e133327133435_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133316133416_))))
                              (let ((_hd133326133438_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133327133435_)))
                                    (_tl133325133440_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133327133435_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd133326133438_))
                                    (let ((_e133330133443_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd133326133438_))))
                                      (let ((_hd133329133446_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133330133443_)))
                                            (_tl133328133448_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133330133443_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd133329133446_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd133329133446_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl133328133448_))
                                                    (let ((_e133333133451_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl133328133448_))))
                                                      (let ((_hd133332133454_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e133333133451_)))
                    (_tl133331133456_
                     (let () (declare (not safe)) (##cdr _e133333133451_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl133331133456_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133325133440_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl133325133440_))
                                  '1)
                            (let ((_g135659_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133325133440_
                                      '1))))
                              (begin
                                (let ((_g135660_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135659_)
                                             (##vector-length _g135659_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135660_ 2)))
                                      (error "Context expects 2 values"
                                             _g135660_)))
                                (let ((_target133334133459_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135659_ 0)))
                                      (_tl133336133461_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135659_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl133336133461_))
                                      (let ((_e133345133464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl133336133461_))))
                                        (let ((_hd133344133467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e133345133464_)))
                                              (_tl133343133469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e133345133464_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl133343133469_))
                                              (letrec ((_loop133337133472_
                                                        (lambda (_hd133335133475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref133341133477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd133335133475_))
                      (let ((_e133338133480_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd133335133475_))))
                        (let ((_lp-hd133339133483_
                               (let ()
                                 (declare (not safe))
                                 (##car _e133338133480_)))
                              (_lp-tl133340133485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e133338133480_))))
                          (let ((__tmp135732
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd133339133483_
                                         _kw-ref133341133477_))))
                            (declare (not safe))
                            (_loop133337133472_
                             _lp-tl133340133485_
                             __tmp135732))))
                      (let ((_kw-ref133342133488_
                             (reverse _kw-ref133341133477_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl133301133376_))
                            ((lambda (_L133491_
                                      _L133492_
                                      _L133493_
                                      _L133494_
                                      _L133495_)
                               (let* ((_kw-count133546_
                                       (length (let ((__tmp135661
                                                      (lambda (_g133538133541_
                                                               _g133539133543_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133538133541_
                                                                _g133539133543_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135661
                                                         '()
                                                         _L133492_))))
                                      (_self-index133548_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count133546_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L133247_))
                                     (let* ((_g133551133565_
                                             (lambda (_g133552133562_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133552133562_))))
                                            (_g133550133678_
                                             (lambda (_g133552133568_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133552133568_))
                                                   (let ((_e133557133570_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133552133568_))))
                                                     (let ((_hd133556133573_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133557133570_)))
                                                           (_tl133555133575_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133557133570_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133555133575_))
                                                           (let ((_e133560133578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133555133575_))))
                     (let ((_hd133559133581_
                            (let ()
                              (declare (not safe))
                              (##car _e133560133578_)))
                           (_tl133558133583_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133560133578_))))
                       ((lambda (_L133586_ _L133587_)
                          (let ((_self133603_
                                 (list-ref _L133587_ _self-index133548_)))
                            (for-each
                             (lambda (_g133604133606_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133604133606_
                                  'receiver:
                                  _self133603_
                                  'methods:
                                  _method-calls131593_
                                  'slots:
                                  _slot-refs131594_)))
                             _L133586_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131597_))
                                _stx131501_
                                (let* ((_specializer-id133615_
                                        (let* ((_id133609_
                                                (let ((__tmp135705
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L131574_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135705
                                                   '"::specialize")))
                                               (_specializer-id133612_
                                                (let ((__tmp135706
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx131501_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133609_
                                                   __tmp135706))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133612_))
                                          _specializer-id133612_))
                                       (_$klass133617_
                                        (let ((__tmp135707 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135707)))
                                       (_$method-table133619_
                                        (let ((__tmp135708
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135708)))
                                       (_methods133621_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131593_)))
                                       (_$methods133625_
                                        (map (lambda (_id133623_)
                                               (let ((__tmp135709
                                                      (gensym _id133623_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135709)))
                                             _methods133621_))
                                       (_g135710_
                                        (for-each
                                         (lambda (_g133626133629_
                                                  _g133627133631_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131593_
                                              _g133626133629_
                                              _g133627133631_)))
                                         _methods133621_
                                         _$methods133625_))
                                       (_methods-bind133642_
                                        (map (lambda (_g133634133637_
                                                      _g133635133639_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind131503_
                                                  _$klass133617_
                                                  _$method-table133619_
                                                  _g133634133637_
                                                  _g133635133639_)))
                                             _methods133621_
                                             _$methods133625_))
                                       (_slots133644_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131594_)))
                                       (_$slots133648_
                                        (map (lambda (_id133646_)
                                               (let ((__tmp135711
                                                      (gensym _id133646_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135711)))
                                             _slots133644_))
                                       (_g135712_
                                        (for-each
                                         (lambda (_g133649133652_
                                                  _g133650133654_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131594_
                                              _g133649133652_
                                              _g133650133654_)))
                                         _slots133644_
                                         _$slots133648_))
                                       (_slots-bind133665_
                                        (map (lambda (_g133657133660_
                                                      _g133658133662_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind131504_
                                                  _$klass133617_
                                                  _g133657133660_
                                                  _g133658133662_)))
                                             _slots133644_
                                             _$slots133648_))
                                       (_specializer-impl133673_
                                        (let* ((_specializer-body133671_
                                                (map (lambda (_g133666133668_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133666133668_
                                                          'receiver:
                                                          _self133603_
                                                          'klass:
                                                          _$klass133617_
                                                          'methods:
                                                          _method-calls131593_
                                                          'slots:
                                                          _slot-refs131594_)))
                                                     _L133586_))
                                               (__tmp135713
                                                (let ((__tmp135714
                                                       (let ((__tmp135716
                                                              (let ((__tmp135717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135729
                                    (let ()
                                      (declare (not safe))
                                      (cons _L133249_ '())))
                                   (__tmp135718
                                    (let ((__tmp135719
                                           (let ((__tmp135720
                                                  (let ((__tmp135722
                                                         (let ((__tmp135723
                                                                (let ((__tmp135728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L133248_ '())))
                              (__tmp135724
                               (let ((__tmp135725
                                      (let ((__tmp135726
                                             (let ((__tmp135727
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133587_
                                                            _specializer-body133671_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135727))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135726
                                         _L133247_))))
                                 (declare (not safe))
                                 (cons __tmp135725 '()))))
                          (declare (not safe))
                          (cons __tmp135728 __tmp135724))))
                   (declare (not safe))
                   (cons __tmp135723 '())))
                (__tmp135721
                 (let () (declare (not safe)) (cons _L133246_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135722
                                                          __tmp135721))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135720))))
                                      (declare (not safe))
                                      (cons __tmp135719 '()))))
                               (declare (not safe))
                               (cons __tmp135729 __tmp135718))))
                        (declare (not safe))
                        (cons __tmp135717 '())))
                     (__tmp135715
                      (let () (declare (not safe)) (cons _L133245_ '()))))
                 (declare (not safe))
                 (cons __tmp135716 __tmp135715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135714))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135713
                                           _stx131501_)))
                                       (_specializer-impl133675_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl131505_
                                           _$klass133617_
                                           _$method-table133619_
                                           _methods-bind133642_
                                           _slots-bind133665_
                                           _specializer-impl133673_))))
                                  (let ((__tmp135731
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L131574_)))
                                        (__tmp135730
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133615_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135731
                                     '" => "
                                     __tmp135730))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def131506_
                                     _L131574_
                                     _specializer-id133615_
                                     _specializer-impl133675_))))))
                        _tl133558133583_
                        _hd133559133581_)))
                   (let ()
                     (declare (not safe))
                     (_g133551133565_ _g133552133568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133551133565_
                                                      _g133552133568_))))))
                                       (declare (not safe))
                                       (_g133550133678_ _L133247_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L133247_))
                                         (let* ((_g133681133711_
                                                 (lambda (_g133682133708_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133682133708_))))
                                                (_g133680134253_
                                                 (lambda (_g133682133714_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133682133714_))
                                                       (let ((_e133688133716_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133682133714_))))
                 (let ((_hd133687133719_
                        (let () (declare (not safe)) (##car _e133688133716_)))
                       (_tl133686133721_
                        (let () (declare (not safe)) (##cdr _e133688133716_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133686133721_))
                       (let ((_e133691133724_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133686133721_))))
                         (let ((_hd133690133727_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133691133724_)))
                               (_tl133689133729_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133691133724_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133690133727_))
                               (let ((_e133694133732_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133690133727_))))
                                 (let ((_hd133693133735_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133694133732_)))
                                       (_tl133692133737_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133694133732_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133693133735_))
                                       (let ((_e133697133740_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133693133735_))))
                                         (let ((_hd133696133743_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133697133740_)))
                                               (_tl133695133745_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133697133740_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133696133743_))
                                               (let ((_e133700133748_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133696133743_))))
                                                 (let ((_hd133699133751_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133700133748_)))
                                                       (_tl133698133753_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133700133748_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133698133753_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133695133745_))
                                                           (let ((_e133703133756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133695133745_))))
                     (let ((_hd133702133759_
                            (let ()
                              (declare (not safe))
                              (##car _e133703133756_)))
                           (_tl133701133761_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133703133756_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133701133761_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133692133737_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133689133729_))
                                   (let ((_e133706133764_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133689133729_))))
                                     (let ((_hd133705133767_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133706133764_)))
                                           (_tl133704133769_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133706133764_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133704133769_))
                                           ((lambda (_L133772_
                                                     _L133773_
                                                     _L133774_)
                                              (let* ((_g133797133811_
                                                      (lambda (_g133798133808_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133798133808_))))
                                                     (_g133796133852_
                                                      (lambda (_g133798133814_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133798133814_))
                                                            (let ((_e133803133816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133798133814_))))
                      (let ((_hd133802133819_
                             (let ()
                               (declare (not safe))
                               (##car _e133803133816_)))
                            (_tl133801133821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133803133816_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133801133821_))
                            (let ((_e133806133824_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133801133821_))))
                              (let ((_hd133805133827_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133806133824_)))
                                    (_tl133804133829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133806133824_))))
                                ((lambda (_L133832_ _L133833_)
                                   (let ((_self133846_
                                          (list-ref
                                           _L133833_
                                           _self-index133548_)))
                                     (for-each
                                      (lambda (_g133847133849_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133847133849_
                                           'receiver:
                                           _self133846_
                                           'methods:
                                           _method-calls131593_
                                           'slots:
                                           _slot-refs131594_)))
                                      _L133832_)))
                                 _tl133804133829_
                                 _hd133805133827_)))
                            (let ()
                              (declare (not safe))
                              (_g133797133811_ _g133798133814_)))))
                    (let ()
                      (declare (not safe))
                      (_g133797133811_ _g133798133814_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133796133852_ _L133773_))
                                              (let* ((_g133855133874_
                                                      (lambda (_g133856133871_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133856133871_))))
                                                     (_g133854133979_
                                                      (lambda (_g133856133877_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133856133877_))
                                                            (let ((_e133860133879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133856133877_))))
                      (let ((_hd133859133882_
                             (let ()
                               (declare (not safe))
                               (##car _e133860133879_)))
                            (_tl133858133884_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133860133879_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133858133884_))
                            (let ((_g135662_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133858133884_
                                      '0))))
                              (begin
                                (let ((_g135663_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135662_)
                                             (##vector-length _g135662_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135663_ 2)))
                                      (error "Context expects 2 values"
                                             _g135663_)))
                                (let ((_target133861133887_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135662_ 0)))
                                      (_tl133863133889_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135662_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133863133889_))
                                      (letrec ((_loop133864133892_
                                                (lambda (_hd133862133895_
                                                         _clause133868133897_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133862133895_))
                                                      (let ((_e133865133900_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133862133895_))))
                (let ((_lp-hd133866133903_
                       (let () (declare (not safe)) (##car _e133865133900_)))
                      (_lp-tl133867133905_
                       (let () (declare (not safe)) (##cdr _e133865133900_))))
                  (let ((__tmp135665
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133866133903_ _clause133868133897_))))
                    (declare (not safe))
                    (_loop133864133892_ _lp-tl133867133905_ __tmp135665))))
              (let ((_clause133869133908_ (reverse _clause133868133897_)))
                ((lambda (_L133911_)
                   (for-each
                    (lambda (_clause133924_)
                      (let* ((_g133926133937_
                              (lambda (_g133927133934_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133927133934_))))
                             (_g133925133969_
                              (lambda (_g133927133940_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133927133940_))
                                    (let ((_e133932133942_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133927133940_))))
                                      (let ((_hd133931133945_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133932133942_)))
                                            (_tl133930133947_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133932133942_))))
                                        ((lambda (_L133950_ _L133951_)
                                           (let ((_self133963_
                                                  (list-ref
                                                   _L133951_
                                                   _self-index133548_)))
                                             (for-each
                                              (lambda (_g133964133966_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133964133966_
                                                   'receiver:
                                                   _self133963_
                                                   'methods:
                                                   _method-calls131593_
                                                   'slots:
                                                   _slot-refs131594_)))
                                              _L133950_)))
                                         _tl133930133947_
                                         _hd133931133945_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133926133937_ _g133927133940_))))))
                        (declare (not safe))
                        (_g133925133969_ _clause133924_)))
                    (let ((__tmp135664
                           (lambda (_g133971133974_ _g133972133976_)
                             (let ()
                               (declare (not safe))
                               (cons _g133971133974_ _g133972133976_)))))
                      (declare (not safe))
                      (foldr1 __tmp135664 '() _L133911_))))
                 _clause133869133908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133864133892_
                                           _target133861133887_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133855133874_ _g133856133877_))))))
                            (let ()
                              (declare (not safe))
                              (_g133855133874_ _g133856133877_)))))
                    (let ()
                      (declare (not safe))
                      (_g133855133874_ _g133856133877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133854133979_ _L133772_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131597_))
                                                  _stx131501_
                                                  (let* ((_specializer-id133988_
                                                          (let* ((_id133982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135666
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L131574_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135666 '"::specialize")))
                         (_specializer-id133985_
                          (let ((__tmp135667
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx131501_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133982_ __tmp135667))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133985_))
                    _specializer-id133985_))
                 (_$klass133990_
                  (let ((__tmp135668 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135668)))
                 (_$method-table133992_
                  (let ((__tmp135669 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135669)))
                 (_methods133994_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131593_)))
                 (_$methods133998_
                  (map (lambda (_id133996_)
                         (let ((__tmp135670 (gensym _id133996_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135670)))
                       _methods133994_))
                 (_g135671_
                  (for-each
                   (lambda (_g133999134002_ _g134000134004_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131593_
                        _g133999134002_
                        _g134000134004_)))
                   _methods133994_
                   _$methods133998_))
                 (_methods-bind134015_
                  (map (lambda (_g134007134010_ _g134008134012_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind131503_
                            _$klass133990_
                            _$method-table133992_
                            _g134007134010_
                            _g134008134012_)))
                       _methods133994_
                       _$methods133998_))
                 (_slots134017_
                  (let () (declare (not safe)) (hash-keys _slot-refs131594_)))
                 (_$slots134021_
                  (map (lambda (_id134019_)
                         (let ((__tmp135672 (gensym _id134019_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135672)))
                       _slots134017_))
                 (_g135673_
                  (for-each
                   (lambda (_g134022134025_ _g134023134027_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131594_
                        _g134022134025_
                        _g134023134027_)))
                   _slots134017_
                   _$slots134021_))
                 (_slots-bind134038_
                  (map (lambda (_g134030134033_ _g134031134035_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind131504_
                            _$klass133990_
                            _g134030134033_
                            _g134031134035_)))
                       _slots134017_
                       _$slots134021_))
                 (_specializer-lambda-expr134111_
                  (let* ((_g134040134054_
                          (lambda (_g134041134051_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134041134051_))))
                         (_g134039134108_
                          (lambda (_g134041134057_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134041134057_))
                                (let ((_e134046134059_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134041134057_))))
                                  (let ((_hd134045134062_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134046134059_)))
                                        (_tl134044134064_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134046134059_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl134044134064_))
                                        (let ((_e134049134067_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl134044134064_))))
                                          (let ((_hd134048134070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134049134067_)))
                                                (_tl134047134072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134049134067_))))
                                            ((lambda (_L134075_ _L134076_)
                                               (let* ((_self134099_
                                                       (list-ref
                                                        _L134076_
                                                        _self-index133548_))
                                                      (_body134105_
                                                       (map (lambda (_g134100134102_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g134100134102_
                         'receiver:
                         _self134099_
                         'klass:
                         _$klass133990_
                         'methods:
                         _method-calls131593_
                         'slots:
                         _slot-refs131594_)))
                    _L134075_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135674
                                                        (let ((__tmp135675
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L134076_ _body134105_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135674
                                                    _L133773_))))
                                             _tl134047134072_
                                             _hd134048134070_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134040134054_ _g134041134057_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134040134054_ _g134041134057_))))))
                    (declare (not safe))
                    (_g134039134108_ _L133773_)))
                 (_specializer-case-lambda-expr134246_
                  (let* ((_g134113134132_
                          (lambda (_g134114134129_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134114134129_))))
                         (_g134112134243_
                          (lambda (_g134114134135_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134114134135_))
                                (let ((_e134118134137_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134114134135_))))
                                  (let ((_hd134117134140_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134118134137_)))
                                        (_tl134116134142_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134118134137_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl134116134142_))
                                        (let ((_g135676_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl134116134142_
                                                  '0))))
                                          (begin
                                            (let ((_g135677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135676_)
                                                         (##vector-length
                                                          _g135676_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135677_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135677_)))
                                            (let ((_target134119134145_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135676_
                                                      0)))
                                                  (_tl134121134147_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135676_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl134121134147_))
                                                  (letrec ((_loop134122134150_
                                                            (lambda (_hd134120134153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause134126134155_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd134120134153_))
                          (let ((_e134123134158_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd134120134153_))))
                            (let ((_lp-hd134124134161_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e134123134158_)))
                                  (_lp-tl134125134163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e134123134158_))))
                              (let ((__tmp135680
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd134124134161_
                                             _clause134126134155_))))
                                (declare (not safe))
                                (_loop134122134150_
                                 _lp-tl134125134163_
                                 __tmp135680))))
                          (let ((_clause134127134166_
                                 (reverse _clause134126134155_)))
                            ((lambda (_L134169_)
                               (let* ((_clauses134241_
                                       (map (lambda (_clause134183_)
                                              (let* ((_g134185134196_
                                                      (lambda (_g134186134193_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g134186134193_))))
                                                     (_g134184134231_
                                                      (lambda (_g134186134199_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g134186134199_))
                                                            (let ((_e134191134201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g134186134199_))))
                      (let ((_hd134190134204_
                             (let ()
                               (declare (not safe))
                               (##car _e134191134201_)))
                            (_tl134189134206_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134191134201_))))
                        ((lambda (_L134209_ _L134210_)
                           (let* ((_self134222_
                                   (list-ref _L134210_ _self-index133548_))
                                  (_body134228_
                                   (map (lambda (_g134223134225_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g134223134225_
                                             'receiver:
                                             _self134222_
                                             'klass:
                                             _$klass133990_
                                             'methods:
                                             _method-calls131593_
                                             'slots:
                                             _slot-refs131594_)))
                                        _L134209_)))
                             (let ()
                               (declare (not safe))
                               (cons _L134210_ _body134228_))))
                         _tl134189134206_
                         _hd134190134204_)))
                    (let ()
                      (declare (not safe))
                      (_g134185134196_ _g134186134199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g134184134231_
                                                 _clause134183_)))
                                            (let ((__tmp135678
                                                   (lambda (_g134233134236_
                                                            _g134234134238_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g134233134236_
                                                             _g134234134238_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135678
                                                      '()
                                                      _L134169_))))
                                      (__tmp135679
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses134241_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135679
                                  _L133772_)))
                             _clause134127134166_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop134122134150_
                                                       _target134119134145_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g134113134132_
                                                     _g134114134135_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134113134132_ _g134114134135_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134113134132_ _g134114134135_))))))
                    (declare (not safe))
                    (_g134112134243_ _L133772_)))
                 (_specializer-impl134248_
                  (let ((__tmp135681
                         (let ((__tmp135682
                                (let ((__tmp135684
                                       (let ((__tmp135685
                                              (let ((__tmp135702
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L133249_ '())))
                                                    (__tmp135686
                                                     (let ((__tmp135687
                                                            (let ((__tmp135688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135690
                                  (let ((__tmp135691
                                         (let ((__tmp135701
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L133248_ '())))
                                               (__tmp135692
                                                (let ((__tmp135693
                                                       (let ((__tmp135694
                                                              (let ((__tmp135695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135697
                                    (let ((__tmp135698
                                           (let ((__tmp135700
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133774_ '())))
                                                 (__tmp135699
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr134111_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135700 __tmp135699))))
                                      (declare (not safe))
                                      (cons __tmp135698 '())))
                                   (__tmp135696
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr134246_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135697 __tmp135696))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135695))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135694 _stx131501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135693 '()))))
                                           (declare (not safe))
                                           (cons __tmp135701 __tmp135692))))
                                    (declare (not safe))
                                    (cons __tmp135691 '())))
                                 (__tmp135689
                                  (let ()
                                    (declare (not safe))
                                    (cons _L133246_ '()))))
                             (declare (not safe))
                             (cons __tmp135690 __tmp135689))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135688))))
               (declare (not safe))
               (cons __tmp135687 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135702
                                                      __tmp135686))))
                                         (declare (not safe))
                                         (cons __tmp135685 '())))
                                      (__tmp135683
                                       (let ()
                                         (declare (not safe))
                                         (cons _L133245_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135684 __tmp135683))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135682))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135681 _stx131501_)))
                 (_specializer-impl134250_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl131505_
                     _$klass133990_
                     _$method-table133992_
                     _methods-bind134015_
                     _slots-bind134038_
                     _specializer-impl134248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135704
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L131574_)))
                                                          (__tmp135703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133988_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135704
                                                       '" => "
                                                       __tmp135703))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def131506_
                                                       _L131574_
                                                       _specializer-id133988_
                                                       _specializer-impl134250_)))))
                                            _hd133705133767_
                                            _hd133702133759_
                                            _hd133699133751_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133681133711_
                                              _g133682133714_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133681133711_ _g133682133714_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133681133711_ _g133682133714_)))
                           (let ()
                             (declare (not safe))
                             (_g133681133711_ _g133682133714_)))))
                   (let ()
                     (declare (not safe))
                     (_g133681133711_ _g133682133714_)))
               (let ()
                 (declare (not safe))
                 (_g133681133711_ _g133682133714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133681133711_
                                                  _g133682133714_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133681133711_ _g133682133714_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133681133711_ _g133682133714_)))))
                       (let ()
                         (declare (not safe))
                         (_g133681133711_ _g133682133714_)))))
               (let ()
                 (declare (not safe))
                 (_g133681133711_ _g133682133714_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133680134253_ _L133247_))
                                         _stx131501_))))
                             _hd133344133467_
                             _kw-ref133342133488_
                             _hd133332133454_
                             _hd133323133430_
                             _hd133314133406_)
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop133337133472_
                                                   _target133334133459_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g133288133350_
                                                 _g133289133353_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g133288133350_ _g133289133353_))))))
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_)))
                        (let ()
                          (declare (not safe))
                          (_g133288133350_ _g133289133353_)))
                    (let ()
                      (declare (not safe))
                      (_g133288133350_ _g133289133353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133288133350_
                                                       _g133289133353_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133288133350_
                                                   _g133289133353_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g133288133350_
                                               _g133289133353_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133288133350_ _g133289133353_)))))
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_)))
                        (let ()
                          (declare (not safe))
                          (_g133288133350_ _g133289133353_)))))
                (let ()
                  (declare (not safe))
                  (_g133288133350_ _g133289133353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133288133350_
                                                       _g133289133353_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g133288133350_
                                                   _g133289133353_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133288133350_ _g133289133353_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133288133350_ _g133289133353_)))
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_)))))
                    (let ()
                      (declare (not safe))
                      (_g133288133350_ _g133289133353_)))
                (let ()
                  (declare (not safe))
                  (_g133288133350_ _g133289133353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133288133350_
                                                       _g133289133353_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133288133350_
                                               _g133289133353_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g133288133350_ _g133289133353_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133288133350_ _g133289133353_)))
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_)))))
                    (let ()
                      (declare (not safe))
                      (_g133288133350_ _g133289133353_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g133288133350_
                                                       _g133289133353_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g133288133350_
                                               _g133289133353_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133288133350_ _g133289133353_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133288133350_ _g133289133353_)))))
                            (let ()
                              (declare (not safe))
                              (_g133288133350_ _g133289133353_))))))
                (declare (not safe))
                (_g133287134256_ _L133246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd133122133240_
                                                    _hd133119133232_
                                                    _hd133116133224_
                                                    _hd133113133216_
                                                    _hd133095133168_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133075133128_
                                                      _g133076133131_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133075133128_
                                              _g133076133131_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g133075133128_ _g133076133131_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g133075133128_ _g133076133131_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133075133128_ _g133076133131_)))))
                       (let ()
                         (declare (not safe))
                         (_g133075133128_ _g133076133131_)))
                   (let ()
                     (declare (not safe))
                     (_g133075133128_ _g133076133131_)))
               (let ()
                 (declare (not safe))
                 (_g133075133128_ _g133076133131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133075133128_
                                                  _g133076133131_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133075133128_
                                              _g133076133131_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133075133128_ _g133076133131_)))))
                           (let ()
                             (declare (not safe))
                             (_g133075133128_ _g133076133131_)))))
                   (let ()
                     (declare (not safe))
                     (_g133075133128_ _g133076133131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133075133128_
                                                      _g133076133131_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133075133128_
                                                  _g133076133131_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g133075133128_
                                              _g133076133131_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133075133128_ _g133076133131_)))))
                           (let ()
                             (declare (not safe))
                             (_g133075133128_ _g133076133131_)))
                       (let ()
                         (declare (not safe))
                         (_g133075133128_ _g133076133131_)))))
               (let ()
                 (declare (not safe))
                 (_g133075133128_ _g133076133131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133075133128_
                                                  _g133076133131_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133075133128_ _g133076133131_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133075133128_ _g133076133131_)))
                           (let ()
                             (declare (not safe))
                             (_g133075133128_ _g133076133131_)))
                       (let ()
                         (declare (not safe))
                         (_g133075133128_ _g133076133131_)))))
               (let ()
                 (declare (not safe))
                 (_g133075133128_ _g133076133131_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133074134259_ _L131573_))
                                         _stx131501_))))))))
                  (___kont134483134484_ (lambda () _stx131501_)))
              (let ((___match134512134513_
                     (lambda (_e131515131541_
                              _hd131514131544_
                              _tl131513131546_
                              _e131518131549_
                              _hd131517131552_
                              _tl131516131554_
                              _e131521131557_
                              _hd131520131560_
                              _tl131519131562_
                              _e131524131565_
                              _hd131523131568_
                              _tl131522131570_)
                       (let ((_L131573_ _hd131523131568_)
                             (_L131574_ _hd131520131560_))
                         (if (let ((__tmp135793
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131574_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135793))
                             (___kont134481134482_ _L131573_ _L131574_)
                             (___kont134483134484_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134479134480_))
                    (let ((_e131515131541_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134479134480_))))
                      (let ((_tl131513131546_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131515131541_)))
                            (_hd131514131544_
                             (let ()
                               (declare (not safe))
                               (##car _e131515131541_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl131513131546_))
                            (let ((_e131518131549_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl131513131546_))))
                              (let ((_tl131516131554_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131518131549_)))
                                    (_hd131517131552_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131518131549_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd131517131552_))
                                    (let ((_e131521131557_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd131517131552_))))
                                      (let ((_tl131519131562_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131521131557_)))
                                            (_hd131520131560_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131521131557_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl131519131562_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl131516131554_))
                                                (let ((_e131524131565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl131516131554_))))
                                                  (let ((_tl131522131570_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131524131565_)))
                                                        (_hd131523131568_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131524131565_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl131522131570_))
                                                        (___match134512134513_
                                                         _e131515131541_
                                                         _hd131514131544_
                                                         _tl131513131546_
                                                         _e131518131549_
                                                         _hd131517131552_
                                                         _tl131516131554_
                                                         _e131521131557_
                                                         _hd131520131560_
                                                         _tl131519131562_
                                                         _e131524131565_
                                                         _hd131523131568_
                                                         _tl131522131570_)
                                                        (___kont134483134484_))))
                                                (___kont134483134484_))
                                            (___kont134483134484_))))
                                    (___kont134483134484_))))
                            (___kont134483134484_))))
                    (___kont134483134484_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self130461_ _stx130462_)
        (let* ((___stx134515134516_ _stx130462_)
               (_g130470130692_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx134515134516_)))))
          (let ((___kont134517134518_
                 (lambda (_L131449_ _L131450_ _L131451_ _L131452_)
                   (let ((__tmp135795
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130461_ 'methods)))
                         (__tmp135794
                          (let () (declare (not safe)) (gx#stx-e _L131450_))))
                     (declare (not safe))
                     (hash-put! __tmp135795 __tmp135794 '#t))
                   (for-each
                    (lambda (_g131485131487_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130461_ _g131485131487_)))
                    (let ((__tmp135796
                           (lambda (_g131489131492_ _g131490131494_)
                             (let ()
                               (declare (not safe))
                               (cons _g131489131492_ _g131490131494_)))))
                      (declare (not safe))
                      (foldr1 __tmp135796 '() _L131449_)))))
                (___kont134521134522_
                 (lambda (_L131284_ _L131285_ _L131286_ _L131287_ _L131288_)
                   (let ((__tmp135798
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130461_ 'methods)))
                         (__tmp135797
                          (let () (declare (not safe)) (gx#stx-e _L131285_))))
                     (declare (not safe))
                     (hash-put! __tmp135798 __tmp135797 '#t))
                   (for-each
                    (lambda (_g131328131330_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self130461_ _g131328131330_)))
                    (let ((__tmp135799
                           (lambda (_g131332131335_ _g131333131337_)
                             (let ()
                               (declare (not safe))
                               (cons _g131332131335_ _g131333131337_)))))
                      (declare (not safe))
                      (foldr1 __tmp135799 '() _L131284_)))))
                (___kont134525134526_
                 (lambda (_L131117_ _L131118_ _L131119_)
                   (let ((__tmp135801
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130461_ 'slots)))
                         (__tmp135800
                          (let () (declare (not safe)) (gx#stx-e _L131117_))))
                     (declare (not safe))
                     (hash-put! __tmp135801 __tmp135800 '#t))))
                (___kont134527134528_
                 (lambda (_L130994_ _L130995_ _L130996_ _L130997_)
                   (let ((__tmp135803
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self130461_ 'slots)))
                         (__tmp135802
                          (let () (declare (not safe)) (gx#stx-e _L130995_))))
                     (declare (not safe))
                     (hash-put! __tmp135803 __tmp135802 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self130461_ _L130994_))))
                (___kont134529134530_
                 (lambda (_L130868_ _L130869_)
                   (let* ((_accessor130891_
                           (let ((__tmp135804
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130869_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135804)))
                          (_klass130893_
                           (let ((__tmp135805
                                  (##structure-ref
                                   _accessor130891_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130462_
                              __tmp135805)))
                          (_slot130895_
                           (##structure-ref
                            _accessor130891_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135808
                                     (##structure-ref
                                      _accessor130891_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135808))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130893_
                                     _slot130895_))
                                  (##structure-ref
                                   _klass130893_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135807
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130461_ 'slots)))
                               (__tmp135806
                                (##structure-ref
                                 _accessor130891_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp135807 __tmp135806 '#t))))))
                (___kont134531134532_
                 (lambda (_L130768_ _L130769_ _L130770_)
                   (let* ((_mutator130797_
                           (let ((__tmp135809
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130770_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135809)))
                          (_klass130799_
                           (let ((__tmp135810
                                  (##structure-ref
                                   _mutator130797_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx130462_
                              __tmp135810)))
                          (_slot130801_
                           (##structure-ref
                            _mutator130797_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135812
                                     (##structure-ref
                                      _mutator130797_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135812))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130799_
                                     _slot130801_))
                                  (##structure-ref
                                   _klass130799_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135811
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130461_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp135811 _slot130801_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self130461_ _L130768_)))))
                (___kont134533134534_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self130461_ _stx130462_)))))
            (let* ((___match135014135015_
                    (lambda (_e130666130704_
                             _hd130665130707_
                             _tl130664130709_
                             _e130669130712_
                             _hd130668130715_
                             _tl130667130717_
                             _e130672130720_
                             _hd130671130723_
                             _tl130670130725_
                             _e130675130728_
                             _hd130674130731_
                             _tl130673130733_
                             _e130678130736_
                             _hd130677130739_
                             _tl130676130741_
                             _e130681130744_
                             _hd130680130747_
                             _tl130679130749_
                             _e130684130752_
                             _hd130683130755_
                             _tl130682130757_
                             _e130687130760_
                             _hd130686130763_
                             _tl130685130765_)
                      (let ((_L130768_ _hd130686130763_)
                            (_L130769_ _hd130683130755_)
                            (_L130770_ _hd130674130731_))
                        (if (and (let ((__tmp135814
                                        (let ((__tmp135815
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130770_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135815))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135814
                                    'gxc#!mutator::t))
                                 (let ((__tmp135813
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130461_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130769_
                                    __tmp135813)))
                            (___kont134531134532_
                             _L130768_
                             _L130769_
                             _L130770_)
                            (___kont134533134534_)))))
                   (___match135012135013_
                    (lambda (_e130666130704_
                             _hd130665130707_
                             _tl130664130709_
                             _e130669130712_
                             _hd130668130715_
                             _tl130667130717_
                             _e130672130720_
                             _hd130671130723_
                             _tl130670130725_
                             _e130675130728_
                             _hd130674130731_
                             _tl130673130733_
                             _e130678130736_
                             _hd130677130739_
                             _tl130676130741_
                             _e130681130744_
                             _hd130680130747_
                             _tl130679130749_
                             _e130684130752_
                             _hd130683130755_
                             _tl130682130757_
                             _e130687130760_
                             _hd130686130763_
                             _tl130685130765_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130685130765_))
                          (___match135014135015_
                           _e130666130704_
                           _hd130665130707_
                           _tl130664130709_
                           _e130669130712_
                           _hd130668130715_
                           _tl130667130717_
                           _e130672130720_
                           _hd130671130723_
                           _tl130670130725_
                           _e130675130728_
                           _hd130674130731_
                           _tl130673130733_
                           _e130678130736_
                           _hd130677130739_
                           _tl130676130741_
                           _e130681130744_
                           _hd130680130747_
                           _tl130679130749_
                           _e130684130752_
                           _hd130683130755_
                           _tl130682130757_
                           _e130687130760_
                           _hd130686130763_
                           _tl130685130765_)
                          (___kont134533134534_))))
                   (___match135006135007_
                    (lambda (_e130666130704_
                             _hd130665130707_
                             _tl130664130709_
                             _e130669130712_
                             _hd130668130715_
                             _tl130667130717_
                             _e130672130720_
                             _hd130671130723_
                             _tl130670130725_
                             _e130675130728_
                             _hd130674130731_
                             _tl130673130733_
                             _e130678130736_
                             _hd130677130739_
                             _tl130676130741_
                             _e130681130744_
                             _hd130680130747_
                             _tl130679130749_
                             _e130684130752_
                             _hd130683130755_
                             _tl130682130757_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130676130741_))
                          (let ((_e130687130760_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130676130741_))))
                            (let ((_tl130685130765_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130687130760_)))
                                  (_hd130686130763_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130687130760_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130685130765_))
                                  (___match135014135015_
                                   _e130666130704_
                                   _hd130665130707_
                                   _tl130664130709_
                                   _e130669130712_
                                   _hd130668130715_
                                   _tl130667130717_
                                   _e130672130720_
                                   _hd130671130723_
                                   _tl130670130725_
                                   _e130675130728_
                                   _hd130674130731_
                                   _tl130673130733_
                                   _e130678130736_
                                   _hd130677130739_
                                   _tl130676130741_
                                   _e130681130744_
                                   _hd130680130747_
                                   _tl130679130749_
                                   _e130684130752_
                                   _hd130683130755_
                                   _tl130682130757_
                                   _e130687130760_
                                   _hd130686130763_
                                   _tl130685130765_)
                                  (___kont134533134534_))))
                          (___kont134533134534_))))
                   (___match134952134953_
                    (lambda (_e130642130812_
                             _hd130641130815_
                             _tl130640130817_
                             _e130645130820_
                             _hd130644130823_
                             _tl130643130825_
                             _e130648130828_
                             _hd130647130831_
                             _tl130646130833_
                             _e130651130836_
                             _hd130650130839_
                             _tl130649130841_
                             _e130654130844_
                             _hd130653130847_
                             _tl130652130849_
                             _e130657130852_
                             _hd130656130855_
                             _tl130655130857_
                             _e130660130860_
                             _hd130659130863_
                             _tl130658130865_)
                      (let ((_L130868_ _hd130659130863_)
                            (_L130869_ _hd130650130839_))
                        (if (and (let ((__tmp135817
                                        (let ((__tmp135818
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130869_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135818))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135817
                                    'gxc#!accessor::t))
                                 (let ((__tmp135816
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130461_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130868_
                                    __tmp135816)))
                            (___kont134529134530_ _L130868_ _L130869_)
                            (___kont134533134534_)))))
                   (___match134950134951_
                    (lambda (_e130642130812_
                             _hd130641130815_
                             _tl130640130817_
                             _e130645130820_
                             _hd130644130823_
                             _tl130643130825_
                             _e130648130828_
                             _hd130647130831_
                             _tl130646130833_
                             _e130651130836_
                             _hd130650130839_
                             _tl130649130841_
                             _e130654130844_
                             _hd130653130847_
                             _tl130652130849_
                             _e130657130852_
                             _hd130656130855_
                             _tl130655130857_
                             _e130660130860_
                             _hd130659130863_
                             _tl130658130865_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130652130849_))
                          (___match134952134953_
                           _e130642130812_
                           _hd130641130815_
                           _tl130640130817_
                           _e130645130820_
                           _hd130644130823_
                           _tl130643130825_
                           _e130648130828_
                           _hd130647130831_
                           _tl130646130833_
                           _e130651130836_
                           _hd130650130839_
                           _tl130649130841_
                           _e130654130844_
                           _hd130653130847_
                           _tl130652130849_
                           _e130657130852_
                           _hd130656130855_
                           _tl130655130857_
                           _e130660130860_
                           _hd130659130863_
                           _tl130658130865_)
                          (___match135006135007_
                           _e130642130812_
                           _hd130641130815_
                           _tl130640130817_
                           _e130645130820_
                           _hd130644130823_
                           _tl130643130825_
                           _e130648130828_
                           _hd130647130831_
                           _tl130646130833_
                           _e130651130836_
                           _hd130650130839_
                           _tl130649130841_
                           _e130654130844_
                           _hd130653130847_
                           _tl130652130849_
                           _e130657130852_
                           _hd130656130855_
                           _tl130655130857_
                           _e130660130860_
                           _hd130659130863_
                           _tl130658130865_))))
                   (___match134896134897_
                    (lambda (_e130607130906_
                             _hd130606130909_
                             _tl130605130911_
                             _e130610130914_
                             _hd130609130917_
                             _tl130608130919_
                             _e130613130922_
                             _hd130612130925_
                             _tl130611130927_
                             _e130616130930_
                             _hd130615130933_
                             _tl130614130935_
                             _e130619130938_
                             _hd130618130941_
                             _tl130617130943_
                             _e130622130946_
                             _hd130621130949_
                             _tl130620130951_
                             _e130625130954_
                             _hd130624130957_
                             _tl130623130959_
                             _e130628130962_
                             _hd130627130965_
                             _tl130626130967_
                             _e130631130970_
                             _hd130630130973_
                             _tl130629130975_
                             _e130634130978_
                             _hd130633130981_
                             _tl130632130983_
                             _e130637130986_
                             _hd130636130989_
                             _tl130635130991_)
                      (let ((_L130994_ _hd130636130989_)
                            (_L130995_ _hd130633130981_)
                            (_L130996_ _hd130624130957_)
                            (_L130997_ _hd130615130933_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130997_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130997_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp135819
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130461_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130996_
                                    __tmp135819)))
                            (___kont134527134528_
                             _L130994_
                             _L130995_
                             _L130996_
                             _L130997_)
                            (___kont134533134534_)))))
                   (___match134888134889_
                    (lambda (_e130607130906_
                             _hd130606130909_
                             _tl130605130911_
                             _e130610130914_
                             _hd130609130917_
                             _tl130608130919_
                             _e130613130922_
                             _hd130612130925_
                             _tl130611130927_
                             _e130616130930_
                             _hd130615130933_
                             _tl130614130935_
                             _e130619130938_
                             _hd130618130941_
                             _tl130617130943_
                             _e130622130946_
                             _hd130621130949_
                             _tl130620130951_
                             _e130625130954_
                             _hd130624130957_
                             _tl130623130959_
                             _e130628130962_
                             _hd130627130965_
                             _tl130626130967_
                             _e130631130970_
                             _hd130630130973_
                             _tl130629130975_
                             _e130634130978_
                             _hd130633130981_
                             _tl130632130983_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130626130967_))
                          (let ((_e130637130986_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130626130967_))))
                            (let ((_tl130635130991_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130637130986_)))
                                  (_hd130636130989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130637130986_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130635130991_))
                                  (___match134896134897_
                                   _e130607130906_
                                   _hd130606130909_
                                   _tl130605130911_
                                   _e130610130914_
                                   _hd130609130917_
                                   _tl130608130919_
                                   _e130613130922_
                                   _hd130612130925_
                                   _tl130611130927_
                                   _e130616130930_
                                   _hd130615130933_
                                   _tl130614130935_
                                   _e130619130938_
                                   _hd130618130941_
                                   _tl130617130943_
                                   _e130622130946_
                                   _hd130621130949_
                                   _tl130620130951_
                                   _e130625130954_
                                   _hd130624130957_
                                   _tl130623130959_
                                   _e130628130962_
                                   _hd130627130965_
                                   _tl130626130967_
                                   _e130631130970_
                                   _hd130630130973_
                                   _tl130629130975_
                                   _e130634130978_
                                   _hd130633130981_
                                   _tl130632130983_
                                   _e130637130986_
                                   _hd130636130989_
                                   _tl130635130991_)
                                  (___kont134533134534_))))
                          (___match135012135013_
                           _e130607130906_
                           _hd130606130909_
                           _tl130605130911_
                           _e130610130914_
                           _hd130609130917_
                           _tl130608130919_
                           _e130613130922_
                           _hd130612130925_
                           _tl130611130927_
                           _e130616130930_
                           _hd130615130933_
                           _tl130614130935_
                           _e130619130938_
                           _hd130618130941_
                           _tl130617130943_
                           _e130622130946_
                           _hd130621130949_
                           _tl130620130951_
                           _e130625130954_
                           _hd130624130957_
                           _tl130623130959_
                           _e130628130962_
                           _hd130627130965_
                           _tl130626130967_))))
                   (___match134810134811_
                    (lambda (_e130573131037_
                             _hd130572131040_
                             _tl130571131042_
                             _e130576131045_
                             _hd130575131048_
                             _tl130574131050_
                             _e130579131053_
                             _hd130578131056_
                             _tl130577131058_
                             _e130582131061_
                             _hd130581131064_
                             _tl130580131066_
                             _e130585131069_
                             _hd130584131072_
                             _tl130583131074_
                             _e130588131077_
                             _hd130587131080_
                             _tl130586131082_
                             _e130591131085_
                             _hd130590131088_
                             _tl130589131090_
                             _e130594131093_
                             _hd130593131096_
                             _tl130592131098_
                             _e130597131101_
                             _hd130596131104_
                             _tl130595131106_
                             _e130600131109_
                             _hd130599131112_
                             _tl130598131114_)
                      (let ((_L131117_ _hd130599131112_)
                            (_L131118_ _hd130590131088_)
                            (_L131119_ _hd130581131064_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131119_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L131119_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp135820
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self130461_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L131118_
                                    __tmp135820)))
                            (___kont134525134526_
                             _L131117_
                             _L131118_
                             _L131119_)
                            (___match135014135015_
                             _e130573131037_
                             _hd130572131040_
                             _tl130571131042_
                             _e130576131045_
                             _hd130575131048_
                             _tl130574131050_
                             _e130579131053_
                             _hd130578131056_
                             _tl130577131058_
                             _e130582131061_
                             _hd130581131064_
                             _tl130580131066_
                             _e130585131069_
                             _hd130584131072_
                             _tl130583131074_
                             _e130588131077_
                             _hd130587131080_
                             _tl130586131082_
                             _e130591131085_
                             _hd130590131088_
                             _tl130589131090_
                             _e130594131093_
                             _hd130593131096_
                             _tl130592131098_)))))
                   (___match134808134809_
                    (lambda (_e130573131037_
                             _hd130572131040_
                             _tl130571131042_
                             _e130576131045_
                             _hd130575131048_
                             _tl130574131050_
                             _e130579131053_
                             _hd130578131056_
                             _tl130577131058_
                             _e130582131061_
                             _hd130581131064_
                             _tl130580131066_
                             _e130585131069_
                             _hd130584131072_
                             _tl130583131074_
                             _e130588131077_
                             _hd130587131080_
                             _tl130586131082_
                             _e130591131085_
                             _hd130590131088_
                             _tl130589131090_
                             _e130594131093_
                             _hd130593131096_
                             _tl130592131098_
                             _e130597131101_
                             _hd130596131104_
                             _tl130595131106_
                             _e130600131109_
                             _hd130599131112_
                             _tl130598131114_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130592131098_))
                          (___match134810134811_
                           _e130573131037_
                           _hd130572131040_
                           _tl130571131042_
                           _e130576131045_
                           _hd130575131048_
                           _tl130574131050_
                           _e130579131053_
                           _hd130578131056_
                           _tl130577131058_
                           _e130582131061_
                           _hd130581131064_
                           _tl130580131066_
                           _e130585131069_
                           _hd130584131072_
                           _tl130583131074_
                           _e130588131077_
                           _hd130587131080_
                           _tl130586131082_
                           _e130591131085_
                           _hd130590131088_
                           _tl130589131090_
                           _e130594131093_
                           _hd130593131096_
                           _tl130592131098_
                           _e130597131101_
                           _hd130596131104_
                           _tl130595131106_
                           _e130600131109_
                           _hd130599131112_
                           _tl130598131114_)
                          (___match134888134889_
                           _e130573131037_
                           _hd130572131040_
                           _tl130571131042_
                           _e130576131045_
                           _hd130575131048_
                           _tl130574131050_
                           _e130579131053_
                           _hd130578131056_
                           _tl130577131058_
                           _e130582131061_
                           _hd130581131064_
                           _tl130580131066_
                           _e130585131069_
                           _hd130584131072_
                           _tl130583131074_
                           _e130588131077_
                           _hd130587131080_
                           _tl130586131082_
                           _e130591131085_
                           _hd130590131088_
                           _tl130589131090_
                           _e130594131093_
                           _hd130593131096_
                           _tl130592131098_
                           _e130597131101_
                           _hd130596131104_
                           _tl130595131106_
                           _e130600131109_
                           _hd130599131112_
                           _tl130598131114_))))
                   (___match134798134799_
                    (lambda (_e130573131037_
                             _hd130572131040_
                             _tl130571131042_
                             _e130576131045_
                             _hd130575131048_
                             _tl130574131050_
                             _e130579131053_
                             _hd130578131056_
                             _tl130577131058_
                             _e130582131061_
                             _hd130581131064_
                             _tl130580131066_
                             _e130585131069_
                             _hd130584131072_
                             _tl130583131074_
                             _e130588131077_
                             _hd130587131080_
                             _tl130586131082_
                             _e130591131085_
                             _hd130590131088_
                             _tl130589131090_
                             _e130594131093_
                             _hd130593131096_
                             _tl130592131098_
                             _e130597131101_
                             _hd130596131104_
                             _tl130595131106_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130596131104_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130595131106_))
                              (let ((_e130600131109_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130595131106_))))
                                (let ((_tl130598131114_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130600131109_)))
                                      (_hd130599131112_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130600131109_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130598131114_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130592131098_))
                                          (___match134810134811_
                                           _e130573131037_
                                           _hd130572131040_
                                           _tl130571131042_
                                           _e130576131045_
                                           _hd130575131048_
                                           _tl130574131050_
                                           _e130579131053_
                                           _hd130578131056_
                                           _tl130577131058_
                                           _e130582131061_
                                           _hd130581131064_
                                           _tl130580131066_
                                           _e130585131069_
                                           _hd130584131072_
                                           _tl130583131074_
                                           _e130588131077_
                                           _hd130587131080_
                                           _tl130586131082_
                                           _e130591131085_
                                           _hd130590131088_
                                           _tl130589131090_
                                           _e130594131093_
                                           _hd130593131096_
                                           _tl130592131098_
                                           _e130597131101_
                                           _hd130596131104_
                                           _tl130595131106_
                                           _e130600131109_
                                           _hd130599131112_
                                           _tl130598131114_)
                                          (___match134888134889_
                                           _e130573131037_
                                           _hd130572131040_
                                           _tl130571131042_
                                           _e130576131045_
                                           _hd130575131048_
                                           _tl130574131050_
                                           _e130579131053_
                                           _hd130578131056_
                                           _tl130577131058_
                                           _e130582131061_
                                           _hd130581131064_
                                           _tl130580131066_
                                           _e130585131069_
                                           _hd130584131072_
                                           _tl130583131074_
                                           _e130588131077_
                                           _hd130587131080_
                                           _tl130586131082_
                                           _e130591131085_
                                           _hd130590131088_
                                           _tl130589131090_
                                           _e130594131093_
                                           _hd130593131096_
                                           _tl130592131098_
                                           _e130597131101_
                                           _hd130596131104_
                                           _tl130595131106_
                                           _e130600131109_
                                           _hd130599131112_
                                           _tl130598131114_))
                                      (___match135012135013_
                                       _e130573131037_
                                       _hd130572131040_
                                       _tl130571131042_
                                       _e130576131045_
                                       _hd130575131048_
                                       _tl130574131050_
                                       _e130579131053_
                                       _hd130578131056_
                                       _tl130577131058_
                                       _e130582131061_
                                       _hd130581131064_
                                       _tl130580131066_
                                       _e130585131069_
                                       _hd130584131072_
                                       _tl130583131074_
                                       _e130588131077_
                                       _hd130587131080_
                                       _tl130586131082_
                                       _e130591131085_
                                       _hd130590131088_
                                       _tl130589131090_
                                       _e130594131093_
                                       _hd130593131096_
                                       _tl130592131098_))))
                              (___match135012135013_
                               _e130573131037_
                               _hd130572131040_
                               _tl130571131042_
                               _e130576131045_
                               _hd130575131048_
                               _tl130574131050_
                               _e130579131053_
                               _hd130578131056_
                               _tl130577131058_
                               _e130582131061_
                               _hd130581131064_
                               _tl130580131066_
                               _e130585131069_
                               _hd130584131072_
                               _tl130583131074_
                               _e130588131077_
                               _hd130587131080_
                               _tl130586131082_
                               _e130591131085_
                               _hd130590131088_
                               _tl130589131090_
                               _e130594131093_
                               _hd130593131096_
                               _tl130592131098_))
                          (___match135012135013_
                           _e130573131037_
                           _hd130572131040_
                           _tl130571131042_
                           _e130576131045_
                           _hd130575131048_
                           _tl130574131050_
                           _e130579131053_
                           _hd130578131056_
                           _tl130577131058_
                           _e130582131061_
                           _hd130581131064_
                           _tl130580131066_
                           _e130585131069_
                           _hd130584131072_
                           _tl130583131074_
                           _e130588131077_
                           _hd130587131080_
                           _tl130586131082_
                           _e130591131085_
                           _hd130590131088_
                           _tl130589131090_
                           _e130594131093_
                           _hd130593131096_
                           _tl130592131098_))))
                   (___match134730134731_
                    (lambda (_e130522131156_
                             _hd130521131159_
                             _tl130520131161_
                             _e130525131164_
                             _hd130524131167_
                             _tl130523131169_
                             _e130528131172_
                             _hd130527131175_
                             _tl130526131177_
                             _e130531131180_
                             _hd130530131183_
                             _tl130529131185_
                             _e130534131188_
                             _hd130533131191_
                             _tl130532131193_
                             _e130537131196_
                             _hd130536131199_
                             _tl130535131201_
                             _e130540131204_
                             _hd130539131207_
                             _tl130538131209_
                             _e130543131212_
                             _hd130542131215_
                             _tl130541131217_
                             _e130546131220_
                             _hd130545131223_
                             _tl130544131225_
                             _e130549131228_
                             _hd130548131231_
                             _tl130547131233_
                             _e130552131236_
                             _hd130551131239_
                             _tl130550131241_
                             _e130555131244_
                             _hd130554131247_
                             _tl130553131249_
                             _e130558131252_
                             _hd130557131255_
                             _tl130556131257_
                             ___splice134523134524_
                             _target130559131260_
                             _tl130561131262_)
                      (letrec ((_loop130562131265_
                                (lambda (_hd130560131268_ _args130566131270_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130560131268_))
                                      (let ((_e130563131273_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130560131268_))))
                                        (let ((_lp-tl130565131278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130563131273_)))
                                              (_lp-hd130564131276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130563131273_))))
                                          (let ((__tmp135822
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130564131276_
                                                         _args130566131270_))))
                                            (declare (not safe))
                                            (_loop130562131265_
                                             _lp-tl130565131278_
                                             __tmp135822))))
                                      (let ((_args130567131281_
                                             (reverse _args130566131270_)))
                                        (let ((_L131284_ _args130567131281_)
                                              (_L131285_ _hd130557131255_)
                                              (_L131286_ _hd130548131231_)
                                              (_L131287_ _hd130539131207_)
                                              (_L131288_ _hd130530131183_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131288_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131287_
                                                      'call-method))
                                                   (let ((__tmp135821
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130461_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131286_
                                                      __tmp135821)))
                                              (___kont134521134522_
                                               _L131284_
                                               _L131285_
                                               _L131286_
                                               _L131287_
                                               _L131288_)
                                              (___kont134533134534_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130562131265_ _target130559131260_ '())))))
                   (___match134688134689_
                    (lambda (_e130522131156_
                             _hd130521131159_
                             _tl130520131161_
                             _e130525131164_
                             _hd130524131167_
                             _tl130523131169_
                             _e130528131172_
                             _hd130527131175_
                             _tl130526131177_
                             _e130531131180_
                             _hd130530131183_
                             _tl130529131185_
                             _e130534131188_
                             _hd130533131191_
                             _tl130532131193_
                             _e130537131196_
                             _hd130536131199_
                             _tl130535131201_
                             _e130540131204_
                             _hd130539131207_
                             _tl130538131209_
                             _e130543131212_
                             _hd130542131215_
                             _tl130541131217_
                             _e130546131220_
                             _hd130545131223_
                             _tl130544131225_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd130545131223_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130544131225_))
                              (let ((_e130549131228_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130544131225_))))
                                (let ((_tl130547131233_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130549131228_)))
                                      (_hd130548131231_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130549131228_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130547131233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130541131217_))
                                          (let ((_e130552131236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130541131217_))))
                                            (let ((_tl130550131241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130552131236_)))
                                                  (_hd130551131239_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130552131236_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd130551131239_))
                                                  (let ((_e130555131244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd130551131239_))))
                                                    (let ((_tl130553131249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130555131244_)))
                                                          (_hd130554131247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130555131244_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd130554131247_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd130554131247_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130553131249_))
                          (let ((_e130558131252_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130553131249_))))
                            (let ((_tl130556131257_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130558131252_)))
                                  (_hd130557131255_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130558131252_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130556131257_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl130550131241_))
                                      (let ((___splice134523134524_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl130550131241_
                                                '0))))
                                        (let ((_tl130561131262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134523134524_
                                                  '1)))
                                              (_target130559131260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice134523134524_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl130561131262_))
                                              (___match134730134731_
                                               _e130522131156_
                                               _hd130521131159_
                                               _tl130520131161_
                                               _e130525131164_
                                               _hd130524131167_
                                               _tl130523131169_
                                               _e130528131172_
                                               _hd130527131175_
                                               _tl130526131177_
                                               _e130531131180_
                                               _hd130530131183_
                                               _tl130529131185_
                                               _e130534131188_
                                               _hd130533131191_
                                               _tl130532131193_
                                               _e130537131196_
                                               _hd130536131199_
                                               _tl130535131201_
                                               _e130540131204_
                                               _hd130539131207_
                                               _tl130538131209_
                                               _e130543131212_
                                               _hd130542131215_
                                               _tl130541131217_
                                               _e130546131220_
                                               _hd130545131223_
                                               _tl130544131225_
                                               _e130549131228_
                                               _hd130548131231_
                                               _tl130547131233_
                                               _e130552131236_
                                               _hd130551131239_
                                               _tl130550131241_
                                               _e130555131244_
                                               _hd130554131247_
                                               _tl130553131249_
                                               _e130558131252_
                                               _hd130557131255_
                                               _tl130556131257_
                                               ___splice134523134524_
                                               _target130559131260_
                                               _tl130561131262_)
                                              (___kont134533134534_))))
                                      (___kont134533134534_))
                                  (___kont134533134534_))))
                          (___kont134533134534_))
                      (___kont134533134534_))
                  (___kont134533134534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134533134534_))))
                                          (___match135012135013_
                                           _e130522131156_
                                           _hd130521131159_
                                           _tl130520131161_
                                           _e130525131164_
                                           _hd130524131167_
                                           _tl130523131169_
                                           _e130528131172_
                                           _hd130527131175_
                                           _tl130526131177_
                                           _e130531131180_
                                           _hd130530131183_
                                           _tl130529131185_
                                           _e130534131188_
                                           _hd130533131191_
                                           _tl130532131193_
                                           _e130537131196_
                                           _hd130536131199_
                                           _tl130535131201_
                                           _e130540131204_
                                           _hd130539131207_
                                           _tl130538131209_
                                           _e130543131212_
                                           _hd130542131215_
                                           _tl130541131217_))
                                      (___match135012135013_
                                       _e130522131156_
                                       _hd130521131159_
                                       _tl130520131161_
                                       _e130525131164_
                                       _hd130524131167_
                                       _tl130523131169_
                                       _e130528131172_
                                       _hd130527131175_
                                       _tl130526131177_
                                       _e130531131180_
                                       _hd130530131183_
                                       _tl130529131185_
                                       _e130534131188_
                                       _hd130533131191_
                                       _tl130532131193_
                                       _e130537131196_
                                       _hd130536131199_
                                       _tl130535131201_
                                       _e130540131204_
                                       _hd130539131207_
                                       _tl130538131209_
                                       _e130543131212_
                                       _hd130542131215_
                                       _tl130541131217_))))
                              (___match135012135013_
                               _e130522131156_
                               _hd130521131159_
                               _tl130520131161_
                               _e130525131164_
                               _hd130524131167_
                               _tl130523131169_
                               _e130528131172_
                               _hd130527131175_
                               _tl130526131177_
                               _e130531131180_
                               _hd130530131183_
                               _tl130529131185_
                               _e130534131188_
                               _hd130533131191_
                               _tl130532131193_
                               _e130537131196_
                               _hd130536131199_
                               _tl130535131201_
                               _e130540131204_
                               _hd130539131207_
                               _tl130538131209_
                               _e130543131212_
                               _hd130542131215_
                               _tl130541131217_))
                          (___match134798134799_
                           _e130522131156_
                           _hd130521131159_
                           _tl130520131161_
                           _e130525131164_
                           _hd130524131167_
                           _tl130523131169_
                           _e130528131172_
                           _hd130527131175_
                           _tl130526131177_
                           _e130531131180_
                           _hd130530131183_
                           _tl130529131185_
                           _e130534131188_
                           _hd130533131191_
                           _tl130532131193_
                           _e130537131196_
                           _hd130536131199_
                           _tl130535131201_
                           _e130540131204_
                           _hd130539131207_
                           _tl130538131209_
                           _e130543131212_
                           _hd130542131215_
                           _tl130541131217_
                           _e130546131220_
                           _hd130545131223_
                           _tl130544131225_))))
                   (___match134620134621_
                    (lambda (_e130478131345_
                             _hd130477131348_
                             _tl130476131350_
                             _e130481131353_
                             _hd130480131356_
                             _tl130479131358_
                             _e130484131361_
                             _hd130483131364_
                             _tl130482131366_
                             _e130487131369_
                             _hd130486131372_
                             _tl130485131374_
                             _e130490131377_
                             _hd130489131380_
                             _tl130488131382_
                             _e130493131385_
                             _hd130492131388_
                             _tl130491131390_
                             _e130496131393_
                             _hd130495131396_
                             _tl130494131398_
                             _e130499131401_
                             _hd130498131404_
                             _tl130497131406_
                             _e130502131409_
                             _hd130501131412_
                             _tl130500131414_
                             _e130505131417_
                             _hd130504131420_
                             _tl130503131422_
                             ___splice134519134520_
                             _target130506131425_
                             _tl130508131427_)
                      (letrec ((_loop130509131430_
                                (lambda (_hd130507131433_ _args130513131435_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd130507131433_))
                                      (let ((_e130510131438_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd130507131433_))))
                                        (let ((_lp-tl130512131443_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e130510131438_)))
                                              (_lp-hd130511131441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e130510131438_))))
                                          (let ((__tmp135824
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd130511131441_
                                                         _args130513131435_))))
                                            (declare (not safe))
                                            (_loop130509131430_
                                             _lp-tl130512131443_
                                             __tmp135824))))
                                      (let ((_args130514131446_
                                             (reverse _args130513131435_)))
                                        (let ((_L131449_ _args130514131446_)
                                              (_L131450_ _hd130504131420_)
                                              (_L131451_ _hd130495131396_)
                                              (_L131452_ _hd130486131372_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L131452_
                                                      'call-method))
                                                   (let ((__tmp135823
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130461_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L131451_
                                                      __tmp135823)))
                                              (___kont134517134518_
                                               _L131449_
                                               _L131450_
                                               _L131451_
                                               _L131452_)
                                              (___match134808134809_
                                               _e130478131345_
                                               _hd130477131348_
                                               _tl130476131350_
                                               _e130481131353_
                                               _hd130480131356_
                                               _tl130479131358_
                                               _e130484131361_
                                               _hd130483131364_
                                               _tl130482131366_
                                               _e130487131369_
                                               _hd130486131372_
                                               _tl130485131374_
                                               _e130490131377_
                                               _hd130489131380_
                                               _tl130488131382_
                                               _e130493131385_
                                               _hd130492131388_
                                               _tl130491131390_
                                               _e130496131393_
                                               _hd130495131396_
                                               _tl130494131398_
                                               _e130499131401_
                                               _hd130498131404_
                                               _tl130497131406_
                                               _e130502131409_
                                               _hd130501131412_
                                               _tl130500131414_
                                               _e130505131417_
                                               _hd130504131420_
                                               _tl130503131422_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop130509131430_ _target130506131425_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx134515134516_))
                  (let ((_e130478131345_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx134515134516_))))
                    (let ((_tl130476131350_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130478131345_)))
                          (_hd130477131348_
                           (let ()
                             (declare (not safe))
                             (##car _e130478131345_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130476131350_))
                          (let ((_e130481131353_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130476131350_))))
                            (let ((_tl130479131358_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130481131353_)))
                                  (_hd130480131356_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130481131353_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd130480131356_))
                                  (let ((_e130484131361_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd130480131356_))))
                                    (let ((_tl130482131366_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e130484131361_)))
                                          (_hd130483131364_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e130484131361_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd130483131364_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd130483131364_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl130482131366_))
                                                  (let ((_e130487131369_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl130482131366_))))
                                                    (let ((_tl130485131374_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e130487131369_)))
                                                          (_hd130486131372_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e130487131369_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl130485131374_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl130479131358_))
                      (let ((_e130490131377_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl130479131358_))))
                        (let ((_tl130488131382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130490131377_)))
                              (_hd130489131380_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130490131377_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd130489131380_))
                              (let ((_e130493131385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd130489131380_))))
                                (let ((_tl130491131390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130493131385_)))
                                      (_hd130492131388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130493131385_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd130492131388_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd130492131388_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl130491131390_))
                                              (let ((_e130496131393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl130491131390_))))
                                                (let ((_tl130494131398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e130496131393_)))
                                                      (_hd130495131396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e130496131393_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl130494131398_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl130488131382_))
                                                          (let ((_e130499131401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl130488131382_))))
                    (let ((_tl130497131406_
                           (let ()
                             (declare (not safe))
                             (##cdr _e130499131401_)))
                          (_hd130498131404_
                           (let ()
                             (declare (not safe))
                             (##car _e130499131401_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130498131404_))
                          (let ((_e130502131409_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130498131404_))))
                            (let ((_tl130500131414_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130502131409_)))
                                  (_hd130501131412_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130502131409_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd130501131412_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd130501131412_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl130500131414_))
                                          (let ((_e130505131417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl130500131414_))))
                                            (let ((_tl130503131422_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130505131417_)))
                                                  (_hd130504131420_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130505131417_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130503131422_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl130497131406_))
                                                      (let ((___splice134519134520_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl130497131406_ '0))))
                (let ((_tl130508131427_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134519134520_ '1)))
                      (_target130506131425_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice134519134520_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl130508131427_))
                      (___match134620134621_
                       _e130478131345_
                       _hd130477131348_
                       _tl130476131350_
                       _e130481131353_
                       _hd130480131356_
                       _tl130479131358_
                       _e130484131361_
                       _hd130483131364_
                       _tl130482131366_
                       _e130487131369_
                       _hd130486131372_
                       _tl130485131374_
                       _e130490131377_
                       _hd130489131380_
                       _tl130488131382_
                       _e130493131385_
                       _hd130492131388_
                       _tl130491131390_
                       _e130496131393_
                       _hd130495131396_
                       _tl130494131398_
                       _e130499131401_
                       _hd130498131404_
                       _tl130497131406_
                       _e130502131409_
                       _hd130501131412_
                       _tl130500131414_
                       _e130505131417_
                       _hd130504131420_
                       _tl130503131422_
                       ___splice134519134520_
                       _target130506131425_
                       _tl130508131427_)
                      (___match134808134809_
                       _e130478131345_
                       _hd130477131348_
                       _tl130476131350_
                       _e130481131353_
                       _hd130480131356_
                       _tl130479131358_
                       _e130484131361_
                       _hd130483131364_
                       _tl130482131366_
                       _e130487131369_
                       _hd130486131372_
                       _tl130485131374_
                       _e130490131377_
                       _hd130489131380_
                       _tl130488131382_
                       _e130493131385_
                       _hd130492131388_
                       _tl130491131390_
                       _e130496131393_
                       _hd130495131396_
                       _tl130494131398_
                       _e130499131401_
                       _hd130498131404_
                       _tl130497131406_
                       _e130502131409_
                       _hd130501131412_
                       _tl130500131414_
                       _e130505131417_
                       _hd130504131420_
                       _tl130503131422_))))
              (___match134808134809_
               _e130478131345_
               _hd130477131348_
               _tl130476131350_
               _e130481131353_
               _hd130480131356_
               _tl130479131358_
               _e130484131361_
               _hd130483131364_
               _tl130482131366_
               _e130487131369_
               _hd130486131372_
               _tl130485131374_
               _e130490131377_
               _hd130489131380_
               _tl130488131382_
               _e130493131385_
               _hd130492131388_
               _tl130491131390_
               _e130496131393_
               _hd130495131396_
               _tl130494131398_
               _e130499131401_
               _hd130498131404_
               _tl130497131406_
               _e130502131409_
               _hd130501131412_
               _tl130500131414_
               _e130505131417_
               _hd130504131420_
               _tl130503131422_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match135012135013_
                                                   _e130478131345_
                                                   _hd130477131348_
                                                   _tl130476131350_
                                                   _e130481131353_
                                                   _hd130480131356_
                                                   _tl130479131358_
                                                   _e130484131361_
                                                   _hd130483131364_
                                                   _tl130482131366_
                                                   _e130487131369_
                                                   _hd130486131372_
                                                   _tl130485131374_
                                                   _e130490131377_
                                                   _hd130489131380_
                                                   _tl130488131382_
                                                   _e130493131385_
                                                   _hd130492131388_
                                                   _tl130491131390_
                                                   _e130496131393_
                                                   _hd130495131396_
                                                   _tl130494131398_
                                                   _e130499131401_
                                                   _hd130498131404_
                                                   _tl130497131406_))))
                                          (___match135012135013_
                                           _e130478131345_
                                           _hd130477131348_
                                           _tl130476131350_
                                           _e130481131353_
                                           _hd130480131356_
                                           _tl130479131358_
                                           _e130484131361_
                                           _hd130483131364_
                                           _tl130482131366_
                                           _e130487131369_
                                           _hd130486131372_
                                           _tl130485131374_
                                           _e130490131377_
                                           _hd130489131380_
                                           _tl130488131382_
                                           _e130493131385_
                                           _hd130492131388_
                                           _tl130491131390_
                                           _e130496131393_
                                           _hd130495131396_
                                           _tl130494131398_
                                           _e130499131401_
                                           _hd130498131404_
                                           _tl130497131406_))
                                      (___match134688134689_
                                       _e130478131345_
                                       _hd130477131348_
                                       _tl130476131350_
                                       _e130481131353_
                                       _hd130480131356_
                                       _tl130479131358_
                                       _e130484131361_
                                       _hd130483131364_
                                       _tl130482131366_
                                       _e130487131369_
                                       _hd130486131372_
                                       _tl130485131374_
                                       _e130490131377_
                                       _hd130489131380_
                                       _tl130488131382_
                                       _e130493131385_
                                       _hd130492131388_
                                       _tl130491131390_
                                       _e130496131393_
                                       _hd130495131396_
                                       _tl130494131398_
                                       _e130499131401_
                                       _hd130498131404_
                                       _tl130497131406_
                                       _e130502131409_
                                       _hd130501131412_
                                       _tl130500131414_))
                                  (___match135012135013_
                                   _e130478131345_
                                   _hd130477131348_
                                   _tl130476131350_
                                   _e130481131353_
                                   _hd130480131356_
                                   _tl130479131358_
                                   _e130484131361_
                                   _hd130483131364_
                                   _tl130482131366_
                                   _e130487131369_
                                   _hd130486131372_
                                   _tl130485131374_
                                   _e130490131377_
                                   _hd130489131380_
                                   _tl130488131382_
                                   _e130493131385_
                                   _hd130492131388_
                                   _tl130491131390_
                                   _e130496131393_
                                   _hd130495131396_
                                   _tl130494131398_
                                   _e130499131401_
                                   _hd130498131404_
                                   _tl130497131406_))))
                          (___match135012135013_
                           _e130478131345_
                           _hd130477131348_
                           _tl130476131350_
                           _e130481131353_
                           _hd130480131356_
                           _tl130479131358_
                           _e130484131361_
                           _hd130483131364_
                           _tl130482131366_
                           _e130487131369_
                           _hd130486131372_
                           _tl130485131374_
                           _e130490131377_
                           _hd130489131380_
                           _tl130488131382_
                           _e130493131385_
                           _hd130492131388_
                           _tl130491131390_
                           _e130496131393_
                           _hd130495131396_
                           _tl130494131398_
                           _e130499131401_
                           _hd130498131404_
                           _tl130497131406_))))
                  (___match134950134951_
                   _e130478131345_
                   _hd130477131348_
                   _tl130476131350_
                   _e130481131353_
                   _hd130480131356_
                   _tl130479131358_
                   _e130484131361_
                   _hd130483131364_
                   _tl130482131366_
                   _e130487131369_
                   _hd130486131372_
                   _tl130485131374_
                   _e130490131377_
                   _hd130489131380_
                   _tl130488131382_
                   _e130493131385_
                   _hd130492131388_
                   _tl130491131390_
                   _e130496131393_
                   _hd130495131396_
                   _tl130494131398_))
              (___kont134533134534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont134533134534_))
                                          (___kont134533134534_))
                                      (___kont134533134534_))))
                              (___kont134533134534_))))
                      (___kont134533134534_))
                  (___kont134533134534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont134533134534_))
                                              (___kont134533134534_))
                                          (___kont134533134534_))))
                                  (___kont134533134534_))))
                          (___kont134533134534_))))
                  (___kont134533134534_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self129400_ _stx129401_)
        (letrec ((_force-e129403_
                  (lambda (_target130459_)
                    (let ((__tmp135825
                           (let ((__tmp135829
                                  (let ((__tmp135830
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135830)))
                                 (__tmp135826
                                  (let ((__tmp135827
                                         (let ((__tmp135828
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target130459_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135828))))
                                    (declare (not safe))
                                    (cons __tmp135827 '()))))
                             (declare (not safe))
                             (cons __tmp135829 __tmp135826))))
                      (declare (not safe))
                      (cons '%#call __tmp135825)))))
          (let* ((___stx135017135018_ _stx129401_)
                 (_g129411129633_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135017135018_)))))
            (let ((___kont135019135020_
                   (lambda (_L130405_ _L130406_ _L130407_ _L130408_)
                     (let ((_$method130453_
                            (let ((__tmp135832
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129400_ 'methods)))
                                  (__tmp135831
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130406_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135832 __tmp135831)))
                           (_args130454_
                            (map (lambda (_g130441130443_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129400_
                                      _g130441130443_)))
                                 (let ((__tmp135833
                                        (lambda (_g130445130448_
                                                 _g130446130450_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130445130448_
                                                  _g130446130450_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135833 '() _L130405_)))))
                       (let ((__tmp135834
                              (let ((__tmp135835
                                     (let ((__tmp135840
                                            (let ()
                                              (declare (not safe))
                                              (_force-e129403_
                                               _$method130453_)))
                                           (__tmp135836
                                            (let ((__tmp135837
                                                   (let ((__tmp135838
                                                          (let ((__tmp135839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self129400_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp135839 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135838))))
                                              (declare (not safe))
                                              (cons __tmp135837
                                                    _args130454_))))
                                       (declare (not safe))
                                       (cons __tmp135840 __tmp135836))))
                                (declare (not safe))
                                (cons '%#call __tmp135835))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135834 _stx129401_)))))
                  (___kont135023135024_
                   (lambda (_L130237_ _L130238_ _L130239_ _L130240_ _L130241_)
                     (let ((_$method130293_
                            (let ((__tmp135842
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129400_ 'methods)))
                                  (__tmp135841
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L130238_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135842 __tmp135841)))
                           (_args130294_
                            (map (lambda (_g130281130283_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self129400_
                                      _g130281130283_)))
                                 (let ((__tmp135843
                                        (lambda (_g130285130288_
                                                 _g130286130290_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g130285130288_
                                                  _g130286130290_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135843 '() _L130237_)))))
                       (let ((__tmp135844
                              (let ((__tmp135845
                                     (let ((__tmp135852
                                            (let ((__tmp135853
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135853)))
                                           (__tmp135846
                                            (let ((__tmp135851
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e129403_
                                                      _$method130293_)))
                                                  (__tmp135847
                                                   (let ((__tmp135848
                                                          (let ((__tmp135849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135850
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129400_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135850 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135848
                                                           _args130294_))))
                                              (declare (not safe))
                                              (cons __tmp135851 __tmp135847))))
                                       (declare (not safe))
                                       (cons __tmp135852 __tmp135846))))
                                (declare (not safe))
                                (cons '%#call __tmp135845))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135844 _stx129401_)))))
                  (___kont135027135028_
                   (lambda (_L130068_ _L130069_ _L130070_)
                     (let* ((_$field130102_
                             (let ((__tmp135855
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self129400_ 'slots)))
                                   (__tmp135854
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L130068_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp135855 __tmp135854)))
                            (__tmp135856
                             (let ((__tmp135857
                                    (let ((__tmp135865
                                           (let ((__tmp135866
                                                  (let ((__tmp135867
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self129400_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp135867 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135866)))
                                          (__tmp135858
                                           (let ((__tmp135863
                                                  (let ((__tmp135864
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field130102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135864)))
                                                 (__tmp135859
                                                  (let ((__tmp135860
                                                         (let ((__tmp135861
                                                                (let ((__tmp135862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self129400_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp135862 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135860 '()))))
                                             (declare (not safe))
                                             (cons __tmp135863 __tmp135859))))
                                      (declare (not safe))
                                      (cons __tmp135865 __tmp135858))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135857))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135856 _stx129401_))))
                  (___kont135029135030_
                   (lambda (_L129942_ _L129943_ _L129944_ _L129945_)
                     (let ((_$field129980_
                            (let ((__tmp135869
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self129400_ 'slots)))
                                  (__tmp135868
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129943_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp135869 __tmp135868)))
                           (_expr129981_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self129400_ _L129942_))))
                       (let ((__tmp135870
                              (let ((__tmp135871
                                     (let ((__tmp135880
                                            (let ((__tmp135881
                                                   (let ((__tmp135882
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129400_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp135882 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135881)))
                                           (__tmp135872
                                            (let ((__tmp135878
                                                   (let ((__tmp135879
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135879)))
                                                  (__tmp135873
                                                   (let ((__tmp135875
                                                          (let ((__tmp135876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp135877
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129400_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp135877 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135876)))
                 (__tmp135874
                  (let () (declare (not safe)) (cons _expr129981_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135875
                                                           __tmp135874))))
                                              (declare (not safe))
                                              (cons __tmp135878 __tmp135873))))
                                       (declare (not safe))
                                       (cons __tmp135880 __tmp135872))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135871))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135870 _stx129401_)))))
                  (___kont135031135032_
                   (lambda (_L129814_ _L129815_)
                     (let* ((_accessor129837_
                             (let ((__tmp135883
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129815_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135883)))
                            (_klass129839_
                             (let ((__tmp135884
                                    (##structure-ref
                                     _accessor129837_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129401_
                                __tmp135884)))
                            (_slot129841_
                             (##structure-ref
                              _accessor129837_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135898
                                       (##structure-ref
                                        _accessor129837_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135898))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129839_
                                       _slot129841_))
                                    (##structure-ref
                                     _klass129839_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx129401_
                           (let* ((_$field129847_
                                   (let ((__tmp135885
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135885 _slot129841_)))
                                  (__tmp135886
                                   (let ((__tmp135887
                                          (let ((__tmp135895
                                                 (let ((__tmp135896
                                                        (let ((__tmp135897
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129400_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135897 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135896)))
                                                (__tmp135888
                                                 (let ((__tmp135893
                                                        (let ((__tmp135894
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129847_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135894)))
               (__tmp135889
                (let ((__tmp135890
                       (let ((__tmp135891
                              (let ((__tmp135892
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129400_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135892 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135891))))
                  (declare (not safe))
                  (cons __tmp135890 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135893
                                                         __tmp135889))))
                                            (declare (not safe))
                                            (cons __tmp135895 __tmp135888))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135887))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135886
                              _stx129401_))))))
                  (___kont135033135034_
                   (lambda (_L129709_ _L129710_ _L129711_)
                     (let* ((_mutator129739_
                             (let ((__tmp135899
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129711_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135899)))
                            (_klass129741_
                             (let ((__tmp135900
                                    (##structure-ref
                                     _mutator129739_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx129401_
                                __tmp135900)))
                            (_slot129743_
                             (##structure-ref
                              _mutator129739_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129745_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self129400_ _L129709_))))
                       (if (and (let ((__tmp135925
                                       (##structure-ref
                                        _mutator129739_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135925))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129741_
                                       _slot129743_))
                                    (##structure-ref
                                     _klass129741_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135915
                                  (let ((__tmp135916
                                         (let ((__tmp135922
                                                (let ((__tmp135924
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135923
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129711_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135924
                                                        __tmp135923)))
                                               (__tmp135917
                                                (let ((__tmp135919
                                                       (let ((__tmp135921
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135920
                      (let () (declare (not safe)) (cons _L129710_ '()))))
                 (declare (not safe))
                 (cons __tmp135921 __tmp135920)))
              (__tmp135918
               (let () (declare (not safe)) (cons _expr129745_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135919
                                                        __tmp135918))))
                                           (declare (not safe))
                                           (cons __tmp135922 __tmp135917))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135916))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135915 _stx129401_))
                           (let* ((_$field129751_
                                   (let ((__tmp135901
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp135901 _slot129743_)))
                                  (__tmp135902
                                   (let ((__tmp135903
                                          (let ((__tmp135912
                                                 (let ((__tmp135913
                                                        (let ((__tmp135914
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self129400_ 'klass))))
                  (declare (not safe))
                  (cons __tmp135914 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135913)))
                                                (__tmp135904
                                                 (let ((__tmp135910
                                                        (let ((__tmp135911
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129751_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135911)))
               (__tmp135905
                (let ((__tmp135907
                       (let ((__tmp135908
                              (let ((__tmp135909
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self129400_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp135909 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135908)))
                      (__tmp135906
                       (let () (declare (not safe)) (cons _expr129745_ '()))))
                  (declare (not safe))
                  (cons __tmp135907 __tmp135906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135910
                                                         __tmp135905))))
                                            (declare (not safe))
                                            (cons __tmp135912 __tmp135904))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135903))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135902
                              _stx129401_))))))
                  (___kont135035135036_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self129400_ _stx129401_)))))
              (let* ((___match135516135517_
                      (lambda (_e129607129645_
                               _hd129606129648_
                               _tl129605129650_
                               _e129610129653_
                               _hd129609129656_
                               _tl129608129658_
                               _e129613129661_
                               _hd129612129664_
                               _tl129611129666_
                               _e129616129669_
                               _hd129615129672_
                               _tl129614129674_
                               _e129619129677_
                               _hd129618129680_
                               _tl129617129682_
                               _e129622129685_
                               _hd129621129688_
                               _tl129620129690_
                               _e129625129693_
                               _hd129624129696_
                               _tl129623129698_
                               _e129628129701_
                               _hd129627129704_
                               _tl129626129706_)
                        (let ((_L129709_ _hd129627129704_)
                              (_L129710_ _hd129624129696_)
                              (_L129711_ _hd129615129672_))
                          (if (and (let ((__tmp135928
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129710_
                                      __tmp135928))
                                   (let ((__tmp135926
                                          (let ((__tmp135927
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129711_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135927))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135926
                                      'gxc#!mutator::t)))
                              (___kont135033135034_
                               _L129709_
                               _L129710_
                               _L129711_)
                              (___kont135035135036_)))))
                     (___match135514135515_
                      (lambda (_e129607129645_
                               _hd129606129648_
                               _tl129605129650_
                               _e129610129653_
                               _hd129609129656_
                               _tl129608129658_
                               _e129613129661_
                               _hd129612129664_
                               _tl129611129666_
                               _e129616129669_
                               _hd129615129672_
                               _tl129614129674_
                               _e129619129677_
                               _hd129618129680_
                               _tl129617129682_
                               _e129622129685_
                               _hd129621129688_
                               _tl129620129690_
                               _e129625129693_
                               _hd129624129696_
                               _tl129623129698_
                               _e129628129701_
                               _hd129627129704_
                               _tl129626129706_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129626129706_))
                            (___match135516135517_
                             _e129607129645_
                             _hd129606129648_
                             _tl129605129650_
                             _e129610129653_
                             _hd129609129656_
                             _tl129608129658_
                             _e129613129661_
                             _hd129612129664_
                             _tl129611129666_
                             _e129616129669_
                             _hd129615129672_
                             _tl129614129674_
                             _e129619129677_
                             _hd129618129680_
                             _tl129617129682_
                             _e129622129685_
                             _hd129621129688_
                             _tl129620129690_
                             _e129625129693_
                             _hd129624129696_
                             _tl129623129698_
                             _e129628129701_
                             _hd129627129704_
                             _tl129626129706_)
                            (___kont135035135036_))))
                     (___match135508135509_
                      (lambda (_e129607129645_
                               _hd129606129648_
                               _tl129605129650_
                               _e129610129653_
                               _hd129609129656_
                               _tl129608129658_
                               _e129613129661_
                               _hd129612129664_
                               _tl129611129666_
                               _e129616129669_
                               _hd129615129672_
                               _tl129614129674_
                               _e129619129677_
                               _hd129618129680_
                               _tl129617129682_
                               _e129622129685_
                               _hd129621129688_
                               _tl129620129690_
                               _e129625129693_
                               _hd129624129696_
                               _tl129623129698_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129617129682_))
                            (let ((_e129628129701_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129617129682_))))
                              (let ((_tl129626129706_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129628129701_)))
                                    (_hd129627129704_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129628129701_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129626129706_))
                                    (___match135516135517_
                                     _e129607129645_
                                     _hd129606129648_
                                     _tl129605129650_
                                     _e129610129653_
                                     _hd129609129656_
                                     _tl129608129658_
                                     _e129613129661_
                                     _hd129612129664_
                                     _tl129611129666_
                                     _e129616129669_
                                     _hd129615129672_
                                     _tl129614129674_
                                     _e129619129677_
                                     _hd129618129680_
                                     _tl129617129682_
                                     _e129622129685_
                                     _hd129621129688_
                                     _tl129620129690_
                                     _e129625129693_
                                     _hd129624129696_
                                     _tl129623129698_
                                     _e129628129701_
                                     _hd129627129704_
                                     _tl129626129706_)
                                    (___kont135035135036_))))
                            (___kont135035135036_))))
                     (___match135454135455_
                      (lambda (_e129583129758_
                               _hd129582129761_
                               _tl129581129763_
                               _e129586129766_
                               _hd129585129769_
                               _tl129584129771_
                               _e129589129774_
                               _hd129588129777_
                               _tl129587129779_
                               _e129592129782_
                               _hd129591129785_
                               _tl129590129787_
                               _e129595129790_
                               _hd129594129793_
                               _tl129593129795_
                               _e129598129798_
                               _hd129597129801_
                               _tl129596129803_
                               _e129601129806_
                               _hd129600129809_
                               _tl129599129811_)
                        (let ((_L129814_ _hd129600129809_)
                              (_L129815_ _hd129591129785_))
                          (if (and (let ((__tmp135931
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129814_
                                      __tmp135931))
                                   (let ((__tmp135929
                                          (let ((__tmp135930
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129815_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135930))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135929
                                      'gxc#!accessor::t)))
                              (___kont135031135032_ _L129814_ _L129815_)
                              (___kont135035135036_)))))
                     (___match135452135453_
                      (lambda (_e129583129758_
                               _hd129582129761_
                               _tl129581129763_
                               _e129586129766_
                               _hd129585129769_
                               _tl129584129771_
                               _e129589129774_
                               _hd129588129777_
                               _tl129587129779_
                               _e129592129782_
                               _hd129591129785_
                               _tl129590129787_
                               _e129595129790_
                               _hd129594129793_
                               _tl129593129795_
                               _e129598129798_
                               _hd129597129801_
                               _tl129596129803_
                               _e129601129806_
                               _hd129600129809_
                               _tl129599129811_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129593129795_))
                            (___match135454135455_
                             _e129583129758_
                             _hd129582129761_
                             _tl129581129763_
                             _e129586129766_
                             _hd129585129769_
                             _tl129584129771_
                             _e129589129774_
                             _hd129588129777_
                             _tl129587129779_
                             _e129592129782_
                             _hd129591129785_
                             _tl129590129787_
                             _e129595129790_
                             _hd129594129793_
                             _tl129593129795_
                             _e129598129798_
                             _hd129597129801_
                             _tl129596129803_
                             _e129601129806_
                             _hd129600129809_
                             _tl129599129811_)
                            (___match135508135509_
                             _e129583129758_
                             _hd129582129761_
                             _tl129581129763_
                             _e129586129766_
                             _hd129585129769_
                             _tl129584129771_
                             _e129589129774_
                             _hd129588129777_
                             _tl129587129779_
                             _e129592129782_
                             _hd129591129785_
                             _tl129590129787_
                             _e129595129790_
                             _hd129594129793_
                             _tl129593129795_
                             _e129598129798_
                             _hd129597129801_
                             _tl129596129803_
                             _e129601129806_
                             _hd129600129809_
                             _tl129599129811_))))
                     (___match135398135399_
                      (lambda (_e129548129854_
                               _hd129547129857_
                               _tl129546129859_
                               _e129551129862_
                               _hd129550129865_
                               _tl129549129867_
                               _e129554129870_
                               _hd129553129873_
                               _tl129552129875_
                               _e129557129878_
                               _hd129556129881_
                               _tl129555129883_
                               _e129560129886_
                               _hd129559129889_
                               _tl129558129891_
                               _e129563129894_
                               _hd129562129897_
                               _tl129561129899_
                               _e129566129902_
                               _hd129565129905_
                               _tl129564129907_
                               _e129569129910_
                               _hd129568129913_
                               _tl129567129915_
                               _e129572129918_
                               _hd129571129921_
                               _tl129570129923_
                               _e129575129926_
                               _hd129574129929_
                               _tl129573129931_
                               _e129578129934_
                               _hd129577129937_
                               _tl129576129939_)
                        (let ((_L129942_ _hd129577129937_)
                              (_L129943_ _hd129574129929_)
                              (_L129944_ _hd129565129905_)
                              (_L129945_ _hd129556129881_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129945_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129945_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp135932
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129944_
                                      __tmp135932)))
                              (___kont135029135030_
                               _L129942_
                               _L129943_
                               _L129944_
                               _L129945_)
                              (___kont135035135036_)))))
                     (___match135390135391_
                      (lambda (_e129548129854_
                               _hd129547129857_
                               _tl129546129859_
                               _e129551129862_
                               _hd129550129865_
                               _tl129549129867_
                               _e129554129870_
                               _hd129553129873_
                               _tl129552129875_
                               _e129557129878_
                               _hd129556129881_
                               _tl129555129883_
                               _e129560129886_
                               _hd129559129889_
                               _tl129558129891_
                               _e129563129894_
                               _hd129562129897_
                               _tl129561129899_
                               _e129566129902_
                               _hd129565129905_
                               _tl129564129907_
                               _e129569129910_
                               _hd129568129913_
                               _tl129567129915_
                               _e129572129918_
                               _hd129571129921_
                               _tl129570129923_
                               _e129575129926_
                               _hd129574129929_
                               _tl129573129931_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129567129915_))
                            (let ((_e129578129934_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129567129915_))))
                              (let ((_tl129576129939_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129578129934_)))
                                    (_hd129577129937_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129578129934_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129576129939_))
                                    (___match135398135399_
                                     _e129548129854_
                                     _hd129547129857_
                                     _tl129546129859_
                                     _e129551129862_
                                     _hd129550129865_
                                     _tl129549129867_
                                     _e129554129870_
                                     _hd129553129873_
                                     _tl129552129875_
                                     _e129557129878_
                                     _hd129556129881_
                                     _tl129555129883_
                                     _e129560129886_
                                     _hd129559129889_
                                     _tl129558129891_
                                     _e129563129894_
                                     _hd129562129897_
                                     _tl129561129899_
                                     _e129566129902_
                                     _hd129565129905_
                                     _tl129564129907_
                                     _e129569129910_
                                     _hd129568129913_
                                     _tl129567129915_
                                     _e129572129918_
                                     _hd129571129921_
                                     _tl129570129923_
                                     _e129575129926_
                                     _hd129574129929_
                                     _tl129573129931_
                                     _e129578129934_
                                     _hd129577129937_
                                     _tl129576129939_)
                                    (___kont135035135036_))))
                            (___match135514135515_
                             _e129548129854_
                             _hd129547129857_
                             _tl129546129859_
                             _e129551129862_
                             _hd129550129865_
                             _tl129549129867_
                             _e129554129870_
                             _hd129553129873_
                             _tl129552129875_
                             _e129557129878_
                             _hd129556129881_
                             _tl129555129883_
                             _e129560129886_
                             _hd129559129889_
                             _tl129558129891_
                             _e129563129894_
                             _hd129562129897_
                             _tl129561129899_
                             _e129566129902_
                             _hd129565129905_
                             _tl129564129907_
                             _e129569129910_
                             _hd129568129913_
                             _tl129567129915_))))
                     (___match135312135313_
                      (lambda (_e129514129988_
                               _hd129513129991_
                               _tl129512129993_
                               _e129517129996_
                               _hd129516129999_
                               _tl129515130001_
                               _e129520130004_
                               _hd129519130007_
                               _tl129518130009_
                               _e129523130012_
                               _hd129522130015_
                               _tl129521130017_
                               _e129526130020_
                               _hd129525130023_
                               _tl129524130025_
                               _e129529130028_
                               _hd129528130031_
                               _tl129527130033_
                               _e129532130036_
                               _hd129531130039_
                               _tl129530130041_
                               _e129535130044_
                               _hd129534130047_
                               _tl129533130049_
                               _e129538130052_
                               _hd129537130055_
                               _tl129536130057_
                               _e129541130060_
                               _hd129540130063_
                               _tl129539130065_)
                        (let ((_L130068_ _hd129540130063_)
                              (_L130069_ _hd129531130039_)
                              (_L130070_ _hd129522130015_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130070_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L130070_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp135933
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self129400_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L130069_
                                      __tmp135933)))
                              (___kont135027135028_
                               _L130068_
                               _L130069_
                               _L130070_)
                              (___match135516135517_
                               _e129514129988_
                               _hd129513129991_
                               _tl129512129993_
                               _e129517129996_
                               _hd129516129999_
                               _tl129515130001_
                               _e129520130004_
                               _hd129519130007_
                               _tl129518130009_
                               _e129523130012_
                               _hd129522130015_
                               _tl129521130017_
                               _e129526130020_
                               _hd129525130023_
                               _tl129524130025_
                               _e129529130028_
                               _hd129528130031_
                               _tl129527130033_
                               _e129532130036_
                               _hd129531130039_
                               _tl129530130041_
                               _e129535130044_
                               _hd129534130047_
                               _tl129533130049_)))))
                     (___match135310135311_
                      (lambda (_e129514129988_
                               _hd129513129991_
                               _tl129512129993_
                               _e129517129996_
                               _hd129516129999_
                               _tl129515130001_
                               _e129520130004_
                               _hd129519130007_
                               _tl129518130009_
                               _e129523130012_
                               _hd129522130015_
                               _tl129521130017_
                               _e129526130020_
                               _hd129525130023_
                               _tl129524130025_
                               _e129529130028_
                               _hd129528130031_
                               _tl129527130033_
                               _e129532130036_
                               _hd129531130039_
                               _tl129530130041_
                               _e129535130044_
                               _hd129534130047_
                               _tl129533130049_
                               _e129538130052_
                               _hd129537130055_
                               _tl129536130057_
                               _e129541130060_
                               _hd129540130063_
                               _tl129539130065_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129533130049_))
                            (___match135312135313_
                             _e129514129988_
                             _hd129513129991_
                             _tl129512129993_
                             _e129517129996_
                             _hd129516129999_
                             _tl129515130001_
                             _e129520130004_
                             _hd129519130007_
                             _tl129518130009_
                             _e129523130012_
                             _hd129522130015_
                             _tl129521130017_
                             _e129526130020_
                             _hd129525130023_
                             _tl129524130025_
                             _e129529130028_
                             _hd129528130031_
                             _tl129527130033_
                             _e129532130036_
                             _hd129531130039_
                             _tl129530130041_
                             _e129535130044_
                             _hd129534130047_
                             _tl129533130049_
                             _e129538130052_
                             _hd129537130055_
                             _tl129536130057_
                             _e129541130060_
                             _hd129540130063_
                             _tl129539130065_)
                            (___match135390135391_
                             _e129514129988_
                             _hd129513129991_
                             _tl129512129993_
                             _e129517129996_
                             _hd129516129999_
                             _tl129515130001_
                             _e129520130004_
                             _hd129519130007_
                             _tl129518130009_
                             _e129523130012_
                             _hd129522130015_
                             _tl129521130017_
                             _e129526130020_
                             _hd129525130023_
                             _tl129524130025_
                             _e129529130028_
                             _hd129528130031_
                             _tl129527130033_
                             _e129532130036_
                             _hd129531130039_
                             _tl129530130041_
                             _e129535130044_
                             _hd129534130047_
                             _tl129533130049_
                             _e129538130052_
                             _hd129537130055_
                             _tl129536130057_
                             _e129541130060_
                             _hd129540130063_
                             _tl129539130065_))))
                     (___match135300135301_
                      (lambda (_e129514129988_
                               _hd129513129991_
                               _tl129512129993_
                               _e129517129996_
                               _hd129516129999_
                               _tl129515130001_
                               _e129520130004_
                               _hd129519130007_
                               _tl129518130009_
                               _e129523130012_
                               _hd129522130015_
                               _tl129521130017_
                               _e129526130020_
                               _hd129525130023_
                               _tl129524130025_
                               _e129529130028_
                               _hd129528130031_
                               _tl129527130033_
                               _e129532130036_
                               _hd129531130039_
                               _tl129530130041_
                               _e129535130044_
                               _hd129534130047_
                               _tl129533130049_
                               _e129538130052_
                               _hd129537130055_
                               _tl129536130057_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd129537130055_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129536130057_))
                                (let ((_e129541130060_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129536130057_))))
                                  (let ((_tl129539130065_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129541130060_)))
                                        (_hd129540130063_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129541130060_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129539130065_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl129533130049_))
                                            (___match135312135313_
                                             _e129514129988_
                                             _hd129513129991_
                                             _tl129512129993_
                                             _e129517129996_
                                             _hd129516129999_
                                             _tl129515130001_
                                             _e129520130004_
                                             _hd129519130007_
                                             _tl129518130009_
                                             _e129523130012_
                                             _hd129522130015_
                                             _tl129521130017_
                                             _e129526130020_
                                             _hd129525130023_
                                             _tl129524130025_
                                             _e129529130028_
                                             _hd129528130031_
                                             _tl129527130033_
                                             _e129532130036_
                                             _hd129531130039_
                                             _tl129530130041_
                                             _e129535130044_
                                             _hd129534130047_
                                             _tl129533130049_
                                             _e129538130052_
                                             _hd129537130055_
                                             _tl129536130057_
                                             _e129541130060_
                                             _hd129540130063_
                                             _tl129539130065_)
                                            (___match135390135391_
                                             _e129514129988_
                                             _hd129513129991_
                                             _tl129512129993_
                                             _e129517129996_
                                             _hd129516129999_
                                             _tl129515130001_
                                             _e129520130004_
                                             _hd129519130007_
                                             _tl129518130009_
                                             _e129523130012_
                                             _hd129522130015_
                                             _tl129521130017_
                                             _e129526130020_
                                             _hd129525130023_
                                             _tl129524130025_
                                             _e129529130028_
                                             _hd129528130031_
                                             _tl129527130033_
                                             _e129532130036_
                                             _hd129531130039_
                                             _tl129530130041_
                                             _e129535130044_
                                             _hd129534130047_
                                             _tl129533130049_
                                             _e129538130052_
                                             _hd129537130055_
                                             _tl129536130057_
                                             _e129541130060_
                                             _hd129540130063_
                                             _tl129539130065_))
                                        (___match135514135515_
                                         _e129514129988_
                                         _hd129513129991_
                                         _tl129512129993_
                                         _e129517129996_
                                         _hd129516129999_
                                         _tl129515130001_
                                         _e129520130004_
                                         _hd129519130007_
                                         _tl129518130009_
                                         _e129523130012_
                                         _hd129522130015_
                                         _tl129521130017_
                                         _e129526130020_
                                         _hd129525130023_
                                         _tl129524130025_
                                         _e129529130028_
                                         _hd129528130031_
                                         _tl129527130033_
                                         _e129532130036_
                                         _hd129531130039_
                                         _tl129530130041_
                                         _e129535130044_
                                         _hd129534130047_
                                         _tl129533130049_))))
                                (___match135514135515_
                                 _e129514129988_
                                 _hd129513129991_
                                 _tl129512129993_
                                 _e129517129996_
                                 _hd129516129999_
                                 _tl129515130001_
                                 _e129520130004_
                                 _hd129519130007_
                                 _tl129518130009_
                                 _e129523130012_
                                 _hd129522130015_
                                 _tl129521130017_
                                 _e129526130020_
                                 _hd129525130023_
                                 _tl129524130025_
                                 _e129529130028_
                                 _hd129528130031_
                                 _tl129527130033_
                                 _e129532130036_
                                 _hd129531130039_
                                 _tl129530130041_
                                 _e129535130044_
                                 _hd129534130047_
                                 _tl129533130049_))
                            (___match135514135515_
                             _e129514129988_
                             _hd129513129991_
                             _tl129512129993_
                             _e129517129996_
                             _hd129516129999_
                             _tl129515130001_
                             _e129520130004_
                             _hd129519130007_
                             _tl129518130009_
                             _e129523130012_
                             _hd129522130015_
                             _tl129521130017_
                             _e129526130020_
                             _hd129525130023_
                             _tl129524130025_
                             _e129529130028_
                             _hd129528130031_
                             _tl129527130033_
                             _e129532130036_
                             _hd129531130039_
                             _tl129530130041_
                             _e129535130044_
                             _hd129534130047_
                             _tl129533130049_))))
                     (___match135232135233_
                      (lambda (_e129463130109_
                               _hd129462130112_
                               _tl129461130114_
                               _e129466130117_
                               _hd129465130120_
                               _tl129464130122_
                               _e129469130125_
                               _hd129468130128_
                               _tl129467130130_
                               _e129472130133_
                               _hd129471130136_
                               _tl129470130138_
                               _e129475130141_
                               _hd129474130144_
                               _tl129473130146_
                               _e129478130149_
                               _hd129477130152_
                               _tl129476130154_
                               _e129481130157_
                               _hd129480130160_
                               _tl129479130162_
                               _e129484130165_
                               _hd129483130168_
                               _tl129482130170_
                               _e129487130173_
                               _hd129486130176_
                               _tl129485130178_
                               _e129490130181_
                               _hd129489130184_
                               _tl129488130186_
                               _e129493130189_
                               _hd129492130192_
                               _tl129491130194_
                               _e129496130197_
                               _hd129495130200_
                               _tl129494130202_
                               _e129499130205_
                               _hd129498130208_
                               _tl129497130210_
                               ___splice135025135026_
                               _target129500130213_
                               _tl129502130215_)
                        (letrec ((_loop129503130218_
                                  (lambda (_hd129501130221_ _args129507130223_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129501130221_))
                                        (let ((_e129504130226_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129501130221_))))
                                          (let ((_lp-tl129506130231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129504130226_)))
                                                (_lp-hd129505130229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129504130226_))))
                                            (let ((__tmp135935
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129505130229_
                                                           _args129507130223_))))
                                              (declare (not safe))
                                              (_loop129503130218_
                                               _lp-tl129506130231_
                                               __tmp135935))))
                                        (let ((_args129508130234_
                                               (reverse _args129507130223_)))
                                          (let ((_L130237_ _args129508130234_)
                                                (_L130238_ _hd129498130208_)
                                                (_L130239_ _hd129489130184_)
                                                (_L130240_ _hd129480130160_)
                                                (_L130241_ _hd129471130136_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130241_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130240_
                                                        'call-method))
                                                     (let ((__tmp135934
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129400_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130239_
                                                        __tmp135934)))
                                                (___kont135023135024_
                                                 _L130237_
                                                 _L130238_
                                                 _L130239_
                                                 _L130240_
                                                 _L130241_)
                                                (___kont135035135036_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129503130218_ _target129500130213_ '())))))
                     (___match135190135191_
                      (lambda (_e129463130109_
                               _hd129462130112_
                               _tl129461130114_
                               _e129466130117_
                               _hd129465130120_
                               _tl129464130122_
                               _e129469130125_
                               _hd129468130128_
                               _tl129467130130_
                               _e129472130133_
                               _hd129471130136_
                               _tl129470130138_
                               _e129475130141_
                               _hd129474130144_
                               _tl129473130146_
                               _e129478130149_
                               _hd129477130152_
                               _tl129476130154_
                               _e129481130157_
                               _hd129480130160_
                               _tl129479130162_
                               _e129484130165_
                               _hd129483130168_
                               _tl129482130170_
                               _e129487130173_
                               _hd129486130176_
                               _tl129485130178_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd129486130176_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129485130178_))
                                (let ((_e129490130181_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129485130178_))))
                                  (let ((_tl129488130186_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129490130181_)))
                                        (_hd129489130184_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129490130181_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl129488130186_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129482130170_))
                                            (let ((_e129493130189_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129482130170_))))
                                              (let ((_tl129491130194_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129493130189_)))
                                                    (_hd129492130192_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129493130189_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd129492130192_))
                                                    (let ((_e129496130197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd129492130192_))))
                                                      (let ((_tl129494130202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129496130197_)))
                    (_hd129495130200_
                     (let () (declare (not safe)) (##car _e129496130197_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd129495130200_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd129495130200_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129494130202_))
                            (let ((_e129499130205_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129494130202_))))
                              (let ((_tl129497130210_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129499130205_)))
                                    (_hd129498130208_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129499130205_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129497130210_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl129491130194_))
                                        (let ((___splice135025135026_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl129491130194_
                                                  '0))))
                                          (let ((_tl129502130215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135025135026_
                                                    '1)))
                                                (_target129500130213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice135025135026_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl129502130215_))
                                                (___match135232135233_
                                                 _e129463130109_
                                                 _hd129462130112_
                                                 _tl129461130114_
                                                 _e129466130117_
                                                 _hd129465130120_
                                                 _tl129464130122_
                                                 _e129469130125_
                                                 _hd129468130128_
                                                 _tl129467130130_
                                                 _e129472130133_
                                                 _hd129471130136_
                                                 _tl129470130138_
                                                 _e129475130141_
                                                 _hd129474130144_
                                                 _tl129473130146_
                                                 _e129478130149_
                                                 _hd129477130152_
                                                 _tl129476130154_
                                                 _e129481130157_
                                                 _hd129480130160_
                                                 _tl129479130162_
                                                 _e129484130165_
                                                 _hd129483130168_
                                                 _tl129482130170_
                                                 _e129487130173_
                                                 _hd129486130176_
                                                 _tl129485130178_
                                                 _e129490130181_
                                                 _hd129489130184_
                                                 _tl129488130186_
                                                 _e129493130189_
                                                 _hd129492130192_
                                                 _tl129491130194_
                                                 _e129496130197_
                                                 _hd129495130200_
                                                 _tl129494130202_
                                                 _e129499130205_
                                                 _hd129498130208_
                                                 _tl129497130210_
                                                 ___splice135025135026_
                                                 _target129500130213_
                                                 _tl129502130215_)
                                                (___kont135035135036_))))
                                        (___kont135035135036_))
                                    (___kont135035135036_))))
                            (___kont135035135036_))
                        (___kont135035135036_))
                    (___kont135035135036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135035135036_))))
                                            (___match135514135515_
                                             _e129463130109_
                                             _hd129462130112_
                                             _tl129461130114_
                                             _e129466130117_
                                             _hd129465130120_
                                             _tl129464130122_
                                             _e129469130125_
                                             _hd129468130128_
                                             _tl129467130130_
                                             _e129472130133_
                                             _hd129471130136_
                                             _tl129470130138_
                                             _e129475130141_
                                             _hd129474130144_
                                             _tl129473130146_
                                             _e129478130149_
                                             _hd129477130152_
                                             _tl129476130154_
                                             _e129481130157_
                                             _hd129480130160_
                                             _tl129479130162_
                                             _e129484130165_
                                             _hd129483130168_
                                             _tl129482130170_))
                                        (___match135514135515_
                                         _e129463130109_
                                         _hd129462130112_
                                         _tl129461130114_
                                         _e129466130117_
                                         _hd129465130120_
                                         _tl129464130122_
                                         _e129469130125_
                                         _hd129468130128_
                                         _tl129467130130_
                                         _e129472130133_
                                         _hd129471130136_
                                         _tl129470130138_
                                         _e129475130141_
                                         _hd129474130144_
                                         _tl129473130146_
                                         _e129478130149_
                                         _hd129477130152_
                                         _tl129476130154_
                                         _e129481130157_
                                         _hd129480130160_
                                         _tl129479130162_
                                         _e129484130165_
                                         _hd129483130168_
                                         _tl129482130170_))))
                                (___match135514135515_
                                 _e129463130109_
                                 _hd129462130112_
                                 _tl129461130114_
                                 _e129466130117_
                                 _hd129465130120_
                                 _tl129464130122_
                                 _e129469130125_
                                 _hd129468130128_
                                 _tl129467130130_
                                 _e129472130133_
                                 _hd129471130136_
                                 _tl129470130138_
                                 _e129475130141_
                                 _hd129474130144_
                                 _tl129473130146_
                                 _e129478130149_
                                 _hd129477130152_
                                 _tl129476130154_
                                 _e129481130157_
                                 _hd129480130160_
                                 _tl129479130162_
                                 _e129484130165_
                                 _hd129483130168_
                                 _tl129482130170_))
                            (___match135300135301_
                             _e129463130109_
                             _hd129462130112_
                             _tl129461130114_
                             _e129466130117_
                             _hd129465130120_
                             _tl129464130122_
                             _e129469130125_
                             _hd129468130128_
                             _tl129467130130_
                             _e129472130133_
                             _hd129471130136_
                             _tl129470130138_
                             _e129475130141_
                             _hd129474130144_
                             _tl129473130146_
                             _e129478130149_
                             _hd129477130152_
                             _tl129476130154_
                             _e129481130157_
                             _hd129480130160_
                             _tl129479130162_
                             _e129484130165_
                             _hd129483130168_
                             _tl129482130170_
                             _e129487130173_
                             _hd129486130176_
                             _tl129485130178_))))
                     (___match135122135123_
                      (lambda (_e129419130301_
                               _hd129418130304_
                               _tl129417130306_
                               _e129422130309_
                               _hd129421130312_
                               _tl129420130314_
                               _e129425130317_
                               _hd129424130320_
                               _tl129423130322_
                               _e129428130325_
                               _hd129427130328_
                               _tl129426130330_
                               _e129431130333_
                               _hd129430130336_
                               _tl129429130338_
                               _e129434130341_
                               _hd129433130344_
                               _tl129432130346_
                               _e129437130349_
                               _hd129436130352_
                               _tl129435130354_
                               _e129440130357_
                               _hd129439130360_
                               _tl129438130362_
                               _e129443130365_
                               _hd129442130368_
                               _tl129441130370_
                               _e129446130373_
                               _hd129445130376_
                               _tl129444130378_
                               ___splice135021135022_
                               _target129447130381_
                               _tl129449130383_)
                        (letrec ((_loop129450130386_
                                  (lambda (_hd129448130389_ _args129454130391_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129448130389_))
                                        (let ((_e129451130394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129448130389_))))
                                          (let ((_lp-tl129453130399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129451130394_)))
                                                (_lp-hd129452130397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129451130394_))))
                                            (let ((__tmp135937
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd129452130397_
                                                           _args129454130391_))))
                                              (declare (not safe))
                                              (_loop129450130386_
                                               _lp-tl129453130399_
                                               __tmp135937))))
                                        (let ((_args129455130402_
                                               (reverse _args129454130391_)))
                                          (let ((_L130405_ _args129455130402_)
                                                (_L130406_ _hd129445130376_)
                                                (_L130407_ _hd129436130352_)
                                                (_L130408_ _hd129427130328_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L130408_
                                                        'call-method))
                                                     (let ((__tmp135936
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self129400_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L130407_
                                                        __tmp135936)))
                                                (___kont135019135020_
                                                 _L130405_
                                                 _L130406_
                                                 _L130407_
                                                 _L130408_)
                                                (___match135310135311_
                                                 _e129419130301_
                                                 _hd129418130304_
                                                 _tl129417130306_
                                                 _e129422130309_
                                                 _hd129421130312_
                                                 _tl129420130314_
                                                 _e129425130317_
                                                 _hd129424130320_
                                                 _tl129423130322_
                                                 _e129428130325_
                                                 _hd129427130328_
                                                 _tl129426130330_
                                                 _e129431130333_
                                                 _hd129430130336_
                                                 _tl129429130338_
                                                 _e129434130341_
                                                 _hd129433130344_
                                                 _tl129432130346_
                                                 _e129437130349_
                                                 _hd129436130352_
                                                 _tl129435130354_
                                                 _e129440130357_
                                                 _hd129439130360_
                                                 _tl129438130362_
                                                 _e129443130365_
                                                 _hd129442130368_
                                                 _tl129441130370_
                                                 _e129446130373_
                                                 _hd129445130376_
                                                 _tl129444130378_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop129450130386_ _target129447130381_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135017135018_))
                    (let ((_e129419130301_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135017135018_))))
                      (let ((_tl129417130306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129419130301_)))
                            (_hd129418130304_
                             (let ()
                               (declare (not safe))
                               (##car _e129419130301_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129417130306_))
                            (let ((_e129422130309_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129417130306_))))
                              (let ((_tl129420130314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129422130309_)))
                                    (_hd129421130312_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129422130309_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129421130312_))
                                    (let ((_e129425130317_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129421130312_))))
                                      (let ((_tl129423130322_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129425130317_)))
                                            (_hd129424130320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129425130317_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129424130320_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129424130320_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129423130322_))
                                                    (let ((_e129428130325_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129423130322_))))
                                                      (let ((_tl129426130330_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129428130325_)))
                    (_hd129427130328_
                     (let () (declare (not safe)) (##car _e129428130325_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129426130330_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl129420130314_))
                        (let ((_e129431130333_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl129420130314_))))
                          (let ((_tl129429130338_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129431130333_)))
                                (_hd129430130336_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129431130333_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd129430130336_))
                                (let ((_e129434130341_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd129430130336_))))
                                  (let ((_tl129432130346_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129434130341_)))
                                        (_hd129433130344_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129434130341_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd129433130344_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd129433130344_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl129432130346_))
                                                (let ((_e129437130349_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl129432130346_))))
                                                  (let ((_tl129435130354_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129437130349_)))
                                                        (_hd129436130352_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129437130349_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl129435130354_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129429130338_))
                                                            (let ((_e129440130357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129429130338_))))
                      (let ((_tl129438130362_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129440130357_)))
                            (_hd129439130360_
                             (let ()
                               (declare (not safe))
                               (##car _e129440130357_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd129439130360_))
                            (let ((_e129443130365_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd129439130360_))))
                              (let ((_tl129441130370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129443130365_)))
                                    (_hd129442130368_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129443130365_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129442130368_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd129442130368_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129441130370_))
                                            (let ((_e129446130373_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129441130370_))))
                                              (let ((_tl129444130378_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129446130373_)))
                                                    (_hd129445130376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129446130373_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl129444130378_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl129438130362_))
                                                        (let ((___splice135021135022_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl129438130362_ '0))))
                  (let ((_tl129449130383_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135021135022_ '1)))
                        (_target129447130381_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice135021135022_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129449130383_))
                        (___match135122135123_
                         _e129419130301_
                         _hd129418130304_
                         _tl129417130306_
                         _e129422130309_
                         _hd129421130312_
                         _tl129420130314_
                         _e129425130317_
                         _hd129424130320_
                         _tl129423130322_
                         _e129428130325_
                         _hd129427130328_
                         _tl129426130330_
                         _e129431130333_
                         _hd129430130336_
                         _tl129429130338_
                         _e129434130341_
                         _hd129433130344_
                         _tl129432130346_
                         _e129437130349_
                         _hd129436130352_
                         _tl129435130354_
                         _e129440130357_
                         _hd129439130360_
                         _tl129438130362_
                         _e129443130365_
                         _hd129442130368_
                         _tl129441130370_
                         _e129446130373_
                         _hd129445130376_
                         _tl129444130378_
                         ___splice135021135022_
                         _target129447130381_
                         _tl129449130383_)
                        (___match135310135311_
                         _e129419130301_
                         _hd129418130304_
                         _tl129417130306_
                         _e129422130309_
                         _hd129421130312_
                         _tl129420130314_
                         _e129425130317_
                         _hd129424130320_
                         _tl129423130322_
                         _e129428130325_
                         _hd129427130328_
                         _tl129426130330_
                         _e129431130333_
                         _hd129430130336_
                         _tl129429130338_
                         _e129434130341_
                         _hd129433130344_
                         _tl129432130346_
                         _e129437130349_
                         _hd129436130352_
                         _tl129435130354_
                         _e129440130357_
                         _hd129439130360_
                         _tl129438130362_
                         _e129443130365_
                         _hd129442130368_
                         _tl129441130370_
                         _e129446130373_
                         _hd129445130376_
                         _tl129444130378_))))
                (___match135310135311_
                 _e129419130301_
                 _hd129418130304_
                 _tl129417130306_
                 _e129422130309_
                 _hd129421130312_
                 _tl129420130314_
                 _e129425130317_
                 _hd129424130320_
                 _tl129423130322_
                 _e129428130325_
                 _hd129427130328_
                 _tl129426130330_
                 _e129431130333_
                 _hd129430130336_
                 _tl129429130338_
                 _e129434130341_
                 _hd129433130344_
                 _tl129432130346_
                 _e129437130349_
                 _hd129436130352_
                 _tl129435130354_
                 _e129440130357_
                 _hd129439130360_
                 _tl129438130362_
                 _e129443130365_
                 _hd129442130368_
                 _tl129441130370_
                 _e129446130373_
                 _hd129445130376_
                 _tl129444130378_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match135514135515_
                                                     _e129419130301_
                                                     _hd129418130304_
                                                     _tl129417130306_
                                                     _e129422130309_
                                                     _hd129421130312_
                                                     _tl129420130314_
                                                     _e129425130317_
                                                     _hd129424130320_
                                                     _tl129423130322_
                                                     _e129428130325_
                                                     _hd129427130328_
                                                     _tl129426130330_
                                                     _e129431130333_
                                                     _hd129430130336_
                                                     _tl129429130338_
                                                     _e129434130341_
                                                     _hd129433130344_
                                                     _tl129432130346_
                                                     _e129437130349_
                                                     _hd129436130352_
                                                     _tl129435130354_
                                                     _e129440130357_
                                                     _hd129439130360_
                                                     _tl129438130362_))))
                                            (___match135514135515_
                                             _e129419130301_
                                             _hd129418130304_
                                             _tl129417130306_
                                             _e129422130309_
                                             _hd129421130312_
                                             _tl129420130314_
                                             _e129425130317_
                                             _hd129424130320_
                                             _tl129423130322_
                                             _e129428130325_
                                             _hd129427130328_
                                             _tl129426130330_
                                             _e129431130333_
                                             _hd129430130336_
                                             _tl129429130338_
                                             _e129434130341_
                                             _hd129433130344_
                                             _tl129432130346_
                                             _e129437130349_
                                             _hd129436130352_
                                             _tl129435130354_
                                             _e129440130357_
                                             _hd129439130360_
                                             _tl129438130362_))
                                        (___match135190135191_
                                         _e129419130301_
                                         _hd129418130304_
                                         _tl129417130306_
                                         _e129422130309_
                                         _hd129421130312_
                                         _tl129420130314_
                                         _e129425130317_
                                         _hd129424130320_
                                         _tl129423130322_
                                         _e129428130325_
                                         _hd129427130328_
                                         _tl129426130330_
                                         _e129431130333_
                                         _hd129430130336_
                                         _tl129429130338_
                                         _e129434130341_
                                         _hd129433130344_
                                         _tl129432130346_
                                         _e129437130349_
                                         _hd129436130352_
                                         _tl129435130354_
                                         _e129440130357_
                                         _hd129439130360_
                                         _tl129438130362_
                                         _e129443130365_
                                         _hd129442130368_
                                         _tl129441130370_))
                                    (___match135514135515_
                                     _e129419130301_
                                     _hd129418130304_
                                     _tl129417130306_
                                     _e129422130309_
                                     _hd129421130312_
                                     _tl129420130314_
                                     _e129425130317_
                                     _hd129424130320_
                                     _tl129423130322_
                                     _e129428130325_
                                     _hd129427130328_
                                     _tl129426130330_
                                     _e129431130333_
                                     _hd129430130336_
                                     _tl129429130338_
                                     _e129434130341_
                                     _hd129433130344_
                                     _tl129432130346_
                                     _e129437130349_
                                     _hd129436130352_
                                     _tl129435130354_
                                     _e129440130357_
                                     _hd129439130360_
                                     _tl129438130362_))))
                            (___match135514135515_
                             _e129419130301_
                             _hd129418130304_
                             _tl129417130306_
                             _e129422130309_
                             _hd129421130312_
                             _tl129420130314_
                             _e129425130317_
                             _hd129424130320_
                             _tl129423130322_
                             _e129428130325_
                             _hd129427130328_
                             _tl129426130330_
                             _e129431130333_
                             _hd129430130336_
                             _tl129429130338_
                             _e129434130341_
                             _hd129433130344_
                             _tl129432130346_
                             _e129437130349_
                             _hd129436130352_
                             _tl129435130354_
                             _e129440130357_
                             _hd129439130360_
                             _tl129438130362_))))
                    (___match135452135453_
                     _e129419130301_
                     _hd129418130304_
                     _tl129417130306_
                     _e129422130309_
                     _hd129421130312_
                     _tl129420130314_
                     _e129425130317_
                     _hd129424130320_
                     _tl129423130322_
                     _e129428130325_
                     _hd129427130328_
                     _tl129426130330_
                     _e129431130333_
                     _hd129430130336_
                     _tl129429130338_
                     _e129434130341_
                     _hd129433130344_
                     _tl129432130346_
                     _e129437130349_
                     _hd129436130352_
                     _tl129435130354_))
                (___kont135035135036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135035135036_))
                                            (___kont135035135036_))
                                        (___kont135035135036_))))
                                (___kont135035135036_))))
                        (___kont135035135036_))
                    (___kont135035135036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135035135036_))
                                                (___kont135035135036_))
                                            (___kont135035135036_))))
                                    (___kont135035135036_))))
                            (___kont135035135036_))))
                    (___kont135035135036_))))))))))
