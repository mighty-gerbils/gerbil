(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710699093)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp136900 (list gxc#::identity::t))
            (__tmp136898
             (let ((__tmp136899
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136899 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp136900
         '()
         __tmp136898
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args135764_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args135764_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp136901
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
        (make-promise __tmp136901)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx135756_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self135759_
                (let ((__obj136893
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj136893))
               (__tmp136902
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self135759_ _stx135756_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136902
           gxc#current-compile-method
           _self135759_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp136905 (list gxc#::void::t))
            (__tmp136903
             (let ((__tmp136904
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136904 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp136905
         '(receiver methods slots)
         __tmp136903
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args135753_
        (apply make-instance gxc#::collect-object-refs::t _$args135753_)))
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
      (let ((__tmp136906
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
        (make-promise __tmp136906)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136907_
               _receiver135714135719_
               _methods135715135721_
               _slots135716135723_
               _stx135725_)
        (let* ((_receiver135728_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135714135719_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135714135719_))
               (_methods135730_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135715135721_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135715135721_))
               (_slots135732_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135716135723_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135716135723_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self135734_
                  (let ((__obj136895
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
                       __obj136895
                       _receiver135728_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136895
                       _methods135730_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136895
                       _slots135732_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj136895))
                 (__tmp136908
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135734_ _stx135725_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136908
             gxc#current-compile-method
             _self135734_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys135713135741_ . _args135743_)
        (apply gxc#apply-collect-object-refs__%
               _keys135713135741_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135713135741_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135713135741_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135713135741_ 'slots: absent-value))
               _args135743_)))
    (define gxc#apply-collect-object-refs
      (lambda _args135717135749_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args135717135749_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp136911 (list gxc#::basic-xform-expression::t))
            (__tmp136909
             (let ((__tmp136910
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136910 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp136911
         '(receiver klass methods slots)
         __tmp136909
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args135709_
        (apply make-instance gxc#::subst-object-refs::t _$args135709_)))
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
      (let ((__tmp136912
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
        (make-promise __tmp136912)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136913_
               _receiver135665135671_
               _klass135666135673_
               _methods135667135675_
               _slots135668135677_
               _stx135679_)
        (let* ((_receiver135682_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135665135671_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135665135671_))
               (_klass135684_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135666135673_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135666135673_))
               (_methods135686_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135667135675_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135667135675_))
               (_slots135688_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135668135677_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135668135677_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self135690_
                  (let ((__obj136897
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
                       __obj136897
                       _receiver135682_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136897
                       _klass135684_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136897
                       _methods135686_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136897
                       _slots135688_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj136897))
                 (__tmp136914
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135690_ _stx135679_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136914
             gxc#current-compile-method
             _self135690_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135664135697_ . _args135699_)
        (apply gxc#apply-subst-object-refs__%
               _keys135664135697_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135664135697_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135664135697_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135664135697_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135664135697_ 'slots: absent-value))
               _args135699_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135669135705_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135669135705_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self132874_ _stx132875_)
        (letrec ((_generate-method-bind132877_
                  (lambda (_$klass135656_
                           _$method-table135657_
                           _id135658_
                           _$id135659_)
                    (let ((_$tmp135661_
                           (let ((__tmp136915 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136915))))
                      (let ((__tmp136963
                             (let ()
                               (declare (not safe))
                               (cons _$id135659_ '())))
                            (__tmp136916
                             (let ((__tmp136917
                                    (let ((__tmp136918
                                           (let ((__tmp136961
                                                  (let ((__tmp136962
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136962)))
                                                 (__tmp136919
                                                  (let ((__tmp136920
                                                         (let ((__tmp136921
                                                                (let ((__tmp136922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136923
                                      (let ((__tmp136924
                                             (let ((__tmp136944
                                                    (let ((__tmp136945
                                                           (let ((__tmp136960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135661_ '())))
                         (__tmp136946
                          (let ((__tmp136947
                                 (let ((__tmp136948
                                        (let ((__tmp136958
                                               (let ((__tmp136959
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp136959)))
                                              (__tmp136949
                                               (let ((__tmp136956
                                                      (let ((__tmp136957
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135657_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp136957)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp136950
                                                      (let ((__tmp136954
                                                             (let ((__tmp136955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135658_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp136955)))
                    (__tmp136951
                     (let ((__tmp136952
                            (let ((__tmp136953
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136953))))
                       (declare (not safe))
                       (cons __tmp136952 '()))))
                (declare (not safe))
                (cons __tmp136954 __tmp136951))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp136956
                                                       __tmp136950))))
                                          (declare (not safe))
                                          (cons __tmp136958 __tmp136949))))
                                   (declare (not safe))
                                   (cons '%#call __tmp136948))))
                            (declare (not safe))
                            (cons __tmp136947 '()))))
                     (declare (not safe))
                     (cons __tmp136960 __tmp136946))))
              (declare (not safe))
              (cons __tmp136945 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136925
                                                    (let ((__tmp136926
                                                           (let ((__tmp136927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136942
                                 (let ((__tmp136943
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135661_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp136943)))
                                (__tmp136928
                                 (let ((__tmp136940
                                        (let ((__tmp136941
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135661_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp136941)))
                                       (__tmp136929
                                        (let ((__tmp136930
                                               (let ((__tmp136931
                                                      (let ((__tmp136938
                                                             (let ((__tmp136939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp136939)))
                    (__tmp136932
                     (let ((__tmp136936
                            (let ((__tmp136937
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136937)))
                           (__tmp136933
                            (let ((__tmp136934
                                   (let ((__tmp136935
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135658_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp136935))))
                              (declare (not safe))
                              (cons __tmp136934 '()))))
                       (declare (not safe))
                       (cons __tmp136936 __tmp136933))))
                (declare (not safe))
                (cons __tmp136938 __tmp136932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp136931))))
                                          (declare (not safe))
                                          (cons __tmp136930 '()))))
                                   (declare (not safe))
                                   (cons __tmp136940 __tmp136929))))
                            (declare (not safe))
                            (cons __tmp136942 __tmp136928))))
                     (declare (not safe))
                     (cons '%#if __tmp136927))))
              (declare (not safe))
              (cons __tmp136926 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136944
                                                     __tmp136925))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136924))))
                                 (declare (not safe))
                                 (cons __tmp136923 '()))))
                          (declare (not safe))
                          (cons '() __tmp136922))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136920 '()))))
                                             (declare (not safe))
                                             (cons __tmp136961 __tmp136919))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136918))))
                               (declare (not safe))
                               (cons __tmp136917 '()))))
                        (declare (not safe))
                        (cons __tmp136963 __tmp136916)))))
                 (_generate-slot-bind132878_
                  (lambda (_$klass135650_ _id135651_ _$id135652_)
                    (let ((_$tmp135654_
                           (let ((__tmp136964 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136964))))
                      (let ((__tmp137001
                             (let ()
                               (declare (not safe))
                               (cons _$id135652_ '())))
                            (__tmp136965
                             (let ((__tmp136966
                                    (let ((__tmp136967
                                           (let ((__tmp136987
                                                  (let ((__tmp136988
                                                         (let ((__tmp137000
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135654_ '())))
                       (__tmp136989
                        (let ((__tmp136990
                               (let ((__tmp136991
                                      (let ((__tmp136998
                                             (let ((__tmp136999
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp136999)))
                                            (__tmp136992
                                             (let ((__tmp136996
                                                    (let ((__tmp136997
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp136997)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136993
                                                    (let ((__tmp136994
                                                           (let ((__tmp136995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135651_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp136995))))
              (declare (not safe))
              (cons __tmp136994 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136996
                                                     __tmp136993))))
                                        (declare (not safe))
                                        (cons __tmp136998 __tmp136992))))
                                 (declare (not safe))
                                 (cons '%#call __tmp136991))))
                          (declare (not safe))
                          (cons __tmp136990 '()))))
                   (declare (not safe))
                   (cons __tmp137000 __tmp136989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136988 '())))
                                                 (__tmp136968
                                                  (let ((__tmp136969
                                                         (let ((__tmp136970
                                                                (let ((__tmp136985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136986
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135654_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp136986)))
                              (__tmp136971
                               (let ((__tmp136983
                                      (let ((__tmp136984
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135654_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp136984)))
                                     (__tmp136972
                                      (let ((__tmp136973
                                             (let ((__tmp136974
                                                    (let ((__tmp136981
                                                           (let ((__tmp136982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp136982)))
                  (__tmp136975
                   (let ((__tmp136979
                          (let ((__tmp136980
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp136980)))
                         (__tmp136976
                          (let ((__tmp136977
                                 (let ((__tmp136978
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135651_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp136978))))
                            (declare (not safe))
                            (cons __tmp136977 '()))))
                     (declare (not safe))
                     (cons __tmp136979 __tmp136976))))
              (declare (not safe))
              (cons __tmp136981 __tmp136975))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp136974))))
                                        (declare (not safe))
                                        (cons __tmp136973 '()))))
                                 (declare (not safe))
                                 (cons __tmp136983 __tmp136972))))
                          (declare (not safe))
                          (cons __tmp136985 __tmp136971))))
                   (declare (not safe))
                   (cons '%#if __tmp136970))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136969 '()))))
                                             (declare (not safe))
                                             (cons __tmp136987 __tmp136968))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp136967))))
                               (declare (not safe))
                               (cons __tmp136966 '()))))
                        (declare (not safe))
                        (cons __tmp137001 __tmp136965)))))
                 (_generate-specializer-impl132879_
                  (lambda (_$klass135644_
                           _$method-table135645_
                           _methods-bind135646_
                           _slots-bind135647_
                           _specializer-impl135648_)
                    (let ((__tmp137002
                           (let ((__tmp137003
                                  (let ((__tmp137009
                                         (let ((__tmp137010
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135645_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135644_ __tmp137010)))
                                        (__tmp137004
                                         (let ((__tmp137005
                                                (let ((__tmp137006
                                                       (let ((__tmp137008
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135647_ _methods-bind135646_)))
                     (__tmp137007
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135648_ '()))))
                 (declare (not safe))
                 (cons __tmp137008 __tmp137007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137006))))
                                           (declare (not safe))
                                           (cons __tmp137005 '()))))
                                    (declare (not safe))
                                    (cons __tmp137009 __tmp137004))))
                             (declare (not safe))
                             (cons '%#lambda __tmp137003))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137002 _stx132875_))))
                 (_generate-specializer-def132880_
                  (lambda (_id135640_
                           _specializer-id135641_
                           _specializer-impl135642_)
                    (let ((__tmp137011
                           (let ((__tmp137012
                                  (let ((__tmp137013
                                         (let ((__tmp137026
                                                (let ((__tmp137027
                                                       (let ((__tmp137028
                                                              (let ((__tmp137030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135641_ '())))
                            (__tmp137029
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135642_ '()))))
                        (declare (not safe))
                        (cons __tmp137030 __tmp137029))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137027
                                                   _stx132875_)))
                                               (__tmp137014
                                                (let ((__tmp137015
                                                       (let ((__tmp137016
                                                              (let ((__tmp137017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137024
                                    (let ((__tmp137025
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137025)))
                                   (__tmp137018
                                    (let ((__tmp137022
                                           (let ((__tmp137023
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135640_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137023)))
                                          (__tmp137019
                                           (let ((__tmp137020
                                                  (let ((__tmp137021
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137021))))
                                             (declare (not safe))
                                             (cons __tmp137020 '()))))
                                      (declare (not safe))
                                      (cons __tmp137022 __tmp137019))))
                               (declare (not safe))
                               (cons __tmp137024 __tmp137018))))
                        (declare (not safe))
                        (cons '%#call __tmp137017))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137016 _stx132875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137015 '()))))
                                           (declare (not safe))
                                           (cons __tmp137026 __tmp137014))))
                                    (declare (not safe))
                                    (cons _stx132875_ __tmp137013))))
                             (declare (not safe))
                             (cons '%#begin __tmp137012))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137011 _stx132875_)))))
          (let* ((___stx135853135854_ _stx132875_)
                 (_g132883132903_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135853135854_)))))
            (let ((___kont135855135856_
                   (lambda (_L132947_ _L132948_)
                     (let ((_method-calls132967_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs132968_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty132969_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?132971_
                                 (lambda ()
                                   (if (let ((__tmp137032
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls132967_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137032))
                                       (let ((__tmp137031
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs132968_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137031))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L132947_))
                             (let* ((___stx135767135768_ _L132947_)
                                    (_g133358133376_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx135767135768_)))))
                               (let ((___kont135769135770_
                                      (lambda (_L133412_ _L133413_ _L133414_)
                                        (for-each
                                         (lambda (_g133429133431_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133429133431_
                                              'receiver:
                                              _L133414_
                                              'methods:
                                              _method-calls132967_
                                              'slots:
                                              _slot-refs132968_)))
                                         _L133412_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?132971_))
                                            _stx132875_
                                            (let* ((_specializer-id133440_
                                                    (let* ((_id133434_
                                                            (let ((__tmp137154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L132948_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137154 '"::specialize")))
                   (_specializer-id133437_
                    (let ((__tmp137155
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx132875_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133434_ __tmp137155))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133437_))
              _specializer-id133437_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133442_
                                                    (let ((__tmp137156
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137156)))
                                                   (_$method-table133444_
                                                    (let ((__tmp137157
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137157)))
                                                   (_methods133446_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls132967_)))
                                                   (_$methods133450_
                                                    (map (lambda (_id133448_)
                                                           (let ((__tmp137158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133448_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137158)))
                 _methods133446_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137159_
                                                    (for-each
                                                     (lambda (_g133451133454_
                                                              _g133452133456_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls132967_
                                                          _g133451133454_
                                                          _g133452133456_)))
                                                     _methods133446_
                                                     _$methods133450_))
                                                   (_methods-bind133467_
                                                    (map (lambda (_g133459133462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133460133464_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind132877_
                      _$klass133442_
                      _$method-table133444_
                      _g133459133462_
                      _g133460133464_)))
                 _methods133446_
                 _$methods133450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133469_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs132968_)))
                                                   (_$slots133473_
                                                    (map (lambda (_id133471_)
                                                           (let ((__tmp137160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133471_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137160)))
                 _slots133469_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137161_
                                                    (for-each
                                                     (lambda (_g133474133477_
                                                              _g133475133479_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs132968_
                                                          _g133474133477_
                                                          _g133475133479_)))
                                                     _slots133469_
                                                     _$slots133473_))
                                                   (_slots-bind133490_
                                                    (map (lambda (_g133482133485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133483133487_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind132878_
                      _$klass133442_
                      _g133482133485_
                      _g133483133487_)))
                 _slots133469_
                 _$slots133473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133496_
                                                    (map (lambda (_g133491133493_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133491133493_
                                                              'receiver:
                                                              _L133414_
                                                              'klass:
                                                              _$klass133442_
                                                              'methods:
                                                              _method-calls132967_
                                                              'slots:
                                                              _slot-refs132968_)))
                                                         _L133412_))
                                                   (_specializer-impl133498_
                                                    (let ((__tmp137162
                                                           (let ((__tmp137163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137164
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133414_ _L133413_))))
                            (declare (not safe))
                            (cons __tmp137164 _specializer-body133496_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137163))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137162 _stx132875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133500_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl132879_
                                                       _$klass133442_
                                                       _$method-table133444_
                                                       _methods-bind133467_
                                                       _slots-bind133490_
                                                       _specializer-impl133498_))))
                                              (let ((__tmp137166
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L132948_)))
                                                    (__tmp137165
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133440_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137166
                                                 '" => "
                                                 __tmp137165))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def132880_
                                                 _L132948_
                                                 _specializer-id133440_
                                                 _specializer-impl133500_))))))
                                     (___kont135771135772_
                                      (lambda () _stx132875_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx135767135768_))
                                     (let ((_e133365133388_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx135767135768_))))
                                       (let ((_tl133363133393_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133365133388_)))
                                             (_hd133364133391_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133365133388_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133363133393_))
                                             (let ((_e133368133396_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133363133393_))))
                                               (let ((_tl133366133401_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133368133396_)))
                                                     (_hd133367133399_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133368133396_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133367133399_))
                                                     (let ((_e133371133404_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133367133399_))))
                                                       (let ((_tl133369133409_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133371133404_)))
                     (_hd133370133407_
                      (let () (declare (not safe)) (##car _e133371133404_))))
                 (___kont135769135770_
                  _tl133366133401_
                  _tl133369133409_
                  _hd133370133407_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135771135772_))))
                                             (___kont135771135772_))))
                                     (___kont135771135772_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L132947_))
                                 (let* ((_g133506133525_
                                         (lambda (_g133507133522_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133507133522_))))
                                        (_g133505133808_
                                         (lambda (_g133507133528_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133507133528_))
                                               (let ((_e133511133530_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133507133528_))))
                                                 (let ((_hd133510133533_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133511133530_)))
                                                       (_tl133509133535_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133511133530_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133509133535_))
                                                       (let ((_g137137_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133509133535_ '0))))
                 (begin
                   (let ((_g137138_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137137_)
                                (##vector-length _g137137_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137138_ 2)))
                         (error "Context expects 2 values" _g137138_)))
                   (let ((_target133512133538_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137137_ 0)))
                         (_tl133514133540_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137137_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133514133540_))
                         (letrec ((_loop133515133543_
                                   (lambda (_hd133513133546_
                                            _clause133519133548_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133513133546_))
                                         (let ((_e133516133551_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133513133546_))))
                                           (let ((_lp-hd133517133554_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133516133551_)))
                                                 (_lp-tl133518133556_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133516133551_))))
                                             (let ((__tmp137153
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133517133554_
                                                            _clause133519133548_))))
                                               (declare (not safe))
                                               (_loop133515133543_
                                                _lp-tl133518133556_
                                                __tmp137153))))
                                         (let ((_clause133520133559_
                                                (reverse _clause133519133548_)))
                                           ((lambda (_L133562_)
                                              (for-each
                                               (lambda (_clause133575_)
                                                 (let* ((___stx135793135794_
                                                         _clause133575_)
                                                        (_g133578133593_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx135793135794_)))))
                                                   (let ((___kont135795135796_
                                                          (lambda (_L133621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133622_
                           _L133623_)
                    (for-each
                     (lambda (_g133638133640_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133638133640_
                          'receiver:
                          _L133623_
                          'methods:
                          _method-calls132967_
                          'slots:
                          _slot-refs132968_)))
                     _L133621_)))
                 (___kont135797135798_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx135793135794_))
                                                         (let ((_e133585133605_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx135793135794_))))
                   (let ((_tl133583133610_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133585133605_)))
                         (_hd133584133608_
                          (let ()
                            (declare (not safe))
                            (##car _e133585133605_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133584133608_))
                         (let ((_e133588133613_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133584133608_))))
                           (let ((_tl133586133618_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133588133613_)))
                                 (_hd133587133616_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133588133613_))))
                             (___kont135795135796_
                              _tl133583133610_
                              _tl133586133618_
                              _hd133587133616_)))
                         (___kont135797135798_))))
                 (___kont135797135798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137139
                                                      (lambda (_g133645133648_
                                                               _g133646133650_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133645133648_
                                                                _g133646133650_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137139
                                                         '()
                                                         _L133562_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132971_))
                                                  _stx132875_
                                                  (let* ((_specializer-id133659_
                                                          (let* ((_id133653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137140
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132948_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137140 '"::specialize")))
                         (_specializer-id133656_
                          (let ((__tmp137141
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132875_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133653_ __tmp137141))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133656_))
                    _specializer-id133656_))
                 (_$klass133661_
                  (let ((__tmp137142 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137142)))
                 (_$method-table133663_
                  (let ((__tmp137143 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137143)))
                 (_methods133665_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132967_)))
                 (_$methods133669_
                  (map (lambda (_id133667_)
                         (let ((__tmp137144 (gensym _id133667_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137144)))
                       _methods133665_))
                 (_g137145_
                  (for-each
                   (lambda (_g133670133673_ _g133671133675_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132967_
                        _g133670133673_
                        _g133671133675_)))
                   _methods133665_
                   _$methods133669_))
                 (_methods-bind133686_
                  (map (lambda (_g133678133681_ _g133679133683_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132877_
                            _$klass133661_
                            _$method-table133663_
                            _g133678133681_
                            _g133679133683_)))
                       _methods133665_
                       _$methods133669_))
                 (_slots133688_
                  (let () (declare (not safe)) (hash-keys _slot-refs132968_)))
                 (_$slots133692_
                  (map (lambda (_id133690_)
                         (let ((__tmp137146 (gensym _id133690_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137146)))
                       _slots133688_))
                 (_g137147_
                  (for-each
                   (lambda (_g133693133696_ _g133694133698_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132968_
                        _g133693133696_
                        _g133694133698_)))
                   _slots133688_
                   _$slots133692_))
                 (_slots-bind133709_
                  (map (lambda (_g133701133704_ _g133702133706_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132878_
                            _$klass133661_
                            _g133701133704_
                            _g133702133706_)))
                       _slots133688_
                       _$slots133692_))
                 (_specializer-clauses133801_
                  (map (lambda (_clause133711_)
                         (let* ((___stx135813135814_ _clause133711_)
                                (_g133714133729_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx135813135814_)))))
                           (let ((___kont135815135816_
                                  (lambda (_L133757_ _L133758_ _L133759_)
                                    (let* ((_body133789_
                                            (map (lambda (_g133784133786_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g133784133786_
                                                      'receiver:
                                                      _L133759_
                                                      'klass:
                                                      _$klass133661_
                                                      'methods:
                                                      _method-calls132967_
                                                      'slots:
                                                      _slot-refs132968_)))
                                                 _L133757_))
                                           (__tmp137148
                                            (let ()
                                              (declare (not safe))
                                              (cons _L133759_ _L133758_))))
                                      (declare (not safe))
                                      (cons __tmp137148 _body133789_))))
                                 (___kont135817135818_
                                  (lambda () _clause133711_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx135813135814_))
                                 (let ((_e133721133741_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx135813135814_))))
                                   (let ((_tl133719133746_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e133721133741_)))
                                         (_hd133720133744_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e133721133741_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133720133744_))
                                         (let ((_e133724133749_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133720133744_))))
                                           (let ((_tl133722133754_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133724133749_)))
                                                 (_hd133723133752_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133724133749_))))
                                             (___kont135815135816_
                                              _tl133719133746_
                                              _tl133722133754_
                                              _hd133723133752_)))
                                         (___kont135817135818_))))
                                 (___kont135817135818_)))))
                       (let ((__tmp137149
                              (lambda (_g133793133796_ _g133794133798_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g133793133796_ _g133794133798_)))))
                         (declare (not safe))
                         (foldr1 __tmp137149 '() _L133562_))))
                 (_specializer-impl133803_
                  (let ((__tmp137150
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses133801_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137150 _stx132875_)))
                 (_specializer-impl133805_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132879_
                     _$klass133661_
                     _$method-table133663_
                     _methods-bind133686_
                     _slots-bind133709_
                     _specializer-impl133803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137152
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132948_)))
                                                          (__tmp137151
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133659_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137152
                                                       '" => "
                                                       __tmp137151))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132880_
                                                       _L132948_
                                                       _specializer-id133659_
                                                       _specializer-impl133805_)))))
                                            _clause133520133559_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133515133543_ _target133512133538_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133506133525_ _g133507133528_))))))
               (let ()
                 (declare (not safe))
                 (_g133506133525_ _g133507133528_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133506133525_
                                                  _g133507133528_))))))
                                   (declare (not safe))
                                   (_g133505133808_ _L132947_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L132947_))
                                     (let* ((_g133811133841_
                                             (lambda (_g133812133838_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133812133838_))))
                                            (_g133810134446_
                                             (lambda (_g133812133844_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133812133844_))
                                                   (let ((_e133818133846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133812133844_))))
                                                     (let ((_hd133817133849_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133818133846_)))
                                                           (_tl133816133851_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133818133846_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133816133851_))
                                                           (let ((_e133821133854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133816133851_))))
                     (let ((_hd133820133857_
                            (let ()
                              (declare (not safe))
                              (##car _e133821133854_)))
                           (_tl133819133859_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133821133854_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133820133857_))
                           (let ((_e133824133862_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133820133857_))))
                             (let ((_hd133823133865_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133824133862_)))
                                   (_tl133822133867_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133824133862_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133823133865_))
                                   (let ((_e133827133870_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133823133865_))))
                                     (let ((_hd133826133873_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133827133870_)))
                                           (_tl133825133875_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133827133870_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd133826133873_))
                                           (let ((_e133830133878_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd133826133873_))))
                                             (let ((_hd133829133881_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133830133878_)))
                                                   (_tl133828133883_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133830133878_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133828133883_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl133825133875_))
                                                       (let ((_e133833133886_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl133825133875_))))
                 (let ((_hd133832133889_
                        (let () (declare (not safe)) (##car _e133833133886_)))
                       (_tl133831133891_
                        (let () (declare (not safe)) (##cdr _e133833133886_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133831133891_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133822133867_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133819133859_))
                               (let ((_e133836133894_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133819133859_))))
                                 (let ((_hd133835133897_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133836133894_)))
                                       (_tl133834133899_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133836133894_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133834133899_))
                                       ((lambda (_L133902_ _L133903_ _L133904_)
                                          (let* ((_g133927133945_
                                                  (lambda (_g133928133942_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133928133942_))))
                                                 (_g133926133996_
                                                  (lambda (_g133928133948_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133928133948_))
                                                        (let ((_e133934133950_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133928133948_))))
                  (let ((_hd133933133953_
                         (let () (declare (not safe)) (##car _e133934133950_)))
                        (_tl133932133955_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133934133950_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl133932133955_))
                        (let ((_e133937133958_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl133932133955_))))
                          (let ((_hd133936133961_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e133937133958_)))
                                (_tl133935133963_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e133937133958_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd133936133961_))
                                (let ((_e133940133966_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd133936133961_))))
                                  (let ((_hd133939133969_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133940133966_)))
                                        (_tl133938133971_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133940133966_))))
                                    ((lambda (_L133974_ _L133975_ _L133976_)
                                       (for-each
                                        (lambda (_g133991133993_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g133991133993_
                                             'receiver:
                                             _L133976_
                                             'methods:
                                             _method-calls132967_
                                             'slots:
                                             _slot-refs132968_)))
                                        _L133974_))
                                     _tl133935133963_
                                     _tl133938133971_
                                     _hd133939133969_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133927133945_ _g133928133948_)))))
                        (let ()
                          (declare (not safe))
                          (_g133927133945_ _g133928133948_)))))
                (let ()
                  (declare (not safe))
                  (_g133927133945_ _g133928133948_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133926133996_ _L133903_))
                                          (let* ((_g133999134018_
                                                  (lambda (_g134000134015_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g134000134015_))))
                                                 (_g133998134137_
                                                  (lambda (_g134000134021_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g134000134021_))
                                                        (let ((_e134004134023_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g134000134021_))))
                  (let ((_hd134003134026_
                         (let () (declare (not safe)) (##car _e134004134023_)))
                        (_tl134002134028_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134004134023_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134002134028_))
                        (let ((_g137107_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl134002134028_
                                  '0))))
                          (begin
                            (let ((_g137108_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137107_)
                                         (##vector-length _g137107_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137108_ 2)))
                                  (error "Context expects 2 values"
                                         _g137108_)))
                            (let ((_target134005134031_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137107_ 0)))
                                  (_tl134007134033_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137107_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl134007134033_))
                                  (letrec ((_loop134008134036_
                                            (lambda (_hd134006134039_
                                                     _clause134012134041_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd134006134039_))
                                                  (let ((_e134009134044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd134006134039_))))
                                                    (let ((_lp-hd134010134047_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134009134044_)))
                                                          (_lp-tl134011134049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134009134044_))))
                                                      (let ((__tmp137110
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134010134047_ _clause134012134041_))))
                (declare (not safe))
                (_loop134008134036_ _lp-tl134011134049_ __tmp137110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134013134052_
                                                         (reverse _clause134012134041_)))
                                                    ((lambda (_L134055_)
                                                       (for-each
                                                        (lambda (_clause134068_)
                                                          (let* ((_g134070134085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134071134082_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134071134082_))))
                         (_g134069134127_
                          (lambda (_g134071134088_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134071134088_))
                                (let ((_e134077134090_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134071134088_))))
                                  (let ((_hd134076134093_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134077134090_)))
                                        (_tl134075134095_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134077134090_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134076134093_))
                                        (let ((_e134080134098_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134076134093_))))
                                          (let ((_hd134079134101_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134080134098_)))
                                                (_tl134078134103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134080134098_))))
                                            ((lambda (_L134106_
                                                      _L134107_
                                                      _L134108_)
                                               (for-each
                                                (lambda (_g134122134124_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134122134124_
                                                     'receiver:
                                                     _L134108_
                                                     'methods:
                                                     _method-calls132967_
                                                     'slots:
                                                     _slot-refs132968_)))
                                                _L134106_))
                                             _tl134075134095_
                                             _tl134078134103_
                                             _hd134079134101_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134070134085_ _g134071134088_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134070134085_ _g134071134088_))))))
                    (declare (not safe))
                    (_g134069134127_ _clause134068_)))
                (let ((__tmp137109
                       (lambda (_g134129134132_ _g134130134134_)
                         (let ()
                           (declare (not safe))
                           (cons _g134129134132_ _g134130134134_)))))
                  (declare (not safe))
                  (foldr1 __tmp137109 '() _L134055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134013134052_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop134008134036_
                                       _target134005134031_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g133999134018_ _g134000134021_))))))
                        (let ()
                          (declare (not safe))
                          (_g133999134018_ _g134000134021_)))))
                (let ()
                  (declare (not safe))
                  (_g133999134018_ _g134000134021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133998134137_ _L133902_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?132971_))
                                              _stx132875_
                                              (let* ((_specializer-id134146_
                                                      (let* ((_id134140_
                                                              (let ((__tmp137111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L132948_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137111 '"::specialize")))
                     (_specializer-id134143_
                      (let ((__tmp137112
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx132875_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134140_ __tmp137112))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134143_))
                _specializer-id134143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134148_
                                                      (let ((__tmp137113
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137113)))
                                                     (_$method-table134150_
                                                      (let ((__tmp137114
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137114)))
                                                     (_methods134152_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls132967_)))
                                                     (_$methods134156_
                                                      (map (lambda (_id134154_)
                                                             (let ((__tmp137115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134154_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137115)))
                   _methods134152_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137116_
                                                      (for-each
                                                       (lambda (_g134157134160_
                                                                _g134158134162_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls132967_
                                                            _g134157134160_
                                                            _g134158134162_)))
                                                       _methods134152_
                                                       _$methods134156_))
                                                     (_methods-bind134173_
                                                      (map (lambda (_g134165134168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134166134170_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind132877_
                        _$klass134148_
                        _$method-table134150_
                        _g134165134168_
                        _g134166134170_)))
                   _methods134152_
                   _$methods134156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134175_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs132968_)))
                                                     (_$slots134179_
                                                      (map (lambda (_id134177_)
                                                             (let ((__tmp137117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134177_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137117)))
                   _slots134175_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137118_
                                                      (for-each
                                                       (lambda (_g134180134183_
                                                                _g134181134185_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs132968_
                                                            _g134180134183_
                                                            _g134181134185_)))
                                                       _slots134175_
                                                       _$slots134179_))
                                                     (_slots-bind134196_
                                                      (map (lambda (_g134188134191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134189134193_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind132878_
                        _$klass134148_
                        _g134188134191_
                        _g134189134193_)))
                   _slots134175_
                   _$slots134179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134282_
                                                      (let* ((_g134198134216_
                                                              (lambda (_g134199134213_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134199134213_))))
                     (_g134197134279_
                      (lambda (_g134199134219_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134199134219_))
                            (let ((_e134205134221_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134199134219_))))
                              (let ((_hd134204134224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134205134221_)))
                                    (_tl134203134226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134205134221_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134203134226_))
                                    (let ((_e134208134229_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134203134226_))))
                                      (let ((_hd134207134232_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134208134229_)))
                                            (_tl134206134234_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134208134229_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134207134232_))
                                            (let ((_e134211134237_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134207134232_))))
                                              (let ((_hd134210134240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134211134237_)))
                                                    (_tl134209134242_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134211134237_))))
                                                ((lambda (_L134245_
                                                          _L134246_
                                                          _L134247_)
                                                   (let* ((_body134277_
                                                           (map (lambda (_g134272134274_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134272134274_
                             'receiver:
                             _L134247_
                             'klass:
                             _$klass134148_
                             'methods:
                             _method-calls132967_
                             'slots:
                             _slot-refs132968_)))
                        _L134245_))
                  (__tmp137119
                   (let ((__tmp137120
                          (let ((__tmp137121
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134247_ _L134246_))))
                            (declare (not safe))
                            (cons __tmp137121 _body134277_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137119
                                                      _L133903_)))
                                                 _tl134206134234_
                                                 _tl134209134242_
                                                 _hd134210134240_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134198134216_
                                               _g134199134219_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134198134216_ _g134199134219_)))))
                            (let ()
                              (declare (not safe))
                              (_g134198134216_ _g134199134219_))))))
                (declare (not safe))
                (_g134197134279_ _L133903_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134439_
                                                      (let* ((_g134284134303_
                                                              (lambda (_g134285134300_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134285134300_))))
                     (_g134283134436_
                      (lambda (_g134285134306_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134285134306_))
                            (let ((_e134289134308_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134285134306_))))
                              (let ((_hd134288134311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134289134308_)))
                                    (_tl134287134313_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134289134308_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134287134313_))
                                    (let ((_g137122_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134287134313_
                                              '0))))
                                      (begin
                                        (let ((_g137123_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137122_)
                                                     (##vector-length
                                                      _g137122_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137123_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137123_)))
                                        (let ((_target134290134316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137122_ 0)))
                                              (_tl134292134318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137122_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134292134318_))
                                              (letrec ((_loop134293134321_
                                                        (lambda (_hd134291134324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134297134326_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134291134324_))
                      (let ((_e134294134329_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134291134324_))))
                        (let ((_lp-hd134295134332_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134294134329_)))
                              (_lp-tl134296134334_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134294134329_))))
                          (let ((__tmp137127
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134295134332_
                                         _clause134297134326_))))
                            (declare (not safe))
                            (_loop134293134321_
                             _lp-tl134296134334_
                             __tmp137127))))
                      (let ((_clause134298134337_
                             (reverse _clause134297134326_)))
                        ((lambda (_L134340_)
                           (let* ((_clauses134434_
                                   (map (lambda (_clause134354_)
                                          (let* ((___stx135833135834_
                                                  _clause134354_)
                                                 (_g134357134372_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135833135834_)))))
                                            (let ((___kont135835135836_
                                                   (lambda (_L134400_
                                                            _L134401_
                                                            _L134402_)
                                                     (let* ((_body134422_
                                                             (map (lambda (_g134417134419_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134417134419_
                               'receiver:
                               _L134402_
                               'klass:
                               _$klass134148_
                               'methods:
                               _method-calls132967_
                               'slots:
                               _slot-refs132968_)))
                          _L134400_))
                    (__tmp137124
                     (let () (declare (not safe)) (cons _L134402_ _L134401_))))
               (declare (not safe))
               (cons __tmp137124 _body134422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135837135838_
                                                   (lambda () _clause134354_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx135833135834_))
                                                  (let ((_e134364134384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx135833135834_))))
                                                    (let ((_tl134362134389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134364134384_)))
                                                          (_hd134363134387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134364134384_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134363134387_))
                                                          (let ((_e134367134392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134363134387_))))
                    (let ((_tl134365134397_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134367134392_)))
                          (_hd134366134395_
                           (let ()
                             (declare (not safe))
                             (##car _e134367134392_))))
                      (___kont135835135836_
                       _tl134362134389_
                       _tl134365134397_
                       _hd134366134395_)))
                  (___kont135837135838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135837135838_)))))
                                        (let ((__tmp137125
                                               (lambda (_g134426134429_
                                                        _g134427134431_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134426134429_
                                                         _g134427134431_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137125 '() _L134340_))))
                                  (__tmp137126
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134434_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137126 _L133902_)))
                         _clause134298134337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134293134321_
                                                   _target134290134316_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134284134303_
                                                 _g134285134306_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134284134303_ _g134285134306_)))))
                            (let ()
                              (declare (not safe))
                              (_g134284134303_ _g134285134306_))))))
                (declare (not safe))
                (_g134283134436_ _L133902_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134441_
                                                      (let ((__tmp137128
                                                             (let ((__tmp137129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137131
                                   (let ((__tmp137132
                                          (let ((__tmp137134
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133904_ '())))
                                                (__tmp137133
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134282_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137134 __tmp137133))))
                                     (declare (not safe))
                                     (cons __tmp137132 '())))
                                  (__tmp137130
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134439_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137131 __tmp137130))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137129))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137128 _stx132875_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134443_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl132879_
                                                         _$klass134148_
                                                         _$method-table134150_
                                                         _methods-bind134173_
                                                         _slots-bind134196_
                                                         _specializer-impl134441_))))
                                                (let ((__tmp137136
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L132948_)))
                                                      (__tmp137135
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134146_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137136
                                                   '" => "
                                                   __tmp137135))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def132880_
                                                   _L132948_
                                                   _specializer-id134146_
                                                   _specializer-impl134443_)))))
                                        _hd133835133897_
                                        _hd133832133889_
                                        _hd133829133881_)
                                       (let ()
                                         (declare (not safe))
                                         (_g133811133841_ _g133812133844_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133811133841_ _g133812133844_)))
                           (let ()
                             (declare (not safe))
                             (_g133811133841_ _g133812133844_)))
                       (let ()
                         (declare (not safe))
                         (_g133811133841_ _g133812133844_)))))
               (let () (declare (not safe)) (_g133811133841_ _g133812133844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133811133841_
                                                      _g133812133844_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133811133841_
                                              _g133812133844_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133811133841_ _g133812133844_)))))
                           (let ()
                             (declare (not safe))
                             (_g133811133841_ _g133812133844_)))))
                   (let ()
                     (declare (not safe))
                     (_g133811133841_ _g133812133844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133811133841_
                                                      _g133812133844_))))))
                                       (declare (not safe))
                                       (_g133810134446_ _L132947_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L132947_))
                                         (let* ((_g134449134502_
                                                 (lambda (_g134450134499_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134450134499_))))
                                                (_g134448135633_
                                                 (lambda (_g134450134505_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134450134505_))
                                                       (let ((_e134458134507_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134450134505_))))
                 (let ((_hd134457134510_
                        (let () (declare (not safe)) (##car _e134458134507_)))
                       (_tl134456134512_
                        (let () (declare (not safe)) (##cdr _e134458134507_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134457134510_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134457134510_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134456134512_))
                               (let ((_e134461134515_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134456134512_))))
                                 (let ((_hd134460134518_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134461134515_)))
                                       (_tl134459134520_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134461134515_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134460134518_))
                                       (let ((_e134464134523_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134460134518_))))
                                         (let ((_hd134463134526_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134464134523_)))
                                               (_tl134462134528_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134464134523_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134463134526_))
                                               (let ((_e134467134531_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134463134526_))))
                                                 (let ((_hd134466134534_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134467134531_)))
                                                       (_tl134465134536_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134467134531_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134466134534_))
                                                       (let ((_e134470134539_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134466134534_))))
                 (let ((_hd134469134542_
                        (let () (declare (not safe)) (##car _e134470134539_)))
                       (_tl134468134544_
                        (let () (declare (not safe)) (##cdr _e134470134539_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134468134544_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134465134536_))
                           (let ((_e134473134547_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134465134536_))))
                             (let ((_hd134472134550_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134473134547_)))
                                   (_tl134471134552_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134473134547_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134472134550_))
                                   (let ((_e134476134555_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134472134550_))))
                                     (let ((_hd134475134558_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134476134555_)))
                                           (_tl134474134560_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134476134555_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134475134558_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134475134558_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134474134560_))
                                                   (let ((_e134479134563_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134474134560_))))
                                                     (let ((_hd134478134566_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134479134563_)))
                                                           (_tl134477134568_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134479134563_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134478134566_))
                                                           (let ((_e134482134571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134478134566_))))
                     (let ((_hd134481134574_
                            (let ()
                              (declare (not safe))
                              (##car _e134482134571_)))
                           (_tl134480134576_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134482134571_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134481134574_))
                           (let ((_e134485134579_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134481134574_))))
                             (let ((_hd134484134582_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134485134579_)))
                                   (_tl134483134584_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134485134579_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134484134582_))
                                   (let ((_e134488134587_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134484134582_))))
                                     (let ((_hd134487134590_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134488134587_)))
                                           (_tl134486134592_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134488134587_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134486134592_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134483134584_))
                                               (let ((_e134491134595_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134483134584_))))
                                                 (let ((_hd134490134598_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134491134595_)))
                                                       (_tl134489134600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134491134595_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134489134600_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134480134576_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134477134568_))
                       (let ((_e134494134603_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134477134568_))))
                         (let ((_hd134493134606_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134494134603_)))
                               (_tl134492134608_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134494134603_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134492134608_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134471134552_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134462134528_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134459134520_))
                                           (let ((_e134497134611_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134459134520_))))
                                             (let ((_hd134496134614_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134497134611_)))
                                                   (_tl134495134616_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134497134611_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134495134616_))
                                                   ((lambda (_L134619_
                                                             _L134620_
                                                             _L134621_
                                                             _L134622_
                                                             _L134623_)
                                                      (let* ((_g134662134724_
                                                              (lambda (_g134663134721_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134663134721_))))
                     (_g134661135630_
                      (lambda (_g134663134727_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134663134727_))
                            (let ((_e134671134729_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134663134727_))))
                              (let ((_hd134670134732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134671134729_)))
                                    (_tl134669134734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134671134729_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134670134732_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134670134732_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134669134734_))
                                            (let ((_e134674134737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134669134734_))))
                                              (let ((_hd134673134740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134674134737_)))
                                                    (_tl134672134742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134674134737_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134672134742_))
                                                    (let ((_e134677134745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134672134742_))))
                                                      (let ((_hd134676134748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134677134745_)))
                    (_tl134675134750_
                     (let () (declare (not safe)) (##cdr _e134677134745_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd134676134748_))
                    (let ((_e134680134753_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd134676134748_))))
                      (let ((_hd134679134756_
                             (let ()
                               (declare (not safe))
                               (##car _e134680134753_)))
                            (_tl134678134758_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134680134753_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd134679134756_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd134679134756_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134678134758_))
                                    (let ((_e134683134761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134678134758_))))
                                      (let ((_hd134682134764_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134683134761_)))
                                            (_tl134681134766_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134683134761_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134682134764_))
                                            (let ((_e134686134769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134682134764_))))
                                              (let ((_hd134685134772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134686134769_)))
                                                    (_tl134684134774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134686134769_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd134685134772_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd134685134772_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl134684134774_))
                                                            (let ((_e134689134777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl134684134774_))))
                      (let ((_hd134688134780_
                             (let ()
                               (declare (not safe))
                               (##car _e134689134777_)))
                            (_tl134687134782_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134689134777_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134687134782_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl134681134766_))
                                (let ((_e134692134785_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl134681134766_))))
                                  (let ((_hd134691134788_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134692134785_)))
                                        (_tl134690134790_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134692134785_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134691134788_))
                                        (let ((_e134695134793_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134691134788_))))
                                          (let ((_hd134694134796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134695134793_)))
                                                (_tl134693134798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134695134793_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd134694134796_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd134694134796_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl134693134798_))
                                                        (let ((_e134698134801_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl134693134798_))))
                  (let ((_hd134697134804_
                         (let () (declare (not safe)) (##car _e134698134801_)))
                        (_tl134696134806_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134698134801_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl134696134806_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134690134790_))
                            (let ((_e134701134809_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134690134790_))))
                              (let ((_hd134700134812_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134701134809_)))
                                    (_tl134699134814_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134701134809_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd134700134812_))
                                    (let ((_e134704134817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd134700134812_))))
                                      (let ((_hd134703134820_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134704134817_)))
                                            (_tl134702134822_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134704134817_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd134703134820_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd134703134820_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134702134822_))
                                                    (let ((_e134707134825_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134702134822_))))
                                                      (let ((_hd134706134828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134707134825_)))
                    (_tl134705134830_
                     (let () (declare (not safe)) (##cdr _e134707134825_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl134705134830_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134699134814_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl134699134814_))
                                  '1)
                            (let ((_g137033_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134699134814_
                                      '1))))
                              (begin
                                (let ((_g137034_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137033_)
                                             (##vector-length _g137033_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137034_ 2)))
                                      (error "Context expects 2 values"
                                             _g137034_)))
                                (let ((_target134708134833_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137033_ 0)))
                                      (_tl134710134835_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137033_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl134710134835_))
                                      (let ((_e134719134838_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl134710134835_))))
                                        (let ((_hd134718134841_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e134719134838_)))
                                              (_tl134717134843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e134719134838_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134717134843_))
                                              (letrec ((_loop134711134846_
                                                        (lambda (_hd134709134849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref134715134851_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134709134849_))
                      (let ((_e134712134854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134709134849_))))
                        (let ((_lp-hd134713134857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134712134854_)))
                              (_lp-tl134714134859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134712134854_))))
                          (let ((__tmp137106
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134713134857_
                                         _kw-ref134715134851_))))
                            (declare (not safe))
                            (_loop134711134846_
                             _lp-tl134714134859_
                             __tmp137106))))
                      (let ((_kw-ref134716134862_
                             (reverse _kw-ref134715134851_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134675134750_))
                            ((lambda (_L134865_
                                      _L134866_
                                      _L134867_
                                      _L134868_
                                      _L134869_)
                               (let* ((_kw-count134920_
                                       (length (let ((__tmp137035
                                                      (lambda (_g134912134915_
                                                               _g134913134917_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134912134915_
                                                                _g134913134917_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137035
                                                         '()
                                                         _L134866_))))
                                      (_self-index134922_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134920_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134621_))
                                     (let* ((_g134925134939_
                                             (lambda (_g134926134936_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134926134936_))))
                                            (_g134924135052_
                                             (lambda (_g134926134942_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134926134942_))
                                                   (let ((_e134931134944_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134926134942_))))
                                                     (let ((_hd134930134947_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134931134944_)))
                                                           (_tl134929134949_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134931134944_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134929134949_))
                                                           (let ((_e134934134952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134929134949_))))
                     (let ((_hd134933134955_
                            (let ()
                              (declare (not safe))
                              (##car _e134934134952_)))
                           (_tl134932134957_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134934134952_))))
                       ((lambda (_L134960_ _L134961_)
                          (let ((_self134977_
                                 (list-ref _L134961_ _self-index134922_)))
                            (for-each
                             (lambda (_g134978134980_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g134978134980_
                                  'receiver:
                                  _self134977_
                                  'methods:
                                  _method-calls132967_
                                  'slots:
                                  _slot-refs132968_)))
                             _L134960_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?132971_))
                                _stx132875_
                                (let* ((_specializer-id134989_
                                        (let* ((_id134983_
                                                (let ((__tmp137079
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L132948_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137079
                                                   '"::specialize")))
                                               (_specializer-id134986_
                                                (let ((__tmp137080
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx132875_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id134983_
                                                   __tmp137080))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id134986_))
                                          _specializer-id134986_))
                                       (_$klass134991_
                                        (let ((__tmp137081 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137081)))
                                       (_$method-table134993_
                                        (let ((__tmp137082
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137082)))
                                       (_methods134995_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls132967_)))
                                       (_$methods134999_
                                        (map (lambda (_id134997_)
                                               (let ((__tmp137083
                                                      (gensym _id134997_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137083)))
                                             _methods134995_))
                                       (_g137084_
                                        (for-each
                                         (lambda (_g135000135003_
                                                  _g135001135005_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls132967_
                                              _g135000135003_
                                              _g135001135005_)))
                                         _methods134995_
                                         _$methods134999_))
                                       (_methods-bind135016_
                                        (map (lambda (_g135008135011_
                                                      _g135009135013_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind132877_
                                                  _$klass134991_
                                                  _$method-table134993_
                                                  _g135008135011_
                                                  _g135009135013_)))
                                             _methods134995_
                                             _$methods134999_))
                                       (_slots135018_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs132968_)))
                                       (_$slots135022_
                                        (map (lambda (_id135020_)
                                               (let ((__tmp137085
                                                      (gensym _id135020_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137085)))
                                             _slots135018_))
                                       (_g137086_
                                        (for-each
                                         (lambda (_g135023135026_
                                                  _g135024135028_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs132968_
                                              _g135023135026_
                                              _g135024135028_)))
                                         _slots135018_
                                         _$slots135022_))
                                       (_slots-bind135039_
                                        (map (lambda (_g135031135034_
                                                      _g135032135036_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind132878_
                                                  _$klass134991_
                                                  _g135031135034_
                                                  _g135032135036_)))
                                             _slots135018_
                                             _$slots135022_))
                                       (_specializer-impl135047_
                                        (let* ((_specializer-body135045_
                                                (map (lambda (_g135040135042_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135040135042_
                                                          'receiver:
                                                          _self134977_
                                                          'klass:
                                                          _$klass134991_
                                                          'methods:
                                                          _method-calls132967_
                                                          'slots:
                                                          _slot-refs132968_)))
                                                     _L134960_))
                                               (__tmp137087
                                                (let ((__tmp137088
                                                       (let ((__tmp137090
                                                              (let ((__tmp137091
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137103
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134623_ '())))
                                   (__tmp137092
                                    (let ((__tmp137093
                                           (let ((__tmp137094
                                                  (let ((__tmp137096
                                                         (let ((__tmp137097
                                                                (let ((__tmp137102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134622_ '())))
                              (__tmp137098
                               (let ((__tmp137099
                                      (let ((__tmp137100
                                             (let ((__tmp137101
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L134961_
                                                            _specializer-body135045_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137101))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137100
                                         _L134621_))))
                                 (declare (not safe))
                                 (cons __tmp137099 '()))))
                          (declare (not safe))
                          (cons __tmp137102 __tmp137098))))
                   (declare (not safe))
                   (cons __tmp137097 '())))
                (__tmp137095
                 (let () (declare (not safe)) (cons _L134620_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137096
                                                          __tmp137095))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137094))))
                                      (declare (not safe))
                                      (cons __tmp137093 '()))))
                               (declare (not safe))
                               (cons __tmp137103 __tmp137092))))
                        (declare (not safe))
                        (cons __tmp137091 '())))
                     (__tmp137089
                      (let () (declare (not safe)) (cons _L134619_ '()))))
                 (declare (not safe))
                 (cons __tmp137090 __tmp137089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137088))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137087
                                           _stx132875_)))
                                       (_specializer-impl135049_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl132879_
                                           _$klass134991_
                                           _$method-table134993_
                                           _methods-bind135016_
                                           _slots-bind135039_
                                           _specializer-impl135047_))))
                                  (let ((__tmp137105
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L132948_)))
                                        (__tmp137104
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id134989_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137105
                                     '" => "
                                     __tmp137104))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def132880_
                                     _L132948_
                                     _specializer-id134989_
                                     _specializer-impl135049_))))))
                        _tl134932134957_
                        _hd134933134955_)))
                   (let ()
                     (declare (not safe))
                     (_g134925134939_ _g134926134942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134925134939_
                                                      _g134926134942_))))))
                                       (declare (not safe))
                                       (_g134924135052_ _L134621_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134621_))
                                         (let* ((_g135055135085_
                                                 (lambda (_g135056135082_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135056135082_))))
                                                (_g135054135627_
                                                 (lambda (_g135056135088_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135056135088_))
                                                       (let ((_e135062135090_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135056135088_))))
                 (let ((_hd135061135093_
                        (let () (declare (not safe)) (##car _e135062135090_)))
                       (_tl135060135095_
                        (let () (declare (not safe)) (##cdr _e135062135090_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135060135095_))
                       (let ((_e135065135098_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135060135095_))))
                         (let ((_hd135064135101_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135065135098_)))
                               (_tl135063135103_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135065135098_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135064135101_))
                               (let ((_e135068135106_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135064135101_))))
                                 (let ((_hd135067135109_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135068135106_)))
                                       (_tl135066135111_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135068135106_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135067135109_))
                                       (let ((_e135071135114_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135067135109_))))
                                         (let ((_hd135070135117_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135071135114_)))
                                               (_tl135069135119_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135071135114_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135070135117_))
                                               (let ((_e135074135122_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135070135117_))))
                                                 (let ((_hd135073135125_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135074135122_)))
                                                       (_tl135072135127_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135074135122_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135072135127_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135069135119_))
                                                           (let ((_e135077135130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135069135119_))))
                     (let ((_hd135076135133_
                            (let ()
                              (declare (not safe))
                              (##car _e135077135130_)))
                           (_tl135075135135_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135077135130_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135075135135_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135066135111_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135063135103_))
                                   (let ((_e135080135138_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135063135103_))))
                                     (let ((_hd135079135141_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135080135138_)))
                                           (_tl135078135143_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135080135138_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135078135143_))
                                           ((lambda (_L135146_
                                                     _L135147_
                                                     _L135148_)
                                              (let* ((_g135171135185_
                                                      (lambda (_g135172135182_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135172135182_))))
                                                     (_g135170135226_
                                                      (lambda (_g135172135188_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135172135188_))
                                                            (let ((_e135177135190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135172135188_))))
                      (let ((_hd135176135193_
                             (let ()
                               (declare (not safe))
                               (##car _e135177135190_)))
                            (_tl135175135195_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135177135190_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135175135195_))
                            (let ((_e135180135198_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135175135195_))))
                              (let ((_hd135179135201_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135180135198_)))
                                    (_tl135178135203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135180135198_))))
                                ((lambda (_L135206_ _L135207_)
                                   (let ((_self135220_
                                          (list-ref
                                           _L135207_
                                           _self-index134922_)))
                                     (for-each
                                      (lambda (_g135221135223_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135221135223_
                                           'receiver:
                                           _self135220_
                                           'methods:
                                           _method-calls132967_
                                           'slots:
                                           _slot-refs132968_)))
                                      _L135206_)))
                                 _tl135178135203_
                                 _hd135179135201_)))
                            (let ()
                              (declare (not safe))
                              (_g135171135185_ _g135172135188_)))))
                    (let ()
                      (declare (not safe))
                      (_g135171135185_ _g135172135188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135170135226_ _L135147_))
                                              (let* ((_g135229135248_
                                                      (lambda (_g135230135245_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135230135245_))))
                                                     (_g135228135353_
                                                      (lambda (_g135230135251_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135230135251_))
                                                            (let ((_e135234135253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135230135251_))))
                      (let ((_hd135233135256_
                             (let ()
                               (declare (not safe))
                               (##car _e135234135253_)))
                            (_tl135232135258_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135234135253_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135232135258_))
                            (let ((_g137036_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135232135258_
                                      '0))))
                              (begin
                                (let ((_g137037_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137036_)
                                             (##vector-length _g137036_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137037_ 2)))
                                      (error "Context expects 2 values"
                                             _g137037_)))
                                (let ((_target135235135261_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137036_ 0)))
                                      (_tl135237135263_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137036_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135237135263_))
                                      (letrec ((_loop135238135266_
                                                (lambda (_hd135236135269_
                                                         _clause135242135271_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135236135269_))
                                                      (let ((_e135239135274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135236135269_))))
                (let ((_lp-hd135240135277_
                       (let () (declare (not safe)) (##car _e135239135274_)))
                      (_lp-tl135241135279_
                       (let () (declare (not safe)) (##cdr _e135239135274_))))
                  (let ((__tmp137039
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135240135277_ _clause135242135271_))))
                    (declare (not safe))
                    (_loop135238135266_ _lp-tl135241135279_ __tmp137039))))
              (let ((_clause135243135282_ (reverse _clause135242135271_)))
                ((lambda (_L135285_)
                   (for-each
                    (lambda (_clause135298_)
                      (let* ((_g135300135311_
                              (lambda (_g135301135308_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135301135308_))))
                             (_g135299135343_
                              (lambda (_g135301135314_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135301135314_))
                                    (let ((_e135306135316_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135301135314_))))
                                      (let ((_hd135305135319_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135306135316_)))
                                            (_tl135304135321_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135306135316_))))
                                        ((lambda (_L135324_ _L135325_)
                                           (let ((_self135337_
                                                  (list-ref
                                                   _L135325_
                                                   _self-index134922_)))
                                             (for-each
                                              (lambda (_g135338135340_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135338135340_
                                                   'receiver:
                                                   _self135337_
                                                   'methods:
                                                   _method-calls132967_
                                                   'slots:
                                                   _slot-refs132968_)))
                                              _L135324_)))
                                         _tl135304135321_
                                         _hd135305135319_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135300135311_ _g135301135314_))))))
                        (declare (not safe))
                        (_g135299135343_ _clause135298_)))
                    (let ((__tmp137038
                           (lambda (_g135345135348_ _g135346135350_)
                             (let ()
                               (declare (not safe))
                               (cons _g135345135348_ _g135346135350_)))))
                      (declare (not safe))
                      (foldr1 __tmp137038 '() _L135285_))))
                 _clause135243135282_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135238135266_
                                           _target135235135261_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135229135248_ _g135230135251_))))))
                            (let ()
                              (declare (not safe))
                              (_g135229135248_ _g135230135251_)))))
                    (let ()
                      (declare (not safe))
                      (_g135229135248_ _g135230135251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135228135353_ _L135146_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132971_))
                                                  _stx132875_
                                                  (let* ((_specializer-id135362_
                                                          (let* ((_id135356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137040
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132948_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137040 '"::specialize")))
                         (_specializer-id135359_
                          (let ((__tmp137041
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132875_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135356_ __tmp137041))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135359_))
                    _specializer-id135359_))
                 (_$klass135364_
                  (let ((__tmp137042 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137042)))
                 (_$method-table135366_
                  (let ((__tmp137043 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137043)))
                 (_methods135368_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132967_)))
                 (_$methods135372_
                  (map (lambda (_id135370_)
                         (let ((__tmp137044 (gensym _id135370_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137044)))
                       _methods135368_))
                 (_g137045_
                  (for-each
                   (lambda (_g135373135376_ _g135374135378_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132967_
                        _g135373135376_
                        _g135374135378_)))
                   _methods135368_
                   _$methods135372_))
                 (_methods-bind135389_
                  (map (lambda (_g135381135384_ _g135382135386_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132877_
                            _$klass135364_
                            _$method-table135366_
                            _g135381135384_
                            _g135382135386_)))
                       _methods135368_
                       _$methods135372_))
                 (_slots135391_
                  (let () (declare (not safe)) (hash-keys _slot-refs132968_)))
                 (_$slots135395_
                  (map (lambda (_id135393_)
                         (let ((__tmp137046 (gensym _id135393_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137046)))
                       _slots135391_))
                 (_g137047_
                  (for-each
                   (lambda (_g135396135399_ _g135397135401_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132968_
                        _g135396135399_
                        _g135397135401_)))
                   _slots135391_
                   _$slots135395_))
                 (_slots-bind135412_
                  (map (lambda (_g135404135407_ _g135405135409_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132878_
                            _$klass135364_
                            _g135404135407_
                            _g135405135409_)))
                       _slots135391_
                       _$slots135395_))
                 (_specializer-lambda-expr135485_
                  (let* ((_g135414135428_
                          (lambda (_g135415135425_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135415135425_))))
                         (_g135413135482_
                          (lambda (_g135415135431_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135415135431_))
                                (let ((_e135420135433_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135415135431_))))
                                  (let ((_hd135419135436_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135420135433_)))
                                        (_tl135418135438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135420135433_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135418135438_))
                                        (let ((_e135423135441_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135418135438_))))
                                          (let ((_hd135422135444_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135423135441_)))
                                                (_tl135421135446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135423135441_))))
                                            ((lambda (_L135449_ _L135450_)
                                               (let* ((_self135473_
                                                       (list-ref
                                                        _L135450_
                                                        _self-index134922_))
                                                      (_body135479_
                                                       (map (lambda (_g135474135476_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135474135476_
                         'receiver:
                         _self135473_
                         'klass:
                         _$klass135364_
                         'methods:
                         _method-calls132967_
                         'slots:
                         _slot-refs132968_)))
                    _L135449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137048
                                                        (let ((__tmp137049
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135450_ _body135479_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137048
                                                    _L135147_))))
                                             _tl135421135446_
                                             _hd135422135444_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135414135428_ _g135415135431_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135414135428_ _g135415135431_))))))
                    (declare (not safe))
                    (_g135413135482_ _L135147_)))
                 (_specializer-case-lambda-expr135620_
                  (let* ((_g135487135506_
                          (lambda (_g135488135503_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135488135503_))))
                         (_g135486135617_
                          (lambda (_g135488135509_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135488135509_))
                                (let ((_e135492135511_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135488135509_))))
                                  (let ((_hd135491135514_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135492135511_)))
                                        (_tl135490135516_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135492135511_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135490135516_))
                                        (let ((_g137050_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135490135516_
                                                  '0))))
                                          (begin
                                            (let ((_g137051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137050_)
                                                         (##vector-length
                                                          _g137050_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137051_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137051_)))
                                            (let ((_target135493135519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137050_
                                                      0)))
                                                  (_tl135495135521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137050_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135495135521_))
                                                  (letrec ((_loop135496135524_
                                                            (lambda (_hd135494135527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135500135529_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135494135527_))
                          (let ((_e135497135532_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135494135527_))))
                            (let ((_lp-hd135498135535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135497135532_)))
                                  (_lp-tl135499135537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135497135532_))))
                              (let ((__tmp137054
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135498135535_
                                             _clause135500135529_))))
                                (declare (not safe))
                                (_loop135496135524_
                                 _lp-tl135499135537_
                                 __tmp137054))))
                          (let ((_clause135501135540_
                                 (reverse _clause135500135529_)))
                            ((lambda (_L135543_)
                               (let* ((_clauses135615_
                                       (map (lambda (_clause135557_)
                                              (let* ((_g135559135570_
                                                      (lambda (_g135560135567_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135560135567_))))
                                                     (_g135558135605_
                                                      (lambda (_g135560135573_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135560135573_))
                                                            (let ((_e135565135575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135560135573_))))
                      (let ((_hd135564135578_
                             (let ()
                               (declare (not safe))
                               (##car _e135565135575_)))
                            (_tl135563135580_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135565135575_))))
                        ((lambda (_L135583_ _L135584_)
                           (let* ((_self135596_
                                   (list-ref _L135584_ _self-index134922_))
                                  (_body135602_
                                   (map (lambda (_g135597135599_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135597135599_
                                             'receiver:
                                             _self135596_
                                             'klass:
                                             _$klass135364_
                                             'methods:
                                             _method-calls132967_
                                             'slots:
                                             _slot-refs132968_)))
                                        _L135583_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135584_ _body135602_))))
                         _tl135563135580_
                         _hd135564135578_)))
                    (let ()
                      (declare (not safe))
                      (_g135559135570_ _g135560135573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135558135605_
                                                 _clause135557_)))
                                            (let ((__tmp137052
                                                   (lambda (_g135607135610_
                                                            _g135608135612_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135607135610_
                                                             _g135608135612_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137052
                                                      '()
                                                      _L135543_))))
                                      (__tmp137053
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135615_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137053
                                  _L135146_)))
                             _clause135501135540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135496135524_
                                                       _target135493135519_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135487135506_
                                                     _g135488135509_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135487135506_ _g135488135509_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135487135506_ _g135488135509_))))))
                    (declare (not safe))
                    (_g135486135617_ _L135146_)))
                 (_specializer-impl135622_
                  (let ((__tmp137055
                         (let ((__tmp137056
                                (let ((__tmp137058
                                       (let ((__tmp137059
                                              (let ((__tmp137076
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134623_ '())))
                                                    (__tmp137060
                                                     (let ((__tmp137061
                                                            (let ((__tmp137062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137064
                                  (let ((__tmp137065
                                         (let ((__tmp137075
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134622_ '())))
                                               (__tmp137066
                                                (let ((__tmp137067
                                                       (let ((__tmp137068
                                                              (let ((__tmp137069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137071
                                    (let ((__tmp137072
                                           (let ((__tmp137074
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135148_ '())))
                                                 (__tmp137073
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135485_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137074 __tmp137073))))
                                      (declare (not safe))
                                      (cons __tmp137072 '())))
                                   (__tmp137070
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135620_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137071 __tmp137070))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137069))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137068 _stx132875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137067 '()))))
                                           (declare (not safe))
                                           (cons __tmp137075 __tmp137066))))
                                    (declare (not safe))
                                    (cons __tmp137065 '())))
                                 (__tmp137063
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134620_ '()))))
                             (declare (not safe))
                             (cons __tmp137064 __tmp137063))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137062))))
               (declare (not safe))
               (cons __tmp137061 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137076
                                                      __tmp137060))))
                                         (declare (not safe))
                                         (cons __tmp137059 '())))
                                      (__tmp137057
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134619_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137058 __tmp137057))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137056))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137055 _stx132875_)))
                 (_specializer-impl135624_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132879_
                     _$klass135364_
                     _$method-table135366_
                     _methods-bind135389_
                     _slots-bind135412_
                     _specializer-impl135622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132948_)))
                                                          (__tmp137077
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135362_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137078
                                                       '" => "
                                                       __tmp137077))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132880_
                                                       _L132948_
                                                       _specializer-id135362_
                                                       _specializer-impl135624_)))))
                                            _hd135079135141_
                                            _hd135076135133_
                                            _hd135073135125_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135055135085_
                                              _g135056135088_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135055135085_ _g135056135088_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135055135085_ _g135056135088_)))
                           (let ()
                             (declare (not safe))
                             (_g135055135085_ _g135056135088_)))))
                   (let ()
                     (declare (not safe))
                     (_g135055135085_ _g135056135088_)))
               (let ()
                 (declare (not safe))
                 (_g135055135085_ _g135056135088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135055135085_
                                                  _g135056135088_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135055135085_ _g135056135088_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135055135085_ _g135056135088_)))))
                       (let ()
                         (declare (not safe))
                         (_g135055135085_ _g135056135088_)))))
               (let ()
                 (declare (not safe))
                 (_g135055135085_ _g135056135088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135054135627_ _L134621_))
                                         _stx132875_))))
                             _hd134718134841_
                             _kw-ref134716134862_
                             _hd134706134828_
                             _hd134697134804_
                             _hd134688134780_)
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134711134846_
                                                   _target134708134833_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134662134724_
                                                 _g134663134727_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134662134724_ _g134663134727_))))))
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_)))
                        (let ()
                          (declare (not safe))
                          (_g134662134724_ _g134663134727_)))
                    (let ()
                      (declare (not safe))
                      (_g134662134724_ _g134663134727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134662134724_
                                                       _g134663134727_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134662134724_
                                                   _g134663134727_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134662134724_
                                               _g134663134727_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134662134724_ _g134663134727_)))))
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_)))
                        (let ()
                          (declare (not safe))
                          (_g134662134724_ _g134663134727_)))))
                (let ()
                  (declare (not safe))
                  (_g134662134724_ _g134663134727_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134662134724_
                                                       _g134663134727_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134662134724_
                                                   _g134663134727_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134662134724_ _g134663134727_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134662134724_ _g134663134727_)))
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_)))))
                    (let ()
                      (declare (not safe))
                      (_g134662134724_ _g134663134727_)))
                (let ()
                  (declare (not safe))
                  (_g134662134724_ _g134663134727_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134662134724_
                                                       _g134663134727_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134662134724_
                                               _g134663134727_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134662134724_ _g134663134727_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134662134724_ _g134663134727_)))
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_)))))
                    (let ()
                      (declare (not safe))
                      (_g134662134724_ _g134663134727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134662134724_
                                                       _g134663134727_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134662134724_
                                               _g134663134727_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134662134724_ _g134663134727_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134662134724_ _g134663134727_)))))
                            (let ()
                              (declare (not safe))
                              (_g134662134724_ _g134663134727_))))))
                (declare (not safe))
                (_g134661135630_ _L134620_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134496134614_
                                                    _hd134493134606_
                                                    _hd134490134598_
                                                    _hd134487134590_
                                                    _hd134469134542_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134449134502_
                                                      _g134450134505_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134449134502_
                                              _g134450134505_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134449134502_ _g134450134505_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134449134502_ _g134450134505_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134449134502_ _g134450134505_)))))
                       (let ()
                         (declare (not safe))
                         (_g134449134502_ _g134450134505_)))
                   (let ()
                     (declare (not safe))
                     (_g134449134502_ _g134450134505_)))
               (let ()
                 (declare (not safe))
                 (_g134449134502_ _g134450134505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134449134502_
                                                  _g134450134505_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134449134502_
                                              _g134450134505_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134449134502_ _g134450134505_)))))
                           (let ()
                             (declare (not safe))
                             (_g134449134502_ _g134450134505_)))))
                   (let ()
                     (declare (not safe))
                     (_g134449134502_ _g134450134505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134449134502_
                                                      _g134450134505_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134449134502_
                                                  _g134450134505_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134449134502_
                                              _g134450134505_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134449134502_ _g134450134505_)))))
                           (let ()
                             (declare (not safe))
                             (_g134449134502_ _g134450134505_)))
                       (let ()
                         (declare (not safe))
                         (_g134449134502_ _g134450134505_)))))
               (let ()
                 (declare (not safe))
                 (_g134449134502_ _g134450134505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134449134502_
                                                  _g134450134505_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134449134502_ _g134450134505_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134449134502_ _g134450134505_)))
                           (let ()
                             (declare (not safe))
                             (_g134449134502_ _g134450134505_)))
                       (let ()
                         (declare (not safe))
                         (_g134449134502_ _g134450134505_)))))
               (let ()
                 (declare (not safe))
                 (_g134449134502_ _g134450134505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134448135633_ _L132947_))
                                         _stx132875_))))))))
                  (___kont135857135858_ (lambda () _stx132875_)))
              (let ((___match135886135887_
                     (lambda (_e132889132915_
                              _hd132888132918_
                              _tl132887132920_
                              _e132892132923_
                              _hd132891132926_
                              _tl132890132928_
                              _e132895132931_
                              _hd132894132934_
                              _tl132893132936_
                              _e132898132939_
                              _hd132897132942_
                              _tl132896132944_)
                       (let ((_L132947_ _hd132897132942_)
                             (_L132948_ _hd132894132934_))
                         (if (let ((__tmp137167
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L132948_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137167))
                             (___kont135855135856_ _L132947_ _L132948_)
                             (___kont135857135858_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135853135854_))
                    (let ((_e132889132915_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135853135854_))))
                      (let ((_tl132887132920_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132889132915_)))
                            (_hd132888132918_
                             (let ()
                               (declare (not safe))
                               (##car _e132889132915_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132887132920_))
                            (let ((_e132892132923_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132887132920_))))
                              (let ((_tl132890132928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132892132923_)))
                                    (_hd132891132926_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132892132923_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132891132926_))
                                    (let ((_e132895132931_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132891132926_))))
                                      (let ((_tl132893132936_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132895132931_)))
                                            (_hd132894132934_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132895132931_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132893132936_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132890132928_))
                                                (let ((_e132898132939_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132890132928_))))
                                                  (let ((_tl132896132944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132898132939_)))
                                                        (_hd132897132942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132898132939_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132896132944_))
                                                        (___match135886135887_
                                                         _e132889132915_
                                                         _hd132888132918_
                                                         _tl132887132920_
                                                         _e132892132923_
                                                         _hd132891132926_
                                                         _tl132890132928_
                                                         _e132895132931_
                                                         _hd132894132934_
                                                         _tl132893132936_
                                                         _e132898132939_
                                                         _hd132897132942_
                                                         _tl132896132944_)
                                                        (___kont135857135858_))))
                                                (___kont135857135858_))
                                            (___kont135857135858_))))
                                    (___kont135857135858_))))
                            (___kont135857135858_))))
                    (___kont135857135858_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self131835_ _stx131836_)
        (let* ((___stx135889135890_ _stx131836_)
               (_g131844132066_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx135889135890_)))))
          (let ((___kont135891135892_
                 (lambda (_L132823_ _L132824_ _L132825_ _L132826_)
                   (let ((__tmp137169
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131835_ 'methods)))
                         (__tmp137168
                          (let () (declare (not safe)) (gx#stx-e _L132824_))))
                     (declare (not safe))
                     (hash-put! __tmp137169 __tmp137168 '#t))
                   (for-each
                    (lambda (_g132859132861_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131835_ _g132859132861_)))
                    (let ((__tmp137170
                           (lambda (_g132863132866_ _g132864132868_)
                             (let ()
                               (declare (not safe))
                               (cons _g132863132866_ _g132864132868_)))))
                      (declare (not safe))
                      (foldr1 __tmp137170 '() _L132823_)))))
                (___kont135895135896_
                 (lambda (_L132658_ _L132659_ _L132660_ _L132661_ _L132662_)
                   (let ((__tmp137172
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131835_ 'methods)))
                         (__tmp137171
                          (let () (declare (not safe)) (gx#stx-e _L132659_))))
                     (declare (not safe))
                     (hash-put! __tmp137172 __tmp137171 '#t))
                   (for-each
                    (lambda (_g132702132704_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131835_ _g132702132704_)))
                    (let ((__tmp137173
                           (lambda (_g132706132709_ _g132707132711_)
                             (let ()
                               (declare (not safe))
                               (cons _g132706132709_ _g132707132711_)))))
                      (declare (not safe))
                      (foldr1 __tmp137173 '() _L132658_)))))
                (___kont135899135900_
                 (lambda (_L132491_ _L132492_ _L132493_)
                   (let ((__tmp137175
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131835_ 'slots)))
                         (__tmp137174
                          (let () (declare (not safe)) (gx#stx-e _L132491_))))
                     (declare (not safe))
                     (hash-put! __tmp137175 __tmp137174 '#t))))
                (___kont135901135902_
                 (lambda (_L132368_ _L132369_ _L132370_ _L132371_)
                   (let ((__tmp137177
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131835_ 'slots)))
                         (__tmp137176
                          (let () (declare (not safe)) (gx#stx-e _L132369_))))
                     (declare (not safe))
                     (hash-put! __tmp137177 __tmp137176 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self131835_ _L132368_))))
                (___kont135903135904_
                 (lambda (_L132242_ _L132243_)
                   (let* ((_accessor132265_
                           (let ((__tmp137178
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132243_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137178)))
                          (_klass132267_
                           (let ((__tmp137179
                                  (##structure-ref
                                   _accessor132265_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131836_
                              __tmp137179)))
                          (_slot132269_
                           (##structure-ref
                            _accessor132265_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137182
                                     (##structure-ref
                                      _accessor132265_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137182))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132267_
                                     _slot132269_))
                                  (##structure-ref
                                   _klass132267_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137181
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131835_ 'slots)))
                               (__tmp137180
                                (##structure-ref
                                 _accessor132265_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137181 __tmp137180 '#t))))))
                (___kont135905135906_
                 (lambda (_L132142_ _L132143_ _L132144_)
                   (let* ((_mutator132171_
                           (let ((__tmp137183
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132144_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137183)))
                          (_klass132173_
                           (let ((__tmp137184
                                  (##structure-ref
                                   _mutator132171_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131836_
                              __tmp137184)))
                          (_slot132175_
                           (##structure-ref
                            _mutator132171_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137186
                                     (##structure-ref
                                      _mutator132171_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137186))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132173_
                                     _slot132175_))
                                  (##structure-ref
                                   _klass132173_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137185
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131835_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137185 _slot132175_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self131835_ _L132142_)))))
                (___kont135907135908_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self131835_ _stx131836_)))))
            (let* ((___match136388136389_
                    (lambda (_e132040132078_
                             _hd132039132081_
                             _tl132038132083_
                             _e132043132086_
                             _hd132042132089_
                             _tl132041132091_
                             _e132046132094_
                             _hd132045132097_
                             _tl132044132099_
                             _e132049132102_
                             _hd132048132105_
                             _tl132047132107_
                             _e132052132110_
                             _hd132051132113_
                             _tl132050132115_
                             _e132055132118_
                             _hd132054132121_
                             _tl132053132123_
                             _e132058132126_
                             _hd132057132129_
                             _tl132056132131_
                             _e132061132134_
                             _hd132060132137_
                             _tl132059132139_)
                      (let ((_L132142_ _hd132060132137_)
                            (_L132143_ _hd132057132129_)
                            (_L132144_ _hd132048132105_))
                        (if (and (let ((__tmp137188
                                        (let ((__tmp137189
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132144_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137189))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137188
                                    'gxc#!mutator::t))
                                 (let ((__tmp137187
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131835_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132143_
                                    __tmp137187)))
                            (___kont135905135906_
                             _L132142_
                             _L132143_
                             _L132144_)
                            (___kont135907135908_)))))
                   (___match136386136387_
                    (lambda (_e132040132078_
                             _hd132039132081_
                             _tl132038132083_
                             _e132043132086_
                             _hd132042132089_
                             _tl132041132091_
                             _e132046132094_
                             _hd132045132097_
                             _tl132044132099_
                             _e132049132102_
                             _hd132048132105_
                             _tl132047132107_
                             _e132052132110_
                             _hd132051132113_
                             _tl132050132115_
                             _e132055132118_
                             _hd132054132121_
                             _tl132053132123_
                             _e132058132126_
                             _hd132057132129_
                             _tl132056132131_
                             _e132061132134_
                             _hd132060132137_
                             _tl132059132139_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132059132139_))
                          (___match136388136389_
                           _e132040132078_
                           _hd132039132081_
                           _tl132038132083_
                           _e132043132086_
                           _hd132042132089_
                           _tl132041132091_
                           _e132046132094_
                           _hd132045132097_
                           _tl132044132099_
                           _e132049132102_
                           _hd132048132105_
                           _tl132047132107_
                           _e132052132110_
                           _hd132051132113_
                           _tl132050132115_
                           _e132055132118_
                           _hd132054132121_
                           _tl132053132123_
                           _e132058132126_
                           _hd132057132129_
                           _tl132056132131_
                           _e132061132134_
                           _hd132060132137_
                           _tl132059132139_)
                          (___kont135907135908_))))
                   (___match136380136381_
                    (lambda (_e132040132078_
                             _hd132039132081_
                             _tl132038132083_
                             _e132043132086_
                             _hd132042132089_
                             _tl132041132091_
                             _e132046132094_
                             _hd132045132097_
                             _tl132044132099_
                             _e132049132102_
                             _hd132048132105_
                             _tl132047132107_
                             _e132052132110_
                             _hd132051132113_
                             _tl132050132115_
                             _e132055132118_
                             _hd132054132121_
                             _tl132053132123_
                             _e132058132126_
                             _hd132057132129_
                             _tl132056132131_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132050132115_))
                          (let ((_e132061132134_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132050132115_))))
                            (let ((_tl132059132139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132061132134_)))
                                  (_hd132060132137_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132061132134_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132059132139_))
                                  (___match136388136389_
                                   _e132040132078_
                                   _hd132039132081_
                                   _tl132038132083_
                                   _e132043132086_
                                   _hd132042132089_
                                   _tl132041132091_
                                   _e132046132094_
                                   _hd132045132097_
                                   _tl132044132099_
                                   _e132049132102_
                                   _hd132048132105_
                                   _tl132047132107_
                                   _e132052132110_
                                   _hd132051132113_
                                   _tl132050132115_
                                   _e132055132118_
                                   _hd132054132121_
                                   _tl132053132123_
                                   _e132058132126_
                                   _hd132057132129_
                                   _tl132056132131_
                                   _e132061132134_
                                   _hd132060132137_
                                   _tl132059132139_)
                                  (___kont135907135908_))))
                          (___kont135907135908_))))
                   (___match136326136327_
                    (lambda (_e132016132186_
                             _hd132015132189_
                             _tl132014132191_
                             _e132019132194_
                             _hd132018132197_
                             _tl132017132199_
                             _e132022132202_
                             _hd132021132205_
                             _tl132020132207_
                             _e132025132210_
                             _hd132024132213_
                             _tl132023132215_
                             _e132028132218_
                             _hd132027132221_
                             _tl132026132223_
                             _e132031132226_
                             _hd132030132229_
                             _tl132029132231_
                             _e132034132234_
                             _hd132033132237_
                             _tl132032132239_)
                      (let ((_L132242_ _hd132033132237_)
                            (_L132243_ _hd132024132213_))
                        (if (and (let ((__tmp137191
                                        (let ((__tmp137192
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132243_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137192))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137191
                                    'gxc#!accessor::t))
                                 (let ((__tmp137190
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131835_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132242_
                                    __tmp137190)))
                            (___kont135903135904_ _L132242_ _L132243_)
                            (___kont135907135908_)))))
                   (___match136324136325_
                    (lambda (_e132016132186_
                             _hd132015132189_
                             _tl132014132191_
                             _e132019132194_
                             _hd132018132197_
                             _tl132017132199_
                             _e132022132202_
                             _hd132021132205_
                             _tl132020132207_
                             _e132025132210_
                             _hd132024132213_
                             _tl132023132215_
                             _e132028132218_
                             _hd132027132221_
                             _tl132026132223_
                             _e132031132226_
                             _hd132030132229_
                             _tl132029132231_
                             _e132034132234_
                             _hd132033132237_
                             _tl132032132239_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132026132223_))
                          (___match136326136327_
                           _e132016132186_
                           _hd132015132189_
                           _tl132014132191_
                           _e132019132194_
                           _hd132018132197_
                           _tl132017132199_
                           _e132022132202_
                           _hd132021132205_
                           _tl132020132207_
                           _e132025132210_
                           _hd132024132213_
                           _tl132023132215_
                           _e132028132218_
                           _hd132027132221_
                           _tl132026132223_
                           _e132031132226_
                           _hd132030132229_
                           _tl132029132231_
                           _e132034132234_
                           _hd132033132237_
                           _tl132032132239_)
                          (___match136380136381_
                           _e132016132186_
                           _hd132015132189_
                           _tl132014132191_
                           _e132019132194_
                           _hd132018132197_
                           _tl132017132199_
                           _e132022132202_
                           _hd132021132205_
                           _tl132020132207_
                           _e132025132210_
                           _hd132024132213_
                           _tl132023132215_
                           _e132028132218_
                           _hd132027132221_
                           _tl132026132223_
                           _e132031132226_
                           _hd132030132229_
                           _tl132029132231_
                           _e132034132234_
                           _hd132033132237_
                           _tl132032132239_))))
                   (___match136270136271_
                    (lambda (_e131981132280_
                             _hd131980132283_
                             _tl131979132285_
                             _e131984132288_
                             _hd131983132291_
                             _tl131982132293_
                             _e131987132296_
                             _hd131986132299_
                             _tl131985132301_
                             _e131990132304_
                             _hd131989132307_
                             _tl131988132309_
                             _e131993132312_
                             _hd131992132315_
                             _tl131991132317_
                             _e131996132320_
                             _hd131995132323_
                             _tl131994132325_
                             _e131999132328_
                             _hd131998132331_
                             _tl131997132333_
                             _e132002132336_
                             _hd132001132339_
                             _tl132000132341_
                             _e132005132344_
                             _hd132004132347_
                             _tl132003132349_
                             _e132008132352_
                             _hd132007132355_
                             _tl132006132357_
                             _e132011132360_
                             _hd132010132363_
                             _tl132009132365_)
                      (let ((_L132368_ _hd132010132363_)
                            (_L132369_ _hd132007132355_)
                            (_L132370_ _hd131998132331_)
                            (_L132371_ _hd131989132307_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132371_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132371_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137193
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131835_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132370_
                                    __tmp137193)))
                            (___kont135901135902_
                             _L132368_
                             _L132369_
                             _L132370_
                             _L132371_)
                            (___kont135907135908_)))))
                   (___match136262136263_
                    (lambda (_e131981132280_
                             _hd131980132283_
                             _tl131979132285_
                             _e131984132288_
                             _hd131983132291_
                             _tl131982132293_
                             _e131987132296_
                             _hd131986132299_
                             _tl131985132301_
                             _e131990132304_
                             _hd131989132307_
                             _tl131988132309_
                             _e131993132312_
                             _hd131992132315_
                             _tl131991132317_
                             _e131996132320_
                             _hd131995132323_
                             _tl131994132325_
                             _e131999132328_
                             _hd131998132331_
                             _tl131997132333_
                             _e132002132336_
                             _hd132001132339_
                             _tl132000132341_
                             _e132005132344_
                             _hd132004132347_
                             _tl132003132349_
                             _e132008132352_
                             _hd132007132355_
                             _tl132006132357_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132000132341_))
                          (let ((_e132011132360_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132000132341_))))
                            (let ((_tl132009132365_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132011132360_)))
                                  (_hd132010132363_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132011132360_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132009132365_))
                                  (___match136270136271_
                                   _e131981132280_
                                   _hd131980132283_
                                   _tl131979132285_
                                   _e131984132288_
                                   _hd131983132291_
                                   _tl131982132293_
                                   _e131987132296_
                                   _hd131986132299_
                                   _tl131985132301_
                                   _e131990132304_
                                   _hd131989132307_
                                   _tl131988132309_
                                   _e131993132312_
                                   _hd131992132315_
                                   _tl131991132317_
                                   _e131996132320_
                                   _hd131995132323_
                                   _tl131994132325_
                                   _e131999132328_
                                   _hd131998132331_
                                   _tl131997132333_
                                   _e132002132336_
                                   _hd132001132339_
                                   _tl132000132341_
                                   _e132005132344_
                                   _hd132004132347_
                                   _tl132003132349_
                                   _e132008132352_
                                   _hd132007132355_
                                   _tl132006132357_
                                   _e132011132360_
                                   _hd132010132363_
                                   _tl132009132365_)
                                  (___kont135907135908_))))
                          (___match136386136387_
                           _e131981132280_
                           _hd131980132283_
                           _tl131979132285_
                           _e131984132288_
                           _hd131983132291_
                           _tl131982132293_
                           _e131987132296_
                           _hd131986132299_
                           _tl131985132301_
                           _e131990132304_
                           _hd131989132307_
                           _tl131988132309_
                           _e131993132312_
                           _hd131992132315_
                           _tl131991132317_
                           _e131996132320_
                           _hd131995132323_
                           _tl131994132325_
                           _e131999132328_
                           _hd131998132331_
                           _tl131997132333_
                           _e132002132336_
                           _hd132001132339_
                           _tl132000132341_))))
                   (___match136184136185_
                    (lambda (_e131947132411_
                             _hd131946132414_
                             _tl131945132416_
                             _e131950132419_
                             _hd131949132422_
                             _tl131948132424_
                             _e131953132427_
                             _hd131952132430_
                             _tl131951132432_
                             _e131956132435_
                             _hd131955132438_
                             _tl131954132440_
                             _e131959132443_
                             _hd131958132446_
                             _tl131957132448_
                             _e131962132451_
                             _hd131961132454_
                             _tl131960132456_
                             _e131965132459_
                             _hd131964132462_
                             _tl131963132464_
                             _e131968132467_
                             _hd131967132470_
                             _tl131966132472_
                             _e131971132475_
                             _hd131970132478_
                             _tl131969132480_
                             _e131974132483_
                             _hd131973132486_
                             _tl131972132488_)
                      (let ((_L132491_ _hd131973132486_)
                            (_L132492_ _hd131964132462_)
                            (_L132493_ _hd131955132438_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132493_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132493_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137194
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131835_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132492_
                                    __tmp137194)))
                            (___kont135899135900_
                             _L132491_
                             _L132492_
                             _L132493_)
                            (___match136388136389_
                             _e131947132411_
                             _hd131946132414_
                             _tl131945132416_
                             _e131950132419_
                             _hd131949132422_
                             _tl131948132424_
                             _e131953132427_
                             _hd131952132430_
                             _tl131951132432_
                             _e131956132435_
                             _hd131955132438_
                             _tl131954132440_
                             _e131959132443_
                             _hd131958132446_
                             _tl131957132448_
                             _e131962132451_
                             _hd131961132454_
                             _tl131960132456_
                             _e131965132459_
                             _hd131964132462_
                             _tl131963132464_
                             _e131968132467_
                             _hd131967132470_
                             _tl131966132472_)))))
                   (___match136182136183_
                    (lambda (_e131947132411_
                             _hd131946132414_
                             _tl131945132416_
                             _e131950132419_
                             _hd131949132422_
                             _tl131948132424_
                             _e131953132427_
                             _hd131952132430_
                             _tl131951132432_
                             _e131956132435_
                             _hd131955132438_
                             _tl131954132440_
                             _e131959132443_
                             _hd131958132446_
                             _tl131957132448_
                             _e131962132451_
                             _hd131961132454_
                             _tl131960132456_
                             _e131965132459_
                             _hd131964132462_
                             _tl131963132464_
                             _e131968132467_
                             _hd131967132470_
                             _tl131966132472_
                             _e131971132475_
                             _hd131970132478_
                             _tl131969132480_
                             _e131974132483_
                             _hd131973132486_
                             _tl131972132488_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131966132472_))
                          (___match136184136185_
                           _e131947132411_
                           _hd131946132414_
                           _tl131945132416_
                           _e131950132419_
                           _hd131949132422_
                           _tl131948132424_
                           _e131953132427_
                           _hd131952132430_
                           _tl131951132432_
                           _e131956132435_
                           _hd131955132438_
                           _tl131954132440_
                           _e131959132443_
                           _hd131958132446_
                           _tl131957132448_
                           _e131962132451_
                           _hd131961132454_
                           _tl131960132456_
                           _e131965132459_
                           _hd131964132462_
                           _tl131963132464_
                           _e131968132467_
                           _hd131967132470_
                           _tl131966132472_
                           _e131971132475_
                           _hd131970132478_
                           _tl131969132480_
                           _e131974132483_
                           _hd131973132486_
                           _tl131972132488_)
                          (___match136262136263_
                           _e131947132411_
                           _hd131946132414_
                           _tl131945132416_
                           _e131950132419_
                           _hd131949132422_
                           _tl131948132424_
                           _e131953132427_
                           _hd131952132430_
                           _tl131951132432_
                           _e131956132435_
                           _hd131955132438_
                           _tl131954132440_
                           _e131959132443_
                           _hd131958132446_
                           _tl131957132448_
                           _e131962132451_
                           _hd131961132454_
                           _tl131960132456_
                           _e131965132459_
                           _hd131964132462_
                           _tl131963132464_
                           _e131968132467_
                           _hd131967132470_
                           _tl131966132472_
                           _e131971132475_
                           _hd131970132478_
                           _tl131969132480_
                           _e131974132483_
                           _hd131973132486_
                           _tl131972132488_))))
                   (___match136172136173_
                    (lambda (_e131947132411_
                             _hd131946132414_
                             _tl131945132416_
                             _e131950132419_
                             _hd131949132422_
                             _tl131948132424_
                             _e131953132427_
                             _hd131952132430_
                             _tl131951132432_
                             _e131956132435_
                             _hd131955132438_
                             _tl131954132440_
                             _e131959132443_
                             _hd131958132446_
                             _tl131957132448_
                             _e131962132451_
                             _hd131961132454_
                             _tl131960132456_
                             _e131965132459_
                             _hd131964132462_
                             _tl131963132464_
                             _e131968132467_
                             _hd131967132470_
                             _tl131966132472_
                             _e131971132475_
                             _hd131970132478_
                             _tl131969132480_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd131970132478_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131969132480_))
                              (let ((_e131974132483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131969132480_))))
                                (let ((_tl131972132488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131974132483_)))
                                      (_hd131973132486_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131974132483_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131972132488_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl131966132472_))
                                          (___match136184136185_
                                           _e131947132411_
                                           _hd131946132414_
                                           _tl131945132416_
                                           _e131950132419_
                                           _hd131949132422_
                                           _tl131948132424_
                                           _e131953132427_
                                           _hd131952132430_
                                           _tl131951132432_
                                           _e131956132435_
                                           _hd131955132438_
                                           _tl131954132440_
                                           _e131959132443_
                                           _hd131958132446_
                                           _tl131957132448_
                                           _e131962132451_
                                           _hd131961132454_
                                           _tl131960132456_
                                           _e131965132459_
                                           _hd131964132462_
                                           _tl131963132464_
                                           _e131968132467_
                                           _hd131967132470_
                                           _tl131966132472_
                                           _e131971132475_
                                           _hd131970132478_
                                           _tl131969132480_
                                           _e131974132483_
                                           _hd131973132486_
                                           _tl131972132488_)
                                          (___match136262136263_
                                           _e131947132411_
                                           _hd131946132414_
                                           _tl131945132416_
                                           _e131950132419_
                                           _hd131949132422_
                                           _tl131948132424_
                                           _e131953132427_
                                           _hd131952132430_
                                           _tl131951132432_
                                           _e131956132435_
                                           _hd131955132438_
                                           _tl131954132440_
                                           _e131959132443_
                                           _hd131958132446_
                                           _tl131957132448_
                                           _e131962132451_
                                           _hd131961132454_
                                           _tl131960132456_
                                           _e131965132459_
                                           _hd131964132462_
                                           _tl131963132464_
                                           _e131968132467_
                                           _hd131967132470_
                                           _tl131966132472_
                                           _e131971132475_
                                           _hd131970132478_
                                           _tl131969132480_
                                           _e131974132483_
                                           _hd131973132486_
                                           _tl131972132488_))
                                      (___match136386136387_
                                       _e131947132411_
                                       _hd131946132414_
                                       _tl131945132416_
                                       _e131950132419_
                                       _hd131949132422_
                                       _tl131948132424_
                                       _e131953132427_
                                       _hd131952132430_
                                       _tl131951132432_
                                       _e131956132435_
                                       _hd131955132438_
                                       _tl131954132440_
                                       _e131959132443_
                                       _hd131958132446_
                                       _tl131957132448_
                                       _e131962132451_
                                       _hd131961132454_
                                       _tl131960132456_
                                       _e131965132459_
                                       _hd131964132462_
                                       _tl131963132464_
                                       _e131968132467_
                                       _hd131967132470_
                                       _tl131966132472_))))
                              (___match136386136387_
                               _e131947132411_
                               _hd131946132414_
                               _tl131945132416_
                               _e131950132419_
                               _hd131949132422_
                               _tl131948132424_
                               _e131953132427_
                               _hd131952132430_
                               _tl131951132432_
                               _e131956132435_
                               _hd131955132438_
                               _tl131954132440_
                               _e131959132443_
                               _hd131958132446_
                               _tl131957132448_
                               _e131962132451_
                               _hd131961132454_
                               _tl131960132456_
                               _e131965132459_
                               _hd131964132462_
                               _tl131963132464_
                               _e131968132467_
                               _hd131967132470_
                               _tl131966132472_))
                          (___match136386136387_
                           _e131947132411_
                           _hd131946132414_
                           _tl131945132416_
                           _e131950132419_
                           _hd131949132422_
                           _tl131948132424_
                           _e131953132427_
                           _hd131952132430_
                           _tl131951132432_
                           _e131956132435_
                           _hd131955132438_
                           _tl131954132440_
                           _e131959132443_
                           _hd131958132446_
                           _tl131957132448_
                           _e131962132451_
                           _hd131961132454_
                           _tl131960132456_
                           _e131965132459_
                           _hd131964132462_
                           _tl131963132464_
                           _e131968132467_
                           _hd131967132470_
                           _tl131966132472_))))
                   (___match136104136105_
                    (lambda (_e131896132530_
                             _hd131895132533_
                             _tl131894132535_
                             _e131899132538_
                             _hd131898132541_
                             _tl131897132543_
                             _e131902132546_
                             _hd131901132549_
                             _tl131900132551_
                             _e131905132554_
                             _hd131904132557_
                             _tl131903132559_
                             _e131908132562_
                             _hd131907132565_
                             _tl131906132567_
                             _e131911132570_
                             _hd131910132573_
                             _tl131909132575_
                             _e131914132578_
                             _hd131913132581_
                             _tl131912132583_
                             _e131917132586_
                             _hd131916132589_
                             _tl131915132591_
                             _e131920132594_
                             _hd131919132597_
                             _tl131918132599_
                             _e131923132602_
                             _hd131922132605_
                             _tl131921132607_
                             _e131926132610_
                             _hd131925132613_
                             _tl131924132615_
                             _e131929132618_
                             _hd131928132621_
                             _tl131927132623_
                             _e131932132626_
                             _hd131931132629_
                             _tl131930132631_
                             ___splice135897135898_
                             _target131933132634_
                             _tl131935132636_)
                      (letrec ((_loop131936132639_
                                (lambda (_hd131934132642_ _args131940132644_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131934132642_))
                                      (let ((_e131937132647_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131934132642_))))
                                        (let ((_lp-tl131939132652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131937132647_)))
                                              (_lp-hd131938132650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131937132647_))))
                                          (let ((__tmp137196
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131938132650_
                                                         _args131940132644_))))
                                            (declare (not safe))
                                            (_loop131936132639_
                                             _lp-tl131939132652_
                                             __tmp137196))))
                                      (let ((_args131941132655_
                                             (reverse _args131940132644_)))
                                        (let ((_L132658_ _args131941132655_)
                                              (_L132659_ _hd131931132629_)
                                              (_L132660_ _hd131922132605_)
                                              (_L132661_ _hd131913132581_)
                                              (_L132662_ _hd131904132557_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132662_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132661_
                                                      'call-method))
                                                   (let ((__tmp137195
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131835_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132660_
                                                      __tmp137195)))
                                              (___kont135895135896_
                                               _L132658_
                                               _L132659_
                                               _L132660_
                                               _L132661_
                                               _L132662_)
                                              (___kont135907135908_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131936132639_ _target131933132634_ '())))))
                   (___match136062136063_
                    (lambda (_e131896132530_
                             _hd131895132533_
                             _tl131894132535_
                             _e131899132538_
                             _hd131898132541_
                             _tl131897132543_
                             _e131902132546_
                             _hd131901132549_
                             _tl131900132551_
                             _e131905132554_
                             _hd131904132557_
                             _tl131903132559_
                             _e131908132562_
                             _hd131907132565_
                             _tl131906132567_
                             _e131911132570_
                             _hd131910132573_
                             _tl131909132575_
                             _e131914132578_
                             _hd131913132581_
                             _tl131912132583_
                             _e131917132586_
                             _hd131916132589_
                             _tl131915132591_
                             _e131920132594_
                             _hd131919132597_
                             _tl131918132599_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131919132597_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131918132599_))
                              (let ((_e131923132602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131918132599_))))
                                (let ((_tl131921132607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131923132602_)))
                                      (_hd131922132605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131923132602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131921132607_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131915132591_))
                                          (let ((_e131926132610_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131915132591_))))
                                            (let ((_tl131924132615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131926132610_)))
                                                  (_hd131925132613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131926132610_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131925132613_))
                                                  (let ((_e131929132618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131925132613_))))
                                                    (let ((_tl131927132623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131929132618_)))
                                                          (_hd131928132621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131929132618_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131928132621_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131928132621_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131927132623_))
                          (let ((_e131932132626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131927132623_))))
                            (let ((_tl131930132631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131932132626_)))
                                  (_hd131931132629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131932132626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131930132631_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131924132615_))
                                      (let ((___splice135897135898_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131924132615_
                                                '0))))
                                        (let ((_tl131935132636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135897135898_
                                                  '1)))
                                              (_target131933132634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135897135898_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131935132636_))
                                              (___match136104136105_
                                               _e131896132530_
                                               _hd131895132533_
                                               _tl131894132535_
                                               _e131899132538_
                                               _hd131898132541_
                                               _tl131897132543_
                                               _e131902132546_
                                               _hd131901132549_
                                               _tl131900132551_
                                               _e131905132554_
                                               _hd131904132557_
                                               _tl131903132559_
                                               _e131908132562_
                                               _hd131907132565_
                                               _tl131906132567_
                                               _e131911132570_
                                               _hd131910132573_
                                               _tl131909132575_
                                               _e131914132578_
                                               _hd131913132581_
                                               _tl131912132583_
                                               _e131917132586_
                                               _hd131916132589_
                                               _tl131915132591_
                                               _e131920132594_
                                               _hd131919132597_
                                               _tl131918132599_
                                               _e131923132602_
                                               _hd131922132605_
                                               _tl131921132607_
                                               _e131926132610_
                                               _hd131925132613_
                                               _tl131924132615_
                                               _e131929132618_
                                               _hd131928132621_
                                               _tl131927132623_
                                               _e131932132626_
                                               _hd131931132629_
                                               _tl131930132631_
                                               ___splice135897135898_
                                               _target131933132634_
                                               _tl131935132636_)
                                              (___kont135907135908_))))
                                      (___kont135907135908_))
                                  (___kont135907135908_))))
                          (___kont135907135908_))
                      (___kont135907135908_))
                  (___kont135907135908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135907135908_))))
                                          (___match136386136387_
                                           _e131896132530_
                                           _hd131895132533_
                                           _tl131894132535_
                                           _e131899132538_
                                           _hd131898132541_
                                           _tl131897132543_
                                           _e131902132546_
                                           _hd131901132549_
                                           _tl131900132551_
                                           _e131905132554_
                                           _hd131904132557_
                                           _tl131903132559_
                                           _e131908132562_
                                           _hd131907132565_
                                           _tl131906132567_
                                           _e131911132570_
                                           _hd131910132573_
                                           _tl131909132575_
                                           _e131914132578_
                                           _hd131913132581_
                                           _tl131912132583_
                                           _e131917132586_
                                           _hd131916132589_
                                           _tl131915132591_))
                                      (___match136386136387_
                                       _e131896132530_
                                       _hd131895132533_
                                       _tl131894132535_
                                       _e131899132538_
                                       _hd131898132541_
                                       _tl131897132543_
                                       _e131902132546_
                                       _hd131901132549_
                                       _tl131900132551_
                                       _e131905132554_
                                       _hd131904132557_
                                       _tl131903132559_
                                       _e131908132562_
                                       _hd131907132565_
                                       _tl131906132567_
                                       _e131911132570_
                                       _hd131910132573_
                                       _tl131909132575_
                                       _e131914132578_
                                       _hd131913132581_
                                       _tl131912132583_
                                       _e131917132586_
                                       _hd131916132589_
                                       _tl131915132591_))))
                              (___match136386136387_
                               _e131896132530_
                               _hd131895132533_
                               _tl131894132535_
                               _e131899132538_
                               _hd131898132541_
                               _tl131897132543_
                               _e131902132546_
                               _hd131901132549_
                               _tl131900132551_
                               _e131905132554_
                               _hd131904132557_
                               _tl131903132559_
                               _e131908132562_
                               _hd131907132565_
                               _tl131906132567_
                               _e131911132570_
                               _hd131910132573_
                               _tl131909132575_
                               _e131914132578_
                               _hd131913132581_
                               _tl131912132583_
                               _e131917132586_
                               _hd131916132589_
                               _tl131915132591_))
                          (___match136172136173_
                           _e131896132530_
                           _hd131895132533_
                           _tl131894132535_
                           _e131899132538_
                           _hd131898132541_
                           _tl131897132543_
                           _e131902132546_
                           _hd131901132549_
                           _tl131900132551_
                           _e131905132554_
                           _hd131904132557_
                           _tl131903132559_
                           _e131908132562_
                           _hd131907132565_
                           _tl131906132567_
                           _e131911132570_
                           _hd131910132573_
                           _tl131909132575_
                           _e131914132578_
                           _hd131913132581_
                           _tl131912132583_
                           _e131917132586_
                           _hd131916132589_
                           _tl131915132591_
                           _e131920132594_
                           _hd131919132597_
                           _tl131918132599_))))
                   (___match135994135995_
                    (lambda (_e131852132719_
                             _hd131851132722_
                             _tl131850132724_
                             _e131855132727_
                             _hd131854132730_
                             _tl131853132732_
                             _e131858132735_
                             _hd131857132738_
                             _tl131856132740_
                             _e131861132743_
                             _hd131860132746_
                             _tl131859132748_
                             _e131864132751_
                             _hd131863132754_
                             _tl131862132756_
                             _e131867132759_
                             _hd131866132762_
                             _tl131865132764_
                             _e131870132767_
                             _hd131869132770_
                             _tl131868132772_
                             _e131873132775_
                             _hd131872132778_
                             _tl131871132780_
                             _e131876132783_
                             _hd131875132786_
                             _tl131874132788_
                             _e131879132791_
                             _hd131878132794_
                             _tl131877132796_
                             ___splice135893135894_
                             _target131880132799_
                             _tl131882132801_)
                      (letrec ((_loop131883132804_
                                (lambda (_hd131881132807_ _args131887132809_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131881132807_))
                                      (let ((_e131884132812_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131881132807_))))
                                        (let ((_lp-tl131886132817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131884132812_)))
                                              (_lp-hd131885132815_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131884132812_))))
                                          (let ((__tmp137198
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131885132815_
                                                         _args131887132809_))))
                                            (declare (not safe))
                                            (_loop131883132804_
                                             _lp-tl131886132817_
                                             __tmp137198))))
                                      (let ((_args131888132820_
                                             (reverse _args131887132809_)))
                                        (let ((_L132823_ _args131888132820_)
                                              (_L132824_ _hd131878132794_)
                                              (_L132825_ _hd131869132770_)
                                              (_L132826_ _hd131860132746_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132826_
                                                      'call-method))
                                                   (let ((__tmp137197
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131835_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132825_
                                                      __tmp137197)))
                                              (___kont135891135892_
                                               _L132823_
                                               _L132824_
                                               _L132825_
                                               _L132826_)
                                              (___match136182136183_
                                               _e131852132719_
                                               _hd131851132722_
                                               _tl131850132724_
                                               _e131855132727_
                                               _hd131854132730_
                                               _tl131853132732_
                                               _e131858132735_
                                               _hd131857132738_
                                               _tl131856132740_
                                               _e131861132743_
                                               _hd131860132746_
                                               _tl131859132748_
                                               _e131864132751_
                                               _hd131863132754_
                                               _tl131862132756_
                                               _e131867132759_
                                               _hd131866132762_
                                               _tl131865132764_
                                               _e131870132767_
                                               _hd131869132770_
                                               _tl131868132772_
                                               _e131873132775_
                                               _hd131872132778_
                                               _tl131871132780_
                                               _e131876132783_
                                               _hd131875132786_
                                               _tl131874132788_
                                               _e131879132791_
                                               _hd131878132794_
                                               _tl131877132796_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131883132804_ _target131880132799_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx135889135890_))
                  (let ((_e131852132719_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx135889135890_))))
                    (let ((_tl131850132724_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131852132719_)))
                          (_hd131851132722_
                           (let ()
                             (declare (not safe))
                             (##car _e131852132719_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131850132724_))
                          (let ((_e131855132727_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131850132724_))))
                            (let ((_tl131853132732_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131855132727_)))
                                  (_hd131854132730_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131855132727_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd131854132730_))
                                  (let ((_e131858132735_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd131854132730_))))
                                    (let ((_tl131856132740_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e131858132735_)))
                                          (_hd131857132738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e131858132735_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd131857132738_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd131857132738_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl131856132740_))
                                                  (let ((_e131861132743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl131856132740_))))
                                                    (let ((_tl131859132748_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131861132743_)))
                                                          (_hd131860132746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131861132743_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl131859132748_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl131853132732_))
                      (let ((_e131864132751_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl131853132732_))))
                        (let ((_tl131862132756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131864132751_)))
                              (_hd131863132754_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131864132751_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd131863132754_))
                              (let ((_e131867132759_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd131863132754_))))
                                (let ((_tl131865132764_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131867132759_)))
                                      (_hd131866132762_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131867132759_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd131866132762_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd131866132762_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl131865132764_))
                                              (let ((_e131870132767_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl131865132764_))))
                                                (let ((_tl131868132772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131870132767_)))
                                                      (_hd131869132770_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131870132767_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl131868132772_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl131862132756_))
                                                          (let ((_e131873132775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl131862132756_))))
                    (let ((_tl131871132780_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131873132775_)))
                          (_hd131872132778_
                           (let ()
                             (declare (not safe))
                             (##car _e131873132775_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd131872132778_))
                          (let ((_e131876132783_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd131872132778_))))
                            (let ((_tl131874132788_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131876132783_)))
                                  (_hd131875132786_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131876132783_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd131875132786_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd131875132786_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131874132788_))
                                          (let ((_e131879132791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131874132788_))))
                                            (let ((_tl131877132796_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131879132791_)))
                                                  (_hd131878132794_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131879132791_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl131877132796_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl131871132780_))
                                                      (let ((___splice135893135894_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl131871132780_ '0))))
                (let ((_tl131882132801_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135893135894_ '1)))
                      (_target131880132799_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135893135894_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl131882132801_))
                      (___match135994135995_
                       _e131852132719_
                       _hd131851132722_
                       _tl131850132724_
                       _e131855132727_
                       _hd131854132730_
                       _tl131853132732_
                       _e131858132735_
                       _hd131857132738_
                       _tl131856132740_
                       _e131861132743_
                       _hd131860132746_
                       _tl131859132748_
                       _e131864132751_
                       _hd131863132754_
                       _tl131862132756_
                       _e131867132759_
                       _hd131866132762_
                       _tl131865132764_
                       _e131870132767_
                       _hd131869132770_
                       _tl131868132772_
                       _e131873132775_
                       _hd131872132778_
                       _tl131871132780_
                       _e131876132783_
                       _hd131875132786_
                       _tl131874132788_
                       _e131879132791_
                       _hd131878132794_
                       _tl131877132796_
                       ___splice135893135894_
                       _target131880132799_
                       _tl131882132801_)
                      (___match136182136183_
                       _e131852132719_
                       _hd131851132722_
                       _tl131850132724_
                       _e131855132727_
                       _hd131854132730_
                       _tl131853132732_
                       _e131858132735_
                       _hd131857132738_
                       _tl131856132740_
                       _e131861132743_
                       _hd131860132746_
                       _tl131859132748_
                       _e131864132751_
                       _hd131863132754_
                       _tl131862132756_
                       _e131867132759_
                       _hd131866132762_
                       _tl131865132764_
                       _e131870132767_
                       _hd131869132770_
                       _tl131868132772_
                       _e131873132775_
                       _hd131872132778_
                       _tl131871132780_
                       _e131876132783_
                       _hd131875132786_
                       _tl131874132788_
                       _e131879132791_
                       _hd131878132794_
                       _tl131877132796_))))
              (___match136182136183_
               _e131852132719_
               _hd131851132722_
               _tl131850132724_
               _e131855132727_
               _hd131854132730_
               _tl131853132732_
               _e131858132735_
               _hd131857132738_
               _tl131856132740_
               _e131861132743_
               _hd131860132746_
               _tl131859132748_
               _e131864132751_
               _hd131863132754_
               _tl131862132756_
               _e131867132759_
               _hd131866132762_
               _tl131865132764_
               _e131870132767_
               _hd131869132770_
               _tl131868132772_
               _e131873132775_
               _hd131872132778_
               _tl131871132780_
               _e131876132783_
               _hd131875132786_
               _tl131874132788_
               _e131879132791_
               _hd131878132794_
               _tl131877132796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136386136387_
                                                   _e131852132719_
                                                   _hd131851132722_
                                                   _tl131850132724_
                                                   _e131855132727_
                                                   _hd131854132730_
                                                   _tl131853132732_
                                                   _e131858132735_
                                                   _hd131857132738_
                                                   _tl131856132740_
                                                   _e131861132743_
                                                   _hd131860132746_
                                                   _tl131859132748_
                                                   _e131864132751_
                                                   _hd131863132754_
                                                   _tl131862132756_
                                                   _e131867132759_
                                                   _hd131866132762_
                                                   _tl131865132764_
                                                   _e131870132767_
                                                   _hd131869132770_
                                                   _tl131868132772_
                                                   _e131873132775_
                                                   _hd131872132778_
                                                   _tl131871132780_))))
                                          (___match136386136387_
                                           _e131852132719_
                                           _hd131851132722_
                                           _tl131850132724_
                                           _e131855132727_
                                           _hd131854132730_
                                           _tl131853132732_
                                           _e131858132735_
                                           _hd131857132738_
                                           _tl131856132740_
                                           _e131861132743_
                                           _hd131860132746_
                                           _tl131859132748_
                                           _e131864132751_
                                           _hd131863132754_
                                           _tl131862132756_
                                           _e131867132759_
                                           _hd131866132762_
                                           _tl131865132764_
                                           _e131870132767_
                                           _hd131869132770_
                                           _tl131868132772_
                                           _e131873132775_
                                           _hd131872132778_
                                           _tl131871132780_))
                                      (___match136062136063_
                                       _e131852132719_
                                       _hd131851132722_
                                       _tl131850132724_
                                       _e131855132727_
                                       _hd131854132730_
                                       _tl131853132732_
                                       _e131858132735_
                                       _hd131857132738_
                                       _tl131856132740_
                                       _e131861132743_
                                       _hd131860132746_
                                       _tl131859132748_
                                       _e131864132751_
                                       _hd131863132754_
                                       _tl131862132756_
                                       _e131867132759_
                                       _hd131866132762_
                                       _tl131865132764_
                                       _e131870132767_
                                       _hd131869132770_
                                       _tl131868132772_
                                       _e131873132775_
                                       _hd131872132778_
                                       _tl131871132780_
                                       _e131876132783_
                                       _hd131875132786_
                                       _tl131874132788_))
                                  (___match136386136387_
                                   _e131852132719_
                                   _hd131851132722_
                                   _tl131850132724_
                                   _e131855132727_
                                   _hd131854132730_
                                   _tl131853132732_
                                   _e131858132735_
                                   _hd131857132738_
                                   _tl131856132740_
                                   _e131861132743_
                                   _hd131860132746_
                                   _tl131859132748_
                                   _e131864132751_
                                   _hd131863132754_
                                   _tl131862132756_
                                   _e131867132759_
                                   _hd131866132762_
                                   _tl131865132764_
                                   _e131870132767_
                                   _hd131869132770_
                                   _tl131868132772_
                                   _e131873132775_
                                   _hd131872132778_
                                   _tl131871132780_))))
                          (___match136386136387_
                           _e131852132719_
                           _hd131851132722_
                           _tl131850132724_
                           _e131855132727_
                           _hd131854132730_
                           _tl131853132732_
                           _e131858132735_
                           _hd131857132738_
                           _tl131856132740_
                           _e131861132743_
                           _hd131860132746_
                           _tl131859132748_
                           _e131864132751_
                           _hd131863132754_
                           _tl131862132756_
                           _e131867132759_
                           _hd131866132762_
                           _tl131865132764_
                           _e131870132767_
                           _hd131869132770_
                           _tl131868132772_
                           _e131873132775_
                           _hd131872132778_
                           _tl131871132780_))))
                  (___match136324136325_
                   _e131852132719_
                   _hd131851132722_
                   _tl131850132724_
                   _e131855132727_
                   _hd131854132730_
                   _tl131853132732_
                   _e131858132735_
                   _hd131857132738_
                   _tl131856132740_
                   _e131861132743_
                   _hd131860132746_
                   _tl131859132748_
                   _e131864132751_
                   _hd131863132754_
                   _tl131862132756_
                   _e131867132759_
                   _hd131866132762_
                   _tl131865132764_
                   _e131870132767_
                   _hd131869132770_
                   _tl131868132772_))
              (___kont135907135908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135907135908_))
                                          (___kont135907135908_))
                                      (___kont135907135908_))))
                              (___kont135907135908_))))
                      (___kont135907135908_))
                  (___kont135907135908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135907135908_))
                                              (___kont135907135908_))
                                          (___kont135907135908_))))
                                  (___kont135907135908_))))
                          (___kont135907135908_))))
                  (___kont135907135908_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self130774_ _stx130775_)
        (letrec ((_force-e130777_
                  (lambda (_target131833_)
                    (let ((__tmp137199
                           (let ((__tmp137203
                                  (let ((__tmp137204
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137204)))
                                 (__tmp137200
                                  (let ((__tmp137201
                                         (let ((__tmp137202
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target131833_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137202))))
                                    (declare (not safe))
                                    (cons __tmp137201 '()))))
                             (declare (not safe))
                             (cons __tmp137203 __tmp137200))))
                      (declare (not safe))
                      (cons '%#call __tmp137199)))))
          (let* ((___stx136391136392_ _stx130775_)
                 (_g130785131007_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136391136392_)))))
            (let ((___kont136393136394_
                   (lambda (_L131779_ _L131780_ _L131781_ _L131782_)
                     (let ((_$method131827_
                            (let ((__tmp137206
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130774_ 'methods)))
                                  (__tmp137205
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131780_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137206 __tmp137205)))
                           (_args131828_
                            (map (lambda (_g131815131817_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130774_
                                      _g131815131817_)))
                                 (let ((__tmp137207
                                        (lambda (_g131819131822_
                                                 _g131820131824_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131819131822_
                                                  _g131820131824_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137207 '() _L131779_)))))
                       (let ((__tmp137208
                              (let ((__tmp137209
                                     (let ((__tmp137214
                                            (let ()
                                              (declare (not safe))
                                              (_force-e130777_
                                               _$method131827_)))
                                           (__tmp137210
                                            (let ((__tmp137211
                                                   (let ((__tmp137212
                                                          (let ((__tmp137213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self130774_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137213 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137212))))
                                              (declare (not safe))
                                              (cons __tmp137211
                                                    _args131828_))))
                                       (declare (not safe))
                                       (cons __tmp137214 __tmp137210))))
                                (declare (not safe))
                                (cons '%#call __tmp137209))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137208 _stx130775_)))))
                  (___kont136397136398_
                   (lambda (_L131611_ _L131612_ _L131613_ _L131614_ _L131615_)
                     (let ((_$method131667_
                            (let ((__tmp137216
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130774_ 'methods)))
                                  (__tmp137215
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131612_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137216 __tmp137215)))
                           (_args131668_
                            (map (lambda (_g131655131657_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130774_
                                      _g131655131657_)))
                                 (let ((__tmp137217
                                        (lambda (_g131659131662_
                                                 _g131660131664_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131659131662_
                                                  _g131660131664_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137217 '() _L131611_)))))
                       (let ((__tmp137218
                              (let ((__tmp137219
                                     (let ((__tmp137226
                                            (let ((__tmp137227
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137227)))
                                           (__tmp137220
                                            (let ((__tmp137225
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e130777_
                                                      _$method131667_)))
                                                  (__tmp137221
                                                   (let ((__tmp137222
                                                          (let ((__tmp137223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137224
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130774_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137224 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137223))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137222
                                                           _args131668_))))
                                              (declare (not safe))
                                              (cons __tmp137225 __tmp137221))))
                                       (declare (not safe))
                                       (cons __tmp137226 __tmp137220))))
                                (declare (not safe))
                                (cons '%#call __tmp137219))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137218 _stx130775_)))))
                  (___kont136401136402_
                   (lambda (_L131442_ _L131443_ _L131444_)
                     (let* ((_$field131476_
                             (let ((__tmp137229
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self130774_ 'slots)))
                                   (__tmp137228
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131442_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137229 __tmp137228)))
                            (__tmp137230
                             (let ((__tmp137231
                                    (let ((__tmp137239
                                           (let ((__tmp137240
                                                  (let ((__tmp137241
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self130774_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137241 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137240)))
                                          (__tmp137232
                                           (let ((__tmp137237
                                                  (let ((__tmp137238
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137238)))
                                                 (__tmp137233
                                                  (let ((__tmp137234
                                                         (let ((__tmp137235
                                                                (let ((__tmp137236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self130774_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137236 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137234 '()))))
                                             (declare (not safe))
                                             (cons __tmp137237 __tmp137233))))
                                      (declare (not safe))
                                      (cons __tmp137239 __tmp137232))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137231))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137230 _stx130775_))))
                  (___kont136403136404_
                   (lambda (_L131316_ _L131317_ _L131318_ _L131319_)
                     (let ((_$field131354_
                            (let ((__tmp137243
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130774_ 'slots)))
                                  (__tmp137242
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131317_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137243 __tmp137242)))
                           (_expr131355_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self130774_ _L131316_))))
                       (let ((__tmp137244
                              (let ((__tmp137245
                                     (let ((__tmp137254
                                            (let ((__tmp137255
                                                   (let ((__tmp137256
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130774_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137256 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137255)))
                                           (__tmp137246
                                            (let ((__tmp137252
                                                   (let ((__tmp137253
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137253)))
                                                  (__tmp137247
                                                   (let ((__tmp137249
                                                          (let ((__tmp137250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137251
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130774_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137251 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137250)))
                 (__tmp137248
                  (let () (declare (not safe)) (cons _expr131355_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137249
                                                           __tmp137248))))
                                              (declare (not safe))
                                              (cons __tmp137252 __tmp137247))))
                                       (declare (not safe))
                                       (cons __tmp137254 __tmp137246))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137245))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137244 _stx130775_)))))
                  (___kont136405136406_
                   (lambda (_L131188_ _L131189_)
                     (let* ((_accessor131211_
                             (let ((__tmp137257
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131189_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137257)))
                            (_klass131213_
                             (let ((__tmp137258
                                    (##structure-ref
                                     _accessor131211_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130775_
                                __tmp137258)))
                            (_slot131215_
                             (##structure-ref
                              _accessor131211_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137272
                                       (##structure-ref
                                        _accessor131211_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137272))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131213_
                                       _slot131215_))
                                    (##structure-ref
                                     _klass131213_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx130775_
                           (let* ((_$field131221_
                                   (let ((__tmp137259
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137259 _slot131215_)))
                                  (__tmp137260
                                   (let ((__tmp137261
                                          (let ((__tmp137269
                                                 (let ((__tmp137270
                                                        (let ((__tmp137271
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130774_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137271 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137270)))
                                                (__tmp137262
                                                 (let ((__tmp137267
                                                        (let ((__tmp137268
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131221_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137268)))
               (__tmp137263
                (let ((__tmp137264
                       (let ((__tmp137265
                              (let ((__tmp137266
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130774_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137266 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137265))))
                  (declare (not safe))
                  (cons __tmp137264 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137267
                                                         __tmp137263))))
                                            (declare (not safe))
                                            (cons __tmp137269 __tmp137262))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137261))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137260
                              _stx130775_))))))
                  (___kont136407136408_
                   (lambda (_L131083_ _L131084_ _L131085_)
                     (let* ((_mutator131113_
                             (let ((__tmp137273
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131085_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137273)))
                            (_klass131115_
                             (let ((__tmp137274
                                    (##structure-ref
                                     _mutator131113_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130775_
                                __tmp137274)))
                            (_slot131117_
                             (##structure-ref
                              _mutator131113_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131119_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self130774_ _L131083_))))
                       (if (and (let ((__tmp137299
                                       (##structure-ref
                                        _mutator131113_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137299))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131115_
                                       _slot131117_))
                                    (##structure-ref
                                     _klass131115_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137289
                                  (let ((__tmp137290
                                         (let ((__tmp137296
                                                (let ((__tmp137298
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137297
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131085_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137298
                                                        __tmp137297)))
                                               (__tmp137291
                                                (let ((__tmp137293
                                                       (let ((__tmp137295
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137294
                      (let () (declare (not safe)) (cons _L131084_ '()))))
                 (declare (not safe))
                 (cons __tmp137295 __tmp137294)))
              (__tmp137292
               (let () (declare (not safe)) (cons _expr131119_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137293
                                                        __tmp137292))))
                                           (declare (not safe))
                                           (cons __tmp137296 __tmp137291))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137290))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137289 _stx130775_))
                           (let* ((_$field131125_
                                   (let ((__tmp137275
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137275 _slot131117_)))
                                  (__tmp137276
                                   (let ((__tmp137277
                                          (let ((__tmp137286
                                                 (let ((__tmp137287
                                                        (let ((__tmp137288
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130774_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137288 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137287)))
                                                (__tmp137278
                                                 (let ((__tmp137284
                                                        (let ((__tmp137285
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131125_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137285)))
               (__tmp137279
                (let ((__tmp137281
                       (let ((__tmp137282
                              (let ((__tmp137283
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130774_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137283 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137282)))
                      (__tmp137280
                       (let () (declare (not safe)) (cons _expr131119_ '()))))
                  (declare (not safe))
                  (cons __tmp137281 __tmp137280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137284
                                                         __tmp137279))))
                                            (declare (not safe))
                                            (cons __tmp137286 __tmp137278))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137277))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137276
                              _stx130775_))))))
                  (___kont136409136410_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self130774_ _stx130775_)))))
              (let* ((___match136890136891_
                      (lambda (_e130981131019_
                               _hd130980131022_
                               _tl130979131024_
                               _e130984131027_
                               _hd130983131030_
                               _tl130982131032_
                               _e130987131035_
                               _hd130986131038_
                               _tl130985131040_
                               _e130990131043_
                               _hd130989131046_
                               _tl130988131048_
                               _e130993131051_
                               _hd130992131054_
                               _tl130991131056_
                               _e130996131059_
                               _hd130995131062_
                               _tl130994131064_
                               _e130999131067_
                               _hd130998131070_
                               _tl130997131072_
                               _e131002131075_
                               _hd131001131078_
                               _tl131000131080_)
                        (let ((_L131083_ _hd131001131078_)
                              (_L131084_ _hd130998131070_)
                              (_L131085_ _hd130989131046_))
                          (if (and (let ((__tmp137302
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131084_
                                      __tmp137302))
                                   (let ((__tmp137300
                                          (let ((__tmp137301
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131085_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137301))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137300
                                      'gxc#!mutator::t)))
                              (___kont136407136408_
                               _L131083_
                               _L131084_
                               _L131085_)
                              (___kont136409136410_)))))
                     (___match136888136889_
                      (lambda (_e130981131019_
                               _hd130980131022_
                               _tl130979131024_
                               _e130984131027_
                               _hd130983131030_
                               _tl130982131032_
                               _e130987131035_
                               _hd130986131038_
                               _tl130985131040_
                               _e130990131043_
                               _hd130989131046_
                               _tl130988131048_
                               _e130993131051_
                               _hd130992131054_
                               _tl130991131056_
                               _e130996131059_
                               _hd130995131062_
                               _tl130994131064_
                               _e130999131067_
                               _hd130998131070_
                               _tl130997131072_
                               _e131002131075_
                               _hd131001131078_
                               _tl131000131080_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl131000131080_))
                            (___match136890136891_
                             _e130981131019_
                             _hd130980131022_
                             _tl130979131024_
                             _e130984131027_
                             _hd130983131030_
                             _tl130982131032_
                             _e130987131035_
                             _hd130986131038_
                             _tl130985131040_
                             _e130990131043_
                             _hd130989131046_
                             _tl130988131048_
                             _e130993131051_
                             _hd130992131054_
                             _tl130991131056_
                             _e130996131059_
                             _hd130995131062_
                             _tl130994131064_
                             _e130999131067_
                             _hd130998131070_
                             _tl130997131072_
                             _e131002131075_
                             _hd131001131078_
                             _tl131000131080_)
                            (___kont136409136410_))))
                     (___match136882136883_
                      (lambda (_e130981131019_
                               _hd130980131022_
                               _tl130979131024_
                               _e130984131027_
                               _hd130983131030_
                               _tl130982131032_
                               _e130987131035_
                               _hd130986131038_
                               _tl130985131040_
                               _e130990131043_
                               _hd130989131046_
                               _tl130988131048_
                               _e130993131051_
                               _hd130992131054_
                               _tl130991131056_
                               _e130996131059_
                               _hd130995131062_
                               _tl130994131064_
                               _e130999131067_
                               _hd130998131070_
                               _tl130997131072_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130991131056_))
                            (let ((_e131002131075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130991131056_))))
                              (let ((_tl131000131080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e131002131075_)))
                                    (_hd131001131078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e131002131075_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl131000131080_))
                                    (___match136890136891_
                                     _e130981131019_
                                     _hd130980131022_
                                     _tl130979131024_
                                     _e130984131027_
                                     _hd130983131030_
                                     _tl130982131032_
                                     _e130987131035_
                                     _hd130986131038_
                                     _tl130985131040_
                                     _e130990131043_
                                     _hd130989131046_
                                     _tl130988131048_
                                     _e130993131051_
                                     _hd130992131054_
                                     _tl130991131056_
                                     _e130996131059_
                                     _hd130995131062_
                                     _tl130994131064_
                                     _e130999131067_
                                     _hd130998131070_
                                     _tl130997131072_
                                     _e131002131075_
                                     _hd131001131078_
                                     _tl131000131080_)
                                    (___kont136409136410_))))
                            (___kont136409136410_))))
                     (___match136828136829_
                      (lambda (_e130957131132_
                               _hd130956131135_
                               _tl130955131137_
                               _e130960131140_
                               _hd130959131143_
                               _tl130958131145_
                               _e130963131148_
                               _hd130962131151_
                               _tl130961131153_
                               _e130966131156_
                               _hd130965131159_
                               _tl130964131161_
                               _e130969131164_
                               _hd130968131167_
                               _tl130967131169_
                               _e130972131172_
                               _hd130971131175_
                               _tl130970131177_
                               _e130975131180_
                               _hd130974131183_
                               _tl130973131185_)
                        (let ((_L131188_ _hd130974131183_)
                              (_L131189_ _hd130965131159_))
                          (if (and (let ((__tmp137305
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131188_
                                      __tmp137305))
                                   (let ((__tmp137303
                                          (let ((__tmp137304
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131189_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137304))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137303
                                      'gxc#!accessor::t)))
                              (___kont136405136406_ _L131188_ _L131189_)
                              (___kont136409136410_)))))
                     (___match136826136827_
                      (lambda (_e130957131132_
                               _hd130956131135_
                               _tl130955131137_
                               _e130960131140_
                               _hd130959131143_
                               _tl130958131145_
                               _e130963131148_
                               _hd130962131151_
                               _tl130961131153_
                               _e130966131156_
                               _hd130965131159_
                               _tl130964131161_
                               _e130969131164_
                               _hd130968131167_
                               _tl130967131169_
                               _e130972131172_
                               _hd130971131175_
                               _tl130970131177_
                               _e130975131180_
                               _hd130974131183_
                               _tl130973131185_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130967131169_))
                            (___match136828136829_
                             _e130957131132_
                             _hd130956131135_
                             _tl130955131137_
                             _e130960131140_
                             _hd130959131143_
                             _tl130958131145_
                             _e130963131148_
                             _hd130962131151_
                             _tl130961131153_
                             _e130966131156_
                             _hd130965131159_
                             _tl130964131161_
                             _e130969131164_
                             _hd130968131167_
                             _tl130967131169_
                             _e130972131172_
                             _hd130971131175_
                             _tl130970131177_
                             _e130975131180_
                             _hd130974131183_
                             _tl130973131185_)
                            (___match136882136883_
                             _e130957131132_
                             _hd130956131135_
                             _tl130955131137_
                             _e130960131140_
                             _hd130959131143_
                             _tl130958131145_
                             _e130963131148_
                             _hd130962131151_
                             _tl130961131153_
                             _e130966131156_
                             _hd130965131159_
                             _tl130964131161_
                             _e130969131164_
                             _hd130968131167_
                             _tl130967131169_
                             _e130972131172_
                             _hd130971131175_
                             _tl130970131177_
                             _e130975131180_
                             _hd130974131183_
                             _tl130973131185_))))
                     (___match136772136773_
                      (lambda (_e130922131228_
                               _hd130921131231_
                               _tl130920131233_
                               _e130925131236_
                               _hd130924131239_
                               _tl130923131241_
                               _e130928131244_
                               _hd130927131247_
                               _tl130926131249_
                               _e130931131252_
                               _hd130930131255_
                               _tl130929131257_
                               _e130934131260_
                               _hd130933131263_
                               _tl130932131265_
                               _e130937131268_
                               _hd130936131271_
                               _tl130935131273_
                               _e130940131276_
                               _hd130939131279_
                               _tl130938131281_
                               _e130943131284_
                               _hd130942131287_
                               _tl130941131289_
                               _e130946131292_
                               _hd130945131295_
                               _tl130944131297_
                               _e130949131300_
                               _hd130948131303_
                               _tl130947131305_
                               _e130952131308_
                               _hd130951131311_
                               _tl130950131313_)
                        (let ((_L131316_ _hd130951131311_)
                              (_L131317_ _hd130948131303_)
                              (_L131318_ _hd130939131279_)
                              (_L131319_ _hd130930131255_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131319_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131319_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137306
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131318_
                                      __tmp137306)))
                              (___kont136403136404_
                               _L131316_
                               _L131317_
                               _L131318_
                               _L131319_)
                              (___kont136409136410_)))))
                     (___match136764136765_
                      (lambda (_e130922131228_
                               _hd130921131231_
                               _tl130920131233_
                               _e130925131236_
                               _hd130924131239_
                               _tl130923131241_
                               _e130928131244_
                               _hd130927131247_
                               _tl130926131249_
                               _e130931131252_
                               _hd130930131255_
                               _tl130929131257_
                               _e130934131260_
                               _hd130933131263_
                               _tl130932131265_
                               _e130937131268_
                               _hd130936131271_
                               _tl130935131273_
                               _e130940131276_
                               _hd130939131279_
                               _tl130938131281_
                               _e130943131284_
                               _hd130942131287_
                               _tl130941131289_
                               _e130946131292_
                               _hd130945131295_
                               _tl130944131297_
                               _e130949131300_
                               _hd130948131303_
                               _tl130947131305_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130941131289_))
                            (let ((_e130952131308_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130941131289_))))
                              (let ((_tl130950131313_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130952131308_)))
                                    (_hd130951131311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130952131308_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130950131313_))
                                    (___match136772136773_
                                     _e130922131228_
                                     _hd130921131231_
                                     _tl130920131233_
                                     _e130925131236_
                                     _hd130924131239_
                                     _tl130923131241_
                                     _e130928131244_
                                     _hd130927131247_
                                     _tl130926131249_
                                     _e130931131252_
                                     _hd130930131255_
                                     _tl130929131257_
                                     _e130934131260_
                                     _hd130933131263_
                                     _tl130932131265_
                                     _e130937131268_
                                     _hd130936131271_
                                     _tl130935131273_
                                     _e130940131276_
                                     _hd130939131279_
                                     _tl130938131281_
                                     _e130943131284_
                                     _hd130942131287_
                                     _tl130941131289_
                                     _e130946131292_
                                     _hd130945131295_
                                     _tl130944131297_
                                     _e130949131300_
                                     _hd130948131303_
                                     _tl130947131305_
                                     _e130952131308_
                                     _hd130951131311_
                                     _tl130950131313_)
                                    (___kont136409136410_))))
                            (___match136888136889_
                             _e130922131228_
                             _hd130921131231_
                             _tl130920131233_
                             _e130925131236_
                             _hd130924131239_
                             _tl130923131241_
                             _e130928131244_
                             _hd130927131247_
                             _tl130926131249_
                             _e130931131252_
                             _hd130930131255_
                             _tl130929131257_
                             _e130934131260_
                             _hd130933131263_
                             _tl130932131265_
                             _e130937131268_
                             _hd130936131271_
                             _tl130935131273_
                             _e130940131276_
                             _hd130939131279_
                             _tl130938131281_
                             _e130943131284_
                             _hd130942131287_
                             _tl130941131289_))))
                     (___match136686136687_
                      (lambda (_e130888131362_
                               _hd130887131365_
                               _tl130886131367_
                               _e130891131370_
                               _hd130890131373_
                               _tl130889131375_
                               _e130894131378_
                               _hd130893131381_
                               _tl130892131383_
                               _e130897131386_
                               _hd130896131389_
                               _tl130895131391_
                               _e130900131394_
                               _hd130899131397_
                               _tl130898131399_
                               _e130903131402_
                               _hd130902131405_
                               _tl130901131407_
                               _e130906131410_
                               _hd130905131413_
                               _tl130904131415_
                               _e130909131418_
                               _hd130908131421_
                               _tl130907131423_
                               _e130912131426_
                               _hd130911131429_
                               _tl130910131431_
                               _e130915131434_
                               _hd130914131437_
                               _tl130913131439_)
                        (let ((_L131442_ _hd130914131437_)
                              (_L131443_ _hd130905131413_)
                              (_L131444_ _hd130896131389_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131444_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131444_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137307
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130774_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131443_
                                      __tmp137307)))
                              (___kont136401136402_
                               _L131442_
                               _L131443_
                               _L131444_)
                              (___match136890136891_
                               _e130888131362_
                               _hd130887131365_
                               _tl130886131367_
                               _e130891131370_
                               _hd130890131373_
                               _tl130889131375_
                               _e130894131378_
                               _hd130893131381_
                               _tl130892131383_
                               _e130897131386_
                               _hd130896131389_
                               _tl130895131391_
                               _e130900131394_
                               _hd130899131397_
                               _tl130898131399_
                               _e130903131402_
                               _hd130902131405_
                               _tl130901131407_
                               _e130906131410_
                               _hd130905131413_
                               _tl130904131415_
                               _e130909131418_
                               _hd130908131421_
                               _tl130907131423_)))))
                     (___match136684136685_
                      (lambda (_e130888131362_
                               _hd130887131365_
                               _tl130886131367_
                               _e130891131370_
                               _hd130890131373_
                               _tl130889131375_
                               _e130894131378_
                               _hd130893131381_
                               _tl130892131383_
                               _e130897131386_
                               _hd130896131389_
                               _tl130895131391_
                               _e130900131394_
                               _hd130899131397_
                               _tl130898131399_
                               _e130903131402_
                               _hd130902131405_
                               _tl130901131407_
                               _e130906131410_
                               _hd130905131413_
                               _tl130904131415_
                               _e130909131418_
                               _hd130908131421_
                               _tl130907131423_
                               _e130912131426_
                               _hd130911131429_
                               _tl130910131431_
                               _e130915131434_
                               _hd130914131437_
                               _tl130913131439_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130907131423_))
                            (___match136686136687_
                             _e130888131362_
                             _hd130887131365_
                             _tl130886131367_
                             _e130891131370_
                             _hd130890131373_
                             _tl130889131375_
                             _e130894131378_
                             _hd130893131381_
                             _tl130892131383_
                             _e130897131386_
                             _hd130896131389_
                             _tl130895131391_
                             _e130900131394_
                             _hd130899131397_
                             _tl130898131399_
                             _e130903131402_
                             _hd130902131405_
                             _tl130901131407_
                             _e130906131410_
                             _hd130905131413_
                             _tl130904131415_
                             _e130909131418_
                             _hd130908131421_
                             _tl130907131423_
                             _e130912131426_
                             _hd130911131429_
                             _tl130910131431_
                             _e130915131434_
                             _hd130914131437_
                             _tl130913131439_)
                            (___match136764136765_
                             _e130888131362_
                             _hd130887131365_
                             _tl130886131367_
                             _e130891131370_
                             _hd130890131373_
                             _tl130889131375_
                             _e130894131378_
                             _hd130893131381_
                             _tl130892131383_
                             _e130897131386_
                             _hd130896131389_
                             _tl130895131391_
                             _e130900131394_
                             _hd130899131397_
                             _tl130898131399_
                             _e130903131402_
                             _hd130902131405_
                             _tl130901131407_
                             _e130906131410_
                             _hd130905131413_
                             _tl130904131415_
                             _e130909131418_
                             _hd130908131421_
                             _tl130907131423_
                             _e130912131426_
                             _hd130911131429_
                             _tl130910131431_
                             _e130915131434_
                             _hd130914131437_
                             _tl130913131439_))))
                     (___match136674136675_
                      (lambda (_e130888131362_
                               _hd130887131365_
                               _tl130886131367_
                               _e130891131370_
                               _hd130890131373_
                               _tl130889131375_
                               _e130894131378_
                               _hd130893131381_
                               _tl130892131383_
                               _e130897131386_
                               _hd130896131389_
                               _tl130895131391_
                               _e130900131394_
                               _hd130899131397_
                               _tl130898131399_
                               _e130903131402_
                               _hd130902131405_
                               _tl130901131407_
                               _e130906131410_
                               _hd130905131413_
                               _tl130904131415_
                               _e130909131418_
                               _hd130908131421_
                               _tl130907131423_
                               _e130912131426_
                               _hd130911131429_
                               _tl130910131431_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130911131429_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130910131431_))
                                (let ((_e130915131434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130910131431_))))
                                  (let ((_tl130913131439_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130915131434_)))
                                        (_hd130914131437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130915131434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130913131439_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130907131423_))
                                            (___match136686136687_
                                             _e130888131362_
                                             _hd130887131365_
                                             _tl130886131367_
                                             _e130891131370_
                                             _hd130890131373_
                                             _tl130889131375_
                                             _e130894131378_
                                             _hd130893131381_
                                             _tl130892131383_
                                             _e130897131386_
                                             _hd130896131389_
                                             _tl130895131391_
                                             _e130900131394_
                                             _hd130899131397_
                                             _tl130898131399_
                                             _e130903131402_
                                             _hd130902131405_
                                             _tl130901131407_
                                             _e130906131410_
                                             _hd130905131413_
                                             _tl130904131415_
                                             _e130909131418_
                                             _hd130908131421_
                                             _tl130907131423_
                                             _e130912131426_
                                             _hd130911131429_
                                             _tl130910131431_
                                             _e130915131434_
                                             _hd130914131437_
                                             _tl130913131439_)
                                            (___match136764136765_
                                             _e130888131362_
                                             _hd130887131365_
                                             _tl130886131367_
                                             _e130891131370_
                                             _hd130890131373_
                                             _tl130889131375_
                                             _e130894131378_
                                             _hd130893131381_
                                             _tl130892131383_
                                             _e130897131386_
                                             _hd130896131389_
                                             _tl130895131391_
                                             _e130900131394_
                                             _hd130899131397_
                                             _tl130898131399_
                                             _e130903131402_
                                             _hd130902131405_
                                             _tl130901131407_
                                             _e130906131410_
                                             _hd130905131413_
                                             _tl130904131415_
                                             _e130909131418_
                                             _hd130908131421_
                                             _tl130907131423_
                                             _e130912131426_
                                             _hd130911131429_
                                             _tl130910131431_
                                             _e130915131434_
                                             _hd130914131437_
                                             _tl130913131439_))
                                        (___match136888136889_
                                         _e130888131362_
                                         _hd130887131365_
                                         _tl130886131367_
                                         _e130891131370_
                                         _hd130890131373_
                                         _tl130889131375_
                                         _e130894131378_
                                         _hd130893131381_
                                         _tl130892131383_
                                         _e130897131386_
                                         _hd130896131389_
                                         _tl130895131391_
                                         _e130900131394_
                                         _hd130899131397_
                                         _tl130898131399_
                                         _e130903131402_
                                         _hd130902131405_
                                         _tl130901131407_
                                         _e130906131410_
                                         _hd130905131413_
                                         _tl130904131415_
                                         _e130909131418_
                                         _hd130908131421_
                                         _tl130907131423_))))
                                (___match136888136889_
                                 _e130888131362_
                                 _hd130887131365_
                                 _tl130886131367_
                                 _e130891131370_
                                 _hd130890131373_
                                 _tl130889131375_
                                 _e130894131378_
                                 _hd130893131381_
                                 _tl130892131383_
                                 _e130897131386_
                                 _hd130896131389_
                                 _tl130895131391_
                                 _e130900131394_
                                 _hd130899131397_
                                 _tl130898131399_
                                 _e130903131402_
                                 _hd130902131405_
                                 _tl130901131407_
                                 _e130906131410_
                                 _hd130905131413_
                                 _tl130904131415_
                                 _e130909131418_
                                 _hd130908131421_
                                 _tl130907131423_))
                            (___match136888136889_
                             _e130888131362_
                             _hd130887131365_
                             _tl130886131367_
                             _e130891131370_
                             _hd130890131373_
                             _tl130889131375_
                             _e130894131378_
                             _hd130893131381_
                             _tl130892131383_
                             _e130897131386_
                             _hd130896131389_
                             _tl130895131391_
                             _e130900131394_
                             _hd130899131397_
                             _tl130898131399_
                             _e130903131402_
                             _hd130902131405_
                             _tl130901131407_
                             _e130906131410_
                             _hd130905131413_
                             _tl130904131415_
                             _e130909131418_
                             _hd130908131421_
                             _tl130907131423_))))
                     (___match136606136607_
                      (lambda (_e130837131483_
                               _hd130836131486_
                               _tl130835131488_
                               _e130840131491_
                               _hd130839131494_
                               _tl130838131496_
                               _e130843131499_
                               _hd130842131502_
                               _tl130841131504_
                               _e130846131507_
                               _hd130845131510_
                               _tl130844131512_
                               _e130849131515_
                               _hd130848131518_
                               _tl130847131520_
                               _e130852131523_
                               _hd130851131526_
                               _tl130850131528_
                               _e130855131531_
                               _hd130854131534_
                               _tl130853131536_
                               _e130858131539_
                               _hd130857131542_
                               _tl130856131544_
                               _e130861131547_
                               _hd130860131550_
                               _tl130859131552_
                               _e130864131555_
                               _hd130863131558_
                               _tl130862131560_
                               _e130867131563_
                               _hd130866131566_
                               _tl130865131568_
                               _e130870131571_
                               _hd130869131574_
                               _tl130868131576_
                               _e130873131579_
                               _hd130872131582_
                               _tl130871131584_
                               ___splice136399136400_
                               _target130874131587_
                               _tl130876131589_)
                        (letrec ((_loop130877131592_
                                  (lambda (_hd130875131595_ _args130881131597_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130875131595_))
                                        (let ((_e130878131600_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130875131595_))))
                                          (let ((_lp-tl130880131605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130878131600_)))
                                                (_lp-hd130879131603_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130878131600_))))
                                            (let ((__tmp137309
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130879131603_
                                                           _args130881131597_))))
                                              (declare (not safe))
                                              (_loop130877131592_
                                               _lp-tl130880131605_
                                               __tmp137309))))
                                        (let ((_args130882131608_
                                               (reverse _args130881131597_)))
                                          (let ((_L131611_ _args130882131608_)
                                                (_L131612_ _hd130872131582_)
                                                (_L131613_ _hd130863131558_)
                                                (_L131614_ _hd130854131534_)
                                                (_L131615_ _hd130845131510_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131615_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131614_
                                                        'call-method))
                                                     (let ((__tmp137308
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130774_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131613_
                                                        __tmp137308)))
                                                (___kont136397136398_
                                                 _L131611_
                                                 _L131612_
                                                 _L131613_
                                                 _L131614_
                                                 _L131615_)
                                                (___kont136409136410_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130877131592_ _target130874131587_ '())))))
                     (___match136564136565_
                      (lambda (_e130837131483_
                               _hd130836131486_
                               _tl130835131488_
                               _e130840131491_
                               _hd130839131494_
                               _tl130838131496_
                               _e130843131499_
                               _hd130842131502_
                               _tl130841131504_
                               _e130846131507_
                               _hd130845131510_
                               _tl130844131512_
                               _e130849131515_
                               _hd130848131518_
                               _tl130847131520_
                               _e130852131523_
                               _hd130851131526_
                               _tl130850131528_
                               _e130855131531_
                               _hd130854131534_
                               _tl130853131536_
                               _e130858131539_
                               _hd130857131542_
                               _tl130856131544_
                               _e130861131547_
                               _hd130860131550_
                               _tl130859131552_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd130860131550_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130859131552_))
                                (let ((_e130864131555_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130859131552_))))
                                  (let ((_tl130862131560_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130864131555_)))
                                        (_hd130863131558_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130864131555_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130862131560_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130856131544_))
                                            (let ((_e130867131563_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130856131544_))))
                                              (let ((_tl130865131568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130867131563_)))
                                                    (_hd130866131566_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130867131563_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd130866131566_))
                                                    (let ((_e130870131571_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd130866131566_))))
                                                      (let ((_tl130868131576_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130870131571_)))
                    (_hd130869131574_
                     (let () (declare (not safe)) (##car _e130870131571_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd130869131574_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd130869131574_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130868131576_))
                            (let ((_e130873131579_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130868131576_))))
                              (let ((_tl130871131584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130873131579_)))
                                    (_hd130872131582_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130873131579_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130871131584_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130865131568_))
                                        (let ((___splice136399136400_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130865131568_
                                                  '0))))
                                          (let ((_tl130876131589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136399136400_
                                                    '1)))
                                                (_target130874131587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136399136400_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl130876131589_))
                                                (___match136606136607_
                                                 _e130837131483_
                                                 _hd130836131486_
                                                 _tl130835131488_
                                                 _e130840131491_
                                                 _hd130839131494_
                                                 _tl130838131496_
                                                 _e130843131499_
                                                 _hd130842131502_
                                                 _tl130841131504_
                                                 _e130846131507_
                                                 _hd130845131510_
                                                 _tl130844131512_
                                                 _e130849131515_
                                                 _hd130848131518_
                                                 _tl130847131520_
                                                 _e130852131523_
                                                 _hd130851131526_
                                                 _tl130850131528_
                                                 _e130855131531_
                                                 _hd130854131534_
                                                 _tl130853131536_
                                                 _e130858131539_
                                                 _hd130857131542_
                                                 _tl130856131544_
                                                 _e130861131547_
                                                 _hd130860131550_
                                                 _tl130859131552_
                                                 _e130864131555_
                                                 _hd130863131558_
                                                 _tl130862131560_
                                                 _e130867131563_
                                                 _hd130866131566_
                                                 _tl130865131568_
                                                 _e130870131571_
                                                 _hd130869131574_
                                                 _tl130868131576_
                                                 _e130873131579_
                                                 _hd130872131582_
                                                 _tl130871131584_
                                                 ___splice136399136400_
                                                 _target130874131587_
                                                 _tl130876131589_)
                                                (___kont136409136410_))))
                                        (___kont136409136410_))
                                    (___kont136409136410_))))
                            (___kont136409136410_))
                        (___kont136409136410_))
                    (___kont136409136410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136409136410_))))
                                            (___match136888136889_
                                             _e130837131483_
                                             _hd130836131486_
                                             _tl130835131488_
                                             _e130840131491_
                                             _hd130839131494_
                                             _tl130838131496_
                                             _e130843131499_
                                             _hd130842131502_
                                             _tl130841131504_
                                             _e130846131507_
                                             _hd130845131510_
                                             _tl130844131512_
                                             _e130849131515_
                                             _hd130848131518_
                                             _tl130847131520_
                                             _e130852131523_
                                             _hd130851131526_
                                             _tl130850131528_
                                             _e130855131531_
                                             _hd130854131534_
                                             _tl130853131536_
                                             _e130858131539_
                                             _hd130857131542_
                                             _tl130856131544_))
                                        (___match136888136889_
                                         _e130837131483_
                                         _hd130836131486_
                                         _tl130835131488_
                                         _e130840131491_
                                         _hd130839131494_
                                         _tl130838131496_
                                         _e130843131499_
                                         _hd130842131502_
                                         _tl130841131504_
                                         _e130846131507_
                                         _hd130845131510_
                                         _tl130844131512_
                                         _e130849131515_
                                         _hd130848131518_
                                         _tl130847131520_
                                         _e130852131523_
                                         _hd130851131526_
                                         _tl130850131528_
                                         _e130855131531_
                                         _hd130854131534_
                                         _tl130853131536_
                                         _e130858131539_
                                         _hd130857131542_
                                         _tl130856131544_))))
                                (___match136888136889_
                                 _e130837131483_
                                 _hd130836131486_
                                 _tl130835131488_
                                 _e130840131491_
                                 _hd130839131494_
                                 _tl130838131496_
                                 _e130843131499_
                                 _hd130842131502_
                                 _tl130841131504_
                                 _e130846131507_
                                 _hd130845131510_
                                 _tl130844131512_
                                 _e130849131515_
                                 _hd130848131518_
                                 _tl130847131520_
                                 _e130852131523_
                                 _hd130851131526_
                                 _tl130850131528_
                                 _e130855131531_
                                 _hd130854131534_
                                 _tl130853131536_
                                 _e130858131539_
                                 _hd130857131542_
                                 _tl130856131544_))
                            (___match136674136675_
                             _e130837131483_
                             _hd130836131486_
                             _tl130835131488_
                             _e130840131491_
                             _hd130839131494_
                             _tl130838131496_
                             _e130843131499_
                             _hd130842131502_
                             _tl130841131504_
                             _e130846131507_
                             _hd130845131510_
                             _tl130844131512_
                             _e130849131515_
                             _hd130848131518_
                             _tl130847131520_
                             _e130852131523_
                             _hd130851131526_
                             _tl130850131528_
                             _e130855131531_
                             _hd130854131534_
                             _tl130853131536_
                             _e130858131539_
                             _hd130857131542_
                             _tl130856131544_
                             _e130861131547_
                             _hd130860131550_
                             _tl130859131552_))))
                     (___match136496136497_
                      (lambda (_e130793131675_
                               _hd130792131678_
                               _tl130791131680_
                               _e130796131683_
                               _hd130795131686_
                               _tl130794131688_
                               _e130799131691_
                               _hd130798131694_
                               _tl130797131696_
                               _e130802131699_
                               _hd130801131702_
                               _tl130800131704_
                               _e130805131707_
                               _hd130804131710_
                               _tl130803131712_
                               _e130808131715_
                               _hd130807131718_
                               _tl130806131720_
                               _e130811131723_
                               _hd130810131726_
                               _tl130809131728_
                               _e130814131731_
                               _hd130813131734_
                               _tl130812131736_
                               _e130817131739_
                               _hd130816131742_
                               _tl130815131744_
                               _e130820131747_
                               _hd130819131750_
                               _tl130818131752_
                               ___splice136395136396_
                               _target130821131755_
                               _tl130823131757_)
                        (letrec ((_loop130824131760_
                                  (lambda (_hd130822131763_ _args130828131765_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130822131763_))
                                        (let ((_e130825131768_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130822131763_))))
                                          (let ((_lp-tl130827131773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130825131768_)))
                                                (_lp-hd130826131771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130825131768_))))
                                            (let ((__tmp137311
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130826131771_
                                                           _args130828131765_))))
                                              (declare (not safe))
                                              (_loop130824131760_
                                               _lp-tl130827131773_
                                               __tmp137311))))
                                        (let ((_args130829131776_
                                               (reverse _args130828131765_)))
                                          (let ((_L131779_ _args130829131776_)
                                                (_L131780_ _hd130819131750_)
                                                (_L131781_ _hd130810131726_)
                                                (_L131782_ _hd130801131702_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131782_
                                                        'call-method))
                                                     (let ((__tmp137310
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130774_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131781_
                                                        __tmp137310)))
                                                (___kont136393136394_
                                                 _L131779_
                                                 _L131780_
                                                 _L131781_
                                                 _L131782_)
                                                (___match136684136685_
                                                 _e130793131675_
                                                 _hd130792131678_
                                                 _tl130791131680_
                                                 _e130796131683_
                                                 _hd130795131686_
                                                 _tl130794131688_
                                                 _e130799131691_
                                                 _hd130798131694_
                                                 _tl130797131696_
                                                 _e130802131699_
                                                 _hd130801131702_
                                                 _tl130800131704_
                                                 _e130805131707_
                                                 _hd130804131710_
                                                 _tl130803131712_
                                                 _e130808131715_
                                                 _hd130807131718_
                                                 _tl130806131720_
                                                 _e130811131723_
                                                 _hd130810131726_
                                                 _tl130809131728_
                                                 _e130814131731_
                                                 _hd130813131734_
                                                 _tl130812131736_
                                                 _e130817131739_
                                                 _hd130816131742_
                                                 _tl130815131744_
                                                 _e130820131747_
                                                 _hd130819131750_
                                                 _tl130818131752_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130824131760_ _target130821131755_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136391136392_))
                    (let ((_e130793131675_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136391136392_))))
                      (let ((_tl130791131680_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130793131675_)))
                            (_hd130792131678_
                             (let ()
                               (declare (not safe))
                               (##car _e130793131675_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130791131680_))
                            (let ((_e130796131683_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130791131680_))))
                              (let ((_tl130794131688_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130796131683_)))
                                    (_hd130795131686_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130796131683_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130795131686_))
                                    (let ((_e130799131691_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130795131686_))))
                                      (let ((_tl130797131696_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130799131691_)))
                                            (_hd130798131694_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130799131691_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd130798131694_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd130798131694_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl130797131696_))
                                                    (let ((_e130802131699_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl130797131696_))))
                                                      (let ((_tl130800131704_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130802131699_)))
                    (_hd130801131702_
                     (let () (declare (not safe)) (##car _e130802131699_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl130800131704_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl130794131688_))
                        (let ((_e130805131707_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl130794131688_))))
                          (let ((_tl130803131712_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e130805131707_)))
                                (_hd130804131710_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e130805131707_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd130804131710_))
                                (let ((_e130808131715_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd130804131710_))))
                                  (let ((_tl130806131720_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130808131715_)))
                                        (_hd130807131718_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130808131715_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd130807131718_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd130807131718_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130806131720_))
                                                (let ((_e130811131723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130806131720_))))
                                                  (let ((_tl130809131728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130811131723_)))
                                                        (_hd130810131726_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130811131723_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130809131728_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl130803131712_))
                                                            (let ((_e130814131731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl130803131712_))))
                      (let ((_tl130812131736_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130814131731_)))
                            (_hd130813131734_
                             (let ()
                               (declare (not safe))
                               (##car _e130814131731_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd130813131734_))
                            (let ((_e130817131739_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd130813131734_))))
                              (let ((_tl130815131744_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130817131739_)))
                                    (_hd130816131742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130817131739_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd130816131742_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd130816131742_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130815131744_))
                                            (let ((_e130820131747_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130815131744_))))
                                              (let ((_tl130818131752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130820131747_)))
                                                    (_hd130819131750_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130820131747_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl130818131752_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl130812131736_))
                                                        (let ((___splice136395136396_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl130812131736_ '0))))
                  (let ((_tl130823131757_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136395136396_ '1)))
                        (_target130821131755_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136395136396_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl130823131757_))
                        (___match136496136497_
                         _e130793131675_
                         _hd130792131678_
                         _tl130791131680_
                         _e130796131683_
                         _hd130795131686_
                         _tl130794131688_
                         _e130799131691_
                         _hd130798131694_
                         _tl130797131696_
                         _e130802131699_
                         _hd130801131702_
                         _tl130800131704_
                         _e130805131707_
                         _hd130804131710_
                         _tl130803131712_
                         _e130808131715_
                         _hd130807131718_
                         _tl130806131720_
                         _e130811131723_
                         _hd130810131726_
                         _tl130809131728_
                         _e130814131731_
                         _hd130813131734_
                         _tl130812131736_
                         _e130817131739_
                         _hd130816131742_
                         _tl130815131744_
                         _e130820131747_
                         _hd130819131750_
                         _tl130818131752_
                         ___splice136395136396_
                         _target130821131755_
                         _tl130823131757_)
                        (___match136684136685_
                         _e130793131675_
                         _hd130792131678_
                         _tl130791131680_
                         _e130796131683_
                         _hd130795131686_
                         _tl130794131688_
                         _e130799131691_
                         _hd130798131694_
                         _tl130797131696_
                         _e130802131699_
                         _hd130801131702_
                         _tl130800131704_
                         _e130805131707_
                         _hd130804131710_
                         _tl130803131712_
                         _e130808131715_
                         _hd130807131718_
                         _tl130806131720_
                         _e130811131723_
                         _hd130810131726_
                         _tl130809131728_
                         _e130814131731_
                         _hd130813131734_
                         _tl130812131736_
                         _e130817131739_
                         _hd130816131742_
                         _tl130815131744_
                         _e130820131747_
                         _hd130819131750_
                         _tl130818131752_))))
                (___match136684136685_
                 _e130793131675_
                 _hd130792131678_
                 _tl130791131680_
                 _e130796131683_
                 _hd130795131686_
                 _tl130794131688_
                 _e130799131691_
                 _hd130798131694_
                 _tl130797131696_
                 _e130802131699_
                 _hd130801131702_
                 _tl130800131704_
                 _e130805131707_
                 _hd130804131710_
                 _tl130803131712_
                 _e130808131715_
                 _hd130807131718_
                 _tl130806131720_
                 _e130811131723_
                 _hd130810131726_
                 _tl130809131728_
                 _e130814131731_
                 _hd130813131734_
                 _tl130812131736_
                 _e130817131739_
                 _hd130816131742_
                 _tl130815131744_
                 _e130820131747_
                 _hd130819131750_
                 _tl130818131752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match136888136889_
                                                     _e130793131675_
                                                     _hd130792131678_
                                                     _tl130791131680_
                                                     _e130796131683_
                                                     _hd130795131686_
                                                     _tl130794131688_
                                                     _e130799131691_
                                                     _hd130798131694_
                                                     _tl130797131696_
                                                     _e130802131699_
                                                     _hd130801131702_
                                                     _tl130800131704_
                                                     _e130805131707_
                                                     _hd130804131710_
                                                     _tl130803131712_
                                                     _e130808131715_
                                                     _hd130807131718_
                                                     _tl130806131720_
                                                     _e130811131723_
                                                     _hd130810131726_
                                                     _tl130809131728_
                                                     _e130814131731_
                                                     _hd130813131734_
                                                     _tl130812131736_))))
                                            (___match136888136889_
                                             _e130793131675_
                                             _hd130792131678_
                                             _tl130791131680_
                                             _e130796131683_
                                             _hd130795131686_
                                             _tl130794131688_
                                             _e130799131691_
                                             _hd130798131694_
                                             _tl130797131696_
                                             _e130802131699_
                                             _hd130801131702_
                                             _tl130800131704_
                                             _e130805131707_
                                             _hd130804131710_
                                             _tl130803131712_
                                             _e130808131715_
                                             _hd130807131718_
                                             _tl130806131720_
                                             _e130811131723_
                                             _hd130810131726_
                                             _tl130809131728_
                                             _e130814131731_
                                             _hd130813131734_
                                             _tl130812131736_))
                                        (___match136564136565_
                                         _e130793131675_
                                         _hd130792131678_
                                         _tl130791131680_
                                         _e130796131683_
                                         _hd130795131686_
                                         _tl130794131688_
                                         _e130799131691_
                                         _hd130798131694_
                                         _tl130797131696_
                                         _e130802131699_
                                         _hd130801131702_
                                         _tl130800131704_
                                         _e130805131707_
                                         _hd130804131710_
                                         _tl130803131712_
                                         _e130808131715_
                                         _hd130807131718_
                                         _tl130806131720_
                                         _e130811131723_
                                         _hd130810131726_
                                         _tl130809131728_
                                         _e130814131731_
                                         _hd130813131734_
                                         _tl130812131736_
                                         _e130817131739_
                                         _hd130816131742_
                                         _tl130815131744_))
                                    (___match136888136889_
                                     _e130793131675_
                                     _hd130792131678_
                                     _tl130791131680_
                                     _e130796131683_
                                     _hd130795131686_
                                     _tl130794131688_
                                     _e130799131691_
                                     _hd130798131694_
                                     _tl130797131696_
                                     _e130802131699_
                                     _hd130801131702_
                                     _tl130800131704_
                                     _e130805131707_
                                     _hd130804131710_
                                     _tl130803131712_
                                     _e130808131715_
                                     _hd130807131718_
                                     _tl130806131720_
                                     _e130811131723_
                                     _hd130810131726_
                                     _tl130809131728_
                                     _e130814131731_
                                     _hd130813131734_
                                     _tl130812131736_))))
                            (___match136888136889_
                             _e130793131675_
                             _hd130792131678_
                             _tl130791131680_
                             _e130796131683_
                             _hd130795131686_
                             _tl130794131688_
                             _e130799131691_
                             _hd130798131694_
                             _tl130797131696_
                             _e130802131699_
                             _hd130801131702_
                             _tl130800131704_
                             _e130805131707_
                             _hd130804131710_
                             _tl130803131712_
                             _e130808131715_
                             _hd130807131718_
                             _tl130806131720_
                             _e130811131723_
                             _hd130810131726_
                             _tl130809131728_
                             _e130814131731_
                             _hd130813131734_
                             _tl130812131736_))))
                    (___match136826136827_
                     _e130793131675_
                     _hd130792131678_
                     _tl130791131680_
                     _e130796131683_
                     _hd130795131686_
                     _tl130794131688_
                     _e130799131691_
                     _hd130798131694_
                     _tl130797131696_
                     _e130802131699_
                     _hd130801131702_
                     _tl130800131704_
                     _e130805131707_
                     _hd130804131710_
                     _tl130803131712_
                     _e130808131715_
                     _hd130807131718_
                     _tl130806131720_
                     _e130811131723_
                     _hd130810131726_
                     _tl130809131728_))
                (___kont136409136410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136409136410_))
                                            (___kont136409136410_))
                                        (___kont136409136410_))))
                                (___kont136409136410_))))
                        (___kont136409136410_))
                    (___kont136409136410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136409136410_))
                                                (___kont136409136410_))
                                            (___kont136409136410_))))
                                    (___kont136409136410_))))
                            (___kont136409136410_))))
                    (___kont136409136410_))))))))))
