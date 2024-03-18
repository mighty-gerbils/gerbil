(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710715077)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp136890 (list gxc#::identity::t))
            (__tmp136888
             (let ((__tmp136889
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136889 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp136890
         '()
         __tmp136888
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _$args135754_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _$args135754_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp136891
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
        (make-promise __tmp136891)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx135746_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_self135749_
                (let ((__obj136883
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj136883))
               (__tmp136892
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self135749_ _stx135746_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp136892
           gxc#current-compile-method
           _self135749_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp136895 (list gxc#::void::t))
            (__tmp136893
             (let ((__tmp136894
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136894 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp136895
         '(receiver methods slots)
         __tmp136893
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _$args135743_
        (apply make-instance gxc#::collect-object-refs::t _$args135743_)))
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
      (let ((__tmp136896
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
        (make-promise __tmp136896)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_g136897_
               _receiver135704135709_
               _methods135705135711_
               _slots135706135713_
               _stx135715_)
        (let* ((_receiver135718_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135704135709_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135704135709_))
               (_methods135720_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135705135711_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135705135711_))
               (_slots135722_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135706135713_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135706135713_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_self135724_
                  (let ((__obj136885
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
                       __obj136885
                       _receiver135718_
                       '1
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136885
                       _methods135720_
                       '2
                       gxc#::collect-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136885
                       _slots135722_
                       '3
                       gxc#::collect-object-refs::t
                       '#f))
                    __obj136885))
                 (__tmp136898
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135724_ _stx135715_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136898
             gxc#current-compile-method
             _self135724_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_keys135703135731_ . _args135733_)
        (apply gxc#apply-collect-object-refs__%
               _keys135703135731_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135703135731_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135703135731_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135703135731_ 'slots: absent-value))
               _args135733_)))
    (define gxc#apply-collect-object-refs
      (lambda _args135707135739_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _args135707135739_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp136901 (list gxc#::basic-xform-expression::t))
            (__tmp136899
             (let ((__tmp136900
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp136900 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp136901
         '(receiver klass methods slots)
         __tmp136899
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _$args135699_
        (apply make-instance gxc#::subst-object-refs::t _$args135699_)))
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
      (let ((__tmp136902
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
        (make-promise __tmp136902)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_g136903_
               _receiver135655135661_
               _klass135656135663_
               _methods135657135665_
               _slots135658135667_
               _stx135669_)
        (let* ((_receiver135672_
                (if (let ()
                      (declare (not safe))
                      (eq? _receiver135655135661_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _receiver135655135661_))
               (_klass135674_
                (if (let ()
                      (declare (not safe))
                      (eq? _klass135656135663_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _klass135656135663_))
               (_methods135676_
                (if (let ()
                      (declare (not safe))
                      (eq? _methods135657135665_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _methods135657135665_))
               (_slots135678_
                (if (let ()
                      (declare (not safe))
                      (eq? _slots135658135667_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _slots135658135667_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_self135680_
                  (let ((__obj136887
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
                       __obj136887
                       _receiver135672_
                       '1
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136887
                       _klass135674_
                       '2
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136887
                       _methods135676_
                       '3
                       gxc#::subst-object-refs::t
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj136887
                       _slots135678_
                       '4
                       gxc#::subst-object-refs::t
                       '#f))
                    __obj136887))
                 (__tmp136904
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self135680_ _stx135669_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp136904
             gxc#current-compile-method
             _self135680_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_keys135654135687_ . _args135689_)
        (apply gxc#apply-subst-object-refs__%
               _keys135654135687_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135654135687_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135654135687_ 'klass: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys135654135687_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys135654135687_ 'slots: absent-value))
               _args135689_)))
    (define gxc#apply-subst-object-refs
      (lambda _args135659135695_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _args135659135695_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_self132864_ _stx132865_)
        (letrec ((_generate-method-bind132867_
                  (lambda (_$klass135646_
                           _$method-table135647_
                           _id135648_
                           _$id135649_)
                    (let ((_$tmp135651_
                           (let ((__tmp136905 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136905))))
                      (let ((__tmp136953
                             (let ()
                               (declare (not safe))
                               (cons _$id135649_ '())))
                            (__tmp136906
                             (let ((__tmp136907
                                    (let ((__tmp136908
                                           (let ((__tmp136951
                                                  (let ((__tmp136952
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp136952)))
                                                 (__tmp136909
                                                  (let ((__tmp136910
                                                         (let ((__tmp136911
                                                                (let ((__tmp136912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136913
                                      (let ((__tmp136914
                                             (let ((__tmp136934
                                                    (let ((__tmp136935
                                                           (let ((__tmp136950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp135651_ '())))
                         (__tmp136936
                          (let ((__tmp136937
                                 (let ((__tmp136938
                                        (let ((__tmp136948
                                               (let ((__tmp136949
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp136949)))
                                              (__tmp136939
                                               (let ((__tmp136946
                                                      (let ((__tmp136947
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table135647_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp136947)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp136940
                                                      (let ((__tmp136944
                                                             (let ((__tmp136945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id135648_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp136945)))
                    (__tmp136941
                     (let ((__tmp136942
                            (let ((__tmp136943
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136943))))
                       (declare (not safe))
                       (cons __tmp136942 '()))))
                (declare (not safe))
                (cons __tmp136944 __tmp136941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp136946
                                                       __tmp136940))))
                                          (declare (not safe))
                                          (cons __tmp136948 __tmp136939))))
                                   (declare (not safe))
                                   (cons '%#call __tmp136938))))
                            (declare (not safe))
                            (cons __tmp136937 '()))))
                     (declare (not safe))
                     (cons __tmp136950 __tmp136936))))
              (declare (not safe))
              (cons __tmp136935 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136915
                                                    (let ((__tmp136916
                                                           (let ((__tmp136917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp136932
                                 (let ((__tmp136933
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp135651_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp136933)))
                                (__tmp136918
                                 (let ((__tmp136930
                                        (let ((__tmp136931
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp135651_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp136931)))
                                       (__tmp136919
                                        (let ((__tmp136920
                                               (let ((__tmp136921
                                                      (let ((__tmp136928
                                                             (let ((__tmp136929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp136929)))
                    (__tmp136922
                     (let ((__tmp136926
                            (let ((__tmp136927
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp136927)))
                           (__tmp136923
                            (let ((__tmp136924
                                   (let ((__tmp136925
                                          (let ()
                                            (declare (not safe))
                                            (cons _id135648_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp136925))))
                              (declare (not safe))
                              (cons __tmp136924 '()))))
                       (declare (not safe))
                       (cons __tmp136926 __tmp136923))))
                (declare (not safe))
                (cons __tmp136928 __tmp136922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp136921))))
                                          (declare (not safe))
                                          (cons __tmp136920 '()))))
                                   (declare (not safe))
                                   (cons __tmp136930 __tmp136919))))
                            (declare (not safe))
                            (cons __tmp136932 __tmp136918))))
                     (declare (not safe))
                     (cons '%#if __tmp136917))))
              (declare (not safe))
              (cons __tmp136916 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136934
                                                     __tmp136915))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp136914))))
                                 (declare (not safe))
                                 (cons __tmp136913 '()))))
                          (declare (not safe))
                          (cons '() __tmp136912))))
                   (declare (not safe))
                   (cons '%#lambda __tmp136911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136910 '()))))
                                             (declare (not safe))
                                             (cons __tmp136951 __tmp136909))))
                                      (declare (not safe))
                                      (cons '%#call __tmp136908))))
                               (declare (not safe))
                               (cons __tmp136907 '()))))
                        (declare (not safe))
                        (cons __tmp136953 __tmp136906)))))
                 (_generate-slot-bind132868_
                  (lambda (_$klass135640_ _id135641_ _$id135642_)
                    (let ((_$tmp135644_
                           (let ((__tmp136954 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp136954))))
                      (let ((__tmp136991
                             (let ()
                               (declare (not safe))
                               (cons _$id135642_ '())))
                            (__tmp136955
                             (let ((__tmp136956
                                    (let ((__tmp136957
                                           (let ((__tmp136977
                                                  (let ((__tmp136978
                                                         (let ((__tmp136990
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp135644_ '())))
                       (__tmp136979
                        (let ((__tmp136980
                               (let ((__tmp136981
                                      (let ((__tmp136988
                                             (let ((__tmp136989
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp136989)))
                                            (__tmp136982
                                             (let ((__tmp136986
                                                    (let ((__tmp136987
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass135640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp136987)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136983
                                                    (let ((__tmp136984
                                                           (let ((__tmp136985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id135641_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp136985))))
              (declare (not safe))
              (cons __tmp136984 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136986
                                                     __tmp136983))))
                                        (declare (not safe))
                                        (cons __tmp136988 __tmp136982))))
                                 (declare (not safe))
                                 (cons '%#call __tmp136981))))
                          (declare (not safe))
                          (cons __tmp136980 '()))))
                   (declare (not safe))
                   (cons __tmp136990 __tmp136979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136978 '())))
                                                 (__tmp136958
                                                  (let ((__tmp136959
                                                         (let ((__tmp136960
                                                                (let ((__tmp136975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136976
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp135644_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp136976)))
                              (__tmp136961
                               (let ((__tmp136973
                                      (let ((__tmp136974
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp135644_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp136974)))
                                     (__tmp136962
                                      (let ((__tmp136963
                                             (let ((__tmp136964
                                                    (let ((__tmp136971
                                                           (let ((__tmp136972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp136972)))
                  (__tmp136965
                   (let ((__tmp136969
                          (let ((__tmp136970
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp136970)))
                         (__tmp136966
                          (let ((__tmp136967
                                 (let ((__tmp136968
                                        (let ()
                                          (declare (not safe))
                                          (cons _id135641_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp136968))))
                            (declare (not safe))
                            (cons __tmp136967 '()))))
                     (declare (not safe))
                     (cons __tmp136969 __tmp136966))))
              (declare (not safe))
              (cons __tmp136971 __tmp136965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp136964))))
                                        (declare (not safe))
                                        (cons __tmp136963 '()))))
                                 (declare (not safe))
                                 (cons __tmp136973 __tmp136962))))
                          (declare (not safe))
                          (cons __tmp136975 __tmp136961))))
                   (declare (not safe))
                   (cons '%#if __tmp136960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136959 '()))))
                                             (declare (not safe))
                                             (cons __tmp136977 __tmp136958))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp136957))))
                               (declare (not safe))
                               (cons __tmp136956 '()))))
                        (declare (not safe))
                        (cons __tmp136991 __tmp136955)))))
                 (_generate-specializer-impl132869_
                  (lambda (_$klass135634_
                           _$method-table135635_
                           _methods-bind135636_
                           _slots-bind135637_
                           _specializer-impl135638_)
                    (let ((__tmp136992
                           (let ((__tmp136993
                                  (let ((__tmp136999
                                         (let ((__tmp137000
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table135635_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass135634_ __tmp137000)))
                                        (__tmp136994
                                         (let ((__tmp136995
                                                (let ((__tmp136996
                                                       (let ((__tmp136998
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind135637_ _methods-bind135636_)))
                     (__tmp136997
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl135638_ '()))))
                 (declare (not safe))
                 (cons __tmp136998 __tmp136997))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp136996))))
                                           (declare (not safe))
                                           (cons __tmp136995 '()))))
                                    (declare (not safe))
                                    (cons __tmp136999 __tmp136994))))
                             (declare (not safe))
                             (cons '%#lambda __tmp136993))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp136992 _stx132865_))))
                 (_generate-specializer-def132870_
                  (lambda (_id135630_
                           _specializer-id135631_
                           _specializer-impl135632_)
                    (let ((__tmp137001
                           (let ((__tmp137002
                                  (let ((__tmp137003
                                         (let ((__tmp137016
                                                (let ((__tmp137017
                                                       (let ((__tmp137018
                                                              (let ((__tmp137020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id135631_ '())))
                            (__tmp137019
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl135632_ '()))))
                        (declare (not safe))
                        (cons __tmp137020 __tmp137019))))
                 (declare (not safe))
                 (cons '%#define-values __tmp137018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp137017
                                                   _stx132865_)))
                                               (__tmp137004
                                                (let ((__tmp137005
                                                       (let ((__tmp137006
                                                              (let ((__tmp137007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137014
                                    (let ((__tmp137015
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp137015)))
                                   (__tmp137008
                                    (let ((__tmp137012
                                           (let ((__tmp137013
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id135630_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137013)))
                                          (__tmp137009
                                           (let ((__tmp137010
                                                  (let ((__tmp137011
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id135631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp137011))))
                                             (declare (not safe))
                                             (cons __tmp137010 '()))))
                                      (declare (not safe))
                                      (cons __tmp137012 __tmp137009))))
                               (declare (not safe))
                               (cons __tmp137014 __tmp137008))))
                        (declare (not safe))
                        (cons '%#call __tmp137007))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137006 _stx132865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137005 '()))))
                                           (declare (not safe))
                                           (cons __tmp137016 __tmp137004))))
                                    (declare (not safe))
                                    (cons _stx132865_ __tmp137003))))
                             (declare (not safe))
                             (cons '%#begin __tmp137002))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp137001 _stx132865_)))))
          (let* ((___stx135843135844_ _stx132865_)
                 (_g132873132893_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx135843135844_)))))
            (let ((___kont135845135846_
                   (lambda (_L132937_ _L132938_)
                     (let ((_method-calls132957_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs132958_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty132959_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?132961_
                                 (lambda ()
                                   (if (let ((__tmp137022
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls132957_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137022))
                                       (let ((__tmp137021
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs132958_))))
                                         (declare (not safe))
                                         (fxzero? __tmp137021))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L132937_))
                             (let* ((___stx135757135758_ _L132937_)
                                    (_g133348133366_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx135757135758_)))))
                               (let ((___kont135759135760_
                                      (lambda (_L133402_ _L133403_ _L133404_)
                                        (for-each
                                         (lambda (_g133419133421_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g133419133421_
                                              'receiver:
                                              _L133404_
                                              'methods:
                                              _method-calls132957_
                                              'slots:
                                              _slot-refs132958_)))
                                         _L133402_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?132961_))
                                            _stx132865_
                                            (let* ((_specializer-id133430_
                                                    (let* ((_id133424_
                                                            (let ((__tmp137144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L132938_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp137144 '"::specialize")))
                   (_specializer-id133427_
                    (let ((__tmp137145
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx132865_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id133424_ __tmp137145))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id133427_))
              _specializer-id133427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass133432_
                                                    (let ((__tmp137146
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137146)))
                                                   (_$method-table133434_
                                                    (let ((__tmp137147
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp137147)))
                                                   (_methods133436_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls132957_)))
                                                   (_$methods133440_
                                                    (map (lambda (_id133438_)
                                                           (let ((__tmp137148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133438_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137148)))
                 _methods133436_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137149_
                                                    (for-each
                                                     (lambda (_g133441133444_
                                                              _g133442133446_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls132957_
                                                          _g133441133444_
                                                          _g133442133446_)))
                                                     _methods133436_
                                                     _$methods133440_))
                                                   (_methods-bind133457_
                                                    (map (lambda (_g133449133452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133450133454_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind132867_
                      _$klass133432_
                      _$method-table133434_
                      _g133449133452_
                      _g133450133454_)))
                 _methods133436_
                 _$methods133440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots133459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs132958_)))
                                                   (_$slots133463_
                                                    (map (lambda (_id133461_)
                                                           (let ((__tmp137150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id133461_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp137150)))
                 _slots133459_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g137151_
                                                    (for-each
                                                     (lambda (_g133464133467_
                                                              _g133465133469_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs132958_
                                                          _g133464133467_
                                                          _g133465133469_)))
                                                     _slots133459_
                                                     _$slots133463_))
                                                   (_slots-bind133480_
                                                    (map (lambda (_g133472133475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g133473133477_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind132868_
                      _$klass133432_
                      _g133472133475_
                      _g133473133477_)))
                 _slots133459_
                 _$slots133463_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body133486_
                                                    (map (lambda (_g133481133483_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g133481133483_
                                                              'receiver:
                                                              _L133404_
                                                              'klass:
                                                              _$klass133432_
                                                              'methods:
                                                              _method-calls132957_
                                                              'slots:
                                                              _slot-refs132958_)))
                                                         _L133402_))
                                                   (_specializer-impl133488_
                                                    (let ((__tmp137152
                                                           (let ((__tmp137153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137154
                                 (let ()
                                   (declare (not safe))
                                   (cons _L133404_ _L133403_))))
                            (declare (not safe))
                            (cons __tmp137154 _specializer-body133486_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137153))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp137152 _stx132865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl133490_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl132869_
                                                       _$klass133432_
                                                       _$method-table133434_
                                                       _methods-bind133457_
                                                       _slots-bind133480_
                                                       _specializer-impl133488_))))
                                              (let ((__tmp137156
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L132938_)))
                                                    (__tmp137155
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id133430_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp137156
                                                 '" => "
                                                 __tmp137155))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def132870_
                                                 _L132938_
                                                 _specializer-id133430_
                                                 _specializer-impl133490_))))))
                                     (___kont135761135762_
                                      (lambda () _stx132865_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx135757135758_))
                                     (let ((_e133355133378_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx135757135758_))))
                                       (let ((_tl133353133383_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e133355133378_)))
                                             (_hd133354133381_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e133355133378_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl133353133383_))
                                             (let ((_e133358133386_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl133353133383_))))
                                               (let ((_tl133356133391_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e133358133386_)))
                                                     (_hd133357133389_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e133358133386_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd133357133389_))
                                                     (let ((_e133361133394_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd133357133389_))))
                                                       (let ((_tl133359133399_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e133361133394_)))
                     (_hd133360133397_
                      (let () (declare (not safe)) (##car _e133361133394_))))
                 (___kont135759135760_
                  _tl133356133391_
                  _tl133359133399_
                  _hd133360133397_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135761135762_))))
                                             (___kont135761135762_))))
                                     (___kont135761135762_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L132937_))
                                 (let* ((_g133496133515_
                                         (lambda (_g133497133512_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g133497133512_))))
                                        (_g133495133798_
                                         (lambda (_g133497133518_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g133497133518_))
                                               (let ((_e133501133520_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g133497133518_))))
                                                 (let ((_hd133500133523_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133501133520_)))
                                                       (_tl133499133525_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133501133520_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl133499133525_))
                                                       (let ((_g137127_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl133499133525_ '0))))
                 (begin
                   (let ((_g137128_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g137127_)
                                (##vector-length _g137127_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g137128_ 2)))
                         (error "Context expects 2 values" _g137128_)))
                   (let ((_target133502133528_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137127_ 0)))
                         (_tl133504133530_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g137127_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl133504133530_))
                         (letrec ((_loop133505133533_
                                   (lambda (_hd133503133536_
                                            _clause133509133538_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133503133536_))
                                         (let ((_e133506133541_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133503133536_))))
                                           (let ((_lp-hd133507133544_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133506133541_)))
                                                 (_lp-tl133508133546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133506133541_))))
                                             (let ((__tmp137143
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd133507133544_
                                                            _clause133509133538_))))
                                               (declare (not safe))
                                               (_loop133505133533_
                                                _lp-tl133508133546_
                                                __tmp137143))))
                                         (let ((_clause133510133549_
                                                (reverse _clause133509133538_)))
                                           ((lambda (_L133552_)
                                              (for-each
                                               (lambda (_clause133565_)
                                                 (let* ((___stx135783135784_
                                                         _clause133565_)
                                                        (_g133568133583_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx135783135784_)))))
                                                   (let ((___kont135785135786_
                                                          (lambda (_L133611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L133612_
                           _L133613_)
                    (for-each
                     (lambda (_g133628133630_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g133628133630_
                          'receiver:
                          _L133613_
                          'methods:
                          _method-calls132957_
                          'slots:
                          _slot-refs132958_)))
                     _L133611_)))
                 (___kont135787135788_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx135783135784_))
                                                         (let ((_e133575133595_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx135783135784_))))
                   (let ((_tl133573133600_
                          (let ()
                            (declare (not safe))
                            (##cdr _e133575133595_)))
                         (_hd133574133598_
                          (let ()
                            (declare (not safe))
                            (##car _e133575133595_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd133574133598_))
                         (let ((_e133578133603_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd133574133598_))))
                           (let ((_tl133576133608_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e133578133603_)))
                                 (_hd133577133606_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e133578133603_))))
                             (___kont135785135786_
                              _tl133573133600_
                              _tl133576133608_
                              _hd133577133606_)))
                         (___kont135787135788_))))
                 (___kont135787135788_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp137129
                                                      (lambda (_g133635133638_
                                                               _g133636133640_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g133635133638_
                                                                _g133636133640_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137129
                                                         '()
                                                         _L133552_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132961_))
                                                  _stx132865_
                                                  (let* ((_specializer-id133649_
                                                          (let* ((_id133643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137130
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132938_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137130 '"::specialize")))
                         (_specializer-id133646_
                          (let ((__tmp137131
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132865_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133643_ __tmp137131))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133646_))
                    _specializer-id133646_))
                 (_$klass133651_
                  (let ((__tmp137132 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137132)))
                 (_$method-table133653_
                  (let ((__tmp137133 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137133)))
                 (_methods133655_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132957_)))
                 (_$methods133659_
                  (map (lambda (_id133657_)
                         (let ((__tmp137134 (gensym _id133657_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137134)))
                       _methods133655_))
                 (_g137135_
                  (for-each
                   (lambda (_g133660133663_ _g133661133665_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132957_
                        _g133660133663_
                        _g133661133665_)))
                   _methods133655_
                   _$methods133659_))
                 (_methods-bind133676_
                  (map (lambda (_g133668133671_ _g133669133673_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132867_
                            _$klass133651_
                            _$method-table133653_
                            _g133668133671_
                            _g133669133673_)))
                       _methods133655_
                       _$methods133659_))
                 (_slots133678_
                  (let () (declare (not safe)) (hash-keys _slot-refs132958_)))
                 (_$slots133682_
                  (map (lambda (_id133680_)
                         (let ((__tmp137136 (gensym _id133680_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137136)))
                       _slots133678_))
                 (_g137137_
                  (for-each
                   (lambda (_g133683133686_ _g133684133688_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132958_
                        _g133683133686_
                        _g133684133688_)))
                   _slots133678_
                   _$slots133682_))
                 (_slots-bind133699_
                  (map (lambda (_g133691133694_ _g133692133696_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132868_
                            _$klass133651_
                            _g133691133694_
                            _g133692133696_)))
                       _slots133678_
                       _$slots133682_))
                 (_specializer-clauses133791_
                  (map (lambda (_clause133701_)
                         (let* ((___stx135803135804_ _clause133701_)
                                (_g133704133719_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx135803135804_)))))
                           (let ((___kont135805135806_
                                  (lambda (_L133747_ _L133748_ _L133749_)
                                    (let* ((_body133779_
                                            (map (lambda (_g133774133776_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g133774133776_
                                                      'receiver:
                                                      _L133749_
                                                      'klass:
                                                      _$klass133651_
                                                      'methods:
                                                      _method-calls132957_
                                                      'slots:
                                                      _slot-refs132958_)))
                                                 _L133747_))
                                           (__tmp137138
                                            (let ()
                                              (declare (not safe))
                                              (cons _L133749_ _L133748_))))
                                      (declare (not safe))
                                      (cons __tmp137138 _body133779_))))
                                 (___kont135807135808_
                                  (lambda () _clause133701_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx135803135804_))
                                 (let ((_e133711133731_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx135803135804_))))
                                   (let ((_tl133709133736_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e133711133731_)))
                                         (_hd133710133734_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e133711133731_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd133710133734_))
                                         (let ((_e133714133739_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd133710133734_))))
                                           (let ((_tl133712133744_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e133714133739_)))
                                                 (_hd133713133742_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e133714133739_))))
                                             (___kont135805135806_
                                              _tl133709133736_
                                              _tl133712133744_
                                              _hd133713133742_)))
                                         (___kont135807135808_))))
                                 (___kont135807135808_)))))
                       (let ((__tmp137139
                              (lambda (_g133783133786_ _g133784133788_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g133783133786_ _g133784133788_)))))
                         (declare (not safe))
                         (foldr1 __tmp137139 '() _L133552_))))
                 (_specializer-impl133793_
                  (let ((__tmp137140
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses133791_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137140 _stx132865_)))
                 (_specializer-impl133795_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132869_
                     _$klass133651_
                     _$method-table133653_
                     _methods-bind133676_
                     _slots-bind133699_
                     _specializer-impl133793_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137142
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132938_)))
                                                          (__tmp137141
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133649_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137142
                                                       '" => "
                                                       __tmp137141))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132870_
                                                       _L132938_
                                                       _specializer-id133649_
                                                       _specializer-impl133795_)))))
                                            _clause133510133549_))))))
                           (let ()
                             (declare (not safe))
                             (_loop133505133533_ _target133502133528_ '())))
                         (let ()
                           (declare (not safe))
                           (_g133496133515_ _g133497133518_))))))
               (let ()
                 (declare (not safe))
                 (_g133496133515_ _g133497133518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133496133515_
                                                  _g133497133518_))))))
                                   (declare (not safe))
                                   (_g133495133798_ _L132937_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L132937_))
                                     (let* ((_g133801133831_
                                             (lambda (_g133802133828_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g133802133828_))))
                                            (_g133800134436_
                                             (lambda (_g133802133834_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g133802133834_))
                                                   (let ((_e133808133836_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g133802133834_))))
                                                     (let ((_hd133807133839_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e133808133836_)))
                                                           (_tl133806133841_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e133808133836_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133806133841_))
                                                           (let ((_e133811133844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133806133841_))))
                     (let ((_hd133810133847_
                            (let ()
                              (declare (not safe))
                              (##car _e133811133844_)))
                           (_tl133809133849_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133811133844_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd133810133847_))
                           (let ((_e133814133852_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd133810133847_))))
                             (let ((_hd133813133855_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e133814133852_)))
                                   (_tl133812133857_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e133814133852_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd133813133855_))
                                   (let ((_e133817133860_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd133813133855_))))
                                     (let ((_hd133816133863_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133817133860_)))
                                           (_tl133815133865_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133817133860_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd133816133863_))
                                           (let ((_e133820133868_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd133816133863_))))
                                             (let ((_hd133819133871_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e133820133868_)))
                                                   (_tl133818133873_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e133820133868_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl133818133873_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl133815133865_))
                                                       (let ((_e133823133876_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl133815133865_))))
                 (let ((_hd133822133879_
                        (let () (declare (not safe)) (##car _e133823133876_)))
                       (_tl133821133881_
                        (let () (declare (not safe)) (##cdr _e133823133876_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl133821133881_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133812133857_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl133809133849_))
                               (let ((_e133826133884_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl133809133849_))))
                                 (let ((_hd133825133887_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133826133884_)))
                                       (_tl133824133889_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133826133884_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl133824133889_))
                                       ((lambda (_L133892_ _L133893_ _L133894_)
                                          (let* ((_g133917133935_
                                                  (lambda (_g133918133932_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133918133932_))))
                                                 (_g133916133986_
                                                  (lambda (_g133918133938_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133918133938_))
                                                        (let ((_e133924133940_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133918133938_))))
                  (let ((_hd133923133943_
                         (let () (declare (not safe)) (##car _e133924133940_)))
                        (_tl133922133945_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133924133940_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl133922133945_))
                        (let ((_e133927133948_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl133922133945_))))
                          (let ((_hd133926133951_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e133927133948_)))
                                (_tl133925133953_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e133927133948_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd133926133951_))
                                (let ((_e133930133956_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd133926133951_))))
                                  (let ((_hd133929133959_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133930133956_)))
                                        (_tl133928133961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133930133956_))))
                                    ((lambda (_L133964_ _L133965_ _L133966_)
                                       (for-each
                                        (lambda (_g133981133983_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g133981133983_
                                             'receiver:
                                             _L133966_
                                             'methods:
                                             _method-calls132957_
                                             'slots:
                                             _slot-refs132958_)))
                                        _L133964_))
                                     _tl133925133953_
                                     _tl133928133961_
                                     _hd133929133959_)))
                                (let ()
                                  (declare (not safe))
                                  (_g133917133935_ _g133918133938_)))))
                        (let ()
                          (declare (not safe))
                          (_g133917133935_ _g133918133938_)))))
                (let ()
                  (declare (not safe))
                  (_g133917133935_ _g133918133938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133916133986_ _L133893_))
                                          (let* ((_g133989134008_
                                                  (lambda (_g133990134005_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g133990134005_))))
                                                 (_g133988134127_
                                                  (lambda (_g133990134011_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g133990134011_))
                                                        (let ((_e133994134013_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g133990134011_))))
                  (let ((_hd133993134016_
                         (let () (declare (not safe)) (##car _e133994134013_)))
                        (_tl133992134018_
                         (let ()
                           (declare (not safe))
                           (##cdr _e133994134013_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl133992134018_))
                        (let ((_g137097_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl133992134018_
                                  '0))))
                          (begin
                            (let ((_g137098_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g137097_)
                                         (##vector-length _g137097_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g137098_ 2)))
                                  (error "Context expects 2 values"
                                         _g137098_)))
                            (let ((_target133995134021_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137097_ 0)))
                                  (_tl133997134023_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g137097_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl133997134023_))
                                  (letrec ((_loop133998134026_
                                            (lambda (_hd133996134029_
                                                     _clause134002134031_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd133996134029_))
                                                  (let ((_e133999134034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd133996134029_))))
                                                    (let ((_lp-hd134000134037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e133999134034_)))
                                                          (_lp-tl134001134039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e133999134034_))))
                                                      (let ((__tmp137100
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd134000134037_ _clause134002134031_))))
                (declare (not safe))
                (_loop133998134026_ _lp-tl134001134039_ __tmp137100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause134003134042_
                                                         (reverse _clause134002134031_)))
                                                    ((lambda (_L134045_)
                                                       (for-each
                                                        (lambda (_clause134058_)
                                                          (let* ((_g134060134075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g134061134072_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g134061134072_))))
                         (_g134059134117_
                          (lambda (_g134061134078_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g134061134078_))
                                (let ((_e134067134080_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g134061134078_))))
                                  (let ((_hd134066134083_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134067134080_)))
                                        (_tl134065134085_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134067134080_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134066134083_))
                                        (let ((_e134070134088_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134066134083_))))
                                          (let ((_hd134069134091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134070134088_)))
                                                (_tl134068134093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134070134088_))))
                                            ((lambda (_L134096_
                                                      _L134097_
                                                      _L134098_)
                                               (for-each
                                                (lambda (_g134112134114_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g134112134114_
                                                     'receiver:
                                                     _L134098_
                                                     'methods:
                                                     _method-calls132957_
                                                     'slots:
                                                     _slot-refs132958_)))
                                                _L134096_))
                                             _tl134065134085_
                                             _tl134068134093_
                                             _hd134069134091_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134060134075_ _g134061134078_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134060134075_ _g134061134078_))))))
                    (declare (not safe))
                    (_g134059134117_ _clause134058_)))
                (let ((__tmp137099
                       (lambda (_g134119134122_ _g134120134124_)
                         (let ()
                           (declare (not safe))
                           (cons _g134119134122_ _g134120134124_)))))
                  (declare (not safe))
                  (foldr1 __tmp137099 '() _L134045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause134003134042_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop133998134026_
                                       _target133995134021_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g133989134008_ _g133990134011_))))))
                        (let ()
                          (declare (not safe))
                          (_g133989134008_ _g133990134011_)))))
                (let ()
                  (declare (not safe))
                  (_g133989134008_ _g133990134011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g133988134127_ _L133892_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?132961_))
                                              _stx132865_
                                              (let* ((_specializer-id134136_
                                                      (let* ((_id134130_
                                                              (let ((__tmp137101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L132938_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp137101 '"::specialize")))
                     (_specializer-id134133_
                      (let ((__tmp137102
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx132865_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id134130_ __tmp137102))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id134133_))
                _specializer-id134133_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass134138_
                                                      (let ((__tmp137103
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137103)))
                                                     (_$method-table134140_
                                                      (let ((__tmp137104
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp137104)))
                                                     (_methods134142_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls132957_)))
                                                     (_$methods134146_
                                                      (map (lambda (_id134144_)
                                                             (let ((__tmp137105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134144_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137105)))
                   _methods134142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137106_
                                                      (for-each
                                                       (lambda (_g134147134150_
                                                                _g134148134152_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls132957_
                                                            _g134147134150_
                                                            _g134148134152_)))
                                                       _methods134142_
                                                       _$methods134146_))
                                                     (_methods-bind134163_
                                                      (map (lambda (_g134155134158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134156134160_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind132867_
                        _$klass134138_
                        _$method-table134140_
                        _g134155134158_
                        _g134156134160_)))
                   _methods134142_
                   _$methods134146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots134165_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs132958_)))
                                                     (_$slots134169_
                                                      (map (lambda (_id134167_)
                                                             (let ((__tmp137107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id134167_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp137107)))
                   _slots134165_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137108_
                                                      (for-each
                                                       (lambda (_g134170134173_
                                                                _g134171134175_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs132958_
                                                            _g134170134173_
                                                            _g134171134175_)))
                                                       _slots134165_
                                                       _$slots134169_))
                                                     (_slots-bind134186_
                                                      (map (lambda (_g134178134181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g134179134183_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind132868_
                        _$klass134138_
                        _g134178134181_
                        _g134179134183_)))
                   _slots134165_
                   _$slots134169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr134272_
                                                      (let* ((_g134188134206_
                                                              (lambda (_g134189134203_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134189134203_))))
                     (_g134187134269_
                      (lambda (_g134189134209_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134189134209_))
                            (let ((_e134195134211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134189134209_))))
                              (let ((_hd134194134214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134195134211_)))
                                    (_tl134193134216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134195134211_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134193134216_))
                                    (let ((_e134198134219_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134193134216_))))
                                      (let ((_hd134197134222_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134198134219_)))
                                            (_tl134196134224_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134198134219_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134197134222_))
                                            (let ((_e134201134227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134197134222_))))
                                              (let ((_hd134200134230_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134201134227_)))
                                                    (_tl134199134232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134201134227_))))
                                                ((lambda (_L134235_
                                                          _L134236_
                                                          _L134237_)
                                                   (let* ((_body134267_
                                                           (map (lambda (_g134262134264_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g134262134264_
                             'receiver:
                             _L134237_
                             'klass:
                             _$klass134138_
                             'methods:
                             _method-calls132957_
                             'slots:
                             _slot-refs132958_)))
                        _L134235_))
                  (__tmp137109
                   (let ((__tmp137110
                          (let ((__tmp137111
                                 (let ()
                                   (declare (not safe))
                                   (cons _L134237_ _L134236_))))
                            (declare (not safe))
                            (cons __tmp137111 _body134267_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp137110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp137109
                                                      _L133893_)))
                                                 _tl134196134224_
                                                 _tl134199134232_
                                                 _hd134200134230_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134188134206_
                                               _g134189134209_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134188134206_ _g134189134209_)))))
                            (let ()
                              (declare (not safe))
                              (_g134188134206_ _g134189134209_))))))
                (declare (not safe))
                (_g134187134269_ _L133893_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr134429_
                                                      (let* ((_g134274134293_
                                                              (lambda (_g134275134290_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134275134290_))))
                     (_g134273134426_
                      (lambda (_g134275134296_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134275134296_))
                            (let ((_e134279134298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134275134296_))))
                              (let ((_hd134278134301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134279134298_)))
                                    (_tl134277134303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134279134298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl134277134303_))
                                    (let ((_g137112_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl134277134303_
                                              '0))))
                                      (begin
                                        (let ((_g137113_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g137112_)
                                                     (##vector-length
                                                      _g137112_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g137113_ 2)))
                                              (error "Context expects 2 values"
                                                     _g137113_)))
                                        (let ((_target134280134306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137112_ 0)))
                                              (_tl134282134308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g137112_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134282134308_))
                                              (letrec ((_loop134283134311_
                                                        (lambda (_hd134281134314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause134287134316_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134281134314_))
                      (let ((_e134284134319_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134281134314_))))
                        (let ((_lp-hd134285134322_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134284134319_)))
                              (_lp-tl134286134324_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134284134319_))))
                          (let ((__tmp137117
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134285134322_
                                         _clause134287134316_))))
                            (declare (not safe))
                            (_loop134283134311_
                             _lp-tl134286134324_
                             __tmp137117))))
                      (let ((_clause134288134327_
                             (reverse _clause134287134316_)))
                        ((lambda (_L134330_)
                           (let* ((_clauses134424_
                                   (map (lambda (_clause134344_)
                                          (let* ((___stx135823135824_
                                                  _clause134344_)
                                                 (_g134347134362_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135823135824_)))))
                                            (let ((___kont135825135826_
                                                   (lambda (_L134390_
                                                            _L134391_
                                                            _L134392_)
                                                     (let* ((_body134412_
                                                             (map (lambda (_g134407134409_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g134407134409_
                               'receiver:
                               _L134392_
                               'klass:
                               _$klass134138_
                               'methods:
                               _method-calls132957_
                               'slots:
                               _slot-refs132958_)))
                          _L134390_))
                    (__tmp137114
                     (let () (declare (not safe)) (cons _L134392_ _L134391_))))
               (declare (not safe))
               (cons __tmp137114 _body134412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135827135828_
                                                   (lambda () _clause134344_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx135823135824_))
                                                  (let ((_e134354134374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx135823135824_))))
                                                    (let ((_tl134352134379_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e134354134374_)))
                                                          (_hd134353134377_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e134354134374_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd134353134377_))
                                                          (let ((_e134357134382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd134353134377_))))
                    (let ((_tl134355134387_
                           (let ()
                             (declare (not safe))
                             (##cdr _e134357134382_)))
                          (_hd134356134385_
                           (let ()
                             (declare (not safe))
                             (##car _e134357134382_))))
                      (___kont135825135826_
                       _tl134352134379_
                       _tl134355134387_
                       _hd134356134385_)))
                  (___kont135827135828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135827135828_)))))
                                        (let ((__tmp137115
                                               (lambda (_g134416134419_
                                                        _g134417134421_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g134416134419_
                                                         _g134417134421_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp137115 '() _L134330_))))
                                  (__tmp137116
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses134424_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137116 _L133892_)))
                         _clause134288134327_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134283134311_
                                                   _target134280134306_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134274134293_
                                                 _g134275134296_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134274134293_ _g134275134296_)))))
                            (let ()
                              (declare (not safe))
                              (_g134274134293_ _g134275134296_))))))
                (declare (not safe))
                (_g134273134426_ _L133892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134431_
                                                      (let ((__tmp137118
                                                             (let ((__tmp137119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp137121
                                   (let ((__tmp137122
                                          (let ((__tmp137124
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L133894_ '())))
                                                (__tmp137123
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr134272_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp137124 __tmp137123))))
                                     (declare (not safe))
                                     (cons __tmp137122 '())))
                                  (__tmp137120
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr134429_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp137121 __tmp137120))))
                       (declare (not safe))
                       (cons '%#let-values __tmp137119))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp137118 _stx132865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl134433_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl132869_
                                                         _$klass134138_
                                                         _$method-table134140_
                                                         _methods-bind134163_
                                                         _slots-bind134186_
                                                         _specializer-impl134431_))))
                                                (let ((__tmp137126
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L132938_)))
                                                      (__tmp137125
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id134136_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp137126
                                                   '" => "
                                                   __tmp137125))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def132870_
                                                   _L132938_
                                                   _specializer-id134136_
                                                   _specializer-impl134433_)))))
                                        _hd133825133887_
                                        _hd133822133879_
                                        _hd133819133871_)
                                       (let ()
                                         (declare (not safe))
                                         (_g133801133831_ _g133802133834_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133801133831_ _g133802133834_)))
                           (let ()
                             (declare (not safe))
                             (_g133801133831_ _g133802133834_)))
                       (let ()
                         (declare (not safe))
                         (_g133801133831_ _g133802133834_)))))
               (let () (declare (not safe)) (_g133801133831_ _g133802133834_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133801133831_
                                                      _g133802133834_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g133801133831_
                                              _g133802133834_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133801133831_ _g133802133834_)))))
                           (let ()
                             (declare (not safe))
                             (_g133801133831_ _g133802133834_)))))
                   (let ()
                     (declare (not safe))
                     (_g133801133831_ _g133802133834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g133801133831_
                                                      _g133802133834_))))))
                                       (declare (not safe))
                                       (_g133800134436_ _L132937_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L132937_))
                                         (let* ((_g134439134492_
                                                 (lambda (_g134440134489_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g134440134489_))))
                                                (_g134438135623_
                                                 (lambda (_g134440134495_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g134440134495_))
                                                       (let ((_e134448134497_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g134440134495_))))
                 (let ((_hd134447134500_
                        (let () (declare (not safe)) (##car _e134448134497_)))
                       (_tl134446134502_
                        (let () (declare (not safe)) (##cdr _e134448134497_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd134447134500_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd134447134500_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl134446134502_))
                               (let ((_e134451134505_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl134446134502_))))
                                 (let ((_hd134450134508_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e134451134505_)))
                                       (_tl134449134510_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e134451134505_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd134450134508_))
                                       (let ((_e134454134513_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd134450134508_))))
                                         (let ((_hd134453134516_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e134454134513_)))
                                               (_tl134452134518_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e134454134513_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd134453134516_))
                                               (let ((_e134457134521_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd134453134516_))))
                                                 (let ((_hd134456134524_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134457134521_)))
                                                       (_tl134455134526_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134457134521_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd134456134524_))
                                                       (let ((_e134460134529_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd134456134524_))))
                 (let ((_hd134459134532_
                        (let () (declare (not safe)) (##car _e134460134529_)))
                       (_tl134458134534_
                        (let () (declare (not safe)) (##cdr _e134460134529_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl134458134534_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl134455134526_))
                           (let ((_e134463134537_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl134455134526_))))
                             (let ((_hd134462134540_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134463134537_)))
                                   (_tl134461134542_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134463134537_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134462134540_))
                                   (let ((_e134466134545_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134462134540_))))
                                     (let ((_hd134465134548_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134466134545_)))
                                           (_tl134464134550_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134466134545_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd134465134548_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd134465134548_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl134464134550_))
                                                   (let ((_e134469134553_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl134464134550_))))
                                                     (let ((_hd134468134556_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134469134553_)))
                                                           (_tl134467134558_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134469134553_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd134468134556_))
                                                           (let ((_e134472134561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd134468134556_))))
                     (let ((_hd134471134564_
                            (let ()
                              (declare (not safe))
                              (##car _e134472134561_)))
                           (_tl134470134566_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134472134561_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd134471134564_))
                           (let ((_e134475134569_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd134471134564_))))
                             (let ((_hd134474134572_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e134475134569_)))
                                   (_tl134473134574_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e134475134569_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd134474134572_))
                                   (let ((_e134478134577_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd134474134572_))))
                                     (let ((_hd134477134580_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e134478134577_)))
                                           (_tl134476134582_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e134478134577_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl134476134582_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl134473134574_))
                                               (let ((_e134481134585_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl134473134574_))))
                                                 (let ((_hd134480134588_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e134481134585_)))
                                                       (_tl134479134590_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e134481134585_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl134479134590_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl134470134566_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl134467134558_))
                       (let ((_e134484134593_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl134467134558_))))
                         (let ((_hd134483134596_
                                (let ()
                                  (declare (not safe))
                                  (##car _e134484134593_)))
                               (_tl134482134598_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e134484134593_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl134482134598_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl134461134542_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl134452134518_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl134449134510_))
                                           (let ((_e134487134601_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl134449134510_))))
                                             (let ((_hd134486134604_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e134487134601_)))
                                                   (_tl134485134606_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e134487134601_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl134485134606_))
                                                   ((lambda (_L134609_
                                                             _L134610_
                                                             _L134611_
                                                             _L134612_
                                                             _L134613_)
                                                      (let* ((_g134652134714_
                                                              (lambda (_g134653134711_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g134653134711_))))
                     (_g134651135620_
                      (lambda (_g134653134717_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g134653134717_))
                            (let ((_e134661134719_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g134653134717_))))
                              (let ((_hd134660134722_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134661134719_)))
                                    (_tl134659134724_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134661134719_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd134660134722_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd134660134722_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl134659134724_))
                                            (let ((_e134664134727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl134659134724_))))
                                              (let ((_hd134663134730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134664134727_)))
                                                    (_tl134662134732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134664134727_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134662134732_))
                                                    (let ((_e134667134735_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134662134732_))))
                                                      (let ((_hd134666134738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134667134735_)))
                    (_tl134665134740_
                     (let () (declare (not safe)) (##cdr _e134667134735_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd134666134738_))
                    (let ((_e134670134743_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd134666134738_))))
                      (let ((_hd134669134746_
                             (let ()
                               (declare (not safe))
                               (##car _e134670134743_)))
                            (_tl134668134748_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134670134743_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd134669134746_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd134669134746_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl134668134748_))
                                    (let ((_e134673134751_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl134668134748_))))
                                      (let ((_hd134672134754_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134673134751_)))
                                            (_tl134671134756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134673134751_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd134672134754_))
                                            (let ((_e134676134759_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd134672134754_))))
                                              (let ((_hd134675134762_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e134676134759_)))
                                                    (_tl134674134764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e134676134759_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd134675134762_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd134675134762_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl134674134764_))
                                                            (let ((_e134679134767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl134674134764_))))
                      (let ((_hd134678134770_
                             (let ()
                               (declare (not safe))
                               (##car _e134679134767_)))
                            (_tl134677134772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e134679134767_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134677134772_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl134671134756_))
                                (let ((_e134682134775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl134671134756_))))
                                  (let ((_hd134681134778_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e134682134775_)))
                                        (_tl134680134780_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e134682134775_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd134681134778_))
                                        (let ((_e134685134783_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd134681134778_))))
                                          (let ((_hd134684134786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e134685134783_)))
                                                (_tl134683134788_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e134685134783_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd134684134786_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd134684134786_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl134683134788_))
                                                        (let ((_e134688134791_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl134683134788_))))
                  (let ((_hd134687134794_
                         (let () (declare (not safe)) (##car _e134688134791_)))
                        (_tl134686134796_
                         (let ()
                           (declare (not safe))
                           (##cdr _e134688134791_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl134686134796_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl134680134780_))
                            (let ((_e134691134799_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl134680134780_))))
                              (let ((_hd134690134802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e134691134799_)))
                                    (_tl134689134804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e134691134799_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd134690134802_))
                                    (let ((_e134694134807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd134690134802_))))
                                      (let ((_hd134693134810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e134694134807_)))
                                            (_tl134692134812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e134694134807_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd134693134810_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd134693134810_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl134692134812_))
                                                    (let ((_e134697134815_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl134692134812_))))
                                                      (let ((_hd134696134818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e134697134815_)))
                    (_tl134695134820_
                     (let () (declare (not safe)) (##cdr _e134697134815_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl134695134820_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl134689134804_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl134689134804_))
                                  '1)
                            (let ((_g137023_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl134689134804_
                                      '1))))
                              (begin
                                (let ((_g137024_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137023_)
                                             (##vector-length _g137023_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137024_ 2)))
                                      (error "Context expects 2 values"
                                             _g137024_)))
                                (let ((_target134698134823_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137023_ 0)))
                                      (_tl134700134825_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137023_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl134700134825_))
                                      (let ((_e134709134828_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl134700134825_))))
                                        (let ((_hd134708134831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e134709134828_)))
                                              (_tl134707134833_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e134709134828_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl134707134833_))
                                              (letrec ((_loop134701134836_
                                                        (lambda (_hd134699134839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref134705134841_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd134699134839_))
                      (let ((_e134702134844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd134699134839_))))
                        (let ((_lp-hd134703134847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e134702134844_)))
                              (_lp-tl134704134849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e134702134844_))))
                          (let ((__tmp137096
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd134703134847_
                                         _kw-ref134705134841_))))
                            (declare (not safe))
                            (_loop134701134836_
                             _lp-tl134704134849_
                             __tmp137096))))
                      (let ((_kw-ref134706134852_
                             (reverse _kw-ref134705134841_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl134665134740_))
                            ((lambda (_L134855_
                                      _L134856_
                                      _L134857_
                                      _L134858_
                                      _L134859_)
                               (let* ((_kw-count134910_
                                       (length (let ((__tmp137025
                                                      (lambda (_g134902134905_
                                                               _g134903134907_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g134902134905_
                                                                _g134903134907_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp137025
                                                         '()
                                                         _L134856_))))
                                      (_self-index134912_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count134910_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L134611_))
                                     (let* ((_g134915134929_
                                             (lambda (_g134916134926_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g134916134926_))))
                                            (_g134914135042_
                                             (lambda (_g134916134932_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g134916134932_))
                                                   (let ((_e134921134934_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g134916134932_))))
                                                     (let ((_hd134920134937_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e134921134934_)))
                                                           (_tl134919134939_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e134921134934_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl134919134939_))
                                                           (let ((_e134924134942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl134919134939_))))
                     (let ((_hd134923134945_
                            (let ()
                              (declare (not safe))
                              (##car _e134924134942_)))
                           (_tl134922134947_
                            (let ()
                              (declare (not safe))
                              (##cdr _e134924134942_))))
                       ((lambda (_L134950_ _L134951_)
                          (let ((_self134967_
                                 (list-ref _L134951_ _self-index134912_)))
                            (for-each
                             (lambda (_g134968134970_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g134968134970_
                                  'receiver:
                                  _self134967_
                                  'methods:
                                  _method-calls132957_
                                  'slots:
                                  _slot-refs132958_)))
                             _L134950_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?132961_))
                                _stx132865_
                                (let* ((_specializer-id134979_
                                        (let* ((_id134973_
                                                (let ((__tmp137069
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L132938_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp137069
                                                   '"::specialize")))
                                               (_specializer-id134976_
                                                (let ((__tmp137070
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx132865_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id134973_
                                                   __tmp137070))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id134976_))
                                          _specializer-id134976_))
                                       (_$klass134981_
                                        (let ((__tmp137071 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137071)))
                                       (_$method-table134983_
                                        (let ((__tmp137072
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp137072)))
                                       (_methods134985_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls132957_)))
                                       (_$methods134989_
                                        (map (lambda (_id134987_)
                                               (let ((__tmp137073
                                                      (gensym _id134987_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137073)))
                                             _methods134985_))
                                       (_g137074_
                                        (for-each
                                         (lambda (_g134990134993_
                                                  _g134991134995_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls132957_
                                              _g134990134993_
                                              _g134991134995_)))
                                         _methods134985_
                                         _$methods134989_))
                                       (_methods-bind135006_
                                        (map (lambda (_g134998135001_
                                                      _g134999135003_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind132867_
                                                  _$klass134981_
                                                  _$method-table134983_
                                                  _g134998135001_
                                                  _g134999135003_)))
                                             _methods134985_
                                             _$methods134989_))
                                       (_slots135008_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs132958_)))
                                       (_$slots135012_
                                        (map (lambda (_id135010_)
                                               (let ((__tmp137075
                                                      (gensym _id135010_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp137075)))
                                             _slots135008_))
                                       (_g137076_
                                        (for-each
                                         (lambda (_g135013135016_
                                                  _g135014135018_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs132958_
                                              _g135013135016_
                                              _g135014135018_)))
                                         _slots135008_
                                         _$slots135012_))
                                       (_slots-bind135029_
                                        (map (lambda (_g135021135024_
                                                      _g135022135026_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind132868_
                                                  _$klass134981_
                                                  _g135021135024_
                                                  _g135022135026_)))
                                             _slots135008_
                                             _$slots135012_))
                                       (_specializer-impl135037_
                                        (let* ((_specializer-body135035_
                                                (map (lambda (_g135030135032_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g135030135032_
                                                          'receiver:
                                                          _self134967_
                                                          'klass:
                                                          _$klass134981_
                                                          'methods:
                                                          _method-calls132957_
                                                          'slots:
                                                          _slot-refs132958_)))
                                                     _L134950_))
                                               (__tmp137077
                                                (let ((__tmp137078
                                                       (let ((__tmp137080
                                                              (let ((__tmp137081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137093
                                    (let ()
                                      (declare (not safe))
                                      (cons _L134613_ '())))
                                   (__tmp137082
                                    (let ((__tmp137083
                                           (let ((__tmp137084
                                                  (let ((__tmp137086
                                                         (let ((__tmp137087
                                                                (let ((__tmp137092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L134612_ '())))
                              (__tmp137088
                               (let ((__tmp137089
                                      (let ((__tmp137090
                                             (let ((__tmp137091
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L134951_
                                                            _specializer-body135035_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp137091))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp137090
                                         _L134611_))))
                                 (declare (not safe))
                                 (cons __tmp137089 '()))))
                          (declare (not safe))
                          (cons __tmp137092 __tmp137088))))
                   (declare (not safe))
                   (cons __tmp137087 '())))
                (__tmp137085
                 (let () (declare (not safe)) (cons _L134610_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137086
                                                          __tmp137085))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp137084))))
                                      (declare (not safe))
                                      (cons __tmp137083 '()))))
                               (declare (not safe))
                               (cons __tmp137093 __tmp137082))))
                        (declare (not safe))
                        (cons __tmp137081 '())))
                     (__tmp137079
                      (let () (declare (not safe)) (cons _L134609_ '()))))
                 (declare (not safe))
                 (cons __tmp137080 __tmp137079))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp137078))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp137077
                                           _stx132865_)))
                                       (_specializer-impl135039_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl132869_
                                           _$klass134981_
                                           _$method-table134983_
                                           _methods-bind135006_
                                           _slots-bind135029_
                                           _specializer-impl135037_))))
                                  (let ((__tmp137095
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L132938_)))
                                        (__tmp137094
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id134979_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp137095
                                     '" => "
                                     __tmp137094))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def132870_
                                     _L132938_
                                     _specializer-id134979_
                                     _specializer-impl135039_))))))
                        _tl134922134947_
                        _hd134923134945_)))
                   (let ()
                     (declare (not safe))
                     (_g134915134929_ _g134916134932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134915134929_
                                                      _g134916134932_))))))
                                       (declare (not safe))
                                       (_g134914135042_ _L134611_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L134611_))
                                         (let* ((_g135045135075_
                                                 (lambda (_g135046135072_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g135046135072_))))
                                                (_g135044135617_
                                                 (lambda (_g135046135078_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g135046135078_))
                                                       (let ((_e135052135080_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g135046135078_))))
                 (let ((_hd135051135083_
                        (let () (declare (not safe)) (##car _e135052135080_)))
                       (_tl135050135085_
                        (let () (declare (not safe)) (##cdr _e135052135080_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl135050135085_))
                       (let ((_e135055135088_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl135050135085_))))
                         (let ((_hd135054135091_
                                (let ()
                                  (declare (not safe))
                                  (##car _e135055135088_)))
                               (_tl135053135093_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e135055135088_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd135054135091_))
                               (let ((_e135058135096_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd135054135091_))))
                                 (let ((_hd135057135099_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e135058135096_)))
                                       (_tl135056135101_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e135058135096_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd135057135099_))
                                       (let ((_e135061135104_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd135057135099_))))
                                         (let ((_hd135060135107_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e135061135104_)))
                                               (_tl135059135109_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e135061135104_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd135060135107_))
                                               (let ((_e135064135112_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd135060135107_))))
                                                 (let ((_hd135063135115_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e135064135112_)))
                                                       (_tl135062135117_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e135064135112_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl135062135117_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl135059135109_))
                                                           (let ((_e135067135120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl135059135109_))))
                     (let ((_hd135066135123_
                            (let ()
                              (declare (not safe))
                              (##car _e135067135120_)))
                           (_tl135065135125_
                            (let ()
                              (declare (not safe))
                              (##cdr _e135067135120_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl135065135125_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl135056135101_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl135053135093_))
                                   (let ((_e135070135128_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl135053135093_))))
                                     (let ((_hd135069135131_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e135070135128_)))
                                           (_tl135068135133_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e135070135128_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl135068135133_))
                                           ((lambda (_L135136_
                                                     _L135137_
                                                     _L135138_)
                                              (let* ((_g135161135175_
                                                      (lambda (_g135162135172_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135162135172_))))
                                                     (_g135160135216_
                                                      (lambda (_g135162135178_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135162135178_))
                                                            (let ((_e135167135180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135162135178_))))
                      (let ((_hd135166135183_
                             (let ()
                               (declare (not safe))
                               (##car _e135167135180_)))
                            (_tl135165135185_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135167135180_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl135165135185_))
                            (let ((_e135170135188_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl135165135185_))))
                              (let ((_hd135169135191_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e135170135188_)))
                                    (_tl135168135193_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e135170135188_))))
                                ((lambda (_L135196_ _L135197_)
                                   (let ((_self135210_
                                          (list-ref
                                           _L135197_
                                           _self-index134912_)))
                                     (for-each
                                      (lambda (_g135211135213_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g135211135213_
                                           'receiver:
                                           _self135210_
                                           'methods:
                                           _method-calls132957_
                                           'slots:
                                           _slot-refs132958_)))
                                      _L135196_)))
                                 _tl135168135193_
                                 _hd135169135191_)))
                            (let ()
                              (declare (not safe))
                              (_g135161135175_ _g135162135178_)))))
                    (let ()
                      (declare (not safe))
                      (_g135161135175_ _g135162135178_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135160135216_ _L135137_))
                                              (let* ((_g135219135238_
                                                      (lambda (_g135220135235_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135220135235_))))
                                                     (_g135218135343_
                                                      (lambda (_g135220135241_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135220135241_))
                                                            (let ((_e135224135243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135220135241_))))
                      (let ((_hd135223135246_
                             (let ()
                               (declare (not safe))
                               (##car _e135224135243_)))
                            (_tl135222135248_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135224135243_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl135222135248_))
                            (let ((_g137026_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl135222135248_
                                      '0))))
                              (begin
                                (let ((_g137027_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g137026_)
                                             (##vector-length _g137026_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g137027_ 2)))
                                      (error "Context expects 2 values"
                                             _g137027_)))
                                (let ((_target135225135251_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137026_ 0)))
                                      (_tl135227135253_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g137026_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl135227135253_))
                                      (letrec ((_loop135228135256_
                                                (lambda (_hd135226135259_
                                                         _clause135232135261_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd135226135259_))
                                                      (let ((_e135229135264_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd135226135259_))))
                (let ((_lp-hd135230135267_
                       (let () (declare (not safe)) (##car _e135229135264_)))
                      (_lp-tl135231135269_
                       (let () (declare (not safe)) (##cdr _e135229135264_))))
                  (let ((__tmp137029
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd135230135267_ _clause135232135261_))))
                    (declare (not safe))
                    (_loop135228135256_ _lp-tl135231135269_ __tmp137029))))
              (let ((_clause135233135272_ (reverse _clause135232135261_)))
                ((lambda (_L135275_)
                   (for-each
                    (lambda (_clause135288_)
                      (let* ((_g135290135301_
                              (lambda (_g135291135298_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g135291135298_))))
                             (_g135289135333_
                              (lambda (_g135291135304_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g135291135304_))
                                    (let ((_e135296135306_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g135291135304_))))
                                      (let ((_hd135295135309_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e135296135306_)))
                                            (_tl135294135311_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e135296135306_))))
                                        ((lambda (_L135314_ _L135315_)
                                           (let ((_self135327_
                                                  (list-ref
                                                   _L135315_
                                                   _self-index134912_)))
                                             (for-each
                                              (lambda (_g135328135330_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g135328135330_
                                                   'receiver:
                                                   _self135327_
                                                   'methods:
                                                   _method-calls132957_
                                                   'slots:
                                                   _slot-refs132958_)))
                                              _L135314_)))
                                         _tl135294135311_
                                         _hd135295135309_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g135290135301_ _g135291135304_))))))
                        (declare (not safe))
                        (_g135289135333_ _clause135288_)))
                    (let ((__tmp137028
                           (lambda (_g135335135338_ _g135336135340_)
                             (let ()
                               (declare (not safe))
                               (cons _g135335135338_ _g135336135340_)))))
                      (declare (not safe))
                      (foldr1 __tmp137028 '() _L135275_))))
                 _clause135233135272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop135228135256_
                                           _target135225135251_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g135219135238_ _g135220135241_))))))
                            (let ()
                              (declare (not safe))
                              (_g135219135238_ _g135220135241_)))))
                    (let ()
                      (declare (not safe))
                      (_g135219135238_ _g135220135241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135218135343_ _L135136_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?132961_))
                                                  _stx132865_
                                                  (let* ((_specializer-id135352_
                                                          (let* ((_id135346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp137030
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L132938_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp137030 '"::specialize")))
                         (_specializer-id135349_
                          (let ((__tmp137031
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx132865_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id135346_ __tmp137031))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id135349_))
                    _specializer-id135349_))
                 (_$klass135354_
                  (let ((__tmp137032 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137032)))
                 (_$method-table135356_
                  (let ((__tmp137033 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp137033)))
                 (_methods135358_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls132957_)))
                 (_$methods135362_
                  (map (lambda (_id135360_)
                         (let ((__tmp137034 (gensym _id135360_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137034)))
                       _methods135358_))
                 (_g137035_
                  (for-each
                   (lambda (_g135363135366_ _g135364135368_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls132957_
                        _g135363135366_
                        _g135364135368_)))
                   _methods135358_
                   _$methods135362_))
                 (_methods-bind135379_
                  (map (lambda (_g135371135374_ _g135372135376_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind132867_
                            _$klass135354_
                            _$method-table135356_
                            _g135371135374_
                            _g135372135376_)))
                       _methods135358_
                       _$methods135362_))
                 (_slots135381_
                  (let () (declare (not safe)) (hash-keys _slot-refs132958_)))
                 (_$slots135385_
                  (map (lambda (_id135383_)
                         (let ((__tmp137036 (gensym _id135383_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp137036)))
                       _slots135381_))
                 (_g137037_
                  (for-each
                   (lambda (_g135386135389_ _g135387135391_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs132958_
                        _g135386135389_
                        _g135387135391_)))
                   _slots135381_
                   _$slots135385_))
                 (_slots-bind135402_
                  (map (lambda (_g135394135397_ _g135395135399_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind132868_
                            _$klass135354_
                            _g135394135397_
                            _g135395135399_)))
                       _slots135381_
                       _$slots135385_))
                 (_specializer-lambda-expr135475_
                  (let* ((_g135404135418_
                          (lambda (_g135405135415_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135405135415_))))
                         (_g135403135472_
                          (lambda (_g135405135421_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135405135421_))
                                (let ((_e135410135423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135405135421_))))
                                  (let ((_hd135409135426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135410135423_)))
                                        (_tl135408135428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135410135423_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl135408135428_))
                                        (let ((_e135413135431_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl135408135428_))))
                                          (let ((_hd135412135434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e135413135431_)))
                                                (_tl135411135436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e135413135431_))))
                                            ((lambda (_L135439_ _L135440_)
                                               (let* ((_self135463_
                                                       (list-ref
                                                        _L135440_
                                                        _self-index134912_))
                                                      (_body135469_
                                                       (map (lambda (_g135464135466_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g135464135466_
                         'receiver:
                         _self135463_
                         'klass:
                         _$klass135354_
                         'methods:
                         _method-calls132957_
                         'slots:
                         _slot-refs132958_)))
                    _L135439_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp137038
                                                        (let ((__tmp137039
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L135440_ _body135469_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp137039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp137038
                                                    _L135137_))))
                                             _tl135411135436_
                                             _hd135412135434_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g135404135418_ _g135405135421_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135404135418_ _g135405135421_))))))
                    (declare (not safe))
                    (_g135403135472_ _L135137_)))
                 (_specializer-case-lambda-expr135610_
                  (let* ((_g135477135496_
                          (lambda (_g135478135493_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g135478135493_))))
                         (_g135476135607_
                          (lambda (_g135478135499_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g135478135499_))
                                (let ((_e135482135501_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g135478135499_))))
                                  (let ((_hd135481135504_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e135482135501_)))
                                        (_tl135480135506_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e135482135501_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl135480135506_))
                                        (let ((_g137040_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl135480135506_
                                                  '0))))
                                          (begin
                                            (let ((_g137041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g137040_)
                                                         (##vector-length
                                                          _g137040_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g137041_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g137041_)))
                                            (let ((_target135483135509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137040_
                                                      0)))
                                                  (_tl135485135511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g137040_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl135485135511_))
                                                  (letrec ((_loop135486135514_
                                                            (lambda (_hd135484135517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause135490135519_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd135484135517_))
                          (let ((_e135487135522_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd135484135517_))))
                            (let ((_lp-hd135488135525_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e135487135522_)))
                                  (_lp-tl135489135527_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e135487135522_))))
                              (let ((__tmp137044
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd135488135525_
                                             _clause135490135519_))))
                                (declare (not safe))
                                (_loop135486135514_
                                 _lp-tl135489135527_
                                 __tmp137044))))
                          (let ((_clause135491135530_
                                 (reverse _clause135490135519_)))
                            ((lambda (_L135533_)
                               (let* ((_clauses135605_
                                       (map (lambda (_clause135547_)
                                              (let* ((_g135549135560_
                                                      (lambda (_g135550135557_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g135550135557_))))
                                                     (_g135548135595_
                                                      (lambda (_g135550135563_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g135550135563_))
                                                            (let ((_e135555135565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g135550135563_))))
                      (let ((_hd135554135568_
                             (let ()
                               (declare (not safe))
                               (##car _e135555135565_)))
                            (_tl135553135570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e135555135565_))))
                        ((lambda (_L135573_ _L135574_)
                           (let* ((_self135586_
                                   (list-ref _L135574_ _self-index134912_))
                                  (_body135592_
                                   (map (lambda (_g135587135589_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g135587135589_
                                             'receiver:
                                             _self135586_
                                             'klass:
                                             _$klass135354_
                                             'methods:
                                             _method-calls132957_
                                             'slots:
                                             _slot-refs132958_)))
                                        _L135573_)))
                             (let ()
                               (declare (not safe))
                               (cons _L135574_ _body135592_))))
                         _tl135553135570_
                         _hd135554135568_)))
                    (let ()
                      (declare (not safe))
                      (_g135549135560_ _g135550135563_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g135548135595_
                                                 _clause135547_)))
                                            (let ((__tmp137042
                                                   (lambda (_g135597135600_
                                                            _g135598135602_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g135597135600_
                                                             _g135598135602_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp137042
                                                      '()
                                                      _L135533_))))
                                      (__tmp137043
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses135605_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp137043
                                  _L135136_)))
                             _clause135491135530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop135486135514_
                                                       _target135483135509_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g135477135496_
                                                     _g135478135499_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g135477135496_ _g135478135499_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g135477135496_ _g135478135499_))))))
                    (declare (not safe))
                    (_g135476135607_ _L135136_)))
                 (_specializer-impl135612_
                  (let ((__tmp137045
                         (let ((__tmp137046
                                (let ((__tmp137048
                                       (let ((__tmp137049
                                              (let ((__tmp137066
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L134613_ '())))
                                                    (__tmp137050
                                                     (let ((__tmp137051
                                                            (let ((__tmp137052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp137054
                                  (let ((__tmp137055
                                         (let ((__tmp137065
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L134612_ '())))
                                               (__tmp137056
                                                (let ((__tmp137057
                                                       (let ((__tmp137058
                                                              (let ((__tmp137059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp137061
                                    (let ((__tmp137062
                                           (let ((__tmp137064
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L135138_ '())))
                                                 (__tmp137063
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr135475_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp137064 __tmp137063))))
                                      (declare (not safe))
                                      (cons __tmp137062 '())))
                                   (__tmp137060
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr135610_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp137061 __tmp137060))))
                        (declare (not safe))
                        (cons '%#let-values __tmp137059))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp137058 _stx132865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137057 '()))))
                                           (declare (not safe))
                                           (cons __tmp137065 __tmp137056))))
                                    (declare (not safe))
                                    (cons __tmp137055 '())))
                                 (__tmp137053
                                  (let ()
                                    (declare (not safe))
                                    (cons _L134610_ '()))))
                             (declare (not safe))
                             (cons __tmp137054 __tmp137053))))
                      (declare (not safe))
                      (cons '%#let-values __tmp137052))))
               (declare (not safe))
               (cons __tmp137051 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp137066
                                                      __tmp137050))))
                                         (declare (not safe))
                                         (cons __tmp137049 '())))
                                      (__tmp137047
                                       (let ()
                                         (declare (not safe))
                                         (cons _L134609_ '()))))
                                  (declare (not safe))
                                  (cons __tmp137048 __tmp137047))))
                           (declare (not safe))
                           (cons '%#let-values __tmp137046))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp137045 _stx132865_)))
                 (_specializer-impl135614_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl132869_
                     _$klass135354_
                     _$method-table135356_
                     _methods-bind135379_
                     _slots-bind135402_
                     _specializer-impl135612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp137068
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L132938_)))
                                                          (__tmp137067
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id135352_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp137068
                                                       '" => "
                                                       __tmp137067))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def132870_
                                                       _L132938_
                                                       _specializer-id135352_
                                                       _specializer-impl135614_)))))
                                            _hd135069135131_
                                            _hd135066135123_
                                            _hd135063135115_)
                                           (let ()
                                             (declare (not safe))
                                             (_g135045135075_
                                              _g135046135078_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g135045135075_ _g135046135078_)))
                               (let ()
                                 (declare (not safe))
                                 (_g135045135075_ _g135046135078_)))
                           (let ()
                             (declare (not safe))
                             (_g135045135075_ _g135046135078_)))))
                   (let ()
                     (declare (not safe))
                     (_g135045135075_ _g135046135078_)))
               (let ()
                 (declare (not safe))
                 (_g135045135075_ _g135046135078_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g135045135075_
                                                  _g135046135078_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g135045135075_ _g135046135078_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g135045135075_ _g135046135078_)))))
                       (let ()
                         (declare (not safe))
                         (_g135045135075_ _g135046135078_)))))
               (let ()
                 (declare (not safe))
                 (_g135045135075_ _g135046135078_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g135044135617_ _L134611_))
                                         _stx132865_))))
                             _hd134708134831_
                             _kw-ref134706134852_
                             _hd134696134818_
                             _hd134687134794_
                             _hd134678134770_)
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop134701134836_
                                                   _target134698134823_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g134652134714_
                                                 _g134653134717_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g134652134714_ _g134653134717_))))))
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_)))
                        (let ()
                          (declare (not safe))
                          (_g134652134714_ _g134653134717_)))
                    (let ()
                      (declare (not safe))
                      (_g134652134714_ _g134653134717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134652134714_
                                                       _g134653134717_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134652134714_
                                                   _g134653134717_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g134652134714_
                                               _g134653134717_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134652134714_ _g134653134717_)))))
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_)))
                        (let ()
                          (declare (not safe))
                          (_g134652134714_ _g134653134717_)))))
                (let ()
                  (declare (not safe))
                  (_g134652134714_ _g134653134717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134652134714_
                                                       _g134653134717_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g134652134714_
                                                   _g134653134717_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g134652134714_ _g134653134717_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g134652134714_ _g134653134717_)))
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_)))))
                    (let ()
                      (declare (not safe))
                      (_g134652134714_ _g134653134717_)))
                (let ()
                  (declare (not safe))
                  (_g134652134714_ _g134653134717_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134652134714_
                                                       _g134653134717_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134652134714_
                                               _g134653134717_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g134652134714_ _g134653134717_)))
                                (let ()
                                  (declare (not safe))
                                  (_g134652134714_ _g134653134717_)))
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_)))))
                    (let ()
                      (declare (not safe))
                      (_g134652134714_ _g134653134717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g134652134714_
                                                       _g134653134717_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g134652134714_
                                               _g134653134717_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g134652134714_ _g134653134717_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g134652134714_ _g134653134717_)))))
                            (let ()
                              (declare (not safe))
                              (_g134652134714_ _g134653134717_))))))
                (declare (not safe))
                (_g134651135620_ _L134610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd134486134604_
                                                    _hd134483134596_
                                                    _hd134480134588_
                                                    _hd134477134580_
                                                    _hd134459134532_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134439134492_
                                                      _g134440134495_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g134439134492_
                                              _g134440134495_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g134439134492_ _g134440134495_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g134439134492_ _g134440134495_)))
                               (let ()
                                 (declare (not safe))
                                 (_g134439134492_ _g134440134495_)))))
                       (let ()
                         (declare (not safe))
                         (_g134439134492_ _g134440134495_)))
                   (let ()
                     (declare (not safe))
                     (_g134439134492_ _g134440134495_)))
               (let ()
                 (declare (not safe))
                 (_g134439134492_ _g134440134495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134439134492_
                                                  _g134440134495_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134439134492_
                                              _g134440134495_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134439134492_ _g134440134495_)))))
                           (let ()
                             (declare (not safe))
                             (_g134439134492_ _g134440134495_)))))
                   (let ()
                     (declare (not safe))
                     (_g134439134492_ _g134440134495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g134439134492_
                                                      _g134440134495_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134439134492_
                                                  _g134440134495_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g134439134492_
                                              _g134440134495_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g134439134492_ _g134440134495_)))))
                           (let ()
                             (declare (not safe))
                             (_g134439134492_ _g134440134495_)))
                       (let ()
                         (declare (not safe))
                         (_g134439134492_ _g134440134495_)))))
               (let ()
                 (declare (not safe))
                 (_g134439134492_ _g134440134495_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g134439134492_
                                                  _g134440134495_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g134439134492_ _g134440134495_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g134439134492_ _g134440134495_)))
                           (let ()
                             (declare (not safe))
                             (_g134439134492_ _g134440134495_)))
                       (let ()
                         (declare (not safe))
                         (_g134439134492_ _g134440134495_)))))
               (let ()
                 (declare (not safe))
                 (_g134439134492_ _g134440134495_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g134438135623_ _L132937_))
                                         _stx132865_))))))))
                  (___kont135847135848_ (lambda () _stx132865_)))
              (let ((___match135876135877_
                     (lambda (_e132879132905_
                              _hd132878132908_
                              _tl132877132910_
                              _e132882132913_
                              _hd132881132916_
                              _tl132880132918_
                              _e132885132921_
                              _hd132884132924_
                              _tl132883132926_
                              _e132888132929_
                              _hd132887132932_
                              _tl132886132934_)
                       (let ((_L132937_ _hd132887132932_)
                             (_L132938_ _hd132884132924_))
                         (if (let ((__tmp137157
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L132938_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp137157))
                             (___kont135845135846_ _L132937_ _L132938_)
                             (___kont135847135848_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx135843135844_))
                    (let ((_e132879132905_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx135843135844_))))
                      (let ((_tl132877132910_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132879132905_)))
                            (_hd132878132908_
                             (let ()
                               (declare (not safe))
                               (##car _e132879132905_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132877132910_))
                            (let ((_e132882132913_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132877132910_))))
                              (let ((_tl132880132918_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132882132913_)))
                                    (_hd132881132916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132882132913_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132881132916_))
                                    (let ((_e132885132921_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132881132916_))))
                                      (let ((_tl132883132926_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132885132921_)))
                                            (_hd132884132924_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132885132921_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl132883132926_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl132880132918_))
                                                (let ((_e132888132929_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl132880132918_))))
                                                  (let ((_tl132886132934_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e132888132929_)))
                                                        (_hd132887132932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e132888132929_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl132886132934_))
                                                        (___match135876135877_
                                                         _e132879132905_
                                                         _hd132878132908_
                                                         _tl132877132910_
                                                         _e132882132913_
                                                         _hd132881132916_
                                                         _tl132880132918_
                                                         _e132885132921_
                                                         _hd132884132924_
                                                         _tl132883132926_
                                                         _e132888132929_
                                                         _hd132887132932_
                                                         _tl132886132934_)
                                                        (___kont135847135848_))))
                                                (___kont135847135848_))
                                            (___kont135847135848_))))
                                    (___kont135847135848_))))
                            (___kont135847135848_))))
                    (___kont135847135848_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_self131825_ _stx131826_)
        (let* ((___stx135879135880_ _stx131826_)
               (_g131834132056_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx135879135880_)))))
          (let ((___kont135881135882_
                 (lambda (_L132813_ _L132814_ _L132815_ _L132816_)
                   (let ((__tmp137159
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131825_ 'methods)))
                         (__tmp137158
                          (let () (declare (not safe)) (gx#stx-e _L132814_))))
                     (declare (not safe))
                     (hash-put! __tmp137159 __tmp137158 '#t))
                   (for-each
                    (lambda (_g132849132851_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131825_ _g132849132851_)))
                    (let ((__tmp137160
                           (lambda (_g132853132856_ _g132854132858_)
                             (let ()
                               (declare (not safe))
                               (cons _g132853132856_ _g132854132858_)))))
                      (declare (not safe))
                      (foldr1 __tmp137160 '() _L132813_)))))
                (___kont135885135886_
                 (lambda (_L132648_ _L132649_ _L132650_ _L132651_ _L132652_)
                   (let ((__tmp137162
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131825_ 'methods)))
                         (__tmp137161
                          (let () (declare (not safe)) (gx#stx-e _L132649_))))
                     (declare (not safe))
                     (hash-put! __tmp137162 __tmp137161 '#t))
                   (for-each
                    (lambda (_g132692132694_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self131825_ _g132692132694_)))
                    (let ((__tmp137163
                           (lambda (_g132696132699_ _g132697132701_)
                             (let ()
                               (declare (not safe))
                               (cons _g132696132699_ _g132697132701_)))))
                      (declare (not safe))
                      (foldr1 __tmp137163 '() _L132648_)))))
                (___kont135889135890_
                 (lambda (_L132481_ _L132482_ _L132483_)
                   (let ((__tmp137165
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131825_ 'slots)))
                         (__tmp137164
                          (let () (declare (not safe)) (gx#stx-e _L132481_))))
                     (declare (not safe))
                     (hash-put! __tmp137165 __tmp137164 '#t))))
                (___kont135891135892_
                 (lambda (_L132358_ _L132359_ _L132360_ _L132361_)
                   (let ((__tmp137167
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _self131825_ 'slots)))
                         (__tmp137166
                          (let () (declare (not safe)) (gx#stx-e _L132359_))))
                     (declare (not safe))
                     (hash-put! __tmp137167 __tmp137166 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self131825_ _L132358_))))
                (___kont135893135894_
                 (lambda (_L132232_ _L132233_)
                   (let* ((_accessor132255_
                           (let ((__tmp137168
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132233_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137168)))
                          (_klass132257_
                           (let ((__tmp137169
                                  (##structure-ref
                                   _accessor132255_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131826_
                              __tmp137169)))
                          (_slot132259_
                           (##structure-ref
                            _accessor132255_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp137172
                                     (##structure-ref
                                      _accessor132255_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137172))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132257_
                                     _slot132259_))
                                  (##structure-ref
                                   _klass132257_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137171
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131825_ 'slots)))
                               (__tmp137170
                                (##structure-ref
                                 _accessor132255_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp137171 __tmp137170 '#t))))))
                (___kont135895135896_
                 (lambda (_L132132_ _L132133_ _L132134_)
                   (let* ((_mutator132161_
                           (let ((__tmp137173
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L132134_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp137173)))
                          (_klass132163_
                           (let ((__tmp137174
                                  (##structure-ref
                                   _mutator132161_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx131826_
                              __tmp137174)))
                          (_slot132165_
                           (##structure-ref
                            _mutator132161_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp137176
                                     (##structure-ref
                                      _mutator132161_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp137176))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass132163_
                                     _slot132165_))
                                  (##structure-ref
                                   _klass132163_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp137175
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self131825_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp137175 _slot132165_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self131825_ _L132132_)))))
                (___kont135897135898_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _self131825_ _stx131826_)))))
            (let* ((___match136378136379_
                    (lambda (_e132030132068_
                             _hd132029132071_
                             _tl132028132073_
                             _e132033132076_
                             _hd132032132079_
                             _tl132031132081_
                             _e132036132084_
                             _hd132035132087_
                             _tl132034132089_
                             _e132039132092_
                             _hd132038132095_
                             _tl132037132097_
                             _e132042132100_
                             _hd132041132103_
                             _tl132040132105_
                             _e132045132108_
                             _hd132044132111_
                             _tl132043132113_
                             _e132048132116_
                             _hd132047132119_
                             _tl132046132121_
                             _e132051132124_
                             _hd132050132127_
                             _tl132049132129_)
                      (let ((_L132132_ _hd132050132127_)
                            (_L132133_ _hd132047132119_)
                            (_L132134_ _hd132038132095_))
                        (if (and (let ((__tmp137178
                                        (let ((__tmp137179
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132134_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137179))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137178
                                    'gxc#!mutator::t))
                                 (let ((__tmp137177
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131825_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132133_
                                    __tmp137177)))
                            (___kont135895135896_
                             _L132132_
                             _L132133_
                             _L132134_)
                            (___kont135897135898_)))))
                   (___match136376136377_
                    (lambda (_e132030132068_
                             _hd132029132071_
                             _tl132028132073_
                             _e132033132076_
                             _hd132032132079_
                             _tl132031132081_
                             _e132036132084_
                             _hd132035132087_
                             _tl132034132089_
                             _e132039132092_
                             _hd132038132095_
                             _tl132037132097_
                             _e132042132100_
                             _hd132041132103_
                             _tl132040132105_
                             _e132045132108_
                             _hd132044132111_
                             _tl132043132113_
                             _e132048132116_
                             _hd132047132119_
                             _tl132046132121_
                             _e132051132124_
                             _hd132050132127_
                             _tl132049132129_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132049132129_))
                          (___match136378136379_
                           _e132030132068_
                           _hd132029132071_
                           _tl132028132073_
                           _e132033132076_
                           _hd132032132079_
                           _tl132031132081_
                           _e132036132084_
                           _hd132035132087_
                           _tl132034132089_
                           _e132039132092_
                           _hd132038132095_
                           _tl132037132097_
                           _e132042132100_
                           _hd132041132103_
                           _tl132040132105_
                           _e132045132108_
                           _hd132044132111_
                           _tl132043132113_
                           _e132048132116_
                           _hd132047132119_
                           _tl132046132121_
                           _e132051132124_
                           _hd132050132127_
                           _tl132049132129_)
                          (___kont135897135898_))))
                   (___match136370136371_
                    (lambda (_e132030132068_
                             _hd132029132071_
                             _tl132028132073_
                             _e132033132076_
                             _hd132032132079_
                             _tl132031132081_
                             _e132036132084_
                             _hd132035132087_
                             _tl132034132089_
                             _e132039132092_
                             _hd132038132095_
                             _tl132037132097_
                             _e132042132100_
                             _hd132041132103_
                             _tl132040132105_
                             _e132045132108_
                             _hd132044132111_
                             _tl132043132113_
                             _e132048132116_
                             _hd132047132119_
                             _tl132046132121_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl132040132105_))
                          (let ((_e132051132124_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl132040132105_))))
                            (let ((_tl132049132129_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132051132124_)))
                                  (_hd132050132127_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132051132124_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132049132129_))
                                  (___match136378136379_
                                   _e132030132068_
                                   _hd132029132071_
                                   _tl132028132073_
                                   _e132033132076_
                                   _hd132032132079_
                                   _tl132031132081_
                                   _e132036132084_
                                   _hd132035132087_
                                   _tl132034132089_
                                   _e132039132092_
                                   _hd132038132095_
                                   _tl132037132097_
                                   _e132042132100_
                                   _hd132041132103_
                                   _tl132040132105_
                                   _e132045132108_
                                   _hd132044132111_
                                   _tl132043132113_
                                   _e132048132116_
                                   _hd132047132119_
                                   _tl132046132121_
                                   _e132051132124_
                                   _hd132050132127_
                                   _tl132049132129_)
                                  (___kont135897135898_))))
                          (___kont135897135898_))))
                   (___match136316136317_
                    (lambda (_e132006132176_
                             _hd132005132179_
                             _tl132004132181_
                             _e132009132184_
                             _hd132008132187_
                             _tl132007132189_
                             _e132012132192_
                             _hd132011132195_
                             _tl132010132197_
                             _e132015132200_
                             _hd132014132203_
                             _tl132013132205_
                             _e132018132208_
                             _hd132017132211_
                             _tl132016132213_
                             _e132021132216_
                             _hd132020132219_
                             _tl132019132221_
                             _e132024132224_
                             _hd132023132227_
                             _tl132022132229_)
                      (let ((_L132232_ _hd132023132227_)
                            (_L132233_ _hd132014132203_))
                        (if (and (let ((__tmp137181
                                        (let ((__tmp137182
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L132233_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp137182))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp137181
                                    'gxc#!accessor::t))
                                 (let ((__tmp137180
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131825_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132232_
                                    __tmp137180)))
                            (___kont135893135894_ _L132232_ _L132233_)
                            (___kont135897135898_)))))
                   (___match136314136315_
                    (lambda (_e132006132176_
                             _hd132005132179_
                             _tl132004132181_
                             _e132009132184_
                             _hd132008132187_
                             _tl132007132189_
                             _e132012132192_
                             _hd132011132195_
                             _tl132010132197_
                             _e132015132200_
                             _hd132014132203_
                             _tl132013132205_
                             _e132018132208_
                             _hd132017132211_
                             _tl132016132213_
                             _e132021132216_
                             _hd132020132219_
                             _tl132019132221_
                             _e132024132224_
                             _hd132023132227_
                             _tl132022132229_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl132016132213_))
                          (___match136316136317_
                           _e132006132176_
                           _hd132005132179_
                           _tl132004132181_
                           _e132009132184_
                           _hd132008132187_
                           _tl132007132189_
                           _e132012132192_
                           _hd132011132195_
                           _tl132010132197_
                           _e132015132200_
                           _hd132014132203_
                           _tl132013132205_
                           _e132018132208_
                           _hd132017132211_
                           _tl132016132213_
                           _e132021132216_
                           _hd132020132219_
                           _tl132019132221_
                           _e132024132224_
                           _hd132023132227_
                           _tl132022132229_)
                          (___match136370136371_
                           _e132006132176_
                           _hd132005132179_
                           _tl132004132181_
                           _e132009132184_
                           _hd132008132187_
                           _tl132007132189_
                           _e132012132192_
                           _hd132011132195_
                           _tl132010132197_
                           _e132015132200_
                           _hd132014132203_
                           _tl132013132205_
                           _e132018132208_
                           _hd132017132211_
                           _tl132016132213_
                           _e132021132216_
                           _hd132020132219_
                           _tl132019132221_
                           _e132024132224_
                           _hd132023132227_
                           _tl132022132229_))))
                   (___match136260136261_
                    (lambda (_e131971132270_
                             _hd131970132273_
                             _tl131969132275_
                             _e131974132278_
                             _hd131973132281_
                             _tl131972132283_
                             _e131977132286_
                             _hd131976132289_
                             _tl131975132291_
                             _e131980132294_
                             _hd131979132297_
                             _tl131978132299_
                             _e131983132302_
                             _hd131982132305_
                             _tl131981132307_
                             _e131986132310_
                             _hd131985132313_
                             _tl131984132315_
                             _e131989132318_
                             _hd131988132321_
                             _tl131987132323_
                             _e131992132326_
                             _hd131991132329_
                             _tl131990132331_
                             _e131995132334_
                             _hd131994132337_
                             _tl131993132339_
                             _e131998132342_
                             _hd131997132345_
                             _tl131996132347_
                             _e132001132350_
                             _hd132000132353_
                             _tl131999132355_)
                      (let ((_L132358_ _hd132000132353_)
                            (_L132359_ _hd131997132345_)
                            (_L132360_ _hd131988132321_)
                            (_L132361_ _hd131979132297_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132361_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132361_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp137183
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131825_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132360_
                                    __tmp137183)))
                            (___kont135891135892_
                             _L132358_
                             _L132359_
                             _L132360_
                             _L132361_)
                            (___kont135897135898_)))))
                   (___match136252136253_
                    (lambda (_e131971132270_
                             _hd131970132273_
                             _tl131969132275_
                             _e131974132278_
                             _hd131973132281_
                             _tl131972132283_
                             _e131977132286_
                             _hd131976132289_
                             _tl131975132291_
                             _e131980132294_
                             _hd131979132297_
                             _tl131978132299_
                             _e131983132302_
                             _hd131982132305_
                             _tl131981132307_
                             _e131986132310_
                             _hd131985132313_
                             _tl131984132315_
                             _e131989132318_
                             _hd131988132321_
                             _tl131987132323_
                             _e131992132326_
                             _hd131991132329_
                             _tl131990132331_
                             _e131995132334_
                             _hd131994132337_
                             _tl131993132339_
                             _e131998132342_
                             _hd131997132345_
                             _tl131996132347_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131990132331_))
                          (let ((_e132001132350_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131990132331_))))
                            (let ((_tl131999132355_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e132001132350_)))
                                  (_hd132000132353_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e132001132350_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131999132355_))
                                  (___match136260136261_
                                   _e131971132270_
                                   _hd131970132273_
                                   _tl131969132275_
                                   _e131974132278_
                                   _hd131973132281_
                                   _tl131972132283_
                                   _e131977132286_
                                   _hd131976132289_
                                   _tl131975132291_
                                   _e131980132294_
                                   _hd131979132297_
                                   _tl131978132299_
                                   _e131983132302_
                                   _hd131982132305_
                                   _tl131981132307_
                                   _e131986132310_
                                   _hd131985132313_
                                   _tl131984132315_
                                   _e131989132318_
                                   _hd131988132321_
                                   _tl131987132323_
                                   _e131992132326_
                                   _hd131991132329_
                                   _tl131990132331_
                                   _e131995132334_
                                   _hd131994132337_
                                   _tl131993132339_
                                   _e131998132342_
                                   _hd131997132345_
                                   _tl131996132347_
                                   _e132001132350_
                                   _hd132000132353_
                                   _tl131999132355_)
                                  (___kont135897135898_))))
                          (___match136376136377_
                           _e131971132270_
                           _hd131970132273_
                           _tl131969132275_
                           _e131974132278_
                           _hd131973132281_
                           _tl131972132283_
                           _e131977132286_
                           _hd131976132289_
                           _tl131975132291_
                           _e131980132294_
                           _hd131979132297_
                           _tl131978132299_
                           _e131983132302_
                           _hd131982132305_
                           _tl131981132307_
                           _e131986132310_
                           _hd131985132313_
                           _tl131984132315_
                           _e131989132318_
                           _hd131988132321_
                           _tl131987132323_
                           _e131992132326_
                           _hd131991132329_
                           _tl131990132331_))))
                   (___match136174136175_
                    (lambda (_e131937132401_
                             _hd131936132404_
                             _tl131935132406_
                             _e131940132409_
                             _hd131939132412_
                             _tl131938132414_
                             _e131943132417_
                             _hd131942132420_
                             _tl131941132422_
                             _e131946132425_
                             _hd131945132428_
                             _tl131944132430_
                             _e131949132433_
                             _hd131948132436_
                             _tl131947132438_
                             _e131952132441_
                             _hd131951132444_
                             _tl131950132446_
                             _e131955132449_
                             _hd131954132452_
                             _tl131953132454_
                             _e131958132457_
                             _hd131957132460_
                             _tl131956132462_
                             _e131961132465_
                             _hd131960132468_
                             _tl131959132470_
                             _e131964132473_
                             _hd131963132476_
                             _tl131962132478_)
                      (let ((_L132481_ _hd131963132476_)
                            (_L132482_ _hd131954132452_)
                            (_L132483_ _hd131945132428_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132483_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L132483_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp137184
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _self131825_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L132482_
                                    __tmp137184)))
                            (___kont135889135890_
                             _L132481_
                             _L132482_
                             _L132483_)
                            (___match136378136379_
                             _e131937132401_
                             _hd131936132404_
                             _tl131935132406_
                             _e131940132409_
                             _hd131939132412_
                             _tl131938132414_
                             _e131943132417_
                             _hd131942132420_
                             _tl131941132422_
                             _e131946132425_
                             _hd131945132428_
                             _tl131944132430_
                             _e131949132433_
                             _hd131948132436_
                             _tl131947132438_
                             _e131952132441_
                             _hd131951132444_
                             _tl131950132446_
                             _e131955132449_
                             _hd131954132452_
                             _tl131953132454_
                             _e131958132457_
                             _hd131957132460_
                             _tl131956132462_)))))
                   (___match136172136173_
                    (lambda (_e131937132401_
                             _hd131936132404_
                             _tl131935132406_
                             _e131940132409_
                             _hd131939132412_
                             _tl131938132414_
                             _e131943132417_
                             _hd131942132420_
                             _tl131941132422_
                             _e131946132425_
                             _hd131945132428_
                             _tl131944132430_
                             _e131949132433_
                             _hd131948132436_
                             _tl131947132438_
                             _e131952132441_
                             _hd131951132444_
                             _tl131950132446_
                             _e131955132449_
                             _hd131954132452_
                             _tl131953132454_
                             _e131958132457_
                             _hd131957132460_
                             _tl131956132462_
                             _e131961132465_
                             _hd131960132468_
                             _tl131959132470_
                             _e131964132473_
                             _hd131963132476_
                             _tl131962132478_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl131956132462_))
                          (___match136174136175_
                           _e131937132401_
                           _hd131936132404_
                           _tl131935132406_
                           _e131940132409_
                           _hd131939132412_
                           _tl131938132414_
                           _e131943132417_
                           _hd131942132420_
                           _tl131941132422_
                           _e131946132425_
                           _hd131945132428_
                           _tl131944132430_
                           _e131949132433_
                           _hd131948132436_
                           _tl131947132438_
                           _e131952132441_
                           _hd131951132444_
                           _tl131950132446_
                           _e131955132449_
                           _hd131954132452_
                           _tl131953132454_
                           _e131958132457_
                           _hd131957132460_
                           _tl131956132462_
                           _e131961132465_
                           _hd131960132468_
                           _tl131959132470_
                           _e131964132473_
                           _hd131963132476_
                           _tl131962132478_)
                          (___match136252136253_
                           _e131937132401_
                           _hd131936132404_
                           _tl131935132406_
                           _e131940132409_
                           _hd131939132412_
                           _tl131938132414_
                           _e131943132417_
                           _hd131942132420_
                           _tl131941132422_
                           _e131946132425_
                           _hd131945132428_
                           _tl131944132430_
                           _e131949132433_
                           _hd131948132436_
                           _tl131947132438_
                           _e131952132441_
                           _hd131951132444_
                           _tl131950132446_
                           _e131955132449_
                           _hd131954132452_
                           _tl131953132454_
                           _e131958132457_
                           _hd131957132460_
                           _tl131956132462_
                           _e131961132465_
                           _hd131960132468_
                           _tl131959132470_
                           _e131964132473_
                           _hd131963132476_
                           _tl131962132478_))))
                   (___match136162136163_
                    (lambda (_e131937132401_
                             _hd131936132404_
                             _tl131935132406_
                             _e131940132409_
                             _hd131939132412_
                             _tl131938132414_
                             _e131943132417_
                             _hd131942132420_
                             _tl131941132422_
                             _e131946132425_
                             _hd131945132428_
                             _tl131944132430_
                             _e131949132433_
                             _hd131948132436_
                             _tl131947132438_
                             _e131952132441_
                             _hd131951132444_
                             _tl131950132446_
                             _e131955132449_
                             _hd131954132452_
                             _tl131953132454_
                             _e131958132457_
                             _hd131957132460_
                             _tl131956132462_
                             _e131961132465_
                             _hd131960132468_
                             _tl131959132470_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd131960132468_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131959132470_))
                              (let ((_e131964132473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131959132470_))))
                                (let ((_tl131962132478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131964132473_)))
                                      (_hd131963132476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131964132473_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131962132478_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl131956132462_))
                                          (___match136174136175_
                                           _e131937132401_
                                           _hd131936132404_
                                           _tl131935132406_
                                           _e131940132409_
                                           _hd131939132412_
                                           _tl131938132414_
                                           _e131943132417_
                                           _hd131942132420_
                                           _tl131941132422_
                                           _e131946132425_
                                           _hd131945132428_
                                           _tl131944132430_
                                           _e131949132433_
                                           _hd131948132436_
                                           _tl131947132438_
                                           _e131952132441_
                                           _hd131951132444_
                                           _tl131950132446_
                                           _e131955132449_
                                           _hd131954132452_
                                           _tl131953132454_
                                           _e131958132457_
                                           _hd131957132460_
                                           _tl131956132462_
                                           _e131961132465_
                                           _hd131960132468_
                                           _tl131959132470_
                                           _e131964132473_
                                           _hd131963132476_
                                           _tl131962132478_)
                                          (___match136252136253_
                                           _e131937132401_
                                           _hd131936132404_
                                           _tl131935132406_
                                           _e131940132409_
                                           _hd131939132412_
                                           _tl131938132414_
                                           _e131943132417_
                                           _hd131942132420_
                                           _tl131941132422_
                                           _e131946132425_
                                           _hd131945132428_
                                           _tl131944132430_
                                           _e131949132433_
                                           _hd131948132436_
                                           _tl131947132438_
                                           _e131952132441_
                                           _hd131951132444_
                                           _tl131950132446_
                                           _e131955132449_
                                           _hd131954132452_
                                           _tl131953132454_
                                           _e131958132457_
                                           _hd131957132460_
                                           _tl131956132462_
                                           _e131961132465_
                                           _hd131960132468_
                                           _tl131959132470_
                                           _e131964132473_
                                           _hd131963132476_
                                           _tl131962132478_))
                                      (___match136376136377_
                                       _e131937132401_
                                       _hd131936132404_
                                       _tl131935132406_
                                       _e131940132409_
                                       _hd131939132412_
                                       _tl131938132414_
                                       _e131943132417_
                                       _hd131942132420_
                                       _tl131941132422_
                                       _e131946132425_
                                       _hd131945132428_
                                       _tl131944132430_
                                       _e131949132433_
                                       _hd131948132436_
                                       _tl131947132438_
                                       _e131952132441_
                                       _hd131951132444_
                                       _tl131950132446_
                                       _e131955132449_
                                       _hd131954132452_
                                       _tl131953132454_
                                       _e131958132457_
                                       _hd131957132460_
                                       _tl131956132462_))))
                              (___match136376136377_
                               _e131937132401_
                               _hd131936132404_
                               _tl131935132406_
                               _e131940132409_
                               _hd131939132412_
                               _tl131938132414_
                               _e131943132417_
                               _hd131942132420_
                               _tl131941132422_
                               _e131946132425_
                               _hd131945132428_
                               _tl131944132430_
                               _e131949132433_
                               _hd131948132436_
                               _tl131947132438_
                               _e131952132441_
                               _hd131951132444_
                               _tl131950132446_
                               _e131955132449_
                               _hd131954132452_
                               _tl131953132454_
                               _e131958132457_
                               _hd131957132460_
                               _tl131956132462_))
                          (___match136376136377_
                           _e131937132401_
                           _hd131936132404_
                           _tl131935132406_
                           _e131940132409_
                           _hd131939132412_
                           _tl131938132414_
                           _e131943132417_
                           _hd131942132420_
                           _tl131941132422_
                           _e131946132425_
                           _hd131945132428_
                           _tl131944132430_
                           _e131949132433_
                           _hd131948132436_
                           _tl131947132438_
                           _e131952132441_
                           _hd131951132444_
                           _tl131950132446_
                           _e131955132449_
                           _hd131954132452_
                           _tl131953132454_
                           _e131958132457_
                           _hd131957132460_
                           _tl131956132462_))))
                   (___match136094136095_
                    (lambda (_e131886132520_
                             _hd131885132523_
                             _tl131884132525_
                             _e131889132528_
                             _hd131888132531_
                             _tl131887132533_
                             _e131892132536_
                             _hd131891132539_
                             _tl131890132541_
                             _e131895132544_
                             _hd131894132547_
                             _tl131893132549_
                             _e131898132552_
                             _hd131897132555_
                             _tl131896132557_
                             _e131901132560_
                             _hd131900132563_
                             _tl131899132565_
                             _e131904132568_
                             _hd131903132571_
                             _tl131902132573_
                             _e131907132576_
                             _hd131906132579_
                             _tl131905132581_
                             _e131910132584_
                             _hd131909132587_
                             _tl131908132589_
                             _e131913132592_
                             _hd131912132595_
                             _tl131911132597_
                             _e131916132600_
                             _hd131915132603_
                             _tl131914132605_
                             _e131919132608_
                             _hd131918132611_
                             _tl131917132613_
                             _e131922132616_
                             _hd131921132619_
                             _tl131920132621_
                             ___splice135887135888_
                             _target131923132624_
                             _tl131925132626_)
                      (letrec ((_loop131926132629_
                                (lambda (_hd131924132632_ _args131930132634_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131924132632_))
                                      (let ((_e131927132637_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131924132632_))))
                                        (let ((_lp-tl131929132642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131927132637_)))
                                              (_lp-hd131928132640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131927132637_))))
                                          (let ((__tmp137186
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131928132640_
                                                         _args131930132634_))))
                                            (declare (not safe))
                                            (_loop131926132629_
                                             _lp-tl131929132642_
                                             __tmp137186))))
                                      (let ((_args131931132645_
                                             (reverse _args131930132634_)))
                                        (let ((_L132648_ _args131931132645_)
                                              (_L132649_ _hd131921132619_)
                                              (_L132650_ _hd131912132595_)
                                              (_L132651_ _hd131903132571_)
                                              (_L132652_ _hd131894132547_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132652_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132651_
                                                      'call-method))
                                                   (let ((__tmp137185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131825_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132650_
                                                      __tmp137185)))
                                              (___kont135885135886_
                                               _L132648_
                                               _L132649_
                                               _L132650_
                                               _L132651_
                                               _L132652_)
                                              (___kont135897135898_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131926132629_ _target131923132624_ '())))))
                   (___match136052136053_
                    (lambda (_e131886132520_
                             _hd131885132523_
                             _tl131884132525_
                             _e131889132528_
                             _hd131888132531_
                             _tl131887132533_
                             _e131892132536_
                             _hd131891132539_
                             _tl131890132541_
                             _e131895132544_
                             _hd131894132547_
                             _tl131893132549_
                             _e131898132552_
                             _hd131897132555_
                             _tl131896132557_
                             _e131901132560_
                             _hd131900132563_
                             _tl131899132565_
                             _e131904132568_
                             _hd131903132571_
                             _tl131902132573_
                             _e131907132576_
                             _hd131906132579_
                             _tl131905132581_
                             _e131910132584_
                             _hd131909132587_
                             _tl131908132589_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd131909132587_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl131908132589_))
                              (let ((_e131913132592_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl131908132589_))))
                                (let ((_tl131911132597_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131913132592_)))
                                      (_hd131912132595_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131913132592_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl131911132597_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131905132581_))
                                          (let ((_e131916132600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131905132581_))))
                                            (let ((_tl131914132605_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131916132600_)))
                                                  (_hd131915132603_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131916132600_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131915132603_))
                                                  (let ((_e131919132608_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131915132603_))))
                                                    (let ((_tl131917132613_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131919132608_)))
                                                          (_hd131918132611_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131919132608_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd131918132611_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd131918132611_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131917132613_))
                          (let ((_e131922132616_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131917132613_))))
                            (let ((_tl131920132621_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131922132616_)))
                                  (_hd131921132619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131922132616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131920132621_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl131914132605_))
                                      (let ((___splice135887135888_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl131914132605_
                                                '0))))
                                        (let ((_tl131925132626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135887135888_
                                                  '1)))
                                              (_target131923132624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice135887135888_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl131925132626_))
                                              (___match136094136095_
                                               _e131886132520_
                                               _hd131885132523_
                                               _tl131884132525_
                                               _e131889132528_
                                               _hd131888132531_
                                               _tl131887132533_
                                               _e131892132536_
                                               _hd131891132539_
                                               _tl131890132541_
                                               _e131895132544_
                                               _hd131894132547_
                                               _tl131893132549_
                                               _e131898132552_
                                               _hd131897132555_
                                               _tl131896132557_
                                               _e131901132560_
                                               _hd131900132563_
                                               _tl131899132565_
                                               _e131904132568_
                                               _hd131903132571_
                                               _tl131902132573_
                                               _e131907132576_
                                               _hd131906132579_
                                               _tl131905132581_
                                               _e131910132584_
                                               _hd131909132587_
                                               _tl131908132589_
                                               _e131913132592_
                                               _hd131912132595_
                                               _tl131911132597_
                                               _e131916132600_
                                               _hd131915132603_
                                               _tl131914132605_
                                               _e131919132608_
                                               _hd131918132611_
                                               _tl131917132613_
                                               _e131922132616_
                                               _hd131921132619_
                                               _tl131920132621_
                                               ___splice135887135888_
                                               _target131923132624_
                                               _tl131925132626_)
                                              (___kont135897135898_))))
                                      (___kont135897135898_))
                                  (___kont135897135898_))))
                          (___kont135897135898_))
                      (___kont135897135898_))
                  (___kont135897135898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135897135898_))))
                                          (___match136376136377_
                                           _e131886132520_
                                           _hd131885132523_
                                           _tl131884132525_
                                           _e131889132528_
                                           _hd131888132531_
                                           _tl131887132533_
                                           _e131892132536_
                                           _hd131891132539_
                                           _tl131890132541_
                                           _e131895132544_
                                           _hd131894132547_
                                           _tl131893132549_
                                           _e131898132552_
                                           _hd131897132555_
                                           _tl131896132557_
                                           _e131901132560_
                                           _hd131900132563_
                                           _tl131899132565_
                                           _e131904132568_
                                           _hd131903132571_
                                           _tl131902132573_
                                           _e131907132576_
                                           _hd131906132579_
                                           _tl131905132581_))
                                      (___match136376136377_
                                       _e131886132520_
                                       _hd131885132523_
                                       _tl131884132525_
                                       _e131889132528_
                                       _hd131888132531_
                                       _tl131887132533_
                                       _e131892132536_
                                       _hd131891132539_
                                       _tl131890132541_
                                       _e131895132544_
                                       _hd131894132547_
                                       _tl131893132549_
                                       _e131898132552_
                                       _hd131897132555_
                                       _tl131896132557_
                                       _e131901132560_
                                       _hd131900132563_
                                       _tl131899132565_
                                       _e131904132568_
                                       _hd131903132571_
                                       _tl131902132573_
                                       _e131907132576_
                                       _hd131906132579_
                                       _tl131905132581_))))
                              (___match136376136377_
                               _e131886132520_
                               _hd131885132523_
                               _tl131884132525_
                               _e131889132528_
                               _hd131888132531_
                               _tl131887132533_
                               _e131892132536_
                               _hd131891132539_
                               _tl131890132541_
                               _e131895132544_
                               _hd131894132547_
                               _tl131893132549_
                               _e131898132552_
                               _hd131897132555_
                               _tl131896132557_
                               _e131901132560_
                               _hd131900132563_
                               _tl131899132565_
                               _e131904132568_
                               _hd131903132571_
                               _tl131902132573_
                               _e131907132576_
                               _hd131906132579_
                               _tl131905132581_))
                          (___match136162136163_
                           _e131886132520_
                           _hd131885132523_
                           _tl131884132525_
                           _e131889132528_
                           _hd131888132531_
                           _tl131887132533_
                           _e131892132536_
                           _hd131891132539_
                           _tl131890132541_
                           _e131895132544_
                           _hd131894132547_
                           _tl131893132549_
                           _e131898132552_
                           _hd131897132555_
                           _tl131896132557_
                           _e131901132560_
                           _hd131900132563_
                           _tl131899132565_
                           _e131904132568_
                           _hd131903132571_
                           _tl131902132573_
                           _e131907132576_
                           _hd131906132579_
                           _tl131905132581_
                           _e131910132584_
                           _hd131909132587_
                           _tl131908132589_))))
                   (___match135984135985_
                    (lambda (_e131842132709_
                             _hd131841132712_
                             _tl131840132714_
                             _e131845132717_
                             _hd131844132720_
                             _tl131843132722_
                             _e131848132725_
                             _hd131847132728_
                             _tl131846132730_
                             _e131851132733_
                             _hd131850132736_
                             _tl131849132738_
                             _e131854132741_
                             _hd131853132744_
                             _tl131852132746_
                             _e131857132749_
                             _hd131856132752_
                             _tl131855132754_
                             _e131860132757_
                             _hd131859132760_
                             _tl131858132762_
                             _e131863132765_
                             _hd131862132768_
                             _tl131861132770_
                             _e131866132773_
                             _hd131865132776_
                             _tl131864132778_
                             _e131869132781_
                             _hd131868132784_
                             _tl131867132786_
                             ___splice135883135884_
                             _target131870132789_
                             _tl131872132791_)
                      (letrec ((_loop131873132794_
                                (lambda (_hd131871132797_ _args131877132799_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd131871132797_))
                                      (let ((_e131874132802_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd131871132797_))))
                                        (let ((_lp-tl131876132807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e131874132802_)))
                                              (_lp-hd131875132805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e131874132802_))))
                                          (let ((__tmp137188
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd131875132805_
                                                         _args131877132799_))))
                                            (declare (not safe))
                                            (_loop131873132794_
                                             _lp-tl131876132807_
                                             __tmp137188))))
                                      (let ((_args131878132810_
                                             (reverse _args131877132799_)))
                                        (let ((_L132813_ _args131878132810_)
                                              (_L132814_ _hd131868132784_)
                                              (_L132815_ _hd131859132760_)
                                              (_L132816_ _hd131850132736_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L132816_
                                                      'call-method))
                                                   (let ((__tmp137187
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self131825_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L132815_
                                                      __tmp137187)))
                                              (___kont135881135882_
                                               _L132813_
                                               _L132814_
                                               _L132815_
                                               _L132816_)
                                              (___match136172136173_
                                               _e131842132709_
                                               _hd131841132712_
                                               _tl131840132714_
                                               _e131845132717_
                                               _hd131844132720_
                                               _tl131843132722_
                                               _e131848132725_
                                               _hd131847132728_
                                               _tl131846132730_
                                               _e131851132733_
                                               _hd131850132736_
                                               _tl131849132738_
                                               _e131854132741_
                                               _hd131853132744_
                                               _tl131852132746_
                                               _e131857132749_
                                               _hd131856132752_
                                               _tl131855132754_
                                               _e131860132757_
                                               _hd131859132760_
                                               _tl131858132762_
                                               _e131863132765_
                                               _hd131862132768_
                                               _tl131861132770_
                                               _e131866132773_
                                               _hd131865132776_
                                               _tl131864132778_
                                               _e131869132781_
                                               _hd131868132784_
                                               _tl131867132786_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop131873132794_ _target131870132789_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx135879135880_))
                  (let ((_e131842132709_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx135879135880_))))
                    (let ((_tl131840132714_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131842132709_)))
                          (_hd131841132712_
                           (let ()
                             (declare (not safe))
                             (##car _e131842132709_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl131840132714_))
                          (let ((_e131845132717_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl131840132714_))))
                            (let ((_tl131843132722_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131845132717_)))
                                  (_hd131844132720_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131845132717_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd131844132720_))
                                  (let ((_e131848132725_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd131844132720_))))
                                    (let ((_tl131846132730_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e131848132725_)))
                                          (_hd131847132728_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e131848132725_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd131847132728_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd131847132728_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl131846132730_))
                                                  (let ((_e131851132733_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl131846132730_))))
                                                    (let ((_tl131849132738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131851132733_)))
                                                          (_hd131850132736_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131851132733_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl131849132738_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl131843132722_))
                      (let ((_e131854132741_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl131843132722_))))
                        (let ((_tl131852132746_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e131854132741_)))
                              (_hd131853132744_
                               (let ()
                                 (declare (not safe))
                                 (##car _e131854132741_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd131853132744_))
                              (let ((_e131857132749_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd131853132744_))))
                                (let ((_tl131855132754_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e131857132749_)))
                                      (_hd131856132752_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e131857132749_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd131856132752_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd131856132752_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl131855132754_))
                                              (let ((_e131860132757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl131855132754_))))
                                                (let ((_tl131858132762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e131860132757_)))
                                                      (_hd131859132760_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e131860132757_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl131858132762_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl131852132746_))
                                                          (let ((_e131863132765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl131852132746_))))
                    (let ((_tl131861132770_
                           (let ()
                             (declare (not safe))
                             (##cdr _e131863132765_)))
                          (_hd131862132768_
                           (let ()
                             (declare (not safe))
                             (##car _e131863132765_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd131862132768_))
                          (let ((_e131866132773_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd131862132768_))))
                            (let ((_tl131864132778_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e131866132773_)))
                                  (_hd131865132776_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e131866132773_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd131865132776_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd131865132776_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl131864132778_))
                                          (let ((_e131869132781_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl131864132778_))))
                                            (let ((_tl131867132786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e131869132781_)))
                                                  (_hd131868132784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e131869132781_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl131867132786_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl131861132770_))
                                                      (let ((___splice135883135884_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl131861132770_ '0))))
                (let ((_tl131872132791_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135883135884_ '1)))
                      (_target131870132789_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice135883135884_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl131872132791_))
                      (___match135984135985_
                       _e131842132709_
                       _hd131841132712_
                       _tl131840132714_
                       _e131845132717_
                       _hd131844132720_
                       _tl131843132722_
                       _e131848132725_
                       _hd131847132728_
                       _tl131846132730_
                       _e131851132733_
                       _hd131850132736_
                       _tl131849132738_
                       _e131854132741_
                       _hd131853132744_
                       _tl131852132746_
                       _e131857132749_
                       _hd131856132752_
                       _tl131855132754_
                       _e131860132757_
                       _hd131859132760_
                       _tl131858132762_
                       _e131863132765_
                       _hd131862132768_
                       _tl131861132770_
                       _e131866132773_
                       _hd131865132776_
                       _tl131864132778_
                       _e131869132781_
                       _hd131868132784_
                       _tl131867132786_
                       ___splice135883135884_
                       _target131870132789_
                       _tl131872132791_)
                      (___match136172136173_
                       _e131842132709_
                       _hd131841132712_
                       _tl131840132714_
                       _e131845132717_
                       _hd131844132720_
                       _tl131843132722_
                       _e131848132725_
                       _hd131847132728_
                       _tl131846132730_
                       _e131851132733_
                       _hd131850132736_
                       _tl131849132738_
                       _e131854132741_
                       _hd131853132744_
                       _tl131852132746_
                       _e131857132749_
                       _hd131856132752_
                       _tl131855132754_
                       _e131860132757_
                       _hd131859132760_
                       _tl131858132762_
                       _e131863132765_
                       _hd131862132768_
                       _tl131861132770_
                       _e131866132773_
                       _hd131865132776_
                       _tl131864132778_
                       _e131869132781_
                       _hd131868132784_
                       _tl131867132786_))))
              (___match136172136173_
               _e131842132709_
               _hd131841132712_
               _tl131840132714_
               _e131845132717_
               _hd131844132720_
               _tl131843132722_
               _e131848132725_
               _hd131847132728_
               _tl131846132730_
               _e131851132733_
               _hd131850132736_
               _tl131849132738_
               _e131854132741_
               _hd131853132744_
               _tl131852132746_
               _e131857132749_
               _hd131856132752_
               _tl131855132754_
               _e131860132757_
               _hd131859132760_
               _tl131858132762_
               _e131863132765_
               _hd131862132768_
               _tl131861132770_
               _e131866132773_
               _hd131865132776_
               _tl131864132778_
               _e131869132781_
               _hd131868132784_
               _tl131867132786_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match136376136377_
                                                   _e131842132709_
                                                   _hd131841132712_
                                                   _tl131840132714_
                                                   _e131845132717_
                                                   _hd131844132720_
                                                   _tl131843132722_
                                                   _e131848132725_
                                                   _hd131847132728_
                                                   _tl131846132730_
                                                   _e131851132733_
                                                   _hd131850132736_
                                                   _tl131849132738_
                                                   _e131854132741_
                                                   _hd131853132744_
                                                   _tl131852132746_
                                                   _e131857132749_
                                                   _hd131856132752_
                                                   _tl131855132754_
                                                   _e131860132757_
                                                   _hd131859132760_
                                                   _tl131858132762_
                                                   _e131863132765_
                                                   _hd131862132768_
                                                   _tl131861132770_))))
                                          (___match136376136377_
                                           _e131842132709_
                                           _hd131841132712_
                                           _tl131840132714_
                                           _e131845132717_
                                           _hd131844132720_
                                           _tl131843132722_
                                           _e131848132725_
                                           _hd131847132728_
                                           _tl131846132730_
                                           _e131851132733_
                                           _hd131850132736_
                                           _tl131849132738_
                                           _e131854132741_
                                           _hd131853132744_
                                           _tl131852132746_
                                           _e131857132749_
                                           _hd131856132752_
                                           _tl131855132754_
                                           _e131860132757_
                                           _hd131859132760_
                                           _tl131858132762_
                                           _e131863132765_
                                           _hd131862132768_
                                           _tl131861132770_))
                                      (___match136052136053_
                                       _e131842132709_
                                       _hd131841132712_
                                       _tl131840132714_
                                       _e131845132717_
                                       _hd131844132720_
                                       _tl131843132722_
                                       _e131848132725_
                                       _hd131847132728_
                                       _tl131846132730_
                                       _e131851132733_
                                       _hd131850132736_
                                       _tl131849132738_
                                       _e131854132741_
                                       _hd131853132744_
                                       _tl131852132746_
                                       _e131857132749_
                                       _hd131856132752_
                                       _tl131855132754_
                                       _e131860132757_
                                       _hd131859132760_
                                       _tl131858132762_
                                       _e131863132765_
                                       _hd131862132768_
                                       _tl131861132770_
                                       _e131866132773_
                                       _hd131865132776_
                                       _tl131864132778_))
                                  (___match136376136377_
                                   _e131842132709_
                                   _hd131841132712_
                                   _tl131840132714_
                                   _e131845132717_
                                   _hd131844132720_
                                   _tl131843132722_
                                   _e131848132725_
                                   _hd131847132728_
                                   _tl131846132730_
                                   _e131851132733_
                                   _hd131850132736_
                                   _tl131849132738_
                                   _e131854132741_
                                   _hd131853132744_
                                   _tl131852132746_
                                   _e131857132749_
                                   _hd131856132752_
                                   _tl131855132754_
                                   _e131860132757_
                                   _hd131859132760_
                                   _tl131858132762_
                                   _e131863132765_
                                   _hd131862132768_
                                   _tl131861132770_))))
                          (___match136376136377_
                           _e131842132709_
                           _hd131841132712_
                           _tl131840132714_
                           _e131845132717_
                           _hd131844132720_
                           _tl131843132722_
                           _e131848132725_
                           _hd131847132728_
                           _tl131846132730_
                           _e131851132733_
                           _hd131850132736_
                           _tl131849132738_
                           _e131854132741_
                           _hd131853132744_
                           _tl131852132746_
                           _e131857132749_
                           _hd131856132752_
                           _tl131855132754_
                           _e131860132757_
                           _hd131859132760_
                           _tl131858132762_
                           _e131863132765_
                           _hd131862132768_
                           _tl131861132770_))))
                  (___match136314136315_
                   _e131842132709_
                   _hd131841132712_
                   _tl131840132714_
                   _e131845132717_
                   _hd131844132720_
                   _tl131843132722_
                   _e131848132725_
                   _hd131847132728_
                   _tl131846132730_
                   _e131851132733_
                   _hd131850132736_
                   _tl131849132738_
                   _e131854132741_
                   _hd131853132744_
                   _tl131852132746_
                   _e131857132749_
                   _hd131856132752_
                   _tl131855132754_
                   _e131860132757_
                   _hd131859132760_
                   _tl131858132762_))
              (___kont135897135898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont135897135898_))
                                          (___kont135897135898_))
                                      (___kont135897135898_))))
                              (___kont135897135898_))))
                      (___kont135897135898_))
                  (___kont135897135898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont135897135898_))
                                              (___kont135897135898_))
                                          (___kont135897135898_))))
                                  (___kont135897135898_))))
                          (___kont135897135898_))))
                  (___kont135897135898_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_self130764_ _stx130765_)
        (letrec ((_force-e130767_
                  (lambda (_target131823_)
                    (let ((__tmp137189
                           (let ((__tmp137193
                                  (let ((__tmp137194
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp137194)))
                                 (__tmp137190
                                  (let ((__tmp137191
                                         (let ((__tmp137192
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target131823_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp137192))))
                                    (declare (not safe))
                                    (cons __tmp137191 '()))))
                             (declare (not safe))
                             (cons __tmp137193 __tmp137190))))
                      (declare (not safe))
                      (cons '%#call __tmp137189)))))
          (let* ((___stx136381136382_ _stx130765_)
                 (_g130775130997_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx136381136382_)))))
            (let ((___kont136383136384_
                   (lambda (_L131769_ _L131770_ _L131771_ _L131772_)
                     (let ((_$method131817_
                            (let ((__tmp137196
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130764_ 'methods)))
                                  (__tmp137195
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131770_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137196 __tmp137195)))
                           (_args131818_
                            (map (lambda (_g131805131807_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130764_
                                      _g131805131807_)))
                                 (let ((__tmp137197
                                        (lambda (_g131809131812_
                                                 _g131810131814_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131809131812_
                                                  _g131810131814_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137197 '() _L131769_)))))
                       (let ((__tmp137198
                              (let ((__tmp137199
                                     (let ((__tmp137204
                                            (let ()
                                              (declare (not safe))
                                              (_force-e130767_
                                               _$method131817_)))
                                           (__tmp137200
                                            (let ((__tmp137201
                                                   (let ((__tmp137202
                                                          (let ((__tmp137203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _self130764_ 'receiver))))
                    (declare (not safe))
                    (cons __tmp137203 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137202))))
                                              (declare (not safe))
                                              (cons __tmp137201
                                                    _args131818_))))
                                       (declare (not safe))
                                       (cons __tmp137204 __tmp137200))))
                                (declare (not safe))
                                (cons '%#call __tmp137199))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137198 _stx130765_)))))
                  (___kont136387136388_
                   (lambda (_L131601_ _L131602_ _L131603_ _L131604_ _L131605_)
                     (let ((_$method131657_
                            (let ((__tmp137206
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130764_ 'methods)))
                                  (__tmp137205
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131602_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137206 __tmp137205)))
                           (_args131658_
                            (map (lambda (_g131645131647_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self130764_
                                      _g131645131647_)))
                                 (let ((__tmp137207
                                        (lambda (_g131649131652_
                                                 _g131650131654_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g131649131652_
                                                  _g131650131654_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp137207 '() _L131601_)))))
                       (let ((__tmp137208
                              (let ((__tmp137209
                                     (let ((__tmp137216
                                            (let ((__tmp137217
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137217)))
                                           (__tmp137210
                                            (let ((__tmp137215
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e130767_
                                                      _$method131657_)))
                                                  (__tmp137211
                                                   (let ((__tmp137212
                                                          (let ((__tmp137213
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137214
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130764_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137214 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137213))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137212
                                                           _args131658_))))
                                              (declare (not safe))
                                              (cons __tmp137215 __tmp137211))))
                                       (declare (not safe))
                                       (cons __tmp137216 __tmp137210))))
                                (declare (not safe))
                                (cons '%#call __tmp137209))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137208 _stx130765_)))))
                  (___kont136391136392_
                   (lambda (_L131432_ _L131433_ _L131434_)
                     (let* ((_$field131466_
                             (let ((__tmp137219
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _self130764_ 'slots)))
                                   (__tmp137218
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L131432_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp137219 __tmp137218)))
                            (__tmp137220
                             (let ((__tmp137221
                                    (let ((__tmp137229
                                           (let ((__tmp137230
                                                  (let ((__tmp137231
                                                         (let ()
                                                           (declare (not safe))
                                                           (slot-ref__0
                                                            _self130764_
                                                            'klass))))
                                                    (declare (not safe))
                                                    (cons __tmp137231 '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp137230)))
                                          (__tmp137222
                                           (let ((__tmp137227
                                                  (let ((__tmp137228
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field131466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp137228)))
                                                 (__tmp137223
                                                  (let ((__tmp137224
                                                         (let ((__tmp137225
                                                                (let ((__tmp137226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _self130764_ 'receiver))))
                          (declare (not safe))
                          (cons __tmp137226 '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp137225))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp137224 '()))))
                                             (declare (not safe))
                                             (cons __tmp137227 __tmp137223))))
                                      (declare (not safe))
                                      (cons __tmp137229 __tmp137222))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp137221))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp137220 _stx130765_))))
                  (___kont136393136394_
                   (lambda (_L131306_ _L131307_ _L131308_ _L131309_)
                     (let ((_$field131344_
                            (let ((__tmp137233
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _self130764_ 'slots)))
                                  (__tmp137232
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L131307_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp137233 __tmp137232)))
                           (_expr131345_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _self130764_ _L131306_))))
                       (let ((__tmp137234
                              (let ((__tmp137235
                                     (let ((__tmp137244
                                            (let ((__tmp137245
                                                   (let ((__tmp137246
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self130764_
                                                             'klass))))
                                                     (declare (not safe))
                                                     (cons __tmp137246 '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp137245)))
                                           (__tmp137236
                                            (let ((__tmp137242
                                                   (let ((__tmp137243
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field131344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp137243)))
                                                  (__tmp137237
                                                   (let ((__tmp137239
                                                          (let ((__tmp137240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp137241
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _self130764_ 'receiver))))
                           (declare (not safe))
                           (cons __tmp137241 '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp137240)))
                 (__tmp137238
                  (let () (declare (not safe)) (cons _expr131345_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp137239
                                                           __tmp137238))))
                                              (declare (not safe))
                                              (cons __tmp137242 __tmp137237))))
                                       (declare (not safe))
                                       (cons __tmp137244 __tmp137236))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp137235))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp137234 _stx130765_)))))
                  (___kont136395136396_
                   (lambda (_L131178_ _L131179_)
                     (let* ((_accessor131201_
                             (let ((__tmp137247
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131179_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137247)))
                            (_klass131203_
                             (let ((__tmp137248
                                    (##structure-ref
                                     _accessor131201_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130765_
                                __tmp137248)))
                            (_slot131205_
                             (##structure-ref
                              _accessor131201_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp137262
                                       (##structure-ref
                                        _accessor131201_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137262))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131203_
                                       _slot131205_))
                                    (##structure-ref
                                     _klass131203_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx130765_
                           (let* ((_$field131211_
                                   (let ((__tmp137249
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137249 _slot131205_)))
                                  (__tmp137250
                                   (let ((__tmp137251
                                          (let ((__tmp137259
                                                 (let ((__tmp137260
                                                        (let ((__tmp137261
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130764_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137261 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137260)))
                                                (__tmp137252
                                                 (let ((__tmp137257
                                                        (let ((__tmp137258
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131211_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137258)))
               (__tmp137253
                (let ((__tmp137254
                       (let ((__tmp137255
                              (let ((__tmp137256
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130764_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137256 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137255))))
                  (declare (not safe))
                  (cons __tmp137254 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137257
                                                         __tmp137253))))
                                            (declare (not safe))
                                            (cons __tmp137259 __tmp137252))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp137251))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137250
                              _stx130765_))))))
                  (___kont136397136398_
                   (lambda (_L131073_ _L131074_ _L131075_)
                     (let* ((_mutator131103_
                             (let ((__tmp137263
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L131075_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp137263)))
                            (_klass131105_
                             (let ((__tmp137264
                                    (##structure-ref
                                     _mutator131103_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx130765_
                                __tmp137264)))
                            (_slot131107_
                             (##structure-ref
                              _mutator131103_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr131109_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _self130764_ _L131073_))))
                       (if (and (let ((__tmp137289
                                       (##structure-ref
                                        _mutator131103_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp137289))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass131105_
                                       _slot131107_))
                                    (##structure-ref
                                     _klass131105_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp137279
                                  (let ((__tmp137280
                                         (let ((__tmp137286
                                                (let ((__tmp137288
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp137287
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L131075_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp137288
                                                        __tmp137287)))
                                               (__tmp137281
                                                (let ((__tmp137283
                                                       (let ((__tmp137285
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp137284
                      (let () (declare (not safe)) (cons _L131074_ '()))))
                 (declare (not safe))
                 (cons __tmp137285 __tmp137284)))
              (__tmp137282
               (let () (declare (not safe)) (cons _expr131109_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp137283
                                                        __tmp137282))))
                                           (declare (not safe))
                                           (cons __tmp137286 __tmp137281))))
                                    (declare (not safe))
                                    (cons '%#call __tmp137280))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp137279 _stx130765_))
                           (let* ((_$field131115_
                                   (let ((__tmp137265
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp137265 _slot131107_)))
                                  (__tmp137266
                                   (let ((__tmp137267
                                          (let ((__tmp137276
                                                 (let ((__tmp137277
                                                        (let ((__tmp137278
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (slot-ref__0 _self130764_ 'klass))))
                  (declare (not safe))
                  (cons __tmp137278 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp137277)))
                                                (__tmp137268
                                                 (let ((__tmp137274
                                                        (let ((__tmp137275
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field131115_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp137275)))
               (__tmp137269
                (let ((__tmp137271
                       (let ((__tmp137272
                              (let ((__tmp137273
                                     (let ()
                                       (declare (not safe))
                                       (slot-ref__0 _self130764_ 'receiver))))
                                (declare (not safe))
                                (cons __tmp137273 '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp137272)))
                      (__tmp137270
                       (let () (declare (not safe)) (cons _expr131109_ '()))))
                  (declare (not safe))
                  (cons __tmp137271 __tmp137270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp137274
                                                         __tmp137269))))
                                            (declare (not safe))
                                            (cons __tmp137276 __tmp137268))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp137267))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp137266
                              _stx130765_))))))
                  (___kont136399136400_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _self130764_ _stx130765_)))))
              (let* ((___match136880136881_
                      (lambda (_e130971131009_
                               _hd130970131012_
                               _tl130969131014_
                               _e130974131017_
                               _hd130973131020_
                               _tl130972131022_
                               _e130977131025_
                               _hd130976131028_
                               _tl130975131030_
                               _e130980131033_
                               _hd130979131036_
                               _tl130978131038_
                               _e130983131041_
                               _hd130982131044_
                               _tl130981131046_
                               _e130986131049_
                               _hd130985131052_
                               _tl130984131054_
                               _e130989131057_
                               _hd130988131060_
                               _tl130987131062_
                               _e130992131065_
                               _hd130991131068_
                               _tl130990131070_)
                        (let ((_L131073_ _hd130991131068_)
                              (_L131074_ _hd130988131060_)
                              (_L131075_ _hd130979131036_))
                          (if (and (let ((__tmp137292
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131074_
                                      __tmp137292))
                                   (let ((__tmp137290
                                          (let ((__tmp137291
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131075_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137291))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137290
                                      'gxc#!mutator::t)))
                              (___kont136397136398_
                               _L131073_
                               _L131074_
                               _L131075_)
                              (___kont136399136400_)))))
                     (___match136878136879_
                      (lambda (_e130971131009_
                               _hd130970131012_
                               _tl130969131014_
                               _e130974131017_
                               _hd130973131020_
                               _tl130972131022_
                               _e130977131025_
                               _hd130976131028_
                               _tl130975131030_
                               _e130980131033_
                               _hd130979131036_
                               _tl130978131038_
                               _e130983131041_
                               _hd130982131044_
                               _tl130981131046_
                               _e130986131049_
                               _hd130985131052_
                               _tl130984131054_
                               _e130989131057_
                               _hd130988131060_
                               _tl130987131062_
                               _e130992131065_
                               _hd130991131068_
                               _tl130990131070_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130990131070_))
                            (___match136880136881_
                             _e130971131009_
                             _hd130970131012_
                             _tl130969131014_
                             _e130974131017_
                             _hd130973131020_
                             _tl130972131022_
                             _e130977131025_
                             _hd130976131028_
                             _tl130975131030_
                             _e130980131033_
                             _hd130979131036_
                             _tl130978131038_
                             _e130983131041_
                             _hd130982131044_
                             _tl130981131046_
                             _e130986131049_
                             _hd130985131052_
                             _tl130984131054_
                             _e130989131057_
                             _hd130988131060_
                             _tl130987131062_
                             _e130992131065_
                             _hd130991131068_
                             _tl130990131070_)
                            (___kont136399136400_))))
                     (___match136872136873_
                      (lambda (_e130971131009_
                               _hd130970131012_
                               _tl130969131014_
                               _e130974131017_
                               _hd130973131020_
                               _tl130972131022_
                               _e130977131025_
                               _hd130976131028_
                               _tl130975131030_
                               _e130980131033_
                               _hd130979131036_
                               _tl130978131038_
                               _e130983131041_
                               _hd130982131044_
                               _tl130981131046_
                               _e130986131049_
                               _hd130985131052_
                               _tl130984131054_
                               _e130989131057_
                               _hd130988131060_
                               _tl130987131062_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130981131046_))
                            (let ((_e130992131065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130981131046_))))
                              (let ((_tl130990131070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130992131065_)))
                                    (_hd130991131068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130992131065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130990131070_))
                                    (___match136880136881_
                                     _e130971131009_
                                     _hd130970131012_
                                     _tl130969131014_
                                     _e130974131017_
                                     _hd130973131020_
                                     _tl130972131022_
                                     _e130977131025_
                                     _hd130976131028_
                                     _tl130975131030_
                                     _e130980131033_
                                     _hd130979131036_
                                     _tl130978131038_
                                     _e130983131041_
                                     _hd130982131044_
                                     _tl130981131046_
                                     _e130986131049_
                                     _hd130985131052_
                                     _tl130984131054_
                                     _e130989131057_
                                     _hd130988131060_
                                     _tl130987131062_
                                     _e130992131065_
                                     _hd130991131068_
                                     _tl130990131070_)
                                    (___kont136399136400_))))
                            (___kont136399136400_))))
                     (___match136818136819_
                      (lambda (_e130947131122_
                               _hd130946131125_
                               _tl130945131127_
                               _e130950131130_
                               _hd130949131133_
                               _tl130948131135_
                               _e130953131138_
                               _hd130952131141_
                               _tl130951131143_
                               _e130956131146_
                               _hd130955131149_
                               _tl130954131151_
                               _e130959131154_
                               _hd130958131157_
                               _tl130957131159_
                               _e130962131162_
                               _hd130961131165_
                               _tl130960131167_
                               _e130965131170_
                               _hd130964131173_
                               _tl130963131175_)
                        (let ((_L131178_ _hd130964131173_)
                              (_L131179_ _hd130955131149_))
                          (if (and (let ((__tmp137295
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131178_
                                      __tmp137295))
                                   (let ((__tmp137293
                                          (let ((__tmp137294
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L131179_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp137294))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp137293
                                      'gxc#!accessor::t)))
                              (___kont136395136396_ _L131178_ _L131179_)
                              (___kont136399136400_)))))
                     (___match136816136817_
                      (lambda (_e130947131122_
                               _hd130946131125_
                               _tl130945131127_
                               _e130950131130_
                               _hd130949131133_
                               _tl130948131135_
                               _e130953131138_
                               _hd130952131141_
                               _tl130951131143_
                               _e130956131146_
                               _hd130955131149_
                               _tl130954131151_
                               _e130959131154_
                               _hd130958131157_
                               _tl130957131159_
                               _e130962131162_
                               _hd130961131165_
                               _tl130960131167_
                               _e130965131170_
                               _hd130964131173_
                               _tl130963131175_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130957131159_))
                            (___match136818136819_
                             _e130947131122_
                             _hd130946131125_
                             _tl130945131127_
                             _e130950131130_
                             _hd130949131133_
                             _tl130948131135_
                             _e130953131138_
                             _hd130952131141_
                             _tl130951131143_
                             _e130956131146_
                             _hd130955131149_
                             _tl130954131151_
                             _e130959131154_
                             _hd130958131157_
                             _tl130957131159_
                             _e130962131162_
                             _hd130961131165_
                             _tl130960131167_
                             _e130965131170_
                             _hd130964131173_
                             _tl130963131175_)
                            (___match136872136873_
                             _e130947131122_
                             _hd130946131125_
                             _tl130945131127_
                             _e130950131130_
                             _hd130949131133_
                             _tl130948131135_
                             _e130953131138_
                             _hd130952131141_
                             _tl130951131143_
                             _e130956131146_
                             _hd130955131149_
                             _tl130954131151_
                             _e130959131154_
                             _hd130958131157_
                             _tl130957131159_
                             _e130962131162_
                             _hd130961131165_
                             _tl130960131167_
                             _e130965131170_
                             _hd130964131173_
                             _tl130963131175_))))
                     (___match136762136763_
                      (lambda (_e130912131218_
                               _hd130911131221_
                               _tl130910131223_
                               _e130915131226_
                               _hd130914131229_
                               _tl130913131231_
                               _e130918131234_
                               _hd130917131237_
                               _tl130916131239_
                               _e130921131242_
                               _hd130920131245_
                               _tl130919131247_
                               _e130924131250_
                               _hd130923131253_
                               _tl130922131255_
                               _e130927131258_
                               _hd130926131261_
                               _tl130925131263_
                               _e130930131266_
                               _hd130929131269_
                               _tl130928131271_
                               _e130933131274_
                               _hd130932131277_
                               _tl130931131279_
                               _e130936131282_
                               _hd130935131285_
                               _tl130934131287_
                               _e130939131290_
                               _hd130938131293_
                               _tl130937131295_
                               _e130942131298_
                               _hd130941131301_
                               _tl130940131303_)
                        (let ((_L131306_ _hd130941131301_)
                              (_L131307_ _hd130938131293_)
                              (_L131308_ _hd130929131269_)
                              (_L131309_ _hd130920131245_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131309_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131309_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp137296
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131308_
                                      __tmp137296)))
                              (___kont136393136394_
                               _L131306_
                               _L131307_
                               _L131308_
                               _L131309_)
                              (___kont136399136400_)))))
                     (___match136754136755_
                      (lambda (_e130912131218_
                               _hd130911131221_
                               _tl130910131223_
                               _e130915131226_
                               _hd130914131229_
                               _tl130913131231_
                               _e130918131234_
                               _hd130917131237_
                               _tl130916131239_
                               _e130921131242_
                               _hd130920131245_
                               _tl130919131247_
                               _e130924131250_
                               _hd130923131253_
                               _tl130922131255_
                               _e130927131258_
                               _hd130926131261_
                               _tl130925131263_
                               _e130930131266_
                               _hd130929131269_
                               _tl130928131271_
                               _e130933131274_
                               _hd130932131277_
                               _tl130931131279_
                               _e130936131282_
                               _hd130935131285_
                               _tl130934131287_
                               _e130939131290_
                               _hd130938131293_
                               _tl130937131295_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130931131279_))
                            (let ((_e130942131298_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130931131279_))))
                              (let ((_tl130940131303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130942131298_)))
                                    (_hd130941131301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130942131298_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130940131303_))
                                    (___match136762136763_
                                     _e130912131218_
                                     _hd130911131221_
                                     _tl130910131223_
                                     _e130915131226_
                                     _hd130914131229_
                                     _tl130913131231_
                                     _e130918131234_
                                     _hd130917131237_
                                     _tl130916131239_
                                     _e130921131242_
                                     _hd130920131245_
                                     _tl130919131247_
                                     _e130924131250_
                                     _hd130923131253_
                                     _tl130922131255_
                                     _e130927131258_
                                     _hd130926131261_
                                     _tl130925131263_
                                     _e130930131266_
                                     _hd130929131269_
                                     _tl130928131271_
                                     _e130933131274_
                                     _hd130932131277_
                                     _tl130931131279_
                                     _e130936131282_
                                     _hd130935131285_
                                     _tl130934131287_
                                     _e130939131290_
                                     _hd130938131293_
                                     _tl130937131295_
                                     _e130942131298_
                                     _hd130941131301_
                                     _tl130940131303_)
                                    (___kont136399136400_))))
                            (___match136878136879_
                             _e130912131218_
                             _hd130911131221_
                             _tl130910131223_
                             _e130915131226_
                             _hd130914131229_
                             _tl130913131231_
                             _e130918131234_
                             _hd130917131237_
                             _tl130916131239_
                             _e130921131242_
                             _hd130920131245_
                             _tl130919131247_
                             _e130924131250_
                             _hd130923131253_
                             _tl130922131255_
                             _e130927131258_
                             _hd130926131261_
                             _tl130925131263_
                             _e130930131266_
                             _hd130929131269_
                             _tl130928131271_
                             _e130933131274_
                             _hd130932131277_
                             _tl130931131279_))))
                     (___match136676136677_
                      (lambda (_e130878131352_
                               _hd130877131355_
                               _tl130876131357_
                               _e130881131360_
                               _hd130880131363_
                               _tl130879131365_
                               _e130884131368_
                               _hd130883131371_
                               _tl130882131373_
                               _e130887131376_
                               _hd130886131379_
                               _tl130885131381_
                               _e130890131384_
                               _hd130889131387_
                               _tl130888131389_
                               _e130893131392_
                               _hd130892131395_
                               _tl130891131397_
                               _e130896131400_
                               _hd130895131403_
                               _tl130894131405_
                               _e130899131408_
                               _hd130898131411_
                               _tl130897131413_
                               _e130902131416_
                               _hd130901131419_
                               _tl130900131421_
                               _e130905131424_
                               _hd130904131427_
                               _tl130903131429_)
                        (let ((_L131432_ _hd130904131427_)
                              (_L131433_ _hd130895131403_)
                              (_L131434_ _hd130886131379_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131434_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L131434_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp137297
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _self130764_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L131433_
                                      __tmp137297)))
                              (___kont136391136392_
                               _L131432_
                               _L131433_
                               _L131434_)
                              (___match136880136881_
                               _e130878131352_
                               _hd130877131355_
                               _tl130876131357_
                               _e130881131360_
                               _hd130880131363_
                               _tl130879131365_
                               _e130884131368_
                               _hd130883131371_
                               _tl130882131373_
                               _e130887131376_
                               _hd130886131379_
                               _tl130885131381_
                               _e130890131384_
                               _hd130889131387_
                               _tl130888131389_
                               _e130893131392_
                               _hd130892131395_
                               _tl130891131397_
                               _e130896131400_
                               _hd130895131403_
                               _tl130894131405_
                               _e130899131408_
                               _hd130898131411_
                               _tl130897131413_)))))
                     (___match136674136675_
                      (lambda (_e130878131352_
                               _hd130877131355_
                               _tl130876131357_
                               _e130881131360_
                               _hd130880131363_
                               _tl130879131365_
                               _e130884131368_
                               _hd130883131371_
                               _tl130882131373_
                               _e130887131376_
                               _hd130886131379_
                               _tl130885131381_
                               _e130890131384_
                               _hd130889131387_
                               _tl130888131389_
                               _e130893131392_
                               _hd130892131395_
                               _tl130891131397_
                               _e130896131400_
                               _hd130895131403_
                               _tl130894131405_
                               _e130899131408_
                               _hd130898131411_
                               _tl130897131413_
                               _e130902131416_
                               _hd130901131419_
                               _tl130900131421_
                               _e130905131424_
                               _hd130904131427_
                               _tl130903131429_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl130897131413_))
                            (___match136676136677_
                             _e130878131352_
                             _hd130877131355_
                             _tl130876131357_
                             _e130881131360_
                             _hd130880131363_
                             _tl130879131365_
                             _e130884131368_
                             _hd130883131371_
                             _tl130882131373_
                             _e130887131376_
                             _hd130886131379_
                             _tl130885131381_
                             _e130890131384_
                             _hd130889131387_
                             _tl130888131389_
                             _e130893131392_
                             _hd130892131395_
                             _tl130891131397_
                             _e130896131400_
                             _hd130895131403_
                             _tl130894131405_
                             _e130899131408_
                             _hd130898131411_
                             _tl130897131413_
                             _e130902131416_
                             _hd130901131419_
                             _tl130900131421_
                             _e130905131424_
                             _hd130904131427_
                             _tl130903131429_)
                            (___match136754136755_
                             _e130878131352_
                             _hd130877131355_
                             _tl130876131357_
                             _e130881131360_
                             _hd130880131363_
                             _tl130879131365_
                             _e130884131368_
                             _hd130883131371_
                             _tl130882131373_
                             _e130887131376_
                             _hd130886131379_
                             _tl130885131381_
                             _e130890131384_
                             _hd130889131387_
                             _tl130888131389_
                             _e130893131392_
                             _hd130892131395_
                             _tl130891131397_
                             _e130896131400_
                             _hd130895131403_
                             _tl130894131405_
                             _e130899131408_
                             _hd130898131411_
                             _tl130897131413_
                             _e130902131416_
                             _hd130901131419_
                             _tl130900131421_
                             _e130905131424_
                             _hd130904131427_
                             _tl130903131429_))))
                     (___match136664136665_
                      (lambda (_e130878131352_
                               _hd130877131355_
                               _tl130876131357_
                               _e130881131360_
                               _hd130880131363_
                               _tl130879131365_
                               _e130884131368_
                               _hd130883131371_
                               _tl130882131373_
                               _e130887131376_
                               _hd130886131379_
                               _tl130885131381_
                               _e130890131384_
                               _hd130889131387_
                               _tl130888131389_
                               _e130893131392_
                               _hd130892131395_
                               _tl130891131397_
                               _e130896131400_
                               _hd130895131403_
                               _tl130894131405_
                               _e130899131408_
                               _hd130898131411_
                               _tl130897131413_
                               _e130902131416_
                               _hd130901131419_
                               _tl130900131421_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd130901131419_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130900131421_))
                                (let ((_e130905131424_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130900131421_))))
                                  (let ((_tl130903131429_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130905131424_)))
                                        (_hd130904131427_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130905131424_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130903131429_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130897131413_))
                                            (___match136676136677_
                                             _e130878131352_
                                             _hd130877131355_
                                             _tl130876131357_
                                             _e130881131360_
                                             _hd130880131363_
                                             _tl130879131365_
                                             _e130884131368_
                                             _hd130883131371_
                                             _tl130882131373_
                                             _e130887131376_
                                             _hd130886131379_
                                             _tl130885131381_
                                             _e130890131384_
                                             _hd130889131387_
                                             _tl130888131389_
                                             _e130893131392_
                                             _hd130892131395_
                                             _tl130891131397_
                                             _e130896131400_
                                             _hd130895131403_
                                             _tl130894131405_
                                             _e130899131408_
                                             _hd130898131411_
                                             _tl130897131413_
                                             _e130902131416_
                                             _hd130901131419_
                                             _tl130900131421_
                                             _e130905131424_
                                             _hd130904131427_
                                             _tl130903131429_)
                                            (___match136754136755_
                                             _e130878131352_
                                             _hd130877131355_
                                             _tl130876131357_
                                             _e130881131360_
                                             _hd130880131363_
                                             _tl130879131365_
                                             _e130884131368_
                                             _hd130883131371_
                                             _tl130882131373_
                                             _e130887131376_
                                             _hd130886131379_
                                             _tl130885131381_
                                             _e130890131384_
                                             _hd130889131387_
                                             _tl130888131389_
                                             _e130893131392_
                                             _hd130892131395_
                                             _tl130891131397_
                                             _e130896131400_
                                             _hd130895131403_
                                             _tl130894131405_
                                             _e130899131408_
                                             _hd130898131411_
                                             _tl130897131413_
                                             _e130902131416_
                                             _hd130901131419_
                                             _tl130900131421_
                                             _e130905131424_
                                             _hd130904131427_
                                             _tl130903131429_))
                                        (___match136878136879_
                                         _e130878131352_
                                         _hd130877131355_
                                         _tl130876131357_
                                         _e130881131360_
                                         _hd130880131363_
                                         _tl130879131365_
                                         _e130884131368_
                                         _hd130883131371_
                                         _tl130882131373_
                                         _e130887131376_
                                         _hd130886131379_
                                         _tl130885131381_
                                         _e130890131384_
                                         _hd130889131387_
                                         _tl130888131389_
                                         _e130893131392_
                                         _hd130892131395_
                                         _tl130891131397_
                                         _e130896131400_
                                         _hd130895131403_
                                         _tl130894131405_
                                         _e130899131408_
                                         _hd130898131411_
                                         _tl130897131413_))))
                                (___match136878136879_
                                 _e130878131352_
                                 _hd130877131355_
                                 _tl130876131357_
                                 _e130881131360_
                                 _hd130880131363_
                                 _tl130879131365_
                                 _e130884131368_
                                 _hd130883131371_
                                 _tl130882131373_
                                 _e130887131376_
                                 _hd130886131379_
                                 _tl130885131381_
                                 _e130890131384_
                                 _hd130889131387_
                                 _tl130888131389_
                                 _e130893131392_
                                 _hd130892131395_
                                 _tl130891131397_
                                 _e130896131400_
                                 _hd130895131403_
                                 _tl130894131405_
                                 _e130899131408_
                                 _hd130898131411_
                                 _tl130897131413_))
                            (___match136878136879_
                             _e130878131352_
                             _hd130877131355_
                             _tl130876131357_
                             _e130881131360_
                             _hd130880131363_
                             _tl130879131365_
                             _e130884131368_
                             _hd130883131371_
                             _tl130882131373_
                             _e130887131376_
                             _hd130886131379_
                             _tl130885131381_
                             _e130890131384_
                             _hd130889131387_
                             _tl130888131389_
                             _e130893131392_
                             _hd130892131395_
                             _tl130891131397_
                             _e130896131400_
                             _hd130895131403_
                             _tl130894131405_
                             _e130899131408_
                             _hd130898131411_
                             _tl130897131413_))))
                     (___match136596136597_
                      (lambda (_e130827131473_
                               _hd130826131476_
                               _tl130825131478_
                               _e130830131481_
                               _hd130829131484_
                               _tl130828131486_
                               _e130833131489_
                               _hd130832131492_
                               _tl130831131494_
                               _e130836131497_
                               _hd130835131500_
                               _tl130834131502_
                               _e130839131505_
                               _hd130838131508_
                               _tl130837131510_
                               _e130842131513_
                               _hd130841131516_
                               _tl130840131518_
                               _e130845131521_
                               _hd130844131524_
                               _tl130843131526_
                               _e130848131529_
                               _hd130847131532_
                               _tl130846131534_
                               _e130851131537_
                               _hd130850131540_
                               _tl130849131542_
                               _e130854131545_
                               _hd130853131548_
                               _tl130852131550_
                               _e130857131553_
                               _hd130856131556_
                               _tl130855131558_
                               _e130860131561_
                               _hd130859131564_
                               _tl130858131566_
                               _e130863131569_
                               _hd130862131572_
                               _tl130861131574_
                               ___splice136389136390_
                               _target130864131577_
                               _tl130866131579_)
                        (letrec ((_loop130867131582_
                                  (lambda (_hd130865131585_ _args130871131587_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130865131585_))
                                        (let ((_e130868131590_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130865131585_))))
                                          (let ((_lp-tl130870131595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130868131590_)))
                                                (_lp-hd130869131593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130868131590_))))
                                            (let ((__tmp137299
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130869131593_
                                                           _args130871131587_))))
                                              (declare (not safe))
                                              (_loop130867131582_
                                               _lp-tl130870131595_
                                               __tmp137299))))
                                        (let ((_args130872131598_
                                               (reverse _args130871131587_)))
                                          (let ((_L131601_ _args130872131598_)
                                                (_L131602_ _hd130862131572_)
                                                (_L131603_ _hd130853131548_)
                                                (_L131604_ _hd130844131524_)
                                                (_L131605_ _hd130835131500_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131605_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131604_
                                                        'call-method))
                                                     (let ((__tmp137298
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130764_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131603_
                                                        __tmp137298)))
                                                (___kont136387136388_
                                                 _L131601_
                                                 _L131602_
                                                 _L131603_
                                                 _L131604_
                                                 _L131605_)
                                                (___kont136399136400_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130867131582_ _target130864131577_ '())))))
                     (___match136554136555_
                      (lambda (_e130827131473_
                               _hd130826131476_
                               _tl130825131478_
                               _e130830131481_
                               _hd130829131484_
                               _tl130828131486_
                               _e130833131489_
                               _hd130832131492_
                               _tl130831131494_
                               _e130836131497_
                               _hd130835131500_
                               _tl130834131502_
                               _e130839131505_
                               _hd130838131508_
                               _tl130837131510_
                               _e130842131513_
                               _hd130841131516_
                               _tl130840131518_
                               _e130845131521_
                               _hd130844131524_
                               _tl130843131526_
                               _e130848131529_
                               _hd130847131532_
                               _tl130846131534_
                               _e130851131537_
                               _hd130850131540_
                               _tl130849131542_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd130850131540_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl130849131542_))
                                (let ((_e130854131545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl130849131542_))))
                                  (let ((_tl130852131550_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130854131545_)))
                                        (_hd130853131548_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130854131545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl130852131550_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130846131534_))
                                            (let ((_e130857131553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130846131534_))))
                                              (let ((_tl130855131558_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130857131553_)))
                                                    (_hd130856131556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130857131553_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd130856131556_))
                                                    (let ((_e130860131561_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd130856131556_))))
                                                      (let ((_tl130858131566_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130860131561_)))
                    (_hd130859131564_
                     (let () (declare (not safe)) (##car _e130860131561_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd130859131564_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd130859131564_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130858131566_))
                            (let ((_e130863131569_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130858131566_))))
                              (let ((_tl130861131574_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130863131569_)))
                                    (_hd130862131572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130863131569_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl130861131574_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130855131558_))
                                        (let ((___splice136389136390_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130855131558_
                                                  '0))))
                                          (let ((_tl130866131579_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136389136390_
                                                    '1)))
                                                (_target130864131577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice136389136390_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl130866131579_))
                                                (___match136596136597_
                                                 _e130827131473_
                                                 _hd130826131476_
                                                 _tl130825131478_
                                                 _e130830131481_
                                                 _hd130829131484_
                                                 _tl130828131486_
                                                 _e130833131489_
                                                 _hd130832131492_
                                                 _tl130831131494_
                                                 _e130836131497_
                                                 _hd130835131500_
                                                 _tl130834131502_
                                                 _e130839131505_
                                                 _hd130838131508_
                                                 _tl130837131510_
                                                 _e130842131513_
                                                 _hd130841131516_
                                                 _tl130840131518_
                                                 _e130845131521_
                                                 _hd130844131524_
                                                 _tl130843131526_
                                                 _e130848131529_
                                                 _hd130847131532_
                                                 _tl130846131534_
                                                 _e130851131537_
                                                 _hd130850131540_
                                                 _tl130849131542_
                                                 _e130854131545_
                                                 _hd130853131548_
                                                 _tl130852131550_
                                                 _e130857131553_
                                                 _hd130856131556_
                                                 _tl130855131558_
                                                 _e130860131561_
                                                 _hd130859131564_
                                                 _tl130858131566_
                                                 _e130863131569_
                                                 _hd130862131572_
                                                 _tl130861131574_
                                                 ___splice136389136390_
                                                 _target130864131577_
                                                 _tl130866131579_)
                                                (___kont136399136400_))))
                                        (___kont136399136400_))
                                    (___kont136399136400_))))
                            (___kont136399136400_))
                        (___kont136399136400_))
                    (___kont136399136400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136399136400_))))
                                            (___match136878136879_
                                             _e130827131473_
                                             _hd130826131476_
                                             _tl130825131478_
                                             _e130830131481_
                                             _hd130829131484_
                                             _tl130828131486_
                                             _e130833131489_
                                             _hd130832131492_
                                             _tl130831131494_
                                             _e130836131497_
                                             _hd130835131500_
                                             _tl130834131502_
                                             _e130839131505_
                                             _hd130838131508_
                                             _tl130837131510_
                                             _e130842131513_
                                             _hd130841131516_
                                             _tl130840131518_
                                             _e130845131521_
                                             _hd130844131524_
                                             _tl130843131526_
                                             _e130848131529_
                                             _hd130847131532_
                                             _tl130846131534_))
                                        (___match136878136879_
                                         _e130827131473_
                                         _hd130826131476_
                                         _tl130825131478_
                                         _e130830131481_
                                         _hd130829131484_
                                         _tl130828131486_
                                         _e130833131489_
                                         _hd130832131492_
                                         _tl130831131494_
                                         _e130836131497_
                                         _hd130835131500_
                                         _tl130834131502_
                                         _e130839131505_
                                         _hd130838131508_
                                         _tl130837131510_
                                         _e130842131513_
                                         _hd130841131516_
                                         _tl130840131518_
                                         _e130845131521_
                                         _hd130844131524_
                                         _tl130843131526_
                                         _e130848131529_
                                         _hd130847131532_
                                         _tl130846131534_))))
                                (___match136878136879_
                                 _e130827131473_
                                 _hd130826131476_
                                 _tl130825131478_
                                 _e130830131481_
                                 _hd130829131484_
                                 _tl130828131486_
                                 _e130833131489_
                                 _hd130832131492_
                                 _tl130831131494_
                                 _e130836131497_
                                 _hd130835131500_
                                 _tl130834131502_
                                 _e130839131505_
                                 _hd130838131508_
                                 _tl130837131510_
                                 _e130842131513_
                                 _hd130841131516_
                                 _tl130840131518_
                                 _e130845131521_
                                 _hd130844131524_
                                 _tl130843131526_
                                 _e130848131529_
                                 _hd130847131532_
                                 _tl130846131534_))
                            (___match136664136665_
                             _e130827131473_
                             _hd130826131476_
                             _tl130825131478_
                             _e130830131481_
                             _hd130829131484_
                             _tl130828131486_
                             _e130833131489_
                             _hd130832131492_
                             _tl130831131494_
                             _e130836131497_
                             _hd130835131500_
                             _tl130834131502_
                             _e130839131505_
                             _hd130838131508_
                             _tl130837131510_
                             _e130842131513_
                             _hd130841131516_
                             _tl130840131518_
                             _e130845131521_
                             _hd130844131524_
                             _tl130843131526_
                             _e130848131529_
                             _hd130847131532_
                             _tl130846131534_
                             _e130851131537_
                             _hd130850131540_
                             _tl130849131542_))))
                     (___match136486136487_
                      (lambda (_e130783131665_
                               _hd130782131668_
                               _tl130781131670_
                               _e130786131673_
                               _hd130785131676_
                               _tl130784131678_
                               _e130789131681_
                               _hd130788131684_
                               _tl130787131686_
                               _e130792131689_
                               _hd130791131692_
                               _tl130790131694_
                               _e130795131697_
                               _hd130794131700_
                               _tl130793131702_
                               _e130798131705_
                               _hd130797131708_
                               _tl130796131710_
                               _e130801131713_
                               _hd130800131716_
                               _tl130799131718_
                               _e130804131721_
                               _hd130803131724_
                               _tl130802131726_
                               _e130807131729_
                               _hd130806131732_
                               _tl130805131734_
                               _e130810131737_
                               _hd130809131740_
                               _tl130808131742_
                               ___splice136385136386_
                               _target130811131745_
                               _tl130813131747_)
                        (letrec ((_loop130814131750_
                                  (lambda (_hd130812131753_ _args130818131755_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd130812131753_))
                                        (let ((_e130815131758_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd130812131753_))))
                                          (let ((_lp-tl130817131763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130815131758_)))
                                                (_lp-hd130816131761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130815131758_))))
                                            (let ((__tmp137301
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd130816131761_
                                                           _args130818131755_))))
                                              (declare (not safe))
                                              (_loop130814131750_
                                               _lp-tl130817131763_
                                               __tmp137301))))
                                        (let ((_args130819131766_
                                               (reverse _args130818131755_)))
                                          (let ((_L131769_ _args130819131766_)
                                                (_L131770_ _hd130809131740_)
                                                (_L131771_ _hd130800131716_)
                                                (_L131772_ _hd130791131692_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L131772_
                                                        'call-method))
                                                     (let ((__tmp137300
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _self130764_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L131771_
                                                        __tmp137300)))
                                                (___kont136383136384_
                                                 _L131769_
                                                 _L131770_
                                                 _L131771_
                                                 _L131772_)
                                                (___match136674136675_
                                                 _e130783131665_
                                                 _hd130782131668_
                                                 _tl130781131670_
                                                 _e130786131673_
                                                 _hd130785131676_
                                                 _tl130784131678_
                                                 _e130789131681_
                                                 _hd130788131684_
                                                 _tl130787131686_
                                                 _e130792131689_
                                                 _hd130791131692_
                                                 _tl130790131694_
                                                 _e130795131697_
                                                 _hd130794131700_
                                                 _tl130793131702_
                                                 _e130798131705_
                                                 _hd130797131708_
                                                 _tl130796131710_
                                                 _e130801131713_
                                                 _hd130800131716_
                                                 _tl130799131718_
                                                 _e130804131721_
                                                 _hd130803131724_
                                                 _tl130802131726_
                                                 _e130807131729_
                                                 _hd130806131732_
                                                 _tl130805131734_
                                                 _e130810131737_
                                                 _hd130809131740_
                                                 _tl130808131742_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop130814131750_ _target130811131745_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx136381136382_))
                    (let ((_e130783131665_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx136381136382_))))
                      (let ((_tl130781131670_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130783131665_)))
                            (_hd130782131668_
                             (let ()
                               (declare (not safe))
                               (##car _e130783131665_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130781131670_))
                            (let ((_e130786131673_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130781131670_))))
                              (let ((_tl130784131678_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130786131673_)))
                                    (_hd130785131676_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130786131673_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130785131676_))
                                    (let ((_e130789131681_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130785131676_))))
                                      (let ((_tl130787131686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130789131681_)))
                                            (_hd130788131684_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130789131681_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd130788131684_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd130788131684_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl130787131686_))
                                                    (let ((_e130792131689_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl130787131686_))))
                                                      (let ((_tl130790131694_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130792131689_)))
                    (_hd130791131692_
                     (let () (declare (not safe)) (##car _e130792131689_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl130790131694_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl130784131678_))
                        (let ((_e130795131697_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl130784131678_))))
                          (let ((_tl130793131702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e130795131697_)))
                                (_hd130794131700_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e130795131697_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd130794131700_))
                                (let ((_e130798131705_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd130794131700_))))
                                  (let ((_tl130796131710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130798131705_)))
                                        (_hd130797131708_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130798131705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd130797131708_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd130797131708_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130796131710_))
                                                (let ((_e130801131713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130796131710_))))
                                                  (let ((_tl130799131718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130801131713_)))
                                                        (_hd130800131716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130801131713_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130799131718_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl130793131702_))
                                                            (let ((_e130804131721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl130793131702_))))
                      (let ((_tl130802131726_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130804131721_)))
                            (_hd130803131724_
                             (let ()
                               (declare (not safe))
                               (##car _e130804131721_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd130803131724_))
                            (let ((_e130807131729_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd130803131724_))))
                              (let ((_tl130805131734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130807131729_)))
                                    (_hd130806131732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130807131729_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd130806131732_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd130806131732_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl130805131734_))
                                            (let ((_e130810131737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl130805131734_))))
                                              (let ((_tl130808131742_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e130810131737_)))
                                                    (_hd130809131740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e130810131737_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl130808131742_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl130802131726_))
                                                        (let ((___splice136385136386_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl130802131726_ '0))))
                  (let ((_tl130813131747_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136385136386_ '1)))
                        (_target130811131745_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice136385136386_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl130813131747_))
                        (___match136486136487_
                         _e130783131665_
                         _hd130782131668_
                         _tl130781131670_
                         _e130786131673_
                         _hd130785131676_
                         _tl130784131678_
                         _e130789131681_
                         _hd130788131684_
                         _tl130787131686_
                         _e130792131689_
                         _hd130791131692_
                         _tl130790131694_
                         _e130795131697_
                         _hd130794131700_
                         _tl130793131702_
                         _e130798131705_
                         _hd130797131708_
                         _tl130796131710_
                         _e130801131713_
                         _hd130800131716_
                         _tl130799131718_
                         _e130804131721_
                         _hd130803131724_
                         _tl130802131726_
                         _e130807131729_
                         _hd130806131732_
                         _tl130805131734_
                         _e130810131737_
                         _hd130809131740_
                         _tl130808131742_
                         ___splice136385136386_
                         _target130811131745_
                         _tl130813131747_)
                        (___match136674136675_
                         _e130783131665_
                         _hd130782131668_
                         _tl130781131670_
                         _e130786131673_
                         _hd130785131676_
                         _tl130784131678_
                         _e130789131681_
                         _hd130788131684_
                         _tl130787131686_
                         _e130792131689_
                         _hd130791131692_
                         _tl130790131694_
                         _e130795131697_
                         _hd130794131700_
                         _tl130793131702_
                         _e130798131705_
                         _hd130797131708_
                         _tl130796131710_
                         _e130801131713_
                         _hd130800131716_
                         _tl130799131718_
                         _e130804131721_
                         _hd130803131724_
                         _tl130802131726_
                         _e130807131729_
                         _hd130806131732_
                         _tl130805131734_
                         _e130810131737_
                         _hd130809131740_
                         _tl130808131742_))))
                (___match136674136675_
                 _e130783131665_
                 _hd130782131668_
                 _tl130781131670_
                 _e130786131673_
                 _hd130785131676_
                 _tl130784131678_
                 _e130789131681_
                 _hd130788131684_
                 _tl130787131686_
                 _e130792131689_
                 _hd130791131692_
                 _tl130790131694_
                 _e130795131697_
                 _hd130794131700_
                 _tl130793131702_
                 _e130798131705_
                 _hd130797131708_
                 _tl130796131710_
                 _e130801131713_
                 _hd130800131716_
                 _tl130799131718_
                 _e130804131721_
                 _hd130803131724_
                 _tl130802131726_
                 _e130807131729_
                 _hd130806131732_
                 _tl130805131734_
                 _e130810131737_
                 _hd130809131740_
                 _tl130808131742_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match136878136879_
                                                     _e130783131665_
                                                     _hd130782131668_
                                                     _tl130781131670_
                                                     _e130786131673_
                                                     _hd130785131676_
                                                     _tl130784131678_
                                                     _e130789131681_
                                                     _hd130788131684_
                                                     _tl130787131686_
                                                     _e130792131689_
                                                     _hd130791131692_
                                                     _tl130790131694_
                                                     _e130795131697_
                                                     _hd130794131700_
                                                     _tl130793131702_
                                                     _e130798131705_
                                                     _hd130797131708_
                                                     _tl130796131710_
                                                     _e130801131713_
                                                     _hd130800131716_
                                                     _tl130799131718_
                                                     _e130804131721_
                                                     _hd130803131724_
                                                     _tl130802131726_))))
                                            (___match136878136879_
                                             _e130783131665_
                                             _hd130782131668_
                                             _tl130781131670_
                                             _e130786131673_
                                             _hd130785131676_
                                             _tl130784131678_
                                             _e130789131681_
                                             _hd130788131684_
                                             _tl130787131686_
                                             _e130792131689_
                                             _hd130791131692_
                                             _tl130790131694_
                                             _e130795131697_
                                             _hd130794131700_
                                             _tl130793131702_
                                             _e130798131705_
                                             _hd130797131708_
                                             _tl130796131710_
                                             _e130801131713_
                                             _hd130800131716_
                                             _tl130799131718_
                                             _e130804131721_
                                             _hd130803131724_
                                             _tl130802131726_))
                                        (___match136554136555_
                                         _e130783131665_
                                         _hd130782131668_
                                         _tl130781131670_
                                         _e130786131673_
                                         _hd130785131676_
                                         _tl130784131678_
                                         _e130789131681_
                                         _hd130788131684_
                                         _tl130787131686_
                                         _e130792131689_
                                         _hd130791131692_
                                         _tl130790131694_
                                         _e130795131697_
                                         _hd130794131700_
                                         _tl130793131702_
                                         _e130798131705_
                                         _hd130797131708_
                                         _tl130796131710_
                                         _e130801131713_
                                         _hd130800131716_
                                         _tl130799131718_
                                         _e130804131721_
                                         _hd130803131724_
                                         _tl130802131726_
                                         _e130807131729_
                                         _hd130806131732_
                                         _tl130805131734_))
                                    (___match136878136879_
                                     _e130783131665_
                                     _hd130782131668_
                                     _tl130781131670_
                                     _e130786131673_
                                     _hd130785131676_
                                     _tl130784131678_
                                     _e130789131681_
                                     _hd130788131684_
                                     _tl130787131686_
                                     _e130792131689_
                                     _hd130791131692_
                                     _tl130790131694_
                                     _e130795131697_
                                     _hd130794131700_
                                     _tl130793131702_
                                     _e130798131705_
                                     _hd130797131708_
                                     _tl130796131710_
                                     _e130801131713_
                                     _hd130800131716_
                                     _tl130799131718_
                                     _e130804131721_
                                     _hd130803131724_
                                     _tl130802131726_))))
                            (___match136878136879_
                             _e130783131665_
                             _hd130782131668_
                             _tl130781131670_
                             _e130786131673_
                             _hd130785131676_
                             _tl130784131678_
                             _e130789131681_
                             _hd130788131684_
                             _tl130787131686_
                             _e130792131689_
                             _hd130791131692_
                             _tl130790131694_
                             _e130795131697_
                             _hd130794131700_
                             _tl130793131702_
                             _e130798131705_
                             _hd130797131708_
                             _tl130796131710_
                             _e130801131713_
                             _hd130800131716_
                             _tl130799131718_
                             _e130804131721_
                             _hd130803131724_
                             _tl130802131726_))))
                    (___match136816136817_
                     _e130783131665_
                     _hd130782131668_
                     _tl130781131670_
                     _e130786131673_
                     _hd130785131676_
                     _tl130784131678_
                     _e130789131681_
                     _hd130788131684_
                     _tl130787131686_
                     _e130792131689_
                     _hd130791131692_
                     _tl130790131694_
                     _e130795131697_
                     _hd130794131700_
                     _tl130793131702_
                     _e130798131705_
                     _hd130797131708_
                     _tl130796131710_
                     _e130801131713_
                     _hd130800131716_
                     _tl130799131718_))
                (___kont136399136400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136399136400_))
                                            (___kont136399136400_))
                                        (___kont136399136400_))))
                                (___kont136399136400_))))
                        (___kont136399136400_))
                    (___kont136399136400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136399136400_))
                                                (___kont136399136400_))
                                            (___kont136399136400_))))
                                    (___kont136399136400_))))
                            (___kont136399136400_))))
                    (___kont136399136400_))))))))))
