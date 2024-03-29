(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1711709199)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp134418 (list gxc#::identity::t))
            (__tmp134417 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp134418
         '()
         __tmp134417
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args133283_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args133283_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp134419
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
                 (__seal-class! gxc#::generate-method-specializers::t)))))
        (declare (not safe))
        (__make-promise __tmp134419)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133275_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self133278_
                (let ((__obj134412
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj134412))
               (__tmp134420
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self133278_ _stx133275_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp134420
           gxc#current-compile-method
           _self133278_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp134422 (list gxc#::void::t))
            (__tmp134421 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp134422
         '(receiver methods slots)
         __tmp134421
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args133272_
        (apply make-instance gxc#::collect-object-refs::t _$args133272_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (let ((__tmp134423
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
                 (__seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp134423)))
    (define gxc#apply-collect-object-refs__%
      (lambda (__133236_
               _receiver133231133238_
               _methods133232133240_
               _slots133233133242_
               _stx133244_)
        (let* ((_receiver133247_
                (if (eq? _receiver133231133238_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver133231133238_))
               (_methods133249_
                (if (eq? _methods133232133240_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods133232133240_))
               (_slots133251_
                (if (eq? _slots133233133242_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots133233133242_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self133253_
                  (let ((__obj134414
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
                       __obj134414
                       _receiver133247_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134414
                       _methods133249_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134414
                       _slots133251_
                       '3
                       '#f
                       '#f))
                    __obj134414))
                 (__tmp134424
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self133253_ _stx133244_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp134424
             gxc#current-compile-method
             _self133253_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys133230133260_ . _args133262_)
        (apply gxc#apply-collect-object-refs__%
               _keys133230133260_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133230133260_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133230133260_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133230133260_ 'slots: absent-value))
               _args133262_)))
    (define gxc#apply-collect-object-refs
      (lambda _args133234133268_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args133234133268_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp134426 (list gxc#::basic-xform-expression::t))
            (__tmp134425 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp134426
         '(receiver klass methods slots)
         __tmp134425
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args133226_
        (apply make-instance gxc#::subst-object-refs::t _$args133226_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (let ((__tmp134427
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
                 (__seal-class! gxc#::subst-object-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp134427)))
    (define gxc#apply-subst-object-refs__%
      (lambda (__133186_
               _receiver133180133188_
               _klass133181133190_
               _methods133182133192_
               _slots133183133194_
               _stx133196_)
        (let* ((_receiver133199_
                (if (eq? _receiver133180133188_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver133180133188_))
               (_klass133201_
                (if (eq? _klass133181133190_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass133181133190_))
               (_methods133203_
                (if (eq? _methods133182133192_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods133182133192_))
               (_slots133205_
                (if (eq? _slots133183133194_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots133183133194_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self133207_
                  (let ((__obj134416
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
                       __obj134416
                       _receiver133199_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134416
                       _klass133201_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134416
                       _methods133203_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj134416
                       _slots133205_
                       '4
                       '#f
                       '#f))
                    __obj134416))
                 (__tmp134428
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self133207_ _stx133196_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp134428
             gxc#current-compile-method
             _self133207_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys133179133214_ . _args133216_)
        (apply gxc#apply-subst-object-refs__%
               _keys133179133214_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133179133214_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133179133214_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys133179133214_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys133179133214_ 'slots: absent-value))
               _args133216_)))
    (define gxc#apply-subst-object-refs
      (lambda _args133184133222_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args133184133222_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self130374_ _stx130375_)
        (letrec ((_generate-method-bind130377_
                  (lambda (_$klass133171_
                           _$method-table133172_
                           _id133173_
                           _$id133174_)
                    (let ((_$tmp133176_
                           (let ((__tmp134429
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp134429))))
                      (cons (cons _$id133174_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _$tmp133176_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _$method-table133172_ '()))
                                      (cons (cons '%#quote
                                                  (cons _id133173_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _$tmp133176_ '()))
                    (cons (cons '%#ref (cons _$tmp133176_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _id133173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_generate-slot-bind130378_
                  (lambda (_$klass133165_ _id133166_ _$id133167_)
                    (let ((_$tmp133169_
                           (let ((__tmp134430
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp134430))))
                      (cons (cons _$id133167_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _$tmp133169_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _$klass133165_ '()))
                                          (cons (cons '%#quote
                                                      (cons _id133166_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _$tmp133169_ '()))
                        (cons (cons '%#ref (cons _$tmp133169_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _id133166_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_generate-specializer-impl130379_
                  (lambda (_$klass133159_
                           _$method-table133160_
                           _methods-bind133161_
                           _slots-bind133162_
                           _specializer-impl133163_)
                    (let ((__tmp134431
                           (cons '%#lambda
                                 (cons (cons _$klass133159_
                                             (cons _$method-table133160_ '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _slots-bind133162_
                                                            _methods-bind133161_))
                                                         (cons _specializer-impl133163_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134431 _stx130375_))))
                 (_generate-specializer-def130380_
                  (lambda (_id133155_
                           _specializer-id133156_
                           _specializer-impl133157_)
                    (let ((__tmp134432
                           (cons '%#begin
                                 (cons _stx130375_
                                       (cons (let ((__tmp134433
                                                    (cons '%#define-values
                                                          (cons (cons _specializer-id133156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _specializer-impl133157_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp134433
                                                _stx130375_))
                                             (cons (let ((__tmp134434
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _id133155_ '()))
                                    (cons (cons '%#ref
                                                (cons _specializer-id133156_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134434
                                                      _stx130375_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134432 _stx130375_)))))
          (let* ((___stx133372133373_ _stx130375_)
                 (_g130383130403_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133372133373_)))))
            (let ((___kont133374133375_
                   (lambda (_L130447_ _L130448_)
                     (let ((_method-calls130467_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130468_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130469_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130471_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _method-calls130467_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _slot-refs130468_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130447_))
                             (let* ((___stx133286133287_ _L130447_)
                                    (_g130858130876_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133286133287_)))))
                               (let ((___kont133288133289_
                                      (lambda (_L130912_ _L130913_ _L130914_)
                                        (for-each
                                         (lambda (_g130929130931_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g130929130931_
                                              'receiver:
                                              _L130914_
                                              'methods:
                                              _method-calls130467_
                                              'slots:
                                              _slot-refs130468_)))
                                         _L130912_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130471_))
                                            _stx130375_
                                            (let* ((_specializer-id130940_
                                                    (let* ((_id130934_
                                                            (let ((__tmp134435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130448_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp134435 '"::specialize")))
                   (_specializer-id130937_
                    (let ((__tmp134436
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130375_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id130934_ __tmp134436))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id130937_))
              _specializer-id130937_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass130942_
                                                    (let ((__tmp134437
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__klass))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134437)))
                                                   (_$method-table130944_
                                                    (let ((__tmp134438
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##gensym
                                                              '__method-table))))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134438)))
                                                   (_methods130946_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130467_)))
                                                   (_$methods130950_
                                                    (map (lambda (_id130948_)
                                                           (let ((__tmp134439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130948_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134439)))
                 _methods130946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__130959_
                                                    (for-each
                                                     (lambda (_g130951130954_
                                                              _g130952130956_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130467_
                                                          _g130951130954_
                                                          _g130952130956_)))
                                                     _methods130946_
                                                     _$methods130950_))
                                                   (_methods-bind130969_
                                                    (map (lambda (_g130961130964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130962130966_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130377_
                      _$klass130942_
                      _$method-table130944_
                      _g130961130964_
                      _g130962130966_)))
                 _methods130946_
                 _$methods130950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots130971_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130468_)))
                                                   (_$slots130975_
                                                    (map (lambda (_id130973_)
                                                           (let ((__tmp134440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id130973_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134440)))
                 _slots130971_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__130984_
                                                    (for-each
                                                     (lambda (_g130976130979_
                                                              _g130977130981_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130468_
                                                          _g130976130979_
                                                          _g130977130981_)))
                                                     _slots130971_
                                                     _$slots130975_))
                                                   (_slots-bind130993_
                                                    (map (lambda (_g130985130988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g130986130990_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130378_
                      _$klass130942_
                      _g130985130988_
                      _g130986130990_)))
                 _slots130971_
                 _$slots130975_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body130999_
                                                    (map (lambda (_g130994130996_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g130994130996_
                                                              'receiver:
                                                              _L130914_
                                                              'klass:
                                                              _$klass130942_
                                                              'methods:
                                                              _method-calls130467_
                                                              'slots:
                                                              _slot-refs130468_)))
                                                         _L130912_))
                                                   (_specializer-impl131001_
                                                    (let ((__tmp134441
                                                           (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons _L130914_ _L130913_)
                               _specializer-body130999_))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp134441 _stx130375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131003_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130379_
                                                       _$klass130942_
                                                       _$method-table130944_
                                                       _methods-bind130969_
                                                       _slots-bind130993_
                                                       _specializer-impl131001_))))
                                              (let ((__tmp134443
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130448_)))
                                                    (__tmp134442
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id130940_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp134443
                                                 '" => "
                                                 __tmp134442))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130380_
                                                 _L130448_
                                                 _specializer-id130940_
                                                 _specializer-impl131003_))))))
                                     (___kont133290133291_
                                      (lambda () _stx130375_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133286133287_))
                                     (let ((_e130865130888_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133286133287_))))
                                       (let ((_tl130863130893_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e130865130888_)))
                                             (_hd130864130891_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e130865130888_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl130863130893_))
                                             (let ((_e130868130896_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl130863130893_))))
                                               (let ((_tl130866130901_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e130868130896_)))
                                                     (_hd130867130899_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e130868130896_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd130867130899_))
                                                     (let ((_e130871130904_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd130867130899_))))
                                                       (let ((_tl130869130909_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130871130904_)))
                     (_hd130870130907_
                      (let () (declare (not safe)) (##car _e130871130904_))))
                 (___kont133288133289_
                  _tl130866130901_
                  _tl130869130909_
                  _hd130870130907_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133290133291_))))
                                             (___kont133290133291_))))
                                     (___kont133290133291_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130447_))
                                 (let* ((_g131009131028_
                                         (lambda (_g131010131025_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131010131025_))))
                                        (_g131008131314_
                                         (lambda (_g131010131031_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131010131031_))
                                               (let ((_e131014131033_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131010131031_))))
                                                 (let ((_hd131013131036_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131014131033_)))
                                                       (_tl131012131038_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131014131033_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131012131038_))
                                                       (let ((_g134444_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131012131038_ '0))))
                 (begin
                   (let ((_g134445_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g134444_)
                                (##vector-length _g134444_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g134445_ 2)))
                         (error "Context expects 2 values" _g134445_)))
                   (let ((_target131015131041_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134444_ 0)))
                         (_tl131017131043_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134444_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131017131043_))
                         (letrec ((_loop131018131046_
                                   (lambda (_hd131016131049_
                                            _clause131022131051_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131016131049_))
                                         (let ((_e131019131054_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131016131049_))))
                                           (let ((_lp-hd131020131057_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131019131054_)))
                                                 (_lp-tl131021131059_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131019131054_))))
                                             (let ((__tmp134446
                                                    (cons _lp-hd131020131057_
                                                          _clause131022131051_)))
                                               (declare (not safe))
                                               (_loop131018131046_
                                                _lp-tl131021131059_
                                                __tmp134446))))
                                         (let ((_clause131023131062_
                                                (reverse _clause131022131051_)))
                                           ((lambda (_L131065_)
                                              (for-each
                                               (lambda (_clause131078_)
                                                 (let* ((___stx133312133313_
                                                         _clause131078_)
                                                        (_g131081131096_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133312133313_)))))
                                                   (let ((___kont133314133315_
                                                          (lambda (_L131124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131125_
                           _L131126_)
                    (for-each
                     (lambda (_g131141131143_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131141131143_
                          'receiver:
                          _L131126_
                          'methods:
                          _method-calls130467_
                          'slots:
                          _slot-refs130468_)))
                     _L131124_)))
                 (___kont133316133317_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133312133313_))
                                                         (let ((_e131088131108_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133312133313_))))
                   (let ((_tl131086131113_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131088131108_)))
                         (_hd131087131111_
                          (let ()
                            (declare (not safe))
                            (##car _e131088131108_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131087131111_))
                         (let ((_e131091131116_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131087131111_))))
                           (let ((_tl131089131121_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131091131116_)))
                                 (_hd131090131119_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131091131116_))))
                             (___kont133314133315_
                              _tl131086131113_
                              _tl131089131121_
                              _hd131090131119_)))
                         (___kont133316133317_))))
                 (___kont133316133317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp134447
                                                      (lambda (_g131148131151_
                                                               _g131149131153_)
                                                        (cons _g131148131151_
                                                              _g131149131153_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp134447
                                                  '()
                                                  _L131065_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130471_))
                                                  _stx130375_
                                                  (let* ((_specializer-id131162_
                                                          (let* ((_id131156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134448
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130448_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134448 '"::specialize")))
                         (_specializer-id131159_
                          (let ((__tmp134449
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130375_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131156_ __tmp134449))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131159_))
                    _specializer-id131159_))
                 (_$klass131164_
                  (let ((__tmp134450
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp134450)))
                 (_$method-table131166_
                  (let ((__tmp134451
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp134451)))
                 (_methods131168_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130467_)))
                 (_$methods131172_
                  (map (lambda (_id131170_)
                         (let ((__tmp134452 (gensym _id131170_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134452)))
                       _methods131168_))
                 (__131181_
                  (for-each
                   (lambda (_g131173131176_ _g131174131178_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130467_
                        _g131173131176_
                        _g131174131178_)))
                   _methods131168_
                   _$methods131172_))
                 (_methods-bind131191_
                  (map (lambda (_g131183131186_ _g131184131188_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130377_
                            _$klass131164_
                            _$method-table131166_
                            _g131183131186_
                            _g131184131188_)))
                       _methods131168_
                       _$methods131172_))
                 (_slots131193_
                  (let () (declare (not safe)) (hash-keys _slot-refs130468_)))
                 (_$slots131197_
                  (map (lambda (_id131195_)
                         (let ((__tmp134453 (gensym _id131195_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134453)))
                       _slots131193_))
                 (__131206_
                  (for-each
                   (lambda (_g131198131201_ _g131199131203_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130468_
                        _g131198131201_
                        _g131199131203_)))
                   _slots131193_
                   _$slots131197_))
                 (_slots-bind131215_
                  (map (lambda (_g131207131210_ _g131208131212_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130378_
                            _$klass131164_
                            _g131207131210_
                            _g131208131212_)))
                       _slots131193_
                       _$slots131197_))
                 (_specializer-clauses131307_
                  (map (lambda (_clause131217_)
                         (let* ((___stx133332133333_ _clause131217_)
                                (_g131220131235_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133332133333_)))))
                           (let ((___kont133334133335_
                                  (lambda (_L131263_ _L131264_ _L131265_)
                                    (let ((_body131295_
                                           (map (lambda (_g131290131292_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-subst-object-refs
                                                     _g131290131292_
                                                     'receiver:
                                                     _L131265_
                                                     'klass:
                                                     _$klass131164_
                                                     'methods:
                                                     _method-calls130467_
                                                     'slots:
                                                     _slot-refs130468_)))
                                                _L131263_)))
                                      (cons (cons _L131265_ _L131264_)
                                            _body131295_))))
                                 (___kont133336133337_
                                  (lambda () _clause131217_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133332133333_))
                                 (let ((_e131227131247_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133332133333_))))
                                   (let ((_tl131225131252_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131227131247_)))
                                         (_hd131226131250_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131227131247_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131226131250_))
                                         (let ((_e131230131255_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131226131250_))))
                                           (let ((_tl131228131260_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131230131255_)))
                                                 (_hd131229131258_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131230131255_))))
                                             (___kont133334133335_
                                              _tl131225131252_
                                              _tl131228131260_
                                              _hd131229131258_)))
                                         (___kont133336133337_))))
                                 (___kont133336133337_)))))
                       (let ((__tmp134454
                              (lambda (_g131299131302_ _g131300131304_)
                                (cons _g131299131302_ _g131300131304_))))
                         (declare (not safe))
                         (__foldr1 __tmp134454 '() _L131065_))))
                 (_specializer-impl131309_
                  (let ((__tmp134455
                         (cons '%#case-lambda _specializer-clauses131307_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134455 _stx130375_)))
                 (_specializer-impl131311_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130379_
                     _$klass131164_
                     _$method-table131166_
                     _methods-bind131191_
                     _slots-bind131215_
                     _specializer-impl131309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134457
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130448_)))
                                                          (__tmp134456
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131162_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134457
                                                       '" => "
                                                       __tmp134456))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130380_
                                                       _L130448_
                                                       _specializer-id131162_
                                                       _specializer-impl131311_)))))
                                            _clause131023131062_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131018131046_ _target131015131041_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131009131028_ _g131010131031_))))))
               (let ()
                 (declare (not safe))
                 (_g131009131028_ _g131010131031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131009131028_
                                                  _g131010131031_))))))
                                   (declare (not safe))
                                   (_g131008131314_ _L130447_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130447_))
                                     (let* ((_g131317131347_
                                             (lambda (_g131318131344_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131318131344_))))
                                            (_g131316131955_
                                             (lambda (_g131318131350_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131318131350_))
                                                   (let ((_e131324131352_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131318131350_))))
                                                     (let ((_hd131323131355_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131324131352_)))
                                                           (_tl131322131357_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131324131352_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131322131357_))
                                                           (let ((_e131327131360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131322131357_))))
                     (let ((_hd131326131363_
                            (let ()
                              (declare (not safe))
                              (##car _e131327131360_)))
                           (_tl131325131365_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131327131360_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131326131363_))
                           (let ((_e131330131368_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131326131363_))))
                             (let ((_hd131329131371_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131330131368_)))
                                   (_tl131328131373_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131330131368_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131329131371_))
                                   (let ((_e131333131376_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131329131371_))))
                                     (let ((_hd131332131379_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131333131376_)))
                                           (_tl131331131381_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131333131376_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131332131379_))
                                           (let ((_e131336131384_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131332131379_))))
                                             (let ((_hd131335131387_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131336131384_)))
                                                   (_tl131334131389_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131336131384_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131334131389_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131331131381_))
                                                       (let ((_e131339131392_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131331131381_))))
                 (let ((_hd131338131395_
                        (let () (declare (not safe)) (##car _e131339131392_)))
                       (_tl131337131397_
                        (let () (declare (not safe)) (##cdr _e131339131392_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131337131397_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131328131373_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131325131365_))
                               (let ((_e131342131400_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131325131365_))))
                                 (let ((_hd131341131403_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131342131400_)))
                                       (_tl131340131405_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131342131400_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131340131405_))
                                       ((lambda (_L131408_ _L131409_ _L131410_)
                                          (let* ((_g131433131451_
                                                  (lambda (_g131434131448_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131434131448_))))
                                                 (_g131432131502_
                                                  (lambda (_g131434131454_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131434131454_))
                                                        (let ((_e131440131456_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131434131454_))))
                  (let ((_hd131439131459_
                         (let () (declare (not safe)) (##car _e131440131456_)))
                        (_tl131438131461_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131440131456_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131438131461_))
                        (let ((_e131443131464_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131438131461_))))
                          (let ((_hd131442131467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131443131464_)))
                                (_tl131441131469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131443131464_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131442131467_))
                                (let ((_e131446131472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131442131467_))))
                                  (let ((_hd131445131475_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131446131472_)))
                                        (_tl131444131477_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131446131472_))))
                                    ((lambda (_L131480_ _L131481_ _L131482_)
                                       (for-each
                                        (lambda (_g131497131499_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131497131499_
                                             'receiver:
                                             _L131482_
                                             'methods:
                                             _method-calls130467_
                                             'slots:
                                             _slot-refs130468_)))
                                        _L131480_))
                                     _tl131441131469_
                                     _tl131444131477_
                                     _hd131445131475_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131433131451_ _g131434131454_)))))
                        (let ()
                          (declare (not safe))
                          (_g131433131451_ _g131434131454_)))))
                (let ()
                  (declare (not safe))
                  (_g131433131451_ _g131434131454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131432131502_ _L131409_))
                                          (let* ((_g131505131524_
                                                  (lambda (_g131506131521_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131506131521_))))
                                                 (_g131504131643_
                                                  (lambda (_g131506131527_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131506131527_))
                                                        (let ((_e131510131529_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131506131527_))))
                  (let ((_hd131509131532_
                         (let () (declare (not safe)) (##car _e131510131529_)))
                        (_tl131508131534_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131510131529_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131508131534_))
                        (let ((_g134458_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131508131534_
                                  '0))))
                          (begin
                            (let ((_g134459_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134458_)
                                         (##vector-length _g134458_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134459_ 2)))
                                  (error "Context expects 2 values"
                                         _g134459_)))
                            (let ((_target131511131537_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134458_ 0)))
                                  (_tl131513131539_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134458_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131513131539_))
                                  (letrec ((_loop131514131542_
                                            (lambda (_hd131512131545_
                                                     _clause131518131547_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131512131545_))
                                                  (let ((_e131515131550_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131512131545_))))
                                                    (let ((_lp-hd131516131553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131515131550_)))
                                                          (_lp-tl131517131555_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131515131550_))))
                                                      (let ((__tmp134460
                                                             (cons _lp-hd131516131553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause131518131547_)))
                (declare (not safe))
                (_loop131514131542_ _lp-tl131517131555_ __tmp134460))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131519131558_
                                                         (reverse _clause131518131547_)))
                                                    ((lambda (_L131561_)
                                                       (for-each
                                                        (lambda (_clause131574_)
                                                          (let* ((_g131576131591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131577131588_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131577131588_))))
                         (_g131575131633_
                          (lambda (_g131577131594_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131577131594_))
                                (let ((_e131583131596_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131577131594_))))
                                  (let ((_hd131582131599_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131583131596_)))
                                        (_tl131581131601_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131583131596_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131582131599_))
                                        (let ((_e131586131604_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131582131599_))))
                                          (let ((_hd131585131607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131586131604_)))
                                                (_tl131584131609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131586131604_))))
                                            ((lambda (_L131612_
                                                      _L131613_
                                                      _L131614_)
                                               (for-each
                                                (lambda (_g131628131630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131628131630_
                                                     'receiver:
                                                     _L131614_
                                                     'methods:
                                                     _method-calls130467_
                                                     'slots:
                                                     _slot-refs130468_)))
                                                _L131612_))
                                             _tl131581131601_
                                             _tl131584131609_
                                             _hd131585131607_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131576131591_ _g131577131594_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131576131591_ _g131577131594_))))))
                    (declare (not safe))
                    (_g131575131633_ _clause131574_)))
                (let ((__tmp134461
                       (lambda (_g131635131638_ _g131636131640_)
                         (cons _g131635131638_ _g131636131640_))))
                  (declare (not safe))
                  (__foldr1 __tmp134461 '() _L131561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131519131558_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131514131542_
                                       _target131511131537_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131505131524_ _g131506131527_))))))
                        (let ()
                          (declare (not safe))
                          (_g131505131524_ _g131506131527_)))))
                (let ()
                  (declare (not safe))
                  (_g131505131524_ _g131506131527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131504131643_ _L131408_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130471_))
                                              _stx130375_
                                              (let* ((_specializer-id131652_
                                                      (let* ((_id131646_
                                                              (let ((__tmp134462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130448_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp134462 '"::specialize")))
                     (_specializer-id131649_
                      (let ((__tmp134463
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130375_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131646_ __tmp134463))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131649_))
                _specializer-id131649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass131654_
                                                      (let ((__tmp134464
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp134464)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$method-table131656_
                                                      (let ((__tmp134465
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp134465)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_methods131658_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130467_)))
                                                     (_$methods131662_
                                                      (map (lambda (_id131660_)
                                                             (let ((__tmp134466
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131660_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134466)))
                   _methods131658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__131671_
                                                      (for-each
                                                       (lambda (_g131663131666_
                                                                _g131664131668_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130467_
                                                            _g131663131666_
                                                            _g131664131668_)))
                                                       _methods131658_
                                                       _$methods131662_))
                                                     (_methods-bind131681_
                                                      (map (lambda (_g131673131676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131674131678_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130377_
                        _$klass131654_
                        _$method-table131656_
                        _g131673131676_
                        _g131674131678_)))
                   _methods131658_
                   _$methods131662_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131683_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130468_)))
                                                     (_$slots131687_
                                                      (map (lambda (_id131685_)
                                                             (let ((__tmp134467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131685_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134467)))
                   _slots131683_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__131696_
                                                      (for-each
                                                       (lambda (_g131688131691_
                                                                _g131689131693_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130468_
                                                            _g131688131691_
                                                            _g131689131693_)))
                                                       _slots131683_
                                                       _$slots131687_))
                                                     (_slots-bind131705_
                                                      (map (lambda (_g131697131700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131698131702_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130378_
                        _$klass131654_
                        _g131697131700_
                        _g131698131702_)))
                   _slots131683_
                   _$slots131687_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr131791_
                                                      (let* ((_g131707131725_
                                                              (lambda (_g131708131722_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131708131722_))))
                     (_g131706131788_
                      (lambda (_g131708131728_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131708131728_))
                            (let ((_e131714131730_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131708131728_))))
                              (let ((_hd131713131733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131714131730_)))
                                    (_tl131712131735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131714131730_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl131712131735_))
                                    (let ((_e131717131738_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl131712131735_))))
                                      (let ((_hd131716131741_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e131717131738_)))
                                            (_tl131715131743_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e131717131738_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd131716131741_))
                                            (let ((_e131720131746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd131716131741_))))
                                              (let ((_hd131719131749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e131720131746_)))
                                                    (_tl131718131751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e131720131746_))))
                                                ((lambda (_L131754_
                                                          _L131755_
                                                          _L131756_)
                                                   (let* ((_body131786_
                                                           (map (lambda (_g131781131783_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g131781131783_
                             'receiver:
                             _L131756_
                             'klass:
                             _$klass131654_
                             'methods:
                             _method-calls130467_
                             'slots:
                             _slot-refs130468_)))
                        _L131754_))
                  (__tmp134468
                   (cons '%#lambda
                         (cons (cons _L131756_ _L131755_) _body131786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134468
                                                      _L131409_)))
                                                 _tl131715131743_
                                                 _tl131718131751_
                                                 _hd131719131749_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g131707131725_
                                               _g131708131728_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131707131725_ _g131708131728_)))))
                            (let ()
                              (declare (not safe))
                              (_g131707131725_ _g131708131728_))))))
                (declare (not safe))
                (_g131706131788_ _L131409_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr131948_
                                                      (let* ((_g131793131812_
                                                              (lambda (_g131794131809_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131794131809_))))
                     (_g131792131945_
                      (lambda (_g131794131815_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131794131815_))
                            (let ((_e131798131817_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131794131815_))))
                              (let ((_hd131797131820_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131798131817_)))
                                    (_tl131796131822_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131798131817_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl131796131822_))
                                    (let ((_g134469_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl131796131822_
                                              '0))))
                                      (begin
                                        (let ((_g134470_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134469_)
                                                     (##vector-length
                                                      _g134469_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134470_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134470_)))
                                        (let ((_target131799131825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134469_ 0)))
                                              (_tl131801131827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134469_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131801131827_))
                                              (letrec ((_loop131802131830_
                                                        (lambda (_hd131800131833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause131806131835_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd131800131833_))
                      (let ((_e131803131838_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd131800131833_))))
                        (let ((_lp-hd131804131841_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131803131838_)))
                              (_lp-tl131805131843_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131803131838_))))
                          (let ((__tmp134471
                                 (cons _lp-hd131804131841_
                                       _clause131806131835_)))
                            (declare (not safe))
                            (_loop131802131830_
                             _lp-tl131805131843_
                             __tmp134471))))
                      (let ((_clause131807131846_
                             (reverse _clause131806131835_)))
                        ((lambda (_L131849_)
                           (let* ((_clauses131943_
                                   (map (lambda (_clause131863_)
                                          (let* ((___stx133352133353_
                                                  _clause131863_)
                                                 (_g131866131881_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133352133353_)))))
                                            (let ((___kont133354133355_
                                                   (lambda (_L131909_
                                                            _L131910_
                                                            _L131911_)
                                                     (let ((_body131931_
                                                            (map (lambda (_g131926131928_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#apply-subst-object-refs
                              _g131926131928_
                              'receiver:
                              _L131911_
                              'klass:
                              _$klass131654_
                              'methods:
                              _method-calls130467_
                              'slots:
                              _slot-refs130468_)))
                         _L131909_)))
               (cons (cons _L131911_ _L131910_) _body131931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133356133357_
                                                   (lambda () _clause131863_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133352133353_))
                                                  (let ((_e131873131893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133352133353_))))
                                                    (let ((_tl131871131898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131873131893_)))
                                                          (_hd131872131896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131873131893_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd131872131896_))
                                                          (let ((_e131876131901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd131872131896_))))
                    (let ((_tl131874131906_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131876131901_)))
                          (_hd131875131904_
                           (let ()
                             (declare (not safe))
                             (##car _e131876131901_))))
                      (___kont133354133355_
                       _tl131871131898_
                       _tl131874131906_
                       _hd131875131904_)))
                  (___kont133356133357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133356133357_)))))
                                        (let ((__tmp134472
                                               (lambda (_g131935131938_
                                                        _g131936131940_)
                                                 (cons _g131935131938_
                                                       _g131936131940_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp134472
                                           '()
                                           _L131849_))))
                                  (__tmp134473
                                   (cons '%#case-lambda _clauses131943_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134473 _L131408_)))
                         _clause131807131846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop131802131830_
                                                   _target131799131825_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g131793131812_
                                                 _g131794131815_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131793131812_ _g131794131815_)))))
                            (let ()
                              (declare (not safe))
                              (_g131793131812_ _g131794131815_))))))
                (declare (not safe))
                (_g131792131945_ _L131408_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131950_
                                                      (let ((__tmp134474
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _L131410_ '())
                                             (cons _specializer-lambda-expr131791_
                                                   '()))
                                       '())
                                 (cons _specializer-case-lambda-expr131948_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp134474 _stx130375_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl131952_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130379_
                                                         _$klass131654_
                                                         _$method-table131656_
                                                         _methods-bind131681_
                                                         _slots-bind131705_
                                                         _specializer-impl131950_))))
                                                (let ((__tmp134476
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130448_)))
                                                      (__tmp134475
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131652_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp134476
                                                   '" => "
                                                   __tmp134475))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130380_
                                                   _L130448_
                                                   _specializer-id131652_
                                                   _specializer-impl131952_)))))
                                        _hd131341131403_
                                        _hd131338131395_
                                        _hd131335131387_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131317131347_ _g131318131350_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131317131347_ _g131318131350_)))
                           (let ()
                             (declare (not safe))
                             (_g131317131347_ _g131318131350_)))
                       (let ()
                         (declare (not safe))
                         (_g131317131347_ _g131318131350_)))))
               (let () (declare (not safe)) (_g131317131347_ _g131318131350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131317131347_
                                                      _g131318131350_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131317131347_
                                              _g131318131350_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131317131347_ _g131318131350_)))))
                           (let ()
                             (declare (not safe))
                             (_g131317131347_ _g131318131350_)))))
                   (let ()
                     (declare (not safe))
                     (_g131317131347_ _g131318131350_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131317131347_
                                                      _g131318131350_))))))
                                       (declare (not safe))
                                       (_g131316131955_ _L130447_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130447_))
                                         (let* ((_g131958132011_
                                                 (lambda (_g131959132008_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g131959132008_))))
                                                (_g131957133148_
                                                 (lambda (_g131959132014_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g131959132014_))
                                                       (let ((_e131967132016_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g131959132014_))))
                 (let ((_hd131966132019_
                        (let () (declare (not safe)) (##car _e131967132016_)))
                       (_tl131965132021_
                        (let () (declare (not safe)) (##cdr _e131967132016_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd131966132019_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd131966132019_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131965132021_))
                               (let ((_e131970132024_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131965132021_))))
                                 (let ((_hd131969132027_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131970132024_)))
                                       (_tl131968132029_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131970132024_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd131969132027_))
                                       (let ((_e131973132032_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd131969132027_))))
                                         (let ((_hd131972132035_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e131973132032_)))
                                               (_tl131971132037_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e131973132032_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd131972132035_))
                                               (let ((_e131976132040_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd131972132035_))))
                                                 (let ((_hd131975132043_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131976132040_)))
                                                       (_tl131974132045_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131976132040_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd131975132043_))
                                                       (let ((_e131979132048_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd131975132043_))))
                 (let ((_hd131978132051_
                        (let () (declare (not safe)) (##car _e131979132048_)))
                       (_tl131977132053_
                        (let () (declare (not safe)) (##cdr _e131979132048_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131977132053_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl131974132045_))
                           (let ((_e131982132056_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl131974132045_))))
                             (let ((_hd131981132059_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131982132056_)))
                                   (_tl131980132061_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131982132056_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131981132059_))
                                   (let ((_e131985132064_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131981132059_))))
                                     (let ((_hd131984132067_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131985132064_)))
                                           (_tl131983132069_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131985132064_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd131984132067_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd131984132067_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl131983132069_))
                                                   (let ((_e131988132072_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl131983132069_))))
                                                     (let ((_hd131987132075_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131988132072_)))
                                                           (_tl131986132077_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131988132072_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd131987132075_))
                                                           (let ((_e131991132080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd131987132075_))))
                     (let ((_hd131990132083_
                            (let ()
                              (declare (not safe))
                              (##car _e131991132080_)))
                           (_tl131989132085_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131991132080_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131990132083_))
                           (let ((_e131994132088_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131990132083_))))
                             (let ((_hd131993132091_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131994132088_)))
                                   (_tl131992132093_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131994132088_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131993132091_))
                                   (let ((_e131997132096_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131993132091_))))
                                     (let ((_hd131996132099_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131997132096_)))
                                           (_tl131995132101_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131997132096_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl131995132101_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl131992132093_))
                                               (let ((_e132000132104_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl131992132093_))))
                                                 (let ((_hd131999132107_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132000132104_)))
                                                       (_tl131998132109_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132000132104_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl131998132109_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl131989132085_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl131986132077_))
                       (let ((_e132003132112_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl131986132077_))))
                         (let ((_hd132002132115_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132003132112_)))
                               (_tl132001132117_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132003132112_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132001132117_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl131980132061_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131971132037_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl131968132029_))
                                           (let ((_e132006132120_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl131968132029_))))
                                             (let ((_hd132005132123_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132006132120_)))
                                                   (_tl132004132125_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132006132120_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132004132125_))
                                                   ((lambda (_L132128_
                                                             _L132129_
                                                             _L132130_
                                                             _L132131_
                                                             _L132132_)
                                                      (let* ((_g132171132233_
                                                              (lambda (_g132172132230_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132172132230_))))
                     (_g132170133145_
                      (lambda (_g132172132236_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132172132236_))
                            (let ((_e132180132238_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132172132236_))))
                              (let ((_hd132179132241_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132180132238_)))
                                    (_tl132178132243_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132180132238_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132179132241_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132179132241_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132178132243_))
                                            (let ((_e132183132246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132178132243_))))
                                              (let ((_hd132182132249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132183132246_)))
                                                    (_tl132181132251_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132183132246_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132181132251_))
                                                    (let ((_e132186132254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132181132251_))))
                                                      (let ((_hd132185132257_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132186132254_)))
                    (_tl132184132259_
                     (let () (declare (not safe)) (##cdr _e132186132254_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132185132257_))
                    (let ((_e132189132262_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132185132257_))))
                      (let ((_hd132188132265_
                             (let ()
                               (declare (not safe))
                               (##car _e132189132262_)))
                            (_tl132187132267_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132189132262_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132188132265_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132188132265_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132187132267_))
                                    (let ((_e132192132270_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132187132267_))))
                                      (let ((_hd132191132273_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132192132270_)))
                                            (_tl132190132275_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132192132270_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132191132273_))
                                            (let ((_e132195132278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132191132273_))))
                                              (let ((_hd132194132281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132195132278_)))
                                                    (_tl132193132283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132195132278_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132194132281_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132194132281_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132193132283_))
                                                            (let ((_e132198132286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132193132283_))))
                      (let ((_hd132197132289_
                             (let ()
                               (declare (not safe))
                               (##car _e132198132286_)))
                            (_tl132196132291_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132198132286_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132196132291_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132190132275_))
                                (let ((_e132201132294_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132190132275_))))
                                  (let ((_hd132200132297_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132201132294_)))
                                        (_tl132199132299_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132201132294_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132200132297_))
                                        (let ((_e132204132302_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132200132297_))))
                                          (let ((_hd132203132305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132204132302_)))
                                                (_tl132202132307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132204132302_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132203132305_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132203132305_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132202132307_))
                                                        (let ((_e132207132310_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132202132307_))))
                  (let ((_hd132206132313_
                         (let () (declare (not safe)) (##car _e132207132310_)))
                        (_tl132205132315_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132207132310_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132205132315_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132199132299_))
                            (let ((_e132210132318_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132199132299_))))
                              (let ((_hd132209132321_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132210132318_)))
                                    (_tl132208132323_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132210132318_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132209132321_))
                                    (let ((_e132213132326_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132209132321_))))
                                      (let ((_hd132212132329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132213132326_)))
                                            (_tl132211132331_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132213132326_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132212132329_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132212132329_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132211132331_))
                                                    (let ((_e132216132334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132211132331_))))
                                                      (let ((_hd132215132337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132216132334_)))
                    (_tl132214132339_
                     (let () (declare (not safe)) (##cdr _e132216132334_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132214132339_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132208132323_))
                        (if (let ((__tmp134477
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _tl132208132323_))))
                              (declare (not safe))
                              (##fx>= __tmp134477 '1))
                            (let ((_g134478_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132208132323_
                                      '1))))
                              (begin
                                (let ((_g134479_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134478_)
                                             (##vector-length _g134478_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134479_ 2)))
                                      (error "Context expects 2 values"
                                             _g134479_)))
                                (let ((_target132217132342_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134478_ 0)))
                                      (_tl132219132344_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134478_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132219132344_))
                                      (let ((_e132228132347_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132219132344_))))
                                        (let ((_hd132227132350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132228132347_)))
                                              (_tl132226132352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132228132347_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132226132352_))
                                              (letrec ((_loop132220132355_
                                                        (lambda (_hd132218132358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132224132360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132218132358_))
                      (let ((_e132221132363_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132218132358_))))
                        (let ((_lp-hd132222132366_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132221132363_)))
                              (_lp-tl132223132368_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132221132363_))))
                          (let ((__tmp134480
                                 (cons _lp-hd132222132366_
                                       _kw-ref132224132360_)))
                            (declare (not safe))
                            (_loop132220132355_
                             _lp-tl132223132368_
                             __tmp134480))))
                      (let ((_kw-ref132225132371_
                             (reverse _kw-ref132224132360_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132184132259_))
                            ((lambda (_L132374_
                                      _L132375_
                                      _L132376_
                                      _L132377_
                                      _L132378_)
                               (let* ((_kw-count132429_
                                       (length (let ((__tmp134481
                                                      (lambda (_g132421132424_
                                                               _g132422132426_)
                                                        (cons _g132421132424_
                                                              _g132422132426_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp134481
                                                  '()
                                                  _L132375_))))
                                      (_self-index132431_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _kw-count132429_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132130_))
                                     (let* ((_g132434132448_
                                             (lambda (_g132435132445_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132435132445_))))
                                            (_g132433132564_
                                             (lambda (_g132435132451_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132435132451_))
                                                   (let ((_e132440132453_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132435132451_))))
                                                     (let ((_hd132439132456_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132440132453_)))
                                                           (_tl132438132458_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132440132453_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132438132458_))
                                                           (let ((_e132443132461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132438132458_))))
                     (let ((_hd132442132464_
                            (let ()
                              (declare (not safe))
                              (##car _e132443132461_)))
                           (_tl132441132466_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132443132461_))))
                       ((lambda (_L132469_ _L132470_)
                          (let ((_self132486_
                                 (list-ref _L132470_ _self-index132431_)))
                            (for-each
                             (lambda (_g132487132489_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132487132489_
                                  'receiver:
                                  _self132486_
                                  'methods:
                                  _method-calls130467_
                                  'slots:
                                  _slot-refs130468_)))
                             _L132469_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130471_))
                                _stx130375_
                                (let* ((_specializer-id132498_
                                        (let* ((_id132492_
                                                (let ((__tmp134482
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130448_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134482
                                                   '"::specialize")))
                                               (_specializer-id132495_
                                                (let ((__tmp134483
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130375_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132492_
                                                   __tmp134483))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132495_))
                                          _specializer-id132495_))
                                       (_$klass132500_
                                        (let ((__tmp134484
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134484)))
                                       (_$method-table132502_
                                        (let ((__tmp134485
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134485)))
                                       (_methods132504_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130467_)))
                                       (_$methods132508_
                                        (map (lambda (_id132506_)
                                               (let ((__tmp134486
                                                      (gensym _id132506_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134486)))
                                             _methods132504_))
                                       (__132517_
                                        (for-each
                                         (lambda (_g132509132512_
                                                  _g132510132514_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130467_
                                              _g132509132512_
                                              _g132510132514_)))
                                         _methods132504_
                                         _$methods132508_))
                                       (_methods-bind132527_
                                        (map (lambda (_g132519132522_
                                                      _g132520132524_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130377_
                                                  _$klass132500_
                                                  _$method-table132502_
                                                  _g132519132522_
                                                  _g132520132524_)))
                                             _methods132504_
                                             _$methods132508_))
                                       (_slots132529_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130468_)))
                                       (_$slots132533_
                                        (map (lambda (_id132531_)
                                               (let ((__tmp134487
                                                      (gensym _id132531_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134487)))
                                             _slots132529_))
                                       (__132542_
                                        (for-each
                                         (lambda (_g132534132537_
                                                  _g132535132539_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130468_
                                              _g132534132537_
                                              _g132535132539_)))
                                         _slots132529_
                                         _$slots132533_))
                                       (_slots-bind132551_
                                        (map (lambda (_g132543132546_
                                                      _g132544132548_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130378_
                                                  _$klass132500_
                                                  _g132543132546_
                                                  _g132544132548_)))
                                             _slots132529_
                                             _$slots132533_))
                                       (_specializer-impl132559_
                                        (let* ((_specializer-body132557_
                                                (map (lambda (_g132552132554_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g132552132554_
                                                          'receiver:
                                                          _self132486_
                                                          'klass:
                                                          _$klass132500_
                                                          'methods:
                                                          _method-calls130467_
                                                          'slots:
                                                          _slot-refs130468_)))
                                                     _L132469_))
                                               (__tmp134488
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _L132132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _L132131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp134489
                                   (cons '%#lambda
                                         (cons _L132470_
                                               _specializer-body132557_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp134489 _L132130_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L132129_ '())))
                                      '()))
                          '())
                    (cons _L132128_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp134488
                                           _stx130375_)))
                                       (_specializer-impl132561_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130379_
                                           _$klass132500_
                                           _$method-table132502_
                                           _methods-bind132527_
                                           _slots-bind132551_
                                           _specializer-impl132559_))))
                                  (let ((__tmp134491
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130448_)))
                                        (__tmp134490
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132498_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp134491
                                     '" => "
                                     __tmp134490))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130380_
                                     _L130448_
                                     _specializer-id132498_
                                     _specializer-impl132561_))))))
                        _tl132441132466_
                        _hd132442132464_)))
                   (let ()
                     (declare (not safe))
                     (_g132434132448_ _g132435132451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132434132448_
                                                      _g132435132451_))))))
                                       (declare (not safe))
                                       (_g132433132564_ _L132130_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132130_))
                                         (let* ((_g132567132597_
                                                 (lambda (_g132568132594_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132568132594_))))
                                                (_g132566133142_
                                                 (lambda (_g132568132600_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132568132600_))
                                                       (let ((_e132574132602_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132568132600_))))
                 (let ((_hd132573132605_
                        (let () (declare (not safe)) (##car _e132574132602_)))
                       (_tl132572132607_
                        (let () (declare (not safe)) (##cdr _e132574132602_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132572132607_))
                       (let ((_e132577132610_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132572132607_))))
                         (let ((_hd132576132613_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132577132610_)))
                               (_tl132575132615_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132577132610_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132576132613_))
                               (let ((_e132580132618_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132576132613_))))
                                 (let ((_hd132579132621_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132580132618_)))
                                       (_tl132578132623_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132580132618_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132579132621_))
                                       (let ((_e132583132626_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132579132621_))))
                                         (let ((_hd132582132629_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132583132626_)))
                                               (_tl132581132631_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132583132626_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132582132629_))
                                               (let ((_e132586132634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132582132629_))))
                                                 (let ((_hd132585132637_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132586132634_)))
                                                       (_tl132584132639_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132586132634_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132584132639_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132581132631_))
                                                           (let ((_e132589132642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132581132631_))))
                     (let ((_hd132588132645_
                            (let ()
                              (declare (not safe))
                              (##car _e132589132642_)))
                           (_tl132587132647_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132589132642_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132587132647_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132578132623_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132575132615_))
                                   (let ((_e132592132650_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132575132615_))))
                                     (let ((_hd132591132653_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132592132650_)))
                                           (_tl132590132655_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132592132650_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132590132655_))
                                           ((lambda (_L132658_
                                                     _L132659_
                                                     _L132660_)
                                              (let* ((_g132683132697_
                                                      (lambda (_g132684132694_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132684132694_))))
                                                     (_g132682132738_
                                                      (lambda (_g132684132700_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132684132700_))
                                                            (let ((_e132689132702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132684132700_))))
                      (let ((_hd132688132705_
                             (let ()
                               (declare (not safe))
                               (##car _e132689132702_)))
                            (_tl132687132707_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132689132702_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132687132707_))
                            (let ((_e132692132710_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132687132707_))))
                              (let ((_hd132691132713_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132692132710_)))
                                    (_tl132690132715_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132692132710_))))
                                ((lambda (_L132718_ _L132719_)
                                   (let ((_self132732_
                                          (list-ref
                                           _L132719_
                                           _self-index132431_)))
                                     (for-each
                                      (lambda (_g132733132735_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g132733132735_
                                           'receiver:
                                           _self132732_
                                           'methods:
                                           _method-calls130467_
                                           'slots:
                                           _slot-refs130468_)))
                                      _L132718_)))
                                 _tl132690132715_
                                 _hd132691132713_)))
                            (let ()
                              (declare (not safe))
                              (_g132683132697_ _g132684132700_)))))
                    (let ()
                      (declare (not safe))
                      (_g132683132697_ _g132684132700_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132682132738_ _L132659_))
                                              (let* ((_g132741132760_
                                                      (lambda (_g132742132757_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132742132757_))))
                                                     (_g132740132865_
                                                      (lambda (_g132742132763_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132742132763_))
                                                            (let ((_e132746132765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132742132763_))))
                      (let ((_hd132745132768_
                             (let ()
                               (declare (not safe))
                               (##car _e132746132765_)))
                            (_tl132744132770_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132746132765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl132744132770_))
                            (let ((_g134492_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132744132770_
                                      '0))))
                              (begin
                                (let ((_g134493_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134492_)
                                             (##vector-length _g134492_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134493_ 2)))
                                      (error "Context expects 2 values"
                                             _g134493_)))
                                (let ((_target132747132773_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134492_ 0)))
                                      (_tl132749132775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134492_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl132749132775_))
                                      (letrec ((_loop132750132778_
                                                (lambda (_hd132748132781_
                                                         _clause132754132783_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd132748132781_))
                                                      (let ((_e132751132786_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd132748132781_))))
                (let ((_lp-hd132752132789_
                       (let () (declare (not safe)) (##car _e132751132786_)))
                      (_lp-tl132753132791_
                       (let () (declare (not safe)) (##cdr _e132751132786_))))
                  (let ((__tmp134494
                         (cons _lp-hd132752132789_ _clause132754132783_)))
                    (declare (not safe))
                    (_loop132750132778_ _lp-tl132753132791_ __tmp134494))))
              (let ((_clause132755132794_ (reverse _clause132754132783_)))
                ((lambda (_L132797_)
                   (for-each
                    (lambda (_clause132810_)
                      (let* ((_g132812132823_
                              (lambda (_g132813132820_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g132813132820_))))
                             (_g132811132855_
                              (lambda (_g132813132826_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g132813132826_))
                                    (let ((_e132818132828_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g132813132826_))))
                                      (let ((_hd132817132831_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132818132828_)))
                                            (_tl132816132833_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132818132828_))))
                                        ((lambda (_L132836_ _L132837_)
                                           (let ((_self132849_
                                                  (list-ref
                                                   _L132837_
                                                   _self-index132431_)))
                                             (for-each
                                              (lambda (_g132850132852_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g132850132852_
                                                   'receiver:
                                                   _self132849_
                                                   'methods:
                                                   _method-calls130467_
                                                   'slots:
                                                   _slot-refs130468_)))
                                              _L132836_)))
                                         _tl132816132833_
                                         _hd132817132831_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132812132823_ _g132813132826_))))))
                        (declare (not safe))
                        (_g132811132855_ _clause132810_)))
                    (let ((__tmp134495
                           (lambda (_g132857132860_ _g132858132862_)
                             (cons _g132857132860_ _g132858132862_))))
                      (declare (not safe))
                      (__foldr1 __tmp134495 '() _L132797_))))
                 _clause132755132794_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop132750132778_
                                           _target132747132773_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g132741132760_ _g132742132763_))))))
                            (let ()
                              (declare (not safe))
                              (_g132741132760_ _g132742132763_)))))
                    (let ()
                      (declare (not safe))
                      (_g132741132760_ _g132742132763_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132740132865_ _L132658_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130471_))
                                                  _stx130375_
                                                  (let* ((_specializer-id132874_
                                                          (let* ((_id132868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134496
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130448_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134496 '"::specialize")))
                         (_specializer-id132871_
                          (let ((__tmp134497
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130375_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id132868_ __tmp134497))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id132871_))
                    _specializer-id132871_))
                 (_$klass132876_
                  (let ((__tmp134498
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp134498)))
                 (_$method-table132878_
                  (let ((__tmp134499
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp134499)))
                 (_methods132880_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130467_)))
                 (_$methods132884_
                  (map (lambda (_id132882_)
                         (let ((__tmp134500 (gensym _id132882_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134500)))
                       _methods132880_))
                 (__132893_
                  (for-each
                   (lambda (_g132885132888_ _g132886132890_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130467_
                        _g132885132888_
                        _g132886132890_)))
                   _methods132880_
                   _$methods132884_))
                 (_methods-bind132903_
                  (map (lambda (_g132895132898_ _g132896132900_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130377_
                            _$klass132876_
                            _$method-table132878_
                            _g132895132898_
                            _g132896132900_)))
                       _methods132880_
                       _$methods132884_))
                 (_slots132905_
                  (let () (declare (not safe)) (hash-keys _slot-refs130468_)))
                 (_$slots132909_
                  (map (lambda (_id132907_)
                         (let ((__tmp134501 (gensym _id132907_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134501)))
                       _slots132905_))
                 (__132918_
                  (for-each
                   (lambda (_g132910132913_ _g132911132915_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130468_
                        _g132910132913_
                        _g132911132915_)))
                   _slots132905_
                   _$slots132909_))
                 (_slots-bind132927_
                  (map (lambda (_g132919132922_ _g132920132924_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130378_
                            _$klass132876_
                            _g132919132922_
                            _g132920132924_)))
                       _slots132905_
                       _$slots132909_))
                 (_specializer-lambda-expr133000_
                  (let* ((_g132929132943_
                          (lambda (_g132930132940_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132930132940_))))
                         (_g132928132997_
                          (lambda (_g132930132946_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132930132946_))
                                (let ((_e132935132948_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132930132946_))))
                                  (let ((_hd132934132951_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132935132948_)))
                                        (_tl132933132953_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132935132948_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl132933132953_))
                                        (let ((_e132938132956_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl132933132953_))))
                                          (let ((_hd132937132959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132938132956_)))
                                                (_tl132936132961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132938132956_))))
                                            ((lambda (_L132964_ _L132965_)
                                               (let* ((_self132988_
                                                       (list-ref
                                                        _L132965_
                                                        _self-index132431_))
                                                      (_body132994_
                                                       (map (lambda (_g132989132991_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g132989132991_
                         'receiver:
                         _self132988_
                         'klass:
                         _$klass132876_
                         'methods:
                         _method-calls130467_
                         'slots:
                         _slot-refs130468_)))
                    _L132964_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp134502
                                                        (cons '%#lambda
                                                              (cons _L132965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body132994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134502
                                                    _L132659_))))
                                             _tl132936132961_
                                             _hd132937132959_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132929132943_ _g132930132946_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132929132943_ _g132930132946_))))))
                    (declare (not safe))
                    (_g132928132997_ _L132659_)))
                 (_specializer-case-lambda-expr133135_
                  (let* ((_g133002133021_
                          (lambda (_g133003133018_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133003133018_))))
                         (_g133001133132_
                          (lambda (_g133003133024_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133003133024_))
                                (let ((_e133007133026_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133003133024_))))
                                  (let ((_hd133006133029_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133007133026_)))
                                        (_tl133005133031_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133007133026_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133005133031_))
                                        (let ((_g134503_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133005133031_
                                                  '0))))
                                          (begin
                                            (let ((_g134504_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g134503_)
                                                         (##vector-length
                                                          _g134503_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g134504_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g134504_)))
                                            (let ((_target133008133034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134503_
                                                      0)))
                                                  (_tl133010133036_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134503_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133010133036_))
                                                  (letrec ((_loop133011133039_
                                                            (lambda (_hd133009133042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133015133044_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133009133042_))
                          (let ((_e133012133047_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133009133042_))))
                            (let ((_lp-hd133013133050_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133012133047_)))
                                  (_lp-tl133014133052_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133012133047_))))
                              (let ((__tmp134505
                                     (cons _lp-hd133013133050_
                                           _clause133015133044_)))
                                (declare (not safe))
                                (_loop133011133039_
                                 _lp-tl133014133052_
                                 __tmp134505))))
                          (let ((_clause133016133055_
                                 (reverse _clause133015133044_)))
                            ((lambda (_L133058_)
                               (let* ((_clauses133130_
                                       (map (lambda (_clause133072_)
                                              (let* ((_g133074133085_
                                                      (lambda (_g133075133082_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133075133082_))))
                                                     (_g133073133120_
                                                      (lambda (_g133075133088_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133075133088_))
                                                            (let ((_e133080133090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133075133088_))))
                      (let ((_hd133079133093_
                             (let ()
                               (declare (not safe))
                               (##car _e133080133090_)))
                            (_tl133078133095_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133080133090_))))
                        ((lambda (_L133098_ _L133099_)
                           (let* ((_self133111_
                                   (list-ref _L133099_ _self-index132431_))
                                  (_body133117_
                                   (map (lambda (_g133112133114_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g133112133114_
                                             'receiver:
                                             _self133111_
                                             'klass:
                                             _$klass132876_
                                             'methods:
                                             _method-calls130467_
                                             'slots:
                                             _slot-refs130468_)))
                                        _L133098_)))
                             (cons _L133099_ _body133117_)))
                         _tl133078133095_
                         _hd133079133093_)))
                    (let ()
                      (declare (not safe))
                      (_g133074133085_ _g133075133088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133073133120_
                                                 _clause133072_)))
                                            (let ((__tmp134506
                                                   (lambda (_g133122133125_
                                                            _g133123133127_)
                                                     (cons _g133122133125_
                                                           _g133123133127_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp134506
                                               '()
                                               _L133058_))))
                                      (__tmp134507
                                       (cons '%#case-lambda _clauses133130_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134507
                                  _L132658_)))
                             _clause133016133055_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133011133039_
                                                       _target133008133034_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133002133021_
                                                     _g133003133024_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133002133021_ _g133003133024_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133002133021_ _g133003133024_))))))
                    (declare (not safe))
                    (_g133001133132_ _L132658_)))
                 (_specializer-impl133137_
                  (let ((__tmp134508
                         (cons '%#let-values
                               (cons (cons (cons (cons _L132132_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _L132131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp134509
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _L132660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _specializer-lambda-expr133000_ '()))
                              '())
                        (cons _specializer-case-lambda-expr133135_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp134509
                                                _stx130375_))
                                             '()))
                                 '())
                           (cons _L132129_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _L132128_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134508 _stx130375_)))
                 (_specializer-impl133139_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130379_
                     _$klass132876_
                     _$method-table132878_
                     _methods-bind132903_
                     _slots-bind132927_
                     _specializer-impl133137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134511
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130448_)))
                                                          (__tmp134510
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id132874_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134511
                                                       '" => "
                                                       __tmp134510))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130380_
                                                       _L130448_
                                                       _specializer-id132874_
                                                       _specializer-impl133139_)))))
                                            _hd132591132653_
                                            _hd132588132645_
                                            _hd132585132637_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132567132597_
                                              _g132568132600_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132567132597_ _g132568132600_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132567132597_ _g132568132600_)))
                           (let ()
                             (declare (not safe))
                             (_g132567132597_ _g132568132600_)))))
                   (let ()
                     (declare (not safe))
                     (_g132567132597_ _g132568132600_)))
               (let ()
                 (declare (not safe))
                 (_g132567132597_ _g132568132600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132567132597_
                                                  _g132568132600_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132567132597_ _g132568132600_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132567132597_ _g132568132600_)))))
                       (let ()
                         (declare (not safe))
                         (_g132567132597_ _g132568132600_)))))
               (let ()
                 (declare (not safe))
                 (_g132567132597_ _g132568132600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132566133142_ _L132130_))
                                         _stx130375_))))
                             _hd132227132350_
                             _kw-ref132225132371_
                             _hd132215132337_
                             _hd132206132313_
                             _hd132197132289_)
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132220132355_
                                                   _target132217132342_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132171132233_
                                                 _g132172132236_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132171132233_ _g132172132236_))))))
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_)))
                        (let ()
                          (declare (not safe))
                          (_g132171132233_ _g132172132236_)))
                    (let ()
                      (declare (not safe))
                      (_g132171132233_ _g132172132236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132171132233_
                                                       _g132172132236_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132171132233_
                                                   _g132172132236_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132171132233_
                                               _g132172132236_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132171132233_ _g132172132236_)))))
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_)))
                        (let ()
                          (declare (not safe))
                          (_g132171132233_ _g132172132236_)))))
                (let ()
                  (declare (not safe))
                  (_g132171132233_ _g132172132236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132171132233_
                                                       _g132172132236_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132171132233_
                                                   _g132172132236_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132171132233_ _g132172132236_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132171132233_ _g132172132236_)))
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_)))))
                    (let ()
                      (declare (not safe))
                      (_g132171132233_ _g132172132236_)))
                (let ()
                  (declare (not safe))
                  (_g132171132233_ _g132172132236_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132171132233_
                                                       _g132172132236_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132171132233_
                                               _g132172132236_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132171132233_ _g132172132236_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132171132233_ _g132172132236_)))
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_)))))
                    (let ()
                      (declare (not safe))
                      (_g132171132233_ _g132172132236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132171132233_
                                                       _g132172132236_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132171132233_
                                               _g132172132236_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132171132233_ _g132172132236_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132171132233_ _g132172132236_)))))
                            (let ()
                              (declare (not safe))
                              (_g132171132233_ _g132172132236_))))))
                (declare (not safe))
                (_g132170133145_ _L132129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132005132123_
                                                    _hd132002132115_
                                                    _hd131999132107_
                                                    _hd131996132099_
                                                    _hd131978132051_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131958132011_
                                                      _g131959132014_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131958132011_
                                              _g131959132014_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g131958132011_ _g131959132014_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g131958132011_ _g131959132014_)))
                               (let ()
                                 (declare (not safe))
                                 (_g131958132011_ _g131959132014_)))))
                       (let ()
                         (declare (not safe))
                         (_g131958132011_ _g131959132014_)))
                   (let ()
                     (declare (not safe))
                     (_g131958132011_ _g131959132014_)))
               (let ()
                 (declare (not safe))
                 (_g131958132011_ _g131959132014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131958132011_
                                                  _g131959132014_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131958132011_
                                              _g131959132014_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131958132011_ _g131959132014_)))))
                           (let ()
                             (declare (not safe))
                             (_g131958132011_ _g131959132014_)))))
                   (let ()
                     (declare (not safe))
                     (_g131958132011_ _g131959132014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131958132011_
                                                      _g131959132014_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131958132011_
                                                  _g131959132014_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g131958132011_
                                              _g131959132014_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131958132011_ _g131959132014_)))))
                           (let ()
                             (declare (not safe))
                             (_g131958132011_ _g131959132014_)))
                       (let ()
                         (declare (not safe))
                         (_g131958132011_ _g131959132014_)))))
               (let ()
                 (declare (not safe))
                 (_g131958132011_ _g131959132014_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131958132011_
                                                  _g131959132014_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g131958132011_ _g131959132014_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131958132011_ _g131959132014_)))
                           (let ()
                             (declare (not safe))
                             (_g131958132011_ _g131959132014_)))
                       (let ()
                         (declare (not safe))
                         (_g131958132011_ _g131959132014_)))))
               (let ()
                 (declare (not safe))
                 (_g131958132011_ _g131959132014_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g131957133148_ _L130447_))
                                         _stx130375_))))))))
                  (___kont133376133377_ (lambda () _stx130375_)))
              (let ((___match133405133406_
                     (lambda (_e130389130415_
                              _hd130388130418_
                              _tl130387130420_
                              _e130392130423_
                              _hd130391130426_
                              _tl130390130428_
                              _e130395130431_
                              _hd130394130434_
                              _tl130393130436_
                              _e130398130439_
                              _hd130397130442_
                              _tl130396130444_)
                       (let ((_L130447_ _hd130397130442_)
                             (_L130448_ _hd130394130434_))
                         (if (let ((__tmp134512
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130448_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp134512))
                             (___kont133374133375_ _L130447_ _L130448_)
                             (___kont133376133377_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133372133373_))
                    (let ((_e130389130415_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133372133373_))))
                      (let ((_tl130387130420_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130389130415_)))
                            (_hd130388130418_
                             (let ()
                               (declare (not safe))
                               (##car _e130389130415_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130387130420_))
                            (let ((_e130392130423_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130387130420_))))
                              (let ((_tl130390130428_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130392130423_)))
                                    (_hd130391130426_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130392130423_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130391130426_))
                                    (let ((_e130395130431_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130391130426_))))
                                      (let ((_tl130393130436_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130395130431_)))
                                            (_hd130394130434_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130395130431_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130393130436_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130390130428_))
                                                (let ((_e130398130439_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130390130428_))))
                                                  (let ((_tl130396130444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130398130439_)))
                                                        (_hd130397130442_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130398130439_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130396130444_))
                                                        (___match133405133406_
                                                         _e130389130415_
                                                         _hd130388130418_
                                                         _tl130387130420_
                                                         _e130392130423_
                                                         _hd130391130426_
                                                         _tl130390130428_
                                                         _e130395130431_
                                                         _hd130394130434_
                                                         _tl130393130436_
                                                         _e130398130439_
                                                         _hd130397130442_
                                                         _tl130396130444_)
                                                        (___kont133376133377_))))
                                                (___kont133376133377_))
                                            (___kont133376133377_))))
                                    (___kont133376133377_))))
                            (___kont133376133377_))))
                    (___kont133376133377_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self129335_ _stx129336_)
        (let* ((___stx133408133409_ _stx129336_)
               (_g129344129566_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133408133409_)))))
          (let ((___kont133410133411_
                 (lambda (_L130323_ _L130324_ _L130325_ _L130326_)
                   (let ((__tmp134514
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129335_ 'methods)))
                         (__tmp134513
                          (let () (declare (not safe)) (gx#stx-e _L130324_))))
                     (declare (not safe))
                     (hash-put! __tmp134514 __tmp134513 '#t))
                   (for-each
                    (lambda (_g130359130361_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129335_ _g130359130361_)))
                    (let ((__tmp134515
                           (lambda (_g130363130366_ _g130364130368_)
                             (cons _g130363130366_ _g130364130368_))))
                      (declare (not safe))
                      (__foldr1 __tmp134515 '() _L130323_)))))
                (___kont133414133415_
                 (lambda (_L130158_ _L130159_ _L130160_ _L130161_ _L130162_)
                   (let ((__tmp134517
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129335_ 'methods)))
                         (__tmp134516
                          (let () (declare (not safe)) (gx#stx-e _L130159_))))
                     (declare (not safe))
                     (hash-put! __tmp134517 __tmp134516 '#t))
                   (for-each
                    (lambda (_g130202130204_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self129335_ _g130202130204_)))
                    (let ((__tmp134518
                           (lambda (_g130206130209_ _g130207130211_)
                             (cons _g130206130209_ _g130207130211_))))
                      (declare (not safe))
                      (__foldr1 __tmp134518 '() _L130158_)))))
                (___kont133418133419_
                 (lambda (_L129991_ _L129992_ _L129993_)
                   (let ((__tmp134520
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129335_ 'slots)))
                         (__tmp134519
                          (let () (declare (not safe)) (gx#stx-e _L129991_))))
                     (declare (not safe))
                     (hash-put! __tmp134520 __tmp134519 '#t))))
                (___kont133420133421_
                 (lambda (_L129868_ _L129869_ _L129870_ _L129871_)
                   (let ((__tmp134522
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self129335_ 'slots)))
                         (__tmp134521
                          (let () (declare (not safe)) (gx#stx-e _L129869_))))
                     (declare (not safe))
                     (hash-put! __tmp134522 __tmp134521 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self129335_ _L129868_))))
                (___kont133422133423_
                 (lambda (_L129742_ _L129743_)
                   (let* ((_accessor129765_
                           (let ((__tmp134523
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129743_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134523)))
                          (_klass129767_
                           (let ((__tmp134524
                                  (##structure-ref
                                   _accessor129765_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129336_
                              __tmp134524)))
                          (_slot129769_
                           (##structure-ref
                            _accessor129765_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp134525
                                     (##structure-ref
                                      _accessor129765_
                                      '4
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134525))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129767_
                                     _slot129769_))
                                  (##structure-ref
                                   _klass129767_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134527
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129335_ 'slots)))
                               (__tmp134526
                                (##structure-ref
                                 _accessor129765_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp134527 __tmp134526 '#t))))))
                (___kont133424133425_
                 (lambda (_L129642_ _L129643_ _L129644_)
                   (let* ((_mutator129671_
                           (let ((__tmp134528
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129644_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134528)))
                          (_klass129673_
                           (let ((__tmp134529
                                  (##structure-ref
                                   _mutator129671_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129336_
                              __tmp134529)))
                          (_slot129675_
                           (##structure-ref
                            _mutator129671_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp134530
                                     (##structure-ref
                                      _mutator129671_
                                      '4
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134530))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129673_
                                     _slot129675_))
                                  (##structure-ref
                                   _klass129673_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134531
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self129335_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp134531 _slot129675_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self129335_ _L129642_)))))
                (___kont133426133427_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self129335_ _stx129336_)))))
            (let* ((___match133907133908_
                    (lambda (_e129540129578_
                             _hd129539129581_
                             _tl129538129583_
                             _e129543129586_
                             _hd129542129589_
                             _tl129541129591_
                             _e129546129594_
                             _hd129545129597_
                             _tl129544129599_
                             _e129549129602_
                             _hd129548129605_
                             _tl129547129607_
                             _e129552129610_
                             _hd129551129613_
                             _tl129550129615_
                             _e129555129618_
                             _hd129554129621_
                             _tl129553129623_
                             _e129558129626_
                             _hd129557129629_
                             _tl129556129631_
                             _e129561129634_
                             _hd129560129637_
                             _tl129559129639_)
                      (let ((_L129642_ _hd129560129637_)
                            (_L129643_ _hd129557129629_)
                            (_L129644_ _hd129548129605_))
                        (if (and (let ((__tmp134532
                                        (let ((__tmp134533
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129644_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134533))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134532
                                    'gxc#!mutator::t))
                                 (let ((__tmp134534
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129335_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129643_
                                    __tmp134534)))
                            (___kont133424133425_
                             _L129642_
                             _L129643_
                             _L129644_)
                            (___kont133426133427_)))))
                   (___match133905133906_
                    (lambda (_e129540129578_
                             _hd129539129581_
                             _tl129538129583_
                             _e129543129586_
                             _hd129542129589_
                             _tl129541129591_
                             _e129546129594_
                             _hd129545129597_
                             _tl129544129599_
                             _e129549129602_
                             _hd129548129605_
                             _tl129547129607_
                             _e129552129610_
                             _hd129551129613_
                             _tl129550129615_
                             _e129555129618_
                             _hd129554129621_
                             _tl129553129623_
                             _e129558129626_
                             _hd129557129629_
                             _tl129556129631_
                             _e129561129634_
                             _hd129560129637_
                             _tl129559129639_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129559129639_))
                          (___match133907133908_
                           _e129540129578_
                           _hd129539129581_
                           _tl129538129583_
                           _e129543129586_
                           _hd129542129589_
                           _tl129541129591_
                           _e129546129594_
                           _hd129545129597_
                           _tl129544129599_
                           _e129549129602_
                           _hd129548129605_
                           _tl129547129607_
                           _e129552129610_
                           _hd129551129613_
                           _tl129550129615_
                           _e129555129618_
                           _hd129554129621_
                           _tl129553129623_
                           _e129558129626_
                           _hd129557129629_
                           _tl129556129631_
                           _e129561129634_
                           _hd129560129637_
                           _tl129559129639_)
                          (___kont133426133427_))))
                   (___match133899133900_
                    (lambda (_e129540129578_
                             _hd129539129581_
                             _tl129538129583_
                             _e129543129586_
                             _hd129542129589_
                             _tl129541129591_
                             _e129546129594_
                             _hd129545129597_
                             _tl129544129599_
                             _e129549129602_
                             _hd129548129605_
                             _tl129547129607_
                             _e129552129610_
                             _hd129551129613_
                             _tl129550129615_
                             _e129555129618_
                             _hd129554129621_
                             _tl129553129623_
                             _e129558129626_
                             _hd129557129629_
                             _tl129556129631_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129550129615_))
                          (let ((_e129561129634_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129550129615_))))
                            (let ((_tl129559129639_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129561129634_)))
                                  (_hd129560129637_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129561129634_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129559129639_))
                                  (___match133907133908_
                                   _e129540129578_
                                   _hd129539129581_
                                   _tl129538129583_
                                   _e129543129586_
                                   _hd129542129589_
                                   _tl129541129591_
                                   _e129546129594_
                                   _hd129545129597_
                                   _tl129544129599_
                                   _e129549129602_
                                   _hd129548129605_
                                   _tl129547129607_
                                   _e129552129610_
                                   _hd129551129613_
                                   _tl129550129615_
                                   _e129555129618_
                                   _hd129554129621_
                                   _tl129553129623_
                                   _e129558129626_
                                   _hd129557129629_
                                   _tl129556129631_
                                   _e129561129634_
                                   _hd129560129637_
                                   _tl129559129639_)
                                  (___kont133426133427_))))
                          (___kont133426133427_))))
                   (___match133845133846_
                    (lambda (_e129516129686_
                             _hd129515129689_
                             _tl129514129691_
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
                             _tl129532129739_)
                      (let ((_L129742_ _hd129533129737_)
                            (_L129743_ _hd129524129713_))
                        (if (and (let ((__tmp134535
                                        (let ((__tmp134536
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129743_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134536))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134535
                                    'gxc#!accessor::t))
                                 (let ((__tmp134537
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129335_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129742_
                                    __tmp134537)))
                            (___kont133422133423_ _L129742_ _L129743_)
                            (___kont133426133427_)))))
                   (___match133843133844_
                    (lambda (_e129516129686_
                             _hd129515129689_
                             _tl129514129691_
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
                             _tl129532129739_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129526129723_))
                          (___match133845133846_
                           _e129516129686_
                           _hd129515129689_
                           _tl129514129691_
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
                           _tl129532129739_)
                          (___match133899133900_
                           _e129516129686_
                           _hd129515129689_
                           _tl129514129691_
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
                           _tl129532129739_))))
                   (___match133789133790_
                    (lambda (_e129481129780_
                             _hd129480129783_
                             _tl129479129785_
                             _e129484129788_
                             _hd129483129791_
                             _tl129482129793_
                             _e129487129796_
                             _hd129486129799_
                             _tl129485129801_
                             _e129490129804_
                             _hd129489129807_
                             _tl129488129809_
                             _e129493129812_
                             _hd129492129815_
                             _tl129491129817_
                             _e129496129820_
                             _hd129495129823_
                             _tl129494129825_
                             _e129499129828_
                             _hd129498129831_
                             _tl129497129833_
                             _e129502129836_
                             _hd129501129839_
                             _tl129500129841_
                             _e129505129844_
                             _hd129504129847_
                             _tl129503129849_
                             _e129508129852_
                             _hd129507129855_
                             _tl129506129857_
                             _e129511129860_
                             _hd129510129863_
                             _tl129509129865_)
                      (let ((_L129868_ _hd129510129863_)
                            (_L129869_ _hd129507129855_)
                            (_L129870_ _hd129498129831_)
                            (_L129871_ _hd129489129807_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129871_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129871_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp134538
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129335_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129870_
                                    __tmp134538)))
                            (___kont133420133421_
                             _L129868_
                             _L129869_
                             _L129870_
                             _L129871_)
                            (___kont133426133427_)))))
                   (___match133781133782_
                    (lambda (_e129481129780_
                             _hd129480129783_
                             _tl129479129785_
                             _e129484129788_
                             _hd129483129791_
                             _tl129482129793_
                             _e129487129796_
                             _hd129486129799_
                             _tl129485129801_
                             _e129490129804_
                             _hd129489129807_
                             _tl129488129809_
                             _e129493129812_
                             _hd129492129815_
                             _tl129491129817_
                             _e129496129820_
                             _hd129495129823_
                             _tl129494129825_
                             _e129499129828_
                             _hd129498129831_
                             _tl129497129833_
                             _e129502129836_
                             _hd129501129839_
                             _tl129500129841_
                             _e129505129844_
                             _hd129504129847_
                             _tl129503129849_
                             _e129508129852_
                             _hd129507129855_
                             _tl129506129857_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129500129841_))
                          (let ((_e129511129860_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129500129841_))))
                            (let ((_tl129509129865_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129511129860_)))
                                  (_hd129510129863_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129511129860_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129509129865_))
                                  (___match133789133790_
                                   _e129481129780_
                                   _hd129480129783_
                                   _tl129479129785_
                                   _e129484129788_
                                   _hd129483129791_
                                   _tl129482129793_
                                   _e129487129796_
                                   _hd129486129799_
                                   _tl129485129801_
                                   _e129490129804_
                                   _hd129489129807_
                                   _tl129488129809_
                                   _e129493129812_
                                   _hd129492129815_
                                   _tl129491129817_
                                   _e129496129820_
                                   _hd129495129823_
                                   _tl129494129825_
                                   _e129499129828_
                                   _hd129498129831_
                                   _tl129497129833_
                                   _e129502129836_
                                   _hd129501129839_
                                   _tl129500129841_
                                   _e129505129844_
                                   _hd129504129847_
                                   _tl129503129849_
                                   _e129508129852_
                                   _hd129507129855_
                                   _tl129506129857_
                                   _e129511129860_
                                   _hd129510129863_
                                   _tl129509129865_)
                                  (___kont133426133427_))))
                          (___match133905133906_
                           _e129481129780_
                           _hd129480129783_
                           _tl129479129785_
                           _e129484129788_
                           _hd129483129791_
                           _tl129482129793_
                           _e129487129796_
                           _hd129486129799_
                           _tl129485129801_
                           _e129490129804_
                           _hd129489129807_
                           _tl129488129809_
                           _e129493129812_
                           _hd129492129815_
                           _tl129491129817_
                           _e129496129820_
                           _hd129495129823_
                           _tl129494129825_
                           _e129499129828_
                           _hd129498129831_
                           _tl129497129833_
                           _e129502129836_
                           _hd129501129839_
                           _tl129500129841_))))
                   (___match133703133704_
                    (lambda (_e129447129911_
                             _hd129446129914_
                             _tl129445129916_
                             _e129450129919_
                             _hd129449129922_
                             _tl129448129924_
                             _e129453129927_
                             _hd129452129930_
                             _tl129451129932_
                             _e129456129935_
                             _hd129455129938_
                             _tl129454129940_
                             _e129459129943_
                             _hd129458129946_
                             _tl129457129948_
                             _e129462129951_
                             _hd129461129954_
                             _tl129460129956_
                             _e129465129959_
                             _hd129464129962_
                             _tl129463129964_
                             _e129468129967_
                             _hd129467129970_
                             _tl129466129972_
                             _e129471129975_
                             _hd129470129978_
                             _tl129469129980_
                             _e129474129983_
                             _hd129473129986_
                             _tl129472129988_)
                      (let ((_L129991_ _hd129473129986_)
                            (_L129992_ _hd129464129962_)
                            (_L129993_ _hd129455129938_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129993_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L129993_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp134539
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self129335_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129992_
                                    __tmp134539)))
                            (___kont133418133419_
                             _L129991_
                             _L129992_
                             _L129993_)
                            (___match133907133908_
                             _e129447129911_
                             _hd129446129914_
                             _tl129445129916_
                             _e129450129919_
                             _hd129449129922_
                             _tl129448129924_
                             _e129453129927_
                             _hd129452129930_
                             _tl129451129932_
                             _e129456129935_
                             _hd129455129938_
                             _tl129454129940_
                             _e129459129943_
                             _hd129458129946_
                             _tl129457129948_
                             _e129462129951_
                             _hd129461129954_
                             _tl129460129956_
                             _e129465129959_
                             _hd129464129962_
                             _tl129463129964_
                             _e129468129967_
                             _hd129467129970_
                             _tl129466129972_)))))
                   (___match133701133702_
                    (lambda (_e129447129911_
                             _hd129446129914_
                             _tl129445129916_
                             _e129450129919_
                             _hd129449129922_
                             _tl129448129924_
                             _e129453129927_
                             _hd129452129930_
                             _tl129451129932_
                             _e129456129935_
                             _hd129455129938_
                             _tl129454129940_
                             _e129459129943_
                             _hd129458129946_
                             _tl129457129948_
                             _e129462129951_
                             _hd129461129954_
                             _tl129460129956_
                             _e129465129959_
                             _hd129464129962_
                             _tl129463129964_
                             _e129468129967_
                             _hd129467129970_
                             _tl129466129972_
                             _e129471129975_
                             _hd129470129978_
                             _tl129469129980_
                             _e129474129983_
                             _hd129473129986_
                             _tl129472129988_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129466129972_))
                          (___match133703133704_
                           _e129447129911_
                           _hd129446129914_
                           _tl129445129916_
                           _e129450129919_
                           _hd129449129922_
                           _tl129448129924_
                           _e129453129927_
                           _hd129452129930_
                           _tl129451129932_
                           _e129456129935_
                           _hd129455129938_
                           _tl129454129940_
                           _e129459129943_
                           _hd129458129946_
                           _tl129457129948_
                           _e129462129951_
                           _hd129461129954_
                           _tl129460129956_
                           _e129465129959_
                           _hd129464129962_
                           _tl129463129964_
                           _e129468129967_
                           _hd129467129970_
                           _tl129466129972_
                           _e129471129975_
                           _hd129470129978_
                           _tl129469129980_
                           _e129474129983_
                           _hd129473129986_
                           _tl129472129988_)
                          (___match133781133782_
                           _e129447129911_
                           _hd129446129914_
                           _tl129445129916_
                           _e129450129919_
                           _hd129449129922_
                           _tl129448129924_
                           _e129453129927_
                           _hd129452129930_
                           _tl129451129932_
                           _e129456129935_
                           _hd129455129938_
                           _tl129454129940_
                           _e129459129943_
                           _hd129458129946_
                           _tl129457129948_
                           _e129462129951_
                           _hd129461129954_
                           _tl129460129956_
                           _e129465129959_
                           _hd129464129962_
                           _tl129463129964_
                           _e129468129967_
                           _hd129467129970_
                           _tl129466129972_
                           _e129471129975_
                           _hd129470129978_
                           _tl129469129980_
                           _e129474129983_
                           _hd129473129986_
                           _tl129472129988_))))
                   (___match133691133692_
                    (lambda (_e129447129911_
                             _hd129446129914_
                             _tl129445129916_
                             _e129450129919_
                             _hd129449129922_
                             _tl129448129924_
                             _e129453129927_
                             _hd129452129930_
                             _tl129451129932_
                             _e129456129935_
                             _hd129455129938_
                             _tl129454129940_
                             _e129459129943_
                             _hd129458129946_
                             _tl129457129948_
                             _e129462129951_
                             _hd129461129954_
                             _tl129460129956_
                             _e129465129959_
                             _hd129464129962_
                             _tl129463129964_
                             _e129468129967_
                             _hd129467129970_
                             _tl129466129972_
                             _e129471129975_
                             _hd129470129978_
                             _tl129469129980_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129470129978_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129469129980_))
                              (let ((_e129474129983_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129469129980_))))
                                (let ((_tl129472129988_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129474129983_)))
                                      (_hd129473129986_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129474129983_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129472129988_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129466129972_))
                                          (___match133703133704_
                                           _e129447129911_
                                           _hd129446129914_
                                           _tl129445129916_
                                           _e129450129919_
                                           _hd129449129922_
                                           _tl129448129924_
                                           _e129453129927_
                                           _hd129452129930_
                                           _tl129451129932_
                                           _e129456129935_
                                           _hd129455129938_
                                           _tl129454129940_
                                           _e129459129943_
                                           _hd129458129946_
                                           _tl129457129948_
                                           _e129462129951_
                                           _hd129461129954_
                                           _tl129460129956_
                                           _e129465129959_
                                           _hd129464129962_
                                           _tl129463129964_
                                           _e129468129967_
                                           _hd129467129970_
                                           _tl129466129972_
                                           _e129471129975_
                                           _hd129470129978_
                                           _tl129469129980_
                                           _e129474129983_
                                           _hd129473129986_
                                           _tl129472129988_)
                                          (___match133781133782_
                                           _e129447129911_
                                           _hd129446129914_
                                           _tl129445129916_
                                           _e129450129919_
                                           _hd129449129922_
                                           _tl129448129924_
                                           _e129453129927_
                                           _hd129452129930_
                                           _tl129451129932_
                                           _e129456129935_
                                           _hd129455129938_
                                           _tl129454129940_
                                           _e129459129943_
                                           _hd129458129946_
                                           _tl129457129948_
                                           _e129462129951_
                                           _hd129461129954_
                                           _tl129460129956_
                                           _e129465129959_
                                           _hd129464129962_
                                           _tl129463129964_
                                           _e129468129967_
                                           _hd129467129970_
                                           _tl129466129972_
                                           _e129471129975_
                                           _hd129470129978_
                                           _tl129469129980_
                                           _e129474129983_
                                           _hd129473129986_
                                           _tl129472129988_))
                                      (___match133905133906_
                                       _e129447129911_
                                       _hd129446129914_
                                       _tl129445129916_
                                       _e129450129919_
                                       _hd129449129922_
                                       _tl129448129924_
                                       _e129453129927_
                                       _hd129452129930_
                                       _tl129451129932_
                                       _e129456129935_
                                       _hd129455129938_
                                       _tl129454129940_
                                       _e129459129943_
                                       _hd129458129946_
                                       _tl129457129948_
                                       _e129462129951_
                                       _hd129461129954_
                                       _tl129460129956_
                                       _e129465129959_
                                       _hd129464129962_
                                       _tl129463129964_
                                       _e129468129967_
                                       _hd129467129970_
                                       _tl129466129972_))))
                              (___match133905133906_
                               _e129447129911_
                               _hd129446129914_
                               _tl129445129916_
                               _e129450129919_
                               _hd129449129922_
                               _tl129448129924_
                               _e129453129927_
                               _hd129452129930_
                               _tl129451129932_
                               _e129456129935_
                               _hd129455129938_
                               _tl129454129940_
                               _e129459129943_
                               _hd129458129946_
                               _tl129457129948_
                               _e129462129951_
                               _hd129461129954_
                               _tl129460129956_
                               _e129465129959_
                               _hd129464129962_
                               _tl129463129964_
                               _e129468129967_
                               _hd129467129970_
                               _tl129466129972_))
                          (___match133905133906_
                           _e129447129911_
                           _hd129446129914_
                           _tl129445129916_
                           _e129450129919_
                           _hd129449129922_
                           _tl129448129924_
                           _e129453129927_
                           _hd129452129930_
                           _tl129451129932_
                           _e129456129935_
                           _hd129455129938_
                           _tl129454129940_
                           _e129459129943_
                           _hd129458129946_
                           _tl129457129948_
                           _e129462129951_
                           _hd129461129954_
                           _tl129460129956_
                           _e129465129959_
                           _hd129464129962_
                           _tl129463129964_
                           _e129468129967_
                           _hd129467129970_
                           _tl129466129972_))))
                   (___match133623133624_
                    (lambda (_e129396130030_
                             _hd129395130033_
                             _tl129394130035_
                             _e129399130038_
                             _hd129398130041_
                             _tl129397130043_
                             _e129402130046_
                             _hd129401130049_
                             _tl129400130051_
                             _e129405130054_
                             _hd129404130057_
                             _tl129403130059_
                             _e129408130062_
                             _hd129407130065_
                             _tl129406130067_
                             _e129411130070_
                             _hd129410130073_
                             _tl129409130075_
                             _e129414130078_
                             _hd129413130081_
                             _tl129412130083_
                             _e129417130086_
                             _hd129416130089_
                             _tl129415130091_
                             _e129420130094_
                             _hd129419130097_
                             _tl129418130099_
                             _e129423130102_
                             _hd129422130105_
                             _tl129421130107_
                             _e129426130110_
                             _hd129425130113_
                             _tl129424130115_
                             _e129429130118_
                             _hd129428130121_
                             _tl129427130123_
                             _e129432130126_
                             _hd129431130129_
                             _tl129430130131_
                             ___splice133416133417_
                             _target129433130134_
                             _tl129435130136_)
                      (letrec ((_loop129436130139_
                                (lambda (_hd129434130142_ _args129440130144_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129434130142_))
                                      (let ((_e129437130147_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129434130142_))))
                                        (let ((_lp-tl129439130152_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129437130147_)))
                                              (_lp-hd129438130150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129437130147_))))
                                          (let ((__tmp134540
                                                 (cons _lp-hd129438130150_
                                                       _args129440130144_)))
                                            (declare (not safe))
                                            (_loop129436130139_
                                             _lp-tl129439130152_
                                             __tmp134540))))
                                      (let ((_args129441130155_
                                             (reverse _args129440130144_)))
                                        (let ((_L130158_ _args129441130155_)
                                              (_L130159_ _hd129431130129_)
                                              (_L130160_ _hd129422130105_)
                                              (_L130161_ _hd129413130081_)
                                              (_L130162_ _hd129404130057_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130162_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130161_
                                                      'call-method))
                                                   (let ((__tmp134541
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129335_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130160_
                                                      __tmp134541)))
                                              (___kont133414133415_
                                               _L130158_
                                               _L130159_
                                               _L130160_
                                               _L130161_
                                               _L130162_)
                                              (___kont133426133427_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129436130139_ _target129433130134_ '())))))
                   (___match133581133582_
                    (lambda (_e129396130030_
                             _hd129395130033_
                             _tl129394130035_
                             _e129399130038_
                             _hd129398130041_
                             _tl129397130043_
                             _e129402130046_
                             _hd129401130049_
                             _tl129400130051_
                             _e129405130054_
                             _hd129404130057_
                             _tl129403130059_
                             _e129408130062_
                             _hd129407130065_
                             _tl129406130067_
                             _e129411130070_
                             _hd129410130073_
                             _tl129409130075_
                             _e129414130078_
                             _hd129413130081_
                             _tl129412130083_
                             _e129417130086_
                             _hd129416130089_
                             _tl129415130091_
                             _e129420130094_
                             _hd129419130097_
                             _tl129418130099_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129419130097_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129418130099_))
                              (let ((_e129423130102_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129418130099_))))
                                (let ((_tl129421130107_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129423130102_)))
                                      (_hd129422130105_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129423130102_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129421130107_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129415130091_))
                                          (let ((_e129426130110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129415130091_))))
                                            (let ((_tl129424130115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129426130110_)))
                                                  (_hd129425130113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129426130110_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129425130113_))
                                                  (let ((_e129429130118_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129425130113_))))
                                                    (let ((_tl129427130123_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129429130118_)))
                                                          (_hd129428130121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129429130118_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129428130121_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129428130121_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129427130123_))
                          (let ((_e129432130126_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129427130123_))))
                            (let ((_tl129430130131_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129432130126_)))
                                  (_hd129431130129_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129432130126_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129430130131_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129424130115_))
                                      (let ((___splice133416133417_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129424130115_
                                                '0))))
                                        (let ((_tl129435130136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133416133417_
                                                  '1)))
                                              (_target129433130134_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133416133417_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129435130136_))
                                              (___match133623133624_
                                               _e129396130030_
                                               _hd129395130033_
                                               _tl129394130035_
                                               _e129399130038_
                                               _hd129398130041_
                                               _tl129397130043_
                                               _e129402130046_
                                               _hd129401130049_
                                               _tl129400130051_
                                               _e129405130054_
                                               _hd129404130057_
                                               _tl129403130059_
                                               _e129408130062_
                                               _hd129407130065_
                                               _tl129406130067_
                                               _e129411130070_
                                               _hd129410130073_
                                               _tl129409130075_
                                               _e129414130078_
                                               _hd129413130081_
                                               _tl129412130083_
                                               _e129417130086_
                                               _hd129416130089_
                                               _tl129415130091_
                                               _e129420130094_
                                               _hd129419130097_
                                               _tl129418130099_
                                               _e129423130102_
                                               _hd129422130105_
                                               _tl129421130107_
                                               _e129426130110_
                                               _hd129425130113_
                                               _tl129424130115_
                                               _e129429130118_
                                               _hd129428130121_
                                               _tl129427130123_
                                               _e129432130126_
                                               _hd129431130129_
                                               _tl129430130131_
                                               ___splice133416133417_
                                               _target129433130134_
                                               _tl129435130136_)
                                              (___kont133426133427_))))
                                      (___kont133426133427_))
                                  (___kont133426133427_))))
                          (___kont133426133427_))
                      (___kont133426133427_))
                  (___kont133426133427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133426133427_))))
                                          (___match133905133906_
                                           _e129396130030_
                                           _hd129395130033_
                                           _tl129394130035_
                                           _e129399130038_
                                           _hd129398130041_
                                           _tl129397130043_
                                           _e129402130046_
                                           _hd129401130049_
                                           _tl129400130051_
                                           _e129405130054_
                                           _hd129404130057_
                                           _tl129403130059_
                                           _e129408130062_
                                           _hd129407130065_
                                           _tl129406130067_
                                           _e129411130070_
                                           _hd129410130073_
                                           _tl129409130075_
                                           _e129414130078_
                                           _hd129413130081_
                                           _tl129412130083_
                                           _e129417130086_
                                           _hd129416130089_
                                           _tl129415130091_))
                                      (___match133905133906_
                                       _e129396130030_
                                       _hd129395130033_
                                       _tl129394130035_
                                       _e129399130038_
                                       _hd129398130041_
                                       _tl129397130043_
                                       _e129402130046_
                                       _hd129401130049_
                                       _tl129400130051_
                                       _e129405130054_
                                       _hd129404130057_
                                       _tl129403130059_
                                       _e129408130062_
                                       _hd129407130065_
                                       _tl129406130067_
                                       _e129411130070_
                                       _hd129410130073_
                                       _tl129409130075_
                                       _e129414130078_
                                       _hd129413130081_
                                       _tl129412130083_
                                       _e129417130086_
                                       _hd129416130089_
                                       _tl129415130091_))))
                              (___match133905133906_
                               _e129396130030_
                               _hd129395130033_
                               _tl129394130035_
                               _e129399130038_
                               _hd129398130041_
                               _tl129397130043_
                               _e129402130046_
                               _hd129401130049_
                               _tl129400130051_
                               _e129405130054_
                               _hd129404130057_
                               _tl129403130059_
                               _e129408130062_
                               _hd129407130065_
                               _tl129406130067_
                               _e129411130070_
                               _hd129410130073_
                               _tl129409130075_
                               _e129414130078_
                               _hd129413130081_
                               _tl129412130083_
                               _e129417130086_
                               _hd129416130089_
                               _tl129415130091_))
                          (___match133691133692_
                           _e129396130030_
                           _hd129395130033_
                           _tl129394130035_
                           _e129399130038_
                           _hd129398130041_
                           _tl129397130043_
                           _e129402130046_
                           _hd129401130049_
                           _tl129400130051_
                           _e129405130054_
                           _hd129404130057_
                           _tl129403130059_
                           _e129408130062_
                           _hd129407130065_
                           _tl129406130067_
                           _e129411130070_
                           _hd129410130073_
                           _tl129409130075_
                           _e129414130078_
                           _hd129413130081_
                           _tl129412130083_
                           _e129417130086_
                           _hd129416130089_
                           _tl129415130091_
                           _e129420130094_
                           _hd129419130097_
                           _tl129418130099_))))
                   (___match133513133514_
                    (lambda (_e129352130219_
                             _hd129351130222_
                             _tl129350130224_
                             _e129355130227_
                             _hd129354130230_
                             _tl129353130232_
                             _e129358130235_
                             _hd129357130238_
                             _tl129356130240_
                             _e129361130243_
                             _hd129360130246_
                             _tl129359130248_
                             _e129364130251_
                             _hd129363130254_
                             _tl129362130256_
                             _e129367130259_
                             _hd129366130262_
                             _tl129365130264_
                             _e129370130267_
                             _hd129369130270_
                             _tl129368130272_
                             _e129373130275_
                             _hd129372130278_
                             _tl129371130280_
                             _e129376130283_
                             _hd129375130286_
                             _tl129374130288_
                             _e129379130291_
                             _hd129378130294_
                             _tl129377130296_
                             ___splice133412133413_
                             _target129380130299_
                             _tl129382130301_)
                      (letrec ((_loop129383130304_
                                (lambda (_hd129381130307_ _args129387130309_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129381130307_))
                                      (let ((_e129384130312_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129381130307_))))
                                        (let ((_lp-tl129386130317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129384130312_)))
                                              (_lp-hd129385130315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129384130312_))))
                                          (let ((__tmp134542
                                                 (cons _lp-hd129385130315_
                                                       _args129387130309_)))
                                            (declare (not safe))
                                            (_loop129383130304_
                                             _lp-tl129386130317_
                                             __tmp134542))))
                                      (let ((_args129388130320_
                                             (reverse _args129387130309_)))
                                        (let ((_L130323_ _args129388130320_)
                                              (_L130324_ _hd129378130294_)
                                              (_L130325_ _hd129369130270_)
                                              (_L130326_ _hd129360130246_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130326_
                                                      'call-method))
                                                   (let ((__tmp134543
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self129335_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130325_
                                                      __tmp134543)))
                                              (___kont133410133411_
                                               _L130323_
                                               _L130324_
                                               _L130325_
                                               _L130326_)
                                              (___match133701133702_
                                               _e129352130219_
                                               _hd129351130222_
                                               _tl129350130224_
                                               _e129355130227_
                                               _hd129354130230_
                                               _tl129353130232_
                                               _e129358130235_
                                               _hd129357130238_
                                               _tl129356130240_
                                               _e129361130243_
                                               _hd129360130246_
                                               _tl129359130248_
                                               _e129364130251_
                                               _hd129363130254_
                                               _tl129362130256_
                                               _e129367130259_
                                               _hd129366130262_
                                               _tl129365130264_
                                               _e129370130267_
                                               _hd129369130270_
                                               _tl129368130272_
                                               _e129373130275_
                                               _hd129372130278_
                                               _tl129371130280_
                                               _e129376130283_
                                               _hd129375130286_
                                               _tl129374130288_
                                               _e129379130291_
                                               _hd129378130294_
                                               _tl129377130296_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129383130304_ _target129380130299_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133408133409_))
                  (let ((_e129352130219_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133408133409_))))
                    (let ((_tl129350130224_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129352130219_)))
                          (_hd129351130222_
                           (let ()
                             (declare (not safe))
                             (##car _e129352130219_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129350130224_))
                          (let ((_e129355130227_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129350130224_))))
                            (let ((_tl129353130232_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129355130227_)))
                                  (_hd129354130230_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129355130227_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129354130230_))
                                  (let ((_e129358130235_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129354130230_))))
                                    (let ((_tl129356130240_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129358130235_)))
                                          (_hd129357130238_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129358130235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129357130238_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129357130238_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129356130240_))
                                                  (let ((_e129361130243_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129356130240_))))
                                                    (let ((_tl129359130248_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129361130243_)))
                                                          (_hd129360130246_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129361130243_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129359130248_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129353130232_))
                      (let ((_e129364130251_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129353130232_))))
                        (let ((_tl129362130256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129364130251_)))
                              (_hd129363130254_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129364130251_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129363130254_))
                              (let ((_e129367130259_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129363130254_))))
                                (let ((_tl129365130264_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129367130259_)))
                                      (_hd129366130262_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129367130259_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129366130262_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129366130262_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129365130264_))
                                              (let ((_e129370130267_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129365130264_))))
                                                (let ((_tl129368130272_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129370130267_)))
                                                      (_hd129369130270_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129370130267_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129368130272_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129362130256_))
                                                          (let ((_e129373130275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129362130256_))))
                    (let ((_tl129371130280_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129373130275_)))
                          (_hd129372130278_
                           (let ()
                             (declare (not safe))
                             (##car _e129373130275_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129372130278_))
                          (let ((_e129376130283_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129372130278_))))
                            (let ((_tl129374130288_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129376130283_)))
                                  (_hd129375130286_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129376130283_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129375130286_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129375130286_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129374130288_))
                                          (let ((_e129379130291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129374130288_))))
                                            (let ((_tl129377130296_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129379130291_)))
                                                  (_hd129378130294_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129379130291_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129377130296_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129371130280_))
                                                      (let ((___splice133412133413_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129371130280_ '0))))
                (let ((_tl129382130301_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133412133413_ '1)))
                      (_target129380130299_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133412133413_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129382130301_))
                      (___match133513133514_
                       _e129352130219_
                       _hd129351130222_
                       _tl129350130224_
                       _e129355130227_
                       _hd129354130230_
                       _tl129353130232_
                       _e129358130235_
                       _hd129357130238_
                       _tl129356130240_
                       _e129361130243_
                       _hd129360130246_
                       _tl129359130248_
                       _e129364130251_
                       _hd129363130254_
                       _tl129362130256_
                       _e129367130259_
                       _hd129366130262_
                       _tl129365130264_
                       _e129370130267_
                       _hd129369130270_
                       _tl129368130272_
                       _e129373130275_
                       _hd129372130278_
                       _tl129371130280_
                       _e129376130283_
                       _hd129375130286_
                       _tl129374130288_
                       _e129379130291_
                       _hd129378130294_
                       _tl129377130296_
                       ___splice133412133413_
                       _target129380130299_
                       _tl129382130301_)
                      (___match133701133702_
                       _e129352130219_
                       _hd129351130222_
                       _tl129350130224_
                       _e129355130227_
                       _hd129354130230_
                       _tl129353130232_
                       _e129358130235_
                       _hd129357130238_
                       _tl129356130240_
                       _e129361130243_
                       _hd129360130246_
                       _tl129359130248_
                       _e129364130251_
                       _hd129363130254_
                       _tl129362130256_
                       _e129367130259_
                       _hd129366130262_
                       _tl129365130264_
                       _e129370130267_
                       _hd129369130270_
                       _tl129368130272_
                       _e129373130275_
                       _hd129372130278_
                       _tl129371130280_
                       _e129376130283_
                       _hd129375130286_
                       _tl129374130288_
                       _e129379130291_
                       _hd129378130294_
                       _tl129377130296_))))
              (___match133701133702_
               _e129352130219_
               _hd129351130222_
               _tl129350130224_
               _e129355130227_
               _hd129354130230_
               _tl129353130232_
               _e129358130235_
               _hd129357130238_
               _tl129356130240_
               _e129361130243_
               _hd129360130246_
               _tl129359130248_
               _e129364130251_
               _hd129363130254_
               _tl129362130256_
               _e129367130259_
               _hd129366130262_
               _tl129365130264_
               _e129370130267_
               _hd129369130270_
               _tl129368130272_
               _e129373130275_
               _hd129372130278_
               _tl129371130280_
               _e129376130283_
               _hd129375130286_
               _tl129374130288_
               _e129379130291_
               _hd129378130294_
               _tl129377130296_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match133905133906_
                                                   _e129352130219_
                                                   _hd129351130222_
                                                   _tl129350130224_
                                                   _e129355130227_
                                                   _hd129354130230_
                                                   _tl129353130232_
                                                   _e129358130235_
                                                   _hd129357130238_
                                                   _tl129356130240_
                                                   _e129361130243_
                                                   _hd129360130246_
                                                   _tl129359130248_
                                                   _e129364130251_
                                                   _hd129363130254_
                                                   _tl129362130256_
                                                   _e129367130259_
                                                   _hd129366130262_
                                                   _tl129365130264_
                                                   _e129370130267_
                                                   _hd129369130270_
                                                   _tl129368130272_
                                                   _e129373130275_
                                                   _hd129372130278_
                                                   _tl129371130280_))))
                                          (___match133905133906_
                                           _e129352130219_
                                           _hd129351130222_
                                           _tl129350130224_
                                           _e129355130227_
                                           _hd129354130230_
                                           _tl129353130232_
                                           _e129358130235_
                                           _hd129357130238_
                                           _tl129356130240_
                                           _e129361130243_
                                           _hd129360130246_
                                           _tl129359130248_
                                           _e129364130251_
                                           _hd129363130254_
                                           _tl129362130256_
                                           _e129367130259_
                                           _hd129366130262_
                                           _tl129365130264_
                                           _e129370130267_
                                           _hd129369130270_
                                           _tl129368130272_
                                           _e129373130275_
                                           _hd129372130278_
                                           _tl129371130280_))
                                      (___match133581133582_
                                       _e129352130219_
                                       _hd129351130222_
                                       _tl129350130224_
                                       _e129355130227_
                                       _hd129354130230_
                                       _tl129353130232_
                                       _e129358130235_
                                       _hd129357130238_
                                       _tl129356130240_
                                       _e129361130243_
                                       _hd129360130246_
                                       _tl129359130248_
                                       _e129364130251_
                                       _hd129363130254_
                                       _tl129362130256_
                                       _e129367130259_
                                       _hd129366130262_
                                       _tl129365130264_
                                       _e129370130267_
                                       _hd129369130270_
                                       _tl129368130272_
                                       _e129373130275_
                                       _hd129372130278_
                                       _tl129371130280_
                                       _e129376130283_
                                       _hd129375130286_
                                       _tl129374130288_))
                                  (___match133905133906_
                                   _e129352130219_
                                   _hd129351130222_
                                   _tl129350130224_
                                   _e129355130227_
                                   _hd129354130230_
                                   _tl129353130232_
                                   _e129358130235_
                                   _hd129357130238_
                                   _tl129356130240_
                                   _e129361130243_
                                   _hd129360130246_
                                   _tl129359130248_
                                   _e129364130251_
                                   _hd129363130254_
                                   _tl129362130256_
                                   _e129367130259_
                                   _hd129366130262_
                                   _tl129365130264_
                                   _e129370130267_
                                   _hd129369130270_
                                   _tl129368130272_
                                   _e129373130275_
                                   _hd129372130278_
                                   _tl129371130280_))))
                          (___match133905133906_
                           _e129352130219_
                           _hd129351130222_
                           _tl129350130224_
                           _e129355130227_
                           _hd129354130230_
                           _tl129353130232_
                           _e129358130235_
                           _hd129357130238_
                           _tl129356130240_
                           _e129361130243_
                           _hd129360130246_
                           _tl129359130248_
                           _e129364130251_
                           _hd129363130254_
                           _tl129362130256_
                           _e129367130259_
                           _hd129366130262_
                           _tl129365130264_
                           _e129370130267_
                           _hd129369130270_
                           _tl129368130272_
                           _e129373130275_
                           _hd129372130278_
                           _tl129371130280_))))
                  (___match133843133844_
                   _e129352130219_
                   _hd129351130222_
                   _tl129350130224_
                   _e129355130227_
                   _hd129354130230_
                   _tl129353130232_
                   _e129358130235_
                   _hd129357130238_
                   _tl129356130240_
                   _e129361130243_
                   _hd129360130246_
                   _tl129359130248_
                   _e129364130251_
                   _hd129363130254_
                   _tl129362130256_
                   _e129367130259_
                   _hd129366130262_
                   _tl129365130264_
                   _e129370130267_
                   _hd129369130270_
                   _tl129368130272_))
              (___kont133426133427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133426133427_))
                                          (___kont133426133427_))
                                      (___kont133426133427_))))
                              (___kont133426133427_))))
                      (___kont133426133427_))
                  (___kont133426133427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133426133427_))
                                              (___kont133426133427_))
                                          (___kont133426133427_))))
                                  (___kont133426133427_))))
                          (___kont133426133427_))))
                  (___kont133426133427_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self128274_ _stx128275_)
        (letrec ((_force-e128277_
                  (lambda (_target129333_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _target129333_ '()))
                                      '()))))))
          (let* ((___stx133910133911_ _stx128275_)
                 (_g128285128507_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133910133911_)))))
            (let ((___kont133912133913_
                   (lambda (_L129279_ _L129280_ _L129281_ _L129282_)
                     (let ((_$method129327_
                            (let ((__tmp134545
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128274_ 'methods)))
                                  (__tmp134544
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129280_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134545 __tmp134544)))
                           (_args129328_
                            (map (lambda (_g129315129317_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128274_
                                      _g129315129317_)))
                                 (let ((__tmp134546
                                        (lambda (_g129319129322_
                                                 _g129320129324_)
                                          (cons _g129319129322_
                                                _g129320129324_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp134546 '() _L129279_)))))
                       (let ((__tmp134547
                              (cons '%#call
                                    (cons (let ()
                                            (declare (not safe))
                                            (_force-e128277_ _$method129327_))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128274_
                                                               'receiver))
                                                            '()))
                                                _args129328_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134547 _stx128275_)))))
                  (___kont133916133917_
                   (lambda (_L129111_ _L129112_ _L129113_ _L129114_ _L129115_)
                     (let ((_$method129167_
                            (let ((__tmp134549
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128274_ 'methods)))
                                  (__tmp134548
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129112_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134549 __tmp134548)))
                           (_args129168_
                            (map (lambda (_g129155129157_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self128274_
                                      _g129155129157_)))
                                 (let ((__tmp134550
                                        (lambda (_g129159129162_
                                                 _g129160129164_)
                                          (cons _g129159129162_
                                                _g129160129164_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp134550 '() _L129111_)))))
                       (let ((__tmp134551
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (_force-e128277_
                                                   _$method129167_))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _self128274_ 'receiver))
                          '()))
              _args129168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134551 _stx128275_)))))
                  (___kont133920133921_
                   (lambda (_L128942_ _L128943_ _L128944_)
                     (let* ((_$field128976_
                             (let ((__tmp134553
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self128274_ 'slots)))
                                   (__tmp134552
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L128942_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp134553 __tmp134552)))
                            (__tmp134554
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self128274_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _$field128976_ '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _self128274_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp134554 _stx128275_))))
                  (___kont133922133923_
                   (lambda (_L128816_ _L128817_ _L128818_ _L128819_)
                     (let ((_$field128854_
                            (let ((__tmp134556
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self128274_ 'slots)))
                                  (__tmp134555
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L128817_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp134556 __tmp134555)))
                           (_expr128855_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self128274_ _L128816_))))
                       (let ((__tmp134557
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self128274_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _$field128854_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _self128274_ 'receiver))
                          '()))
              (cons _expr128855_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134557 _stx128275_)))))
                  (___kont133924133925_
                   (lambda (_L128688_ _L128689_)
                     (let* ((_accessor128711_
                             (let ((__tmp134558
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128689_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134558)))
                            (_klass128713_
                             (let ((__tmp134559
                                    (##structure-ref
                                     _accessor128711_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128275_
                                __tmp134559)))
                            (_slot128715_
                             (##structure-ref
                              _accessor128711_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp134560
                                       (##structure-ref
                                        _accessor128711_
                                        '4
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134560))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128713_
                                       _slot128715_))
                                    (##structure-ref
                                     _klass128713_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128275_
                           (let* ((_$field128721_
                                   (let ((__tmp134561
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134561 _slot128715_)))
                                  (__tmp134562
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _self128274_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _$field128721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self128274_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134562
                              _stx128275_))))))
                  (___kont133926133927_
                   (lambda (_L128583_ _L128584_ _L128585_)
                     (let* ((_mutator128613_
                             (let ((__tmp134563
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128585_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134563)))
                            (_klass128615_
                             (let ((__tmp134564
                                    (##structure-ref
                                     _mutator128613_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128275_
                                __tmp134564)))
                            (_slot128617_
                             (##structure-ref
                              _mutator128613_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_expr128619_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self128274_ _L128583_))))
                       (if (and (let ((__tmp134565
                                       (##structure-ref
                                        _mutator128613_
                                        '4
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134565))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128615_
                                       _slot128617_))
                                    (##structure-ref
                                     _klass128615_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp134566
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _L128585_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _L128584_ '()))
                                                    (cons _expr128619_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134566 _stx128275_))
                           (let* ((_$field128625_
                                   (let ((__tmp134567
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp134567 _slot128617_)))
                                  (__tmp134568
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _self128274_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _$field128625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self128274_ 'receiver))
                               '()))
                   (cons _expr128619_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134568
                              _stx128275_))))))
                  (___kont133928133929_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self128274_ _stx128275_)))))
              (let* ((___match134409134410_
                      (lambda (_e128481128519_
                               _hd128480128522_
                               _tl128479128524_
                               _e128484128527_
                               _hd128483128530_
                               _tl128482128532_
                               _e128487128535_
                               _hd128486128538_
                               _tl128485128540_
                               _e128490128543_
                               _hd128489128546_
                               _tl128488128548_
                               _e128493128551_
                               _hd128492128554_
                               _tl128491128556_
                               _e128496128559_
                               _hd128495128562_
                               _tl128494128564_
                               _e128499128567_
                               _hd128498128570_
                               _tl128497128572_
                               _e128502128575_
                               _hd128501128578_
                               _tl128500128580_)
                        (let ((_L128583_ _hd128501128578_)
                              (_L128584_ _hd128498128570_)
                              (_L128585_ _hd128489128546_))
                          (if (and (let ((__tmp134569
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128584_
                                      __tmp134569))
                                   (let ((__tmp134570
                                          (let ((__tmp134571
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128585_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134571))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134570
                                      'gxc#!mutator::t)))
                              (___kont133926133927_
                               _L128583_
                               _L128584_
                               _L128585_)
                              (___kont133928133929_)))))
                     (___match134407134408_
                      (lambda (_e128481128519_
                               _hd128480128522_
                               _tl128479128524_
                               _e128484128527_
                               _hd128483128530_
                               _tl128482128532_
                               _e128487128535_
                               _hd128486128538_
                               _tl128485128540_
                               _e128490128543_
                               _hd128489128546_
                               _tl128488128548_
                               _e128493128551_
                               _hd128492128554_
                               _tl128491128556_
                               _e128496128559_
                               _hd128495128562_
                               _tl128494128564_
                               _e128499128567_
                               _hd128498128570_
                               _tl128497128572_
                               _e128502128575_
                               _hd128501128578_
                               _tl128500128580_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128500128580_))
                            (___match134409134410_
                             _e128481128519_
                             _hd128480128522_
                             _tl128479128524_
                             _e128484128527_
                             _hd128483128530_
                             _tl128482128532_
                             _e128487128535_
                             _hd128486128538_
                             _tl128485128540_
                             _e128490128543_
                             _hd128489128546_
                             _tl128488128548_
                             _e128493128551_
                             _hd128492128554_
                             _tl128491128556_
                             _e128496128559_
                             _hd128495128562_
                             _tl128494128564_
                             _e128499128567_
                             _hd128498128570_
                             _tl128497128572_
                             _e128502128575_
                             _hd128501128578_
                             _tl128500128580_)
                            (___kont133928133929_))))
                     (___match134401134402_
                      (lambda (_e128481128519_
                               _hd128480128522_
                               _tl128479128524_
                               _e128484128527_
                               _hd128483128530_
                               _tl128482128532_
                               _e128487128535_
                               _hd128486128538_
                               _tl128485128540_
                               _e128490128543_
                               _hd128489128546_
                               _tl128488128548_
                               _e128493128551_
                               _hd128492128554_
                               _tl128491128556_
                               _e128496128559_
                               _hd128495128562_
                               _tl128494128564_
                               _e128499128567_
                               _hd128498128570_
                               _tl128497128572_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128491128556_))
                            (let ((_e128502128575_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128491128556_))))
                              (let ((_tl128500128580_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128502128575_)))
                                    (_hd128501128578_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128502128575_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128500128580_))
                                    (___match134409134410_
                                     _e128481128519_
                                     _hd128480128522_
                                     _tl128479128524_
                                     _e128484128527_
                                     _hd128483128530_
                                     _tl128482128532_
                                     _e128487128535_
                                     _hd128486128538_
                                     _tl128485128540_
                                     _e128490128543_
                                     _hd128489128546_
                                     _tl128488128548_
                                     _e128493128551_
                                     _hd128492128554_
                                     _tl128491128556_
                                     _e128496128559_
                                     _hd128495128562_
                                     _tl128494128564_
                                     _e128499128567_
                                     _hd128498128570_
                                     _tl128497128572_
                                     _e128502128575_
                                     _hd128501128578_
                                     _tl128500128580_)
                                    (___kont133928133929_))))
                            (___kont133928133929_))))
                     (___match134347134348_
                      (lambda (_e128457128632_
                               _hd128456128635_
                               _tl128455128637_
                               _e128460128640_
                               _hd128459128643_
                               _tl128458128645_
                               _e128463128648_
                               _hd128462128651_
                               _tl128461128653_
                               _e128466128656_
                               _hd128465128659_
                               _tl128464128661_
                               _e128469128664_
                               _hd128468128667_
                               _tl128467128669_
                               _e128472128672_
                               _hd128471128675_
                               _tl128470128677_
                               _e128475128680_
                               _hd128474128683_
                               _tl128473128685_)
                        (let ((_L128688_ _hd128474128683_)
                              (_L128689_ _hd128465128659_))
                          (if (and (let ((__tmp134572
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128688_
                                      __tmp134572))
                                   (let ((__tmp134573
                                          (let ((__tmp134574
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128689_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp134574))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp134573
                                      'gxc#!accessor::t)))
                              (___kont133924133925_ _L128688_ _L128689_)
                              (___kont133928133929_)))))
                     (___match134345134346_
                      (lambda (_e128457128632_
                               _hd128456128635_
                               _tl128455128637_
                               _e128460128640_
                               _hd128459128643_
                               _tl128458128645_
                               _e128463128648_
                               _hd128462128651_
                               _tl128461128653_
                               _e128466128656_
                               _hd128465128659_
                               _tl128464128661_
                               _e128469128664_
                               _hd128468128667_
                               _tl128467128669_
                               _e128472128672_
                               _hd128471128675_
                               _tl128470128677_
                               _e128475128680_
                               _hd128474128683_
                               _tl128473128685_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128467128669_))
                            (___match134347134348_
                             _e128457128632_
                             _hd128456128635_
                             _tl128455128637_
                             _e128460128640_
                             _hd128459128643_
                             _tl128458128645_
                             _e128463128648_
                             _hd128462128651_
                             _tl128461128653_
                             _e128466128656_
                             _hd128465128659_
                             _tl128464128661_
                             _e128469128664_
                             _hd128468128667_
                             _tl128467128669_
                             _e128472128672_
                             _hd128471128675_
                             _tl128470128677_
                             _e128475128680_
                             _hd128474128683_
                             _tl128473128685_)
                            (___match134401134402_
                             _e128457128632_
                             _hd128456128635_
                             _tl128455128637_
                             _e128460128640_
                             _hd128459128643_
                             _tl128458128645_
                             _e128463128648_
                             _hd128462128651_
                             _tl128461128653_
                             _e128466128656_
                             _hd128465128659_
                             _tl128464128661_
                             _e128469128664_
                             _hd128468128667_
                             _tl128467128669_
                             _e128472128672_
                             _hd128471128675_
                             _tl128470128677_
                             _e128475128680_
                             _hd128474128683_
                             _tl128473128685_))))
                     (___match134291134292_
                      (lambda (_e128422128728_
                               _hd128421128731_
                               _tl128420128733_
                               _e128425128736_
                               _hd128424128739_
                               _tl128423128741_
                               _e128428128744_
                               _hd128427128747_
                               _tl128426128749_
                               _e128431128752_
                               _hd128430128755_
                               _tl128429128757_
                               _e128434128760_
                               _hd128433128763_
                               _tl128432128765_
                               _e128437128768_
                               _hd128436128771_
                               _tl128435128773_
                               _e128440128776_
                               _hd128439128779_
                               _tl128438128781_
                               _e128443128784_
                               _hd128442128787_
                               _tl128441128789_
                               _e128446128792_
                               _hd128445128795_
                               _tl128444128797_
                               _e128449128800_
                               _hd128448128803_
                               _tl128447128805_
                               _e128452128808_
                               _hd128451128811_
                               _tl128450128813_)
                        (let ((_L128816_ _hd128451128811_)
                              (_L128817_ _hd128448128803_)
                              (_L128818_ _hd128439128779_)
                              (_L128819_ _hd128430128755_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128819_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128819_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp134575
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128818_
                                      __tmp134575)))
                              (___kont133922133923_
                               _L128816_
                               _L128817_
                               _L128818_
                               _L128819_)
                              (___kont133928133929_)))))
                     (___match134283134284_
                      (lambda (_e128422128728_
                               _hd128421128731_
                               _tl128420128733_
                               _e128425128736_
                               _hd128424128739_
                               _tl128423128741_
                               _e128428128744_
                               _hd128427128747_
                               _tl128426128749_
                               _e128431128752_
                               _hd128430128755_
                               _tl128429128757_
                               _e128434128760_
                               _hd128433128763_
                               _tl128432128765_
                               _e128437128768_
                               _hd128436128771_
                               _tl128435128773_
                               _e128440128776_
                               _hd128439128779_
                               _tl128438128781_
                               _e128443128784_
                               _hd128442128787_
                               _tl128441128789_
                               _e128446128792_
                               _hd128445128795_
                               _tl128444128797_
                               _e128449128800_
                               _hd128448128803_
                               _tl128447128805_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128441128789_))
                            (let ((_e128452128808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128441128789_))))
                              (let ((_tl128450128813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128452128808_)))
                                    (_hd128451128811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128452128808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128450128813_))
                                    (___match134291134292_
                                     _e128422128728_
                                     _hd128421128731_
                                     _tl128420128733_
                                     _e128425128736_
                                     _hd128424128739_
                                     _tl128423128741_
                                     _e128428128744_
                                     _hd128427128747_
                                     _tl128426128749_
                                     _e128431128752_
                                     _hd128430128755_
                                     _tl128429128757_
                                     _e128434128760_
                                     _hd128433128763_
                                     _tl128432128765_
                                     _e128437128768_
                                     _hd128436128771_
                                     _tl128435128773_
                                     _e128440128776_
                                     _hd128439128779_
                                     _tl128438128781_
                                     _e128443128784_
                                     _hd128442128787_
                                     _tl128441128789_
                                     _e128446128792_
                                     _hd128445128795_
                                     _tl128444128797_
                                     _e128449128800_
                                     _hd128448128803_
                                     _tl128447128805_
                                     _e128452128808_
                                     _hd128451128811_
                                     _tl128450128813_)
                                    (___kont133928133929_))))
                            (___match134407134408_
                             _e128422128728_
                             _hd128421128731_
                             _tl128420128733_
                             _e128425128736_
                             _hd128424128739_
                             _tl128423128741_
                             _e128428128744_
                             _hd128427128747_
                             _tl128426128749_
                             _e128431128752_
                             _hd128430128755_
                             _tl128429128757_
                             _e128434128760_
                             _hd128433128763_
                             _tl128432128765_
                             _e128437128768_
                             _hd128436128771_
                             _tl128435128773_
                             _e128440128776_
                             _hd128439128779_
                             _tl128438128781_
                             _e128443128784_
                             _hd128442128787_
                             _tl128441128789_))))
                     (___match134205134206_
                      (lambda (_e128388128862_
                               _hd128387128865_
                               _tl128386128867_
                               _e128391128870_
                               _hd128390128873_
                               _tl128389128875_
                               _e128394128878_
                               _hd128393128881_
                               _tl128392128883_
                               _e128397128886_
                               _hd128396128889_
                               _tl128395128891_
                               _e128400128894_
                               _hd128399128897_
                               _tl128398128899_
                               _e128403128902_
                               _hd128402128905_
                               _tl128401128907_
                               _e128406128910_
                               _hd128405128913_
                               _tl128404128915_
                               _e128409128918_
                               _hd128408128921_
                               _tl128407128923_
                               _e128412128926_
                               _hd128411128929_
                               _tl128410128931_
                               _e128415128934_
                               _hd128414128937_
                               _tl128413128939_)
                        (let ((_L128942_ _hd128414128937_)
                              (_L128943_ _hd128405128913_)
                              (_L128944_ _hd128396128889_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128944_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L128944_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp134576
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self128274_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128943_
                                      __tmp134576)))
                              (___kont133920133921_
                               _L128942_
                               _L128943_
                               _L128944_)
                              (___match134409134410_
                               _e128388128862_
                               _hd128387128865_
                               _tl128386128867_
                               _e128391128870_
                               _hd128390128873_
                               _tl128389128875_
                               _e128394128878_
                               _hd128393128881_
                               _tl128392128883_
                               _e128397128886_
                               _hd128396128889_
                               _tl128395128891_
                               _e128400128894_
                               _hd128399128897_
                               _tl128398128899_
                               _e128403128902_
                               _hd128402128905_
                               _tl128401128907_
                               _e128406128910_
                               _hd128405128913_
                               _tl128404128915_
                               _e128409128918_
                               _hd128408128921_
                               _tl128407128923_)))))
                     (___match134203134204_
                      (lambda (_e128388128862_
                               _hd128387128865_
                               _tl128386128867_
                               _e128391128870_
                               _hd128390128873_
                               _tl128389128875_
                               _e128394128878_
                               _hd128393128881_
                               _tl128392128883_
                               _e128397128886_
                               _hd128396128889_
                               _tl128395128891_
                               _e128400128894_
                               _hd128399128897_
                               _tl128398128899_
                               _e128403128902_
                               _hd128402128905_
                               _tl128401128907_
                               _e128406128910_
                               _hd128405128913_
                               _tl128404128915_
                               _e128409128918_
                               _hd128408128921_
                               _tl128407128923_
                               _e128412128926_
                               _hd128411128929_
                               _tl128410128931_
                               _e128415128934_
                               _hd128414128937_
                               _tl128413128939_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128407128923_))
                            (___match134205134206_
                             _e128388128862_
                             _hd128387128865_
                             _tl128386128867_
                             _e128391128870_
                             _hd128390128873_
                             _tl128389128875_
                             _e128394128878_
                             _hd128393128881_
                             _tl128392128883_
                             _e128397128886_
                             _hd128396128889_
                             _tl128395128891_
                             _e128400128894_
                             _hd128399128897_
                             _tl128398128899_
                             _e128403128902_
                             _hd128402128905_
                             _tl128401128907_
                             _e128406128910_
                             _hd128405128913_
                             _tl128404128915_
                             _e128409128918_
                             _hd128408128921_
                             _tl128407128923_
                             _e128412128926_
                             _hd128411128929_
                             _tl128410128931_
                             _e128415128934_
                             _hd128414128937_
                             _tl128413128939_)
                            (___match134283134284_
                             _e128388128862_
                             _hd128387128865_
                             _tl128386128867_
                             _e128391128870_
                             _hd128390128873_
                             _tl128389128875_
                             _e128394128878_
                             _hd128393128881_
                             _tl128392128883_
                             _e128397128886_
                             _hd128396128889_
                             _tl128395128891_
                             _e128400128894_
                             _hd128399128897_
                             _tl128398128899_
                             _e128403128902_
                             _hd128402128905_
                             _tl128401128907_
                             _e128406128910_
                             _hd128405128913_
                             _tl128404128915_
                             _e128409128918_
                             _hd128408128921_
                             _tl128407128923_
                             _e128412128926_
                             _hd128411128929_
                             _tl128410128931_
                             _e128415128934_
                             _hd128414128937_
                             _tl128413128939_))))
                     (___match134193134194_
                      (lambda (_e128388128862_
                               _hd128387128865_
                               _tl128386128867_
                               _e128391128870_
                               _hd128390128873_
                               _tl128389128875_
                               _e128394128878_
                               _hd128393128881_
                               _tl128392128883_
                               _e128397128886_
                               _hd128396128889_
                               _tl128395128891_
                               _e128400128894_
                               _hd128399128897_
                               _tl128398128899_
                               _e128403128902_
                               _hd128402128905_
                               _tl128401128907_
                               _e128406128910_
                               _hd128405128913_
                               _tl128404128915_
                               _e128409128918_
                               _hd128408128921_
                               _tl128407128923_
                               _e128412128926_
                               _hd128411128929_
                               _tl128410128931_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128411128929_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128410128931_))
                                (let ((_e128415128934_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128410128931_))))
                                  (let ((_tl128413128939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128415128934_)))
                                        (_hd128414128937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128415128934_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128413128939_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128407128923_))
                                            (___match134205134206_
                                             _e128388128862_
                                             _hd128387128865_
                                             _tl128386128867_
                                             _e128391128870_
                                             _hd128390128873_
                                             _tl128389128875_
                                             _e128394128878_
                                             _hd128393128881_
                                             _tl128392128883_
                                             _e128397128886_
                                             _hd128396128889_
                                             _tl128395128891_
                                             _e128400128894_
                                             _hd128399128897_
                                             _tl128398128899_
                                             _e128403128902_
                                             _hd128402128905_
                                             _tl128401128907_
                                             _e128406128910_
                                             _hd128405128913_
                                             _tl128404128915_
                                             _e128409128918_
                                             _hd128408128921_
                                             _tl128407128923_
                                             _e128412128926_
                                             _hd128411128929_
                                             _tl128410128931_
                                             _e128415128934_
                                             _hd128414128937_
                                             _tl128413128939_)
                                            (___match134283134284_
                                             _e128388128862_
                                             _hd128387128865_
                                             _tl128386128867_
                                             _e128391128870_
                                             _hd128390128873_
                                             _tl128389128875_
                                             _e128394128878_
                                             _hd128393128881_
                                             _tl128392128883_
                                             _e128397128886_
                                             _hd128396128889_
                                             _tl128395128891_
                                             _e128400128894_
                                             _hd128399128897_
                                             _tl128398128899_
                                             _e128403128902_
                                             _hd128402128905_
                                             _tl128401128907_
                                             _e128406128910_
                                             _hd128405128913_
                                             _tl128404128915_
                                             _e128409128918_
                                             _hd128408128921_
                                             _tl128407128923_
                                             _e128412128926_
                                             _hd128411128929_
                                             _tl128410128931_
                                             _e128415128934_
                                             _hd128414128937_
                                             _tl128413128939_))
                                        (___match134407134408_
                                         _e128388128862_
                                         _hd128387128865_
                                         _tl128386128867_
                                         _e128391128870_
                                         _hd128390128873_
                                         _tl128389128875_
                                         _e128394128878_
                                         _hd128393128881_
                                         _tl128392128883_
                                         _e128397128886_
                                         _hd128396128889_
                                         _tl128395128891_
                                         _e128400128894_
                                         _hd128399128897_
                                         _tl128398128899_
                                         _e128403128902_
                                         _hd128402128905_
                                         _tl128401128907_
                                         _e128406128910_
                                         _hd128405128913_
                                         _tl128404128915_
                                         _e128409128918_
                                         _hd128408128921_
                                         _tl128407128923_))))
                                (___match134407134408_
                                 _e128388128862_
                                 _hd128387128865_
                                 _tl128386128867_
                                 _e128391128870_
                                 _hd128390128873_
                                 _tl128389128875_
                                 _e128394128878_
                                 _hd128393128881_
                                 _tl128392128883_
                                 _e128397128886_
                                 _hd128396128889_
                                 _tl128395128891_
                                 _e128400128894_
                                 _hd128399128897_
                                 _tl128398128899_
                                 _e128403128902_
                                 _hd128402128905_
                                 _tl128401128907_
                                 _e128406128910_
                                 _hd128405128913_
                                 _tl128404128915_
                                 _e128409128918_
                                 _hd128408128921_
                                 _tl128407128923_))
                            (___match134407134408_
                             _e128388128862_
                             _hd128387128865_
                             _tl128386128867_
                             _e128391128870_
                             _hd128390128873_
                             _tl128389128875_
                             _e128394128878_
                             _hd128393128881_
                             _tl128392128883_
                             _e128397128886_
                             _hd128396128889_
                             _tl128395128891_
                             _e128400128894_
                             _hd128399128897_
                             _tl128398128899_
                             _e128403128902_
                             _hd128402128905_
                             _tl128401128907_
                             _e128406128910_
                             _hd128405128913_
                             _tl128404128915_
                             _e128409128918_
                             _hd128408128921_
                             _tl128407128923_))))
                     (___match134125134126_
                      (lambda (_e128337128983_
                               _hd128336128986_
                               _tl128335128988_
                               _e128340128991_
                               _hd128339128994_
                               _tl128338128996_
                               _e128343128999_
                               _hd128342129002_
                               _tl128341129004_
                               _e128346129007_
                               _hd128345129010_
                               _tl128344129012_
                               _e128349129015_
                               _hd128348129018_
                               _tl128347129020_
                               _e128352129023_
                               _hd128351129026_
                               _tl128350129028_
                               _e128355129031_
                               _hd128354129034_
                               _tl128353129036_
                               _e128358129039_
                               _hd128357129042_
                               _tl128356129044_
                               _e128361129047_
                               _hd128360129050_
                               _tl128359129052_
                               _e128364129055_
                               _hd128363129058_
                               _tl128362129060_
                               _e128367129063_
                               _hd128366129066_
                               _tl128365129068_
                               _e128370129071_
                               _hd128369129074_
                               _tl128368129076_
                               _e128373129079_
                               _hd128372129082_
                               _tl128371129084_
                               ___splice133918133919_
                               _target128374129087_
                               _tl128376129089_)
                        (letrec ((_loop128377129092_
                                  (lambda (_hd128375129095_ _args128381129097_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128375129095_))
                                        (let ((_e128378129100_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128375129095_))))
                                          (let ((_lp-tl128380129105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128378129100_)))
                                                (_lp-hd128379129103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128378129100_))))
                                            (let ((__tmp134577
                                                   (cons _lp-hd128379129103_
                                                         _args128381129097_)))
                                              (declare (not safe))
                                              (_loop128377129092_
                                               _lp-tl128380129105_
                                               __tmp134577))))
                                        (let ((_args128382129108_
                                               (reverse _args128381129097_)))
                                          (let ((_L129111_ _args128382129108_)
                                                (_L129112_ _hd128372129082_)
                                                (_L129113_ _hd128363129058_)
                                                (_L129114_ _hd128354129034_)
                                                (_L129115_ _hd128345129010_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129115_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129114_
                                                        'call-method))
                                                     (let ((__tmp134578
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128274_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129113_
                                                        __tmp134578)))
                                                (___kont133916133917_
                                                 _L129111_
                                                 _L129112_
                                                 _L129113_
                                                 _L129114_
                                                 _L129115_)
                                                (___kont133928133929_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128377129092_ _target128374129087_ '())))))
                     (___match134083134084_
                      (lambda (_e128337128983_
                               _hd128336128986_
                               _tl128335128988_
                               _e128340128991_
                               _hd128339128994_
                               _tl128338128996_
                               _e128343128999_
                               _hd128342129002_
                               _tl128341129004_
                               _e128346129007_
                               _hd128345129010_
                               _tl128344129012_
                               _e128349129015_
                               _hd128348129018_
                               _tl128347129020_
                               _e128352129023_
                               _hd128351129026_
                               _tl128350129028_
                               _e128355129031_
                               _hd128354129034_
                               _tl128353129036_
                               _e128358129039_
                               _hd128357129042_
                               _tl128356129044_
                               _e128361129047_
                               _hd128360129050_
                               _tl128359129052_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128360129050_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128359129052_))
                                (let ((_e128364129055_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128359129052_))))
                                  (let ((_tl128362129060_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128364129055_)))
                                        (_hd128363129058_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128364129055_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128362129060_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128356129044_))
                                            (let ((_e128367129063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128356129044_))))
                                              (let ((_tl128365129068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128367129063_)))
                                                    (_hd128366129066_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128367129063_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128366129066_))
                                                    (let ((_e128370129071_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128366129066_))))
                                                      (let ((_tl128368129076_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128370129071_)))
                    (_hd128369129074_
                     (let () (declare (not safe)) (##car _e128370129071_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128369129074_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128369129074_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128368129076_))
                            (let ((_e128373129079_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128368129076_))))
                              (let ((_tl128371129084_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128373129079_)))
                                    (_hd128372129082_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128373129079_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128371129084_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128365129068_))
                                        (let ((___splice133918133919_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128365129068_
                                                  '0))))
                                          (let ((_tl128376129089_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133918133919_
                                                    '1)))
                                                (_target128374129087_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice133918133919_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128376129089_))
                                                (___match134125134126_
                                                 _e128337128983_
                                                 _hd128336128986_
                                                 _tl128335128988_
                                                 _e128340128991_
                                                 _hd128339128994_
                                                 _tl128338128996_
                                                 _e128343128999_
                                                 _hd128342129002_
                                                 _tl128341129004_
                                                 _e128346129007_
                                                 _hd128345129010_
                                                 _tl128344129012_
                                                 _e128349129015_
                                                 _hd128348129018_
                                                 _tl128347129020_
                                                 _e128352129023_
                                                 _hd128351129026_
                                                 _tl128350129028_
                                                 _e128355129031_
                                                 _hd128354129034_
                                                 _tl128353129036_
                                                 _e128358129039_
                                                 _hd128357129042_
                                                 _tl128356129044_
                                                 _e128361129047_
                                                 _hd128360129050_
                                                 _tl128359129052_
                                                 _e128364129055_
                                                 _hd128363129058_
                                                 _tl128362129060_
                                                 _e128367129063_
                                                 _hd128366129066_
                                                 _tl128365129068_
                                                 _e128370129071_
                                                 _hd128369129074_
                                                 _tl128368129076_
                                                 _e128373129079_
                                                 _hd128372129082_
                                                 _tl128371129084_
                                                 ___splice133918133919_
                                                 _target128374129087_
                                                 _tl128376129089_)
                                                (___kont133928133929_))))
                                        (___kont133928133929_))
                                    (___kont133928133929_))))
                            (___kont133928133929_))
                        (___kont133928133929_))
                    (___kont133928133929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133928133929_))))
                                            (___match134407134408_
                                             _e128337128983_
                                             _hd128336128986_
                                             _tl128335128988_
                                             _e128340128991_
                                             _hd128339128994_
                                             _tl128338128996_
                                             _e128343128999_
                                             _hd128342129002_
                                             _tl128341129004_
                                             _e128346129007_
                                             _hd128345129010_
                                             _tl128344129012_
                                             _e128349129015_
                                             _hd128348129018_
                                             _tl128347129020_
                                             _e128352129023_
                                             _hd128351129026_
                                             _tl128350129028_
                                             _e128355129031_
                                             _hd128354129034_
                                             _tl128353129036_
                                             _e128358129039_
                                             _hd128357129042_
                                             _tl128356129044_))
                                        (___match134407134408_
                                         _e128337128983_
                                         _hd128336128986_
                                         _tl128335128988_
                                         _e128340128991_
                                         _hd128339128994_
                                         _tl128338128996_
                                         _e128343128999_
                                         _hd128342129002_
                                         _tl128341129004_
                                         _e128346129007_
                                         _hd128345129010_
                                         _tl128344129012_
                                         _e128349129015_
                                         _hd128348129018_
                                         _tl128347129020_
                                         _e128352129023_
                                         _hd128351129026_
                                         _tl128350129028_
                                         _e128355129031_
                                         _hd128354129034_
                                         _tl128353129036_
                                         _e128358129039_
                                         _hd128357129042_
                                         _tl128356129044_))))
                                (___match134407134408_
                                 _e128337128983_
                                 _hd128336128986_
                                 _tl128335128988_
                                 _e128340128991_
                                 _hd128339128994_
                                 _tl128338128996_
                                 _e128343128999_
                                 _hd128342129002_
                                 _tl128341129004_
                                 _e128346129007_
                                 _hd128345129010_
                                 _tl128344129012_
                                 _e128349129015_
                                 _hd128348129018_
                                 _tl128347129020_
                                 _e128352129023_
                                 _hd128351129026_
                                 _tl128350129028_
                                 _e128355129031_
                                 _hd128354129034_
                                 _tl128353129036_
                                 _e128358129039_
                                 _hd128357129042_
                                 _tl128356129044_))
                            (___match134193134194_
                             _e128337128983_
                             _hd128336128986_
                             _tl128335128988_
                             _e128340128991_
                             _hd128339128994_
                             _tl128338128996_
                             _e128343128999_
                             _hd128342129002_
                             _tl128341129004_
                             _e128346129007_
                             _hd128345129010_
                             _tl128344129012_
                             _e128349129015_
                             _hd128348129018_
                             _tl128347129020_
                             _e128352129023_
                             _hd128351129026_
                             _tl128350129028_
                             _e128355129031_
                             _hd128354129034_
                             _tl128353129036_
                             _e128358129039_
                             _hd128357129042_
                             _tl128356129044_
                             _e128361129047_
                             _hd128360129050_
                             _tl128359129052_))))
                     (___match134015134016_
                      (lambda (_e128293129175_
                               _hd128292129178_
                               _tl128291129180_
                               _e128296129183_
                               _hd128295129186_
                               _tl128294129188_
                               _e128299129191_
                               _hd128298129194_
                               _tl128297129196_
                               _e128302129199_
                               _hd128301129202_
                               _tl128300129204_
                               _e128305129207_
                               _hd128304129210_
                               _tl128303129212_
                               _e128308129215_
                               _hd128307129218_
                               _tl128306129220_
                               _e128311129223_
                               _hd128310129226_
                               _tl128309129228_
                               _e128314129231_
                               _hd128313129234_
                               _tl128312129236_
                               _e128317129239_
                               _hd128316129242_
                               _tl128315129244_
                               _e128320129247_
                               _hd128319129250_
                               _tl128318129252_
                               ___splice133914133915_
                               _target128321129255_
                               _tl128323129257_)
                        (letrec ((_loop128324129260_
                                  (lambda (_hd128322129263_ _args128328129265_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128322129263_))
                                        (let ((_e128325129268_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128322129263_))))
                                          (let ((_lp-tl128327129273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128325129268_)))
                                                (_lp-hd128326129271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128325129268_))))
                                            (let ((__tmp134579
                                                   (cons _lp-hd128326129271_
                                                         _args128328129265_)))
                                              (declare (not safe))
                                              (_loop128324129260_
                                               _lp-tl128327129273_
                                               __tmp134579))))
                                        (let ((_args128329129276_
                                               (reverse _args128328129265_)))
                                          (let ((_L129279_ _args128329129276_)
                                                (_L129280_ _hd128319129250_)
                                                (_L129281_ _hd128310129226_)
                                                (_L129282_ _hd128301129202_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129282_
                                                        'call-method))
                                                     (let ((__tmp134580
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self128274_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129281_
                                                        __tmp134580)))
                                                (___kont133912133913_
                                                 _L129279_
                                                 _L129280_
                                                 _L129281_
                                                 _L129282_)
                                                (___match134203134204_
                                                 _e128293129175_
                                                 _hd128292129178_
                                                 _tl128291129180_
                                                 _e128296129183_
                                                 _hd128295129186_
                                                 _tl128294129188_
                                                 _e128299129191_
                                                 _hd128298129194_
                                                 _tl128297129196_
                                                 _e128302129199_
                                                 _hd128301129202_
                                                 _tl128300129204_
                                                 _e128305129207_
                                                 _hd128304129210_
                                                 _tl128303129212_
                                                 _e128308129215_
                                                 _hd128307129218_
                                                 _tl128306129220_
                                                 _e128311129223_
                                                 _hd128310129226_
                                                 _tl128309129228_
                                                 _e128314129231_
                                                 _hd128313129234_
                                                 _tl128312129236_
                                                 _e128317129239_
                                                 _hd128316129242_
                                                 _tl128315129244_
                                                 _e128320129247_
                                                 _hd128319129250_
                                                 _tl128318129252_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128324129260_ _target128321129255_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133910133911_))
                    (let ((_e128293129175_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133910133911_))))
                      (let ((_tl128291129180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128293129175_)))
                            (_hd128292129178_
                             (let ()
                               (declare (not safe))
                               (##car _e128293129175_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128291129180_))
                            (let ((_e128296129183_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128291129180_))))
                              (let ((_tl128294129188_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128296129183_)))
                                    (_hd128295129186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128296129183_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128295129186_))
                                    (let ((_e128299129191_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128295129186_))))
                                      (let ((_tl128297129196_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128299129191_)))
                                            (_hd128298129194_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128299129191_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128298129194_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128298129194_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128297129196_))
                                                    (let ((_e128302129199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128297129196_))))
                                                      (let ((_tl128300129204_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128302129199_)))
                    (_hd128301129202_
                     (let () (declare (not safe)) (##car _e128302129199_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128300129204_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128294129188_))
                        (let ((_e128305129207_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128294129188_))))
                          (let ((_tl128303129212_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128305129207_)))
                                (_hd128304129210_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128305129207_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128304129210_))
                                (let ((_e128308129215_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128304129210_))))
                                  (let ((_tl128306129220_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128308129215_)))
                                        (_hd128307129218_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128308129215_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128307129218_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128307129218_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128306129220_))
                                                (let ((_e128311129223_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128306129220_))))
                                                  (let ((_tl128309129228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128311129223_)))
                                                        (_hd128310129226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128311129223_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128309129228_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128303129212_))
                                                            (let ((_e128314129231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128303129212_))))
                      (let ((_tl128312129236_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128314129231_)))
                            (_hd128313129234_
                             (let ()
                               (declare (not safe))
                               (##car _e128314129231_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128313129234_))
                            (let ((_e128317129239_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128313129234_))))
                              (let ((_tl128315129244_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128317129239_)))
                                    (_hd128316129242_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128317129239_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128316129242_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128316129242_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128315129244_))
                                            (let ((_e128320129247_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128315129244_))))
                                              (let ((_tl128318129252_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128320129247_)))
                                                    (_hd128319129250_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128320129247_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128318129252_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128312129236_))
                                                        (let ((___splice133914133915_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128312129236_ '0))))
                  (let ((_tl128323129257_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133914133915_ '1)))
                        (_target128321129255_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice133914133915_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128323129257_))
                        (___match134015134016_
                         _e128293129175_
                         _hd128292129178_
                         _tl128291129180_
                         _e128296129183_
                         _hd128295129186_
                         _tl128294129188_
                         _e128299129191_
                         _hd128298129194_
                         _tl128297129196_
                         _e128302129199_
                         _hd128301129202_
                         _tl128300129204_
                         _e128305129207_
                         _hd128304129210_
                         _tl128303129212_
                         _e128308129215_
                         _hd128307129218_
                         _tl128306129220_
                         _e128311129223_
                         _hd128310129226_
                         _tl128309129228_
                         _e128314129231_
                         _hd128313129234_
                         _tl128312129236_
                         _e128317129239_
                         _hd128316129242_
                         _tl128315129244_
                         _e128320129247_
                         _hd128319129250_
                         _tl128318129252_
                         ___splice133914133915_
                         _target128321129255_
                         _tl128323129257_)
                        (___match134203134204_
                         _e128293129175_
                         _hd128292129178_
                         _tl128291129180_
                         _e128296129183_
                         _hd128295129186_
                         _tl128294129188_
                         _e128299129191_
                         _hd128298129194_
                         _tl128297129196_
                         _e128302129199_
                         _hd128301129202_
                         _tl128300129204_
                         _e128305129207_
                         _hd128304129210_
                         _tl128303129212_
                         _e128308129215_
                         _hd128307129218_
                         _tl128306129220_
                         _e128311129223_
                         _hd128310129226_
                         _tl128309129228_
                         _e128314129231_
                         _hd128313129234_
                         _tl128312129236_
                         _e128317129239_
                         _hd128316129242_
                         _tl128315129244_
                         _e128320129247_
                         _hd128319129250_
                         _tl128318129252_))))
                (___match134203134204_
                 _e128293129175_
                 _hd128292129178_
                 _tl128291129180_
                 _e128296129183_
                 _hd128295129186_
                 _tl128294129188_
                 _e128299129191_
                 _hd128298129194_
                 _tl128297129196_
                 _e128302129199_
                 _hd128301129202_
                 _tl128300129204_
                 _e128305129207_
                 _hd128304129210_
                 _tl128303129212_
                 _e128308129215_
                 _hd128307129218_
                 _tl128306129220_
                 _e128311129223_
                 _hd128310129226_
                 _tl128309129228_
                 _e128314129231_
                 _hd128313129234_
                 _tl128312129236_
                 _e128317129239_
                 _hd128316129242_
                 _tl128315129244_
                 _e128320129247_
                 _hd128319129250_
                 _tl128318129252_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134407134408_
                                                     _e128293129175_
                                                     _hd128292129178_
                                                     _tl128291129180_
                                                     _e128296129183_
                                                     _hd128295129186_
                                                     _tl128294129188_
                                                     _e128299129191_
                                                     _hd128298129194_
                                                     _tl128297129196_
                                                     _e128302129199_
                                                     _hd128301129202_
                                                     _tl128300129204_
                                                     _e128305129207_
                                                     _hd128304129210_
                                                     _tl128303129212_
                                                     _e128308129215_
                                                     _hd128307129218_
                                                     _tl128306129220_
                                                     _e128311129223_
                                                     _hd128310129226_
                                                     _tl128309129228_
                                                     _e128314129231_
                                                     _hd128313129234_
                                                     _tl128312129236_))))
                                            (___match134407134408_
                                             _e128293129175_
                                             _hd128292129178_
                                             _tl128291129180_
                                             _e128296129183_
                                             _hd128295129186_
                                             _tl128294129188_
                                             _e128299129191_
                                             _hd128298129194_
                                             _tl128297129196_
                                             _e128302129199_
                                             _hd128301129202_
                                             _tl128300129204_
                                             _e128305129207_
                                             _hd128304129210_
                                             _tl128303129212_
                                             _e128308129215_
                                             _hd128307129218_
                                             _tl128306129220_
                                             _e128311129223_
                                             _hd128310129226_
                                             _tl128309129228_
                                             _e128314129231_
                                             _hd128313129234_
                                             _tl128312129236_))
                                        (___match134083134084_
                                         _e128293129175_
                                         _hd128292129178_
                                         _tl128291129180_
                                         _e128296129183_
                                         _hd128295129186_
                                         _tl128294129188_
                                         _e128299129191_
                                         _hd128298129194_
                                         _tl128297129196_
                                         _e128302129199_
                                         _hd128301129202_
                                         _tl128300129204_
                                         _e128305129207_
                                         _hd128304129210_
                                         _tl128303129212_
                                         _e128308129215_
                                         _hd128307129218_
                                         _tl128306129220_
                                         _e128311129223_
                                         _hd128310129226_
                                         _tl128309129228_
                                         _e128314129231_
                                         _hd128313129234_
                                         _tl128312129236_
                                         _e128317129239_
                                         _hd128316129242_
                                         _tl128315129244_))
                                    (___match134407134408_
                                     _e128293129175_
                                     _hd128292129178_
                                     _tl128291129180_
                                     _e128296129183_
                                     _hd128295129186_
                                     _tl128294129188_
                                     _e128299129191_
                                     _hd128298129194_
                                     _tl128297129196_
                                     _e128302129199_
                                     _hd128301129202_
                                     _tl128300129204_
                                     _e128305129207_
                                     _hd128304129210_
                                     _tl128303129212_
                                     _e128308129215_
                                     _hd128307129218_
                                     _tl128306129220_
                                     _e128311129223_
                                     _hd128310129226_
                                     _tl128309129228_
                                     _e128314129231_
                                     _hd128313129234_
                                     _tl128312129236_))))
                            (___match134407134408_
                             _e128293129175_
                             _hd128292129178_
                             _tl128291129180_
                             _e128296129183_
                             _hd128295129186_
                             _tl128294129188_
                             _e128299129191_
                             _hd128298129194_
                             _tl128297129196_
                             _e128302129199_
                             _hd128301129202_
                             _tl128300129204_
                             _e128305129207_
                             _hd128304129210_
                             _tl128303129212_
                             _e128308129215_
                             _hd128307129218_
                             _tl128306129220_
                             _e128311129223_
                             _hd128310129226_
                             _tl128309129228_
                             _e128314129231_
                             _hd128313129234_
                             _tl128312129236_))))
                    (___match134345134346_
                     _e128293129175_
                     _hd128292129178_
                     _tl128291129180_
                     _e128296129183_
                     _hd128295129186_
                     _tl128294129188_
                     _e128299129191_
                     _hd128298129194_
                     _tl128297129196_
                     _e128302129199_
                     _hd128301129202_
                     _tl128300129204_
                     _e128305129207_
                     _hd128304129210_
                     _tl128303129212_
                     _e128308129215_
                     _hd128307129218_
                     _tl128306129220_
                     _e128311129223_
                     _hd128310129226_
                     _tl128309129228_))
                (___kont133928133929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont133928133929_))
                                            (___kont133928133929_))
                                        (___kont133928133929_))))
                                (___kont133928133929_))))
                        (___kont133928133929_))
                    (___kont133928133929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont133928133929_))
                                                (___kont133928133929_))
                                            (___kont133928133929_))))
                                    (___kont133928133929_))))
                            (___kont133928133929_))))
                    (___kont133928133929_))))))))))
